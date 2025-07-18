pipeline {
    agent any
    tools {
        maven 'maven'
        jdk 'JDK 17'
    }
    environment {
        // App Settings
        project_name = 'demoApp-Jenkins' //DTP Project
        app_name = 'demoApp-baseline' //docker container
        image = 'parasoft/demo-app:baseline' //docker image
        app_short = 'DA' //demoApp
        app_port = 8090
        app_cov_port = 8050
        app_db_port = 9021
        app_jms_port = 63616

        // Jenkins UID:GID
        //jenkins_uid=992
        //jenkins_gid=992

        // Parasoft Licenses
        ls_url = "${PARASOFT_LS_URL}" //https\://dtp:8443
        ls_user = "${PARASOFT_LS_USER}" //admin
        ls_pass = "${PARASOFT_LS_PASS}"

        // Parasoft Common Settings
        dtp_url = "${PARASOFT_DTP_URL}" //https://dtp:8443
        dtp_user = "${PARASOFT_DTP_USER}" //admin
        dtp_pass = "${PARASOFT_DTP_PASS}"
        dtp_publish = "${PARASOFT_DTP_PUBLISH}" //false
        //buildId="${app_short}-${BUILD_TIMESTAMP}"

        // Parasoft Jtest Settings
        jtestSAConfig = 'jtest.builtin://Recommended Rules'
        jtestMAConfig = 'jtest.builtin://Metrics'
        jtestSessionTag = 'demoAppJenkins-Jtest'
        unitCovImage = 'demoApp_All;demoApp_UnitTest'

        // Parasoft SOAtest Settings
        soatestConfig = 'soatest.user://Example Configuration'
        soatestSessionTag = 'demoAppJenkins-SOAtest'
        soatestCovImage = 'demoApp_All;demoApp_SOAtest'
    }
    stages {
        stage('Setup') {
            steps {
                deleteDir()

                // setup additional environment
                script {
                    env.jenkins_uid = sh(script: 'id -u jenkins', returnStdout: true).trim()
                    env.jenkins_gid = sh(script: 'id -g jenkins', returnStdout: true).trim()
                    env.buildTimestamp = sh(script: 'date +%Y%m%d', returnStdout: true).trim()
                    env.buildId = "${app_short}-${buildTimestamp}"
                }

                // setup the workspace
                sh  '''
                    # Clone this repository & demoApp repository into the workspace
                    mkdir demoApp-jenkins
                    git clone https://github.com/rmartinez10x/demoApp-Jenkins.git demoApp-jenkins

                    mkdir demoApp
                    git clone https://github.com/parasoft/parasoft-demo-app demoApp

                    # Debugging
                    pwd
                    ls -ll
                    '''

                // Prepare the jtestcli.properties file
                sh '''
                    # Set Up and write .properties file
                    echo $"
                    parasoft.eula.accepted=true
                    jtest.license.use_network=true
                    jtest.license.network.edition=custom_edition
                    jtest.license.custom_edition_features=Jtest, Static Analysis, Flow Analysis, OWASP Rules, CWE Rules, PCI DSS Rules, DISA STIG Rules, Security Rules, Automation, Desktop Command Line, DTP Publish, Coverage, Unit Test, Unit Test Bulk Creation, Unit Test Tier 1, Unit Test Tier 2, Unit Test Tier 3, Unit Test Tier 4, Unit Test Spring Framework, Test Impact Analysis
                    license.network.use.specified.server=true
                    license.network.auth.enabled=true
                    license.network.url=${ls_url}
                    license.network.user=${ls_user}
                    license.network.password=${ls_pass}

                    report.associations=false
                    report.scontrol=full
                    scope.local=true
                    scope.scontrol=true
                    scope.xmlmap=false

                    scontrol.git.exec=git
                    scontrol.rep1.git.branch=main
                    scontrol.rep1.git.url=https://github.com/parasoft/parasoft-demo-app
                    scontrol.rep1.type=git

                    build.id=${buildId}
                    session.tag=${jtestSessionTag}
                    dtp.url=${dtp_url}
                    dtp.user=${dtp_user}
                    dtp.password=${dtp_pass}
                    dtp.project=${project_name}" > ./demoApp-jenkins/jtest/jtestcli.properties
                    '''

                // Setup soatestcli.properties file
                sh  '''
                    # Set Up and write .properties file
                    echo $"
                    parasoft.eula.accepted=true

                    license.network.use.specified.server=true
                    license.network.url=${ls_url}
                    license.network.auth.enabled=true
                    license.network.user=${ls_user}
                    license.network.password=${ls_pass}
                    soatest.license.use_network=true
                    soatest.license.network.edition=custom_edition
                    soatest.license.custom_edition_features=RuleWizard, Command Line, SOA, Web, Server API Enabled, Message Packs, Advanced Test Generation Desktop, Requirements Traceability, API Security Testing

                    dtp.enabled=true
                    dtp.url=${dtp_url}
                    dtp.user=${dtp_user}
                    dtp.password=${dtp_pass}
                    dtp.project=${project_name}

                    build.id=${buildId}
                    session.tag=${soatestSessionTag}

                    report.dtp.publish=${dtp_publish}
                    report.associations=true
                    report.scontrol=full
                    scope.local=true
                    scope.scontrol=true
                    scope.xmlmap=false

                    techsupport.auto_creation=true
                    techsupport.archive_location=/usr/local/parasoft/soavirt_workspace/demoApp-jenkins/soatest/func-report/
                    techsupport.verbose=true

                    application.coverage.enabled=true
                    application.coverage.agent.url=http\\://${app_name}\\:${app_cov_port}
                    application.coverage.images=${soatestCovImage}

                    scontrol.git.exec=git
                    scontrol.rep1.git.branch=main
                    scontrol.rep1.git.url=https://github.com/parasoft/parasoft-demo-app
                    scontrol.rep1.type=git
                    " > ./demoApp-jenkins/soatest/soatestcli.properties
                    '''

                    sh  '''
                    # Set Up and write .properties file
                    echo $"
                    initscript {
    def home = System.properties['jtest.home']
    if (home == null) {
        println 'No jtest.home system property.'
        home = System.getenv('JTEST_HOME')
        if (home == null) {
            println 'No JTEST_HOME environment variable.'
            def scriptPath = buildscript.sourceFile.absolutePath
            def scriptRelativePath = File.separator + 'integration' + File.separator + 'gradle' + File.separator + 'init.gradle'
            if (scriptPath.contains(scriptRelativePath)) {
                home = scriptPath.substring(0, scriptPath.indexOf(scriptRelativePath))
                println 'Setting up system property jtest.home=' + home
                System.setProperty('jtest.home', home)
            } else {
                println 'FAILED to locate Jtest installation directory'
                println 'Define "jtest.home" system property, "JTEST_HOME" environment variable, '
                println 'or use initscript PATH/TO/JTEST/integration/gradle/init.gradle.'
            }
        } else {
            println 'Using environment property JTEST_HOME=' + home
            System.setProperty('jtest.home', home)
        }
    } else {
        println 'Using system property jtest.home=' + home
    }
    repositories {
        mavenCentral()
        maven {
            url file(home + '/integration/maven')
        }
    }
    dependencies {
        classpath 'com.parasoft.jtest:jtest-gradle-plugin:2024.2.0'
        classpath 'com.parasoft.jtest.tia:tia-gradle-plugin:2024.2.0'
    }
                    }
rootProject {
    apply plugin: com.parasoft.jtest.plugin.gradle.JtestPlugin
}

allprojects {
    apply plugin: com.parasoft.jtest.tia.ci.gradle.TIAPlugin
    tasks.withType(Test).configureEach {
        ignoreFailures = true
    }
}

                    " > ./demoApp-jenkins/jtest/init.gradle
                    '''
            }
        }
        stage('Jtest: Quality Scan') {
            when {
                expression {
                    return false
                }
            }
            steps {
                // Execute the build with Jtest Maven plugin in docker
                sh '''
                    docker container prune -f;
                    docker image prune -f;

                    # Run Gradle build with Jtest tasks via Docker
                    docker run \
                    -u ${jenkins_uid}:${jenkins_gid} \
                    --rm -i \
                    --name jtest \
                    -v "$PWD/demoApp:/home/parasoft/jenkins/demoApp" \
                    -v "$PWD/demoApp-jenkins:/home/parasoft/jenkins/demoApp-jenkins" \
                    -w "/home/parasoft/jenkins/demoApp" \
                    --network=demo-net \
                    $(docker build --build-arg HOST_UID="$jenkins_uid" --build-arg HOST_GID="$jenkins_gid" -q ./demoApp-jenkins/jtest) /bin/bash -c " \

                    pwd; \
                    ls -ld; \

                    ./gradlew clean assemble jtest \
                    -I /opt/parasoft/jtest/integration/gradle/init.gradle \
                    -DskipTests=true \
                    -Djtest.settings='../demoApp-jenkins/jtest/jtestcli.properties' \
                    -Djtest.config='${jtestSAConfig}' \
                    -Djtest.report=./target/jtest/sa \
                    -Djtest.showSettings=true \
                    --stacktrace --debug \
                    -Dproperty.report.dtp.publish=${dtp_publish};
                    "
                    '''
                echo '---> Parsing 10.x static analysis reports'
                recordIssues(
                    tools: [parasoftFindings(
                        localSettingsPath: '$PWD/demoApp-jenkins/jtest/jtestcli.properties',
                        pattern: '**/target/jtest/*/*.xml'
                    )],
                    unhealthy: 100, // Adjust as needed
                    healthy: 50,   // Adjust as needed
                    minimumSeverity: 'HIGH', // Adjust as needed
                    // qualityGates: [[
                    //     threshold: 10,
                    //     type: 'TOTAL_ERROR',
                    //     unstable: true
                    // ]],
                    skipPublishingChecks: true // Adjust as needed
                )
            }
        }
        stage('Jtest: Unit Test') {
            when { equals expected: true, actual: true }
            steps {
                // Setup stage-specific additional settings
                sh '''
                    # Set Up and write .properties file
                    echo $"
                    report.coverage.images=${unitCovImage}
                    " > ./demoApp-jenkins/jtest/jtestcli-ut.properties
                '''
                // Execute the build with Jtest Gradle plugin in docker
                sh '''
                    # Run Gradle build with Jtest tasks via Docker
                    docker run \
                    -u ${jenkins_uid}:${jenkins_gid} \
                    --rm -i \
                    --name jtest \
                    -v "$PWD/demoApp:/home/parasoft/jenkins/demoApp" \
                    -v "$PWD/demoApp-jenkins:/home/parasoft/jenkins/demoApp-jenkins" \
                    -w "/home/parasoft/jenkins/demoApp" \
                    --network=demo-net \
                    $(docker build --build-arg HOST_UID="$jenkins_uid" --build-arg HOST_GID="$jenkins_gid" -q ./demoApp-jenkins/jtest) /bin/bash -c " \

                    ./gradlew clean jtest-agent test jtest \
                    -I '../demoApp-jenkins/jtest/init.gradle' \
                    -Djtest.home=/opt/parasoft/jtest \
                    -DskipTests=true \
                    -Djtest.settingsList='../demoApp-jenkins/jtest/jtestcli.properties,../demoApp-jenkins/jtest/jtestcli-ut.properties' \
                    -Djtest.config='builtin://Unit Tests' \
                    -Djtest.report=./target/jtest/ut \
                    -Djtest.showSettings=true \
                    --stacktrace --continue -Dorg.gradle.execution.failure.ignore=true \
                    -Dproperty.report.dtp.publish=${dtp_publish};
                    "
                    '''
                    //Archive all documents for review
                    archiveArtifacts artifacts: '**/target/jtest/ut/*.xml', allowEmptyArchive: true
                echo '---> Parsing 10.x unit test reports'
                script {
                    step([$class: 'XUnitPublisher',
                        // thresholds: [failed(
                        //     failureNewThreshold: '0',
                        //     failureThreshold: '0')
                        // ],
                        tools: [[$class: 'ParasoftType',
                            deleteOutputFiles: true,
                            failIfNotNew: false,
                            pattern: '**/target/jtest/ut/report.xml',
                            skipNoTestFiles: true,
                            stopProcessingIfError: false
                        ]]
                    ])
                }
            }
        }
        stage('Jtest: Package-CodeCoverage') {
            when { equals expected: true, actual: true }
            steps {
                sh '''
                echo $"
                report.coverage.images=${soatestCovImage}
                " > ./demoApp-jenkins/jtest/jtestcli-ft.properties
            '''
                sh '''
            docker run \
                -d -i \
                --name jtest-monitor \
                -u ${jenkins_uid}:${jenkins_gid} \
                -v "$PWD/demoApp:/home/parasoft/jenkins/demoApp" \
                -v "$PWD/demoApp-jenkins:/home/parasoft/jenkins/demoApp-jenkins" \
                -w "/home/parasoft/jenkins/demoApp" \
                --network=demo-net \
                $(docker build --build-arg HOST_UID="$jenkins_uid" --build-arg HOST_GID="$jenkins_gid" -q ./demoApp-jenkins/jtest) /bin/bash -c " \

                /opt/parasoft/jtest/jtestcli \
                    -config 'builtin://Calculate Application Coverage' \
                    -data build/jtest/jtest.data.json \
                    -settings ../demoApp-jenkins/jtest/jtestcli.properties \
                    -settings ../demoApp-jenkins/jtest/jtestcli-ft.properties \
                    -report build/reports/jtest \
                    -monitor true \
                    --keepalive"
        '''
            }
        }

        stage('Jtest: Deploy-CodeCoverage') {
            when { equals expected: true, actual: true }
            steps {
                // deploy the project
                sh  '''
                # Run demoApp-baseline docker image with Jtest coverage agent configured
                    docker run \
                    -d \
                    -u ${jenkins_uid}:${jenkins_gid} \
                    -p ${app_port}:8080 \
                    -p ${app_cov_port}:8050 \
                    -p ${app_db_port}:9001 \
                    -p ${app_jms_port}:61616 \
                    --env-file "$PWD/demoApp-jenkins/jtest/monitor.env" \
                    -v "$PWD/monitor:/home/docker/jtest/monitor" \
                    --network=demo-net \
                    --name ${app_name} \
                    $(docker build --build-arg HOST_UID="$jenkins_uid" --build-arg HOST_GID="$jenkins_gid" -q ./demoApp-jenkins/demoApp-docker)

                    # Health Check
                    sleep 15
                    docker ps -f name=${app_name}
                    curl -iv --raw http://localhost:${app_port}/loginPage
                    curl -iv --raw http://localhost:${app_cov_port}/status

                    '''
            }
        }
        stage('SOAtest: Functional Test') {
            when { equals expected: true, actual: true }
            steps {
                // Run SOAtestCLI from docker
                sh  '''
                    docker run \
                    -u ${jenkins_uid}:${jenkins_gid} \
                    --rm -i \
                    --name soatest \
                    -e ACCEPT_EULA=true \
                    -v "$PWD/demoApp-jenkins:/usr/local/parasoft/demoApp-jenkins" \
                    -w "/usr/local/parasoft" \
                    --network=demo-net \
                    $(docker build --build-arg HOST_UID="$jenkins_uid" --build-arg HOST_GID="$jenkins_gid" -q ./demoApp-jenkins/soatest) /bin/bash -c " \

                    #Checking permissions of the entrypoint sh file
                    ls -l /usr/local/parasoft/soavirt/entrypoint.sh; \

                    # Create workspace directory and copy SOAtest project into it
                    mkdir -p ./soavirt_workspace; \
                    cp -f -R ./demoApp-jenkins ./soavirt_workspace/demoApp-jenkins; \

                    # SOAtest requires a project to be "imported" before you can run it
                    ./soavirt/soatestcli \
                    -data ./soavirt_workspace \
                    -settings ./soavirt_workspace/demoApp-jenkins/soatest/soatestcli.properties \
                    -import ./soavirt_workspace/demoApp-jenkins/.project; \

                    # Execute the project with SOAtest CLI
                    ./soavirt/soatestcli \
                    -J-Dcom.parasoft.browser.BrowserPropertyOptions.CHROME_ARGUMENTS=headless,disable-gpu,no-sandbox,disable-dev-shm-usage \
                    -J-Dwebtool.browsercontroller.webdriver.thirdparty.GeneralOptions.MAN_IN_THE_MIDDLE_ENABLED=false \
                    -data ./soavirt_workspace \
                    -resource /demoApp-jenkins/soatest/SOAtestProject/functional \
                    -config '${soatestConfig}' \
                    -settings ./soavirt_workspace/demoApp-jenkins/soatest/soatestcli.properties \
                    -property application.coverage.runtime.dir=/usr/local/parasoft/soavirt_workspace/SOAtestProject/coverage_runtime_dir \
                    -report ./demoApp-jenkins/soatest/func-report \
                    "
                    '''
                    //Archive all documents for review
                    archiveArtifacts artifacts: '**/demoApp-jenkins/soatest/func-report/**', allowEmptyArchive: true
                echo '---> Parsing 9.x soatest reports'
                script {
                    step([$class: 'XUnitPublisher',
                        // thresholds: [failed(
                        //     failureNewThreshold: '10',
                        //     failureThreshold: '10',
                        //     unstableNewThreshold: '20',
                        //     unstableThreshold: '20')
                        // ],
                        tools: [[$class: 'ParasoftSOAtest9xType',
                            deleteOutputFiles: true,
                            failIfNotNew: false,
                            pattern: '**/soatest/func-report/*.xml',
                            skipNoTestFiles: true,
                            stopProcessingIfError: false
                        ]]
                    ])
                }
            }
        }
        stage('Selenic: Java Selenium Test') {
            when { equals expected: true, actual: true }
            steps {
                // Run Selenic from docker
                sh  '''
                    #TODO
                    '''
            }
        }
        stage('SOAtest: Shift-Left Load Test') {
            when { equals expected: true, actual: true }
            steps {
                // Run Load Test CLI from docker
                sh  '''
                   docker run \
                    -u ${jenkins_uid}:${jenkins_gid} \
                    --rm -i \
                    --name loadtest \
                    -e ACCEPT_EULA=true \
                    -v "$PWD/demoApp-jenkins:/usr/local/parasoft/demoApp-jenkins" \
                    -w "/usr/local/parasoft" \
                    --network=demo-net \
                    $(docker build --build-arg HOST_UID="$jenkins_uid" --build-arg HOST_GID="$jenkins_gid" -q ./demoApp-jenkins/soatest) /bin/bash -c " \

                    # Execute the project with SOAtest CLI
                    ./soavirt/loadtest \
                    -cmd \
                    -run ./demoApp-jenkins/soatest/SOAtestProject/loadtest/script.txt \
                    -licenseServer ${ls_url} \
                    -licenseUsername ${ls_user} \
                    -licensePassword ${ls_pass} \
                    -licenseVus 1000 \
                    "
                    '''
                    archiveArtifacts artifacts: '/usr/local/parasoft/demoApp-jenkins/soatest/load-report/*.html', allowEmptyArchive: true
                echo '---> Parsing 9.x soatest reports'
            }
        }

        stage('Jtest: Stop Monitor') {
            steps {
                sh 'docker stop jtest-monitor'
                sh 'docker cp jtest-monitor:/home/parasoft/jenkins/demoApp/build/reports/jtest ./demoApp/build/reports/jtest'
                archiveArtifacts artifacts: '**/demoApp/build/reports/jtest/**', allowEmptyArchive: true
            }
        }

        stage('Release') {
            steps {
                // Release the project
                sh  '''
                # Clean up

                '''
            }
        }
    }
    post {
        // Clean after build
        always {
            sh 'docker container stop ${app_name}'
            sh 'docker container rm ${app_name}'
            sh 'docker container prune -f'
            sh 'docker image prune -f'

            archiveArtifacts(artifacts: '''
                    **/target/**/*.war,
                    **/target/jtest/sa/**,
                    **/target/jtest/ut/**,
                    **/target/jtest/monitor/**,
                    **/soatest/func-report/**,
                    **/soatest/load-report/**''',
                fingerprint: true,
                onlyIfSuccessful: true,
                excludes: '''
                    **/.jtest/**,
                    **/metadata.json'''
            )

            deleteDir()
        }
    }
}
