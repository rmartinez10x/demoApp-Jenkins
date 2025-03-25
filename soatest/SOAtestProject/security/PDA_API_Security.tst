---
parasoftVersion: 2024.2.0
productVersion: 10.7.1
schemaVersion: 1
suite:
  $type: TestSuite
  hasEnvironmentConfig: true
  environmentConfig:
    environments:
    - variables:
      - name: SWAGGER
        value: http://localhost:4040/pda/api-docs/v1
      - name: BASEURL
        value: http://localhost:4040
      - name: SWAGGER_2
        value: http://localhost:4040/pda/api-docs/v1-proxy
      name: localhost
    - variables:
      - name: SWAGGER
        value: http://qa1.parasoft.com:4040/pda/api-docs/v1
      - name: BASEURL
        value: http://qa1.parasoft.com:4040
      - name: SWAGGER_2
        value: http://qa1.parasoft.com:4040/pda/api-docs/v1-proxy
      name: qa1.parasoft.com
    - variables:
      - name: BASEURL
        value: http://demoApp-baseline:8080
      - name: PDA_BASEURL
        value: http://demoApp-baseline:8080
      - name: SWAGGER_2
        value: http://demoApp-baseline:8080/pda/api-docs/v1-proxy
      - name: SWAGGER
        value: http://demoApp-baseline:8080/pda/api-docs/v1
      - name: DATAREPO
        value: demoApp-baseline
      name: DemoApp_baseline
      active: true
  enabled: true
  name: Test Suite
  rootTestSuite: true
  lastModifiedBy: rmartinez
  authentications:
  - $type: BasicAuthentication
    name: Basic
    dataSourceNames:
    - Users
    username:
      fixedValue:
        $type: StringTestValue
      parameterizedValue:
        column: username
      selectedIndex: -2
    password:
      fixedValue:
        $type: PasswordTestValue
      parameterizedValue:
        column: password
      selectedIndex: -2
  profileMappingID: 0
  maxProfileMappingID: 52
  tearDownTests:
  - $type: RESTClientToolTest
    testID: 350
    enabled: true
    name: REST Client
    tool:
      $type: RESTClient
      dataSourceNames:
      - Users
      iconName: RESTClient
      name: REST Client
      formJson:
        value:
          $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            hash: 1
            localName: root
            bodyType:
              $type: ComplexType
              hash: 2
              attributes:
              - hash: 3
                ns: ""
                name: type
                fixed: object
                contentType:
                  $type: StringType
                  hash: 4
                required: true
              name: rootType
              compositor: true
              compositorObj:
                $type: AllCompositor
                hash: 5
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            attributes:
            - replacedColumn: ""
              value:
                $type: StringValue
                replacedColumn: ""
                value: object
              useValue: true
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
        elementTypeName: root
      jsonBuilder:
        hasValue: true
        value:
          $type: JSONObjectValue
          nameIsNull: true
      formInput:
        value:
          $type: ElementValue
          writeType: true
          type:
            $type: ElementType
            hash: 1
            localName: ""
            bodyType:
              $type: ComplexType
              hash: 2
              name: anonymous
              compositor: true
              compositorObj:
                $type: SequenceCompositor
                hash: 3
          replacedColumn: ""
          values:
          - $type: ComplexValue
            replacedColumn: ""
            compositorValue: true
            compositorValueObj:
              replacedColumn: ""
              values:
                $type: CompositorValueSetCollectionSet
                set:
                - $type: CompositorValueSet
      constrainToSchema: false
      jmsMessageOutputProvider:
        $type: JMSMessageOutputProvider
        jmsOutputProviderRequest:
          $type: JMSOutputProvider
          name: Request Object
          menuName: Object
        jmsOutputProviderResponse:
          $type: JMSOutputProvider
          name: Response Message Object
          menuName: Message Object
      router:
        values:
        - $type: ScriptedValue
        fixedValue:
          $type: StringTestValue
          HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/databaseReset"
      transportProperties:
        manager:
          properties:
          - $type: HTTPClientHTTPProperties
            followRedirects:
              bool: true
            common:
              method:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
            keepAlive1_1:
              bool: true
        messageExchangePattern:
          inverted: true
      outputProviders:
        requestHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Request Transport Header
        responseHeader:
          $type: HTTPNamedToolOutputProvider
          menuName: Transport Header
          name: Response Transport Header
        xmlRequestOutput:
          $type: NamedXMLToolOutputProvider
          menuName: Traffic
          name: Request Traffic
        trafficOutput:
          m_name: Traffic Stream
        objectOutput:
          $type: ObjectOutputProvider
          outputTools:
          - $type: TrafficViewer
            iconName: TrafficViewer
            name: Traffic Viewer
            showRequestHeaders: true
            showResponseHeaders: true
          name: Traffic Object
      literal:
        use: 1
        text:
          MessagingClient_LiteralMessage: ""
          type: application/json
        dataSource:
          columnName: CartItemId
      mode: Literal
      literalQuery:
        isPropertiesRef: true
      literalPath:
        pathElements:
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: v1
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: demoAdmin
        - values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            value: databaseReset
      resourceMethod:
        httpMethod: GET
      baseUrl:
        values:
        - $type: ScriptedValue
        - $type: WadlTestValue
        fixedValue:
          $type: StringTestValue
        selectedIndex: 1
  nextIdentifier: 352
  dataSources:
  - id: ds_-2047765590_1633021940511_423275451
    impl:
      $type: TableDataSource
      model:
        columnIdentifiers:
        - username
        - password
        rows:
        - - purchaser
          - password
    name: Users
    useAllRows: true
  tests:
  - $type: TestSuite
    testLogic: true
    testID: 110
    enabled: true
    name: /pda/api-docs/v1
    profileMappingID: 1
    setUpTests:
    - $type: RESTClientToolTest
      testLogic: true
      testID: 223
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - Users
        iconName: RESTClient
        name: PUT localhost/v1/demoAdmin/databaseReset
        formJson:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :root
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              attributes:
              - replacedColumn: ""
                value:
                  $type: StringValue
                  replacedColumn: ""
                  value: object
                  xmlEncoding: 2
                useValue: true
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
          elementTypeName: root
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        formInput:
          value:
            $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: ":"
            replacedColumn: ""
            values:
            - $type: ComplexValue
              replacedColumn: ""
              compositorValue: true
              compositorValueObj:
                replacedColumn: ""
                values:
                  $type: CompositorValueSetCollectionSet
                  set:
                  - $type: CompositorValueSet
        constrainToSchema: false
        jmsMessageOutputProvider:
          $type: JMSMessageOutputProvider
          jmsOutputProviderRequest:
            $type: JMSOutputProvider
            name: Request Object
            menuName: Object
          jmsOutputProviderResponse:
            $type: JMSOutputProvider
            name: Response Message Object
            menuName: Message Object
        validResponseRange:
          validResponseRange:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              validResponseRange: 200
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/databaseReset"
        transportProperties:
          manager:
            protocol: 1
            properties:
            - $type: HTTPClientHTTPProperties
              followRedirects:
                bool: true
              common:
                auth:
                  useDefault: false
                  authName: Basic
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: PUT
                httpHeaders:
                  properties:
                  - name: sec-ch-ua
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "\"Google Chrome\";v=\"93\", \" Not;A Brand\";v=\"\
                          99\", \"Chromium\";v=\"93\""
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: sec-ch-ua-mobile
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: ?0
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36"
                  - name: sec-ch-ua-platform
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: '"Windows"'
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://localhost:8080
                  - name: Sec-Fetch-Site
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: same-origin
                  - name: Sec-Fetch-Mode
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: cors
                  - name: Sec-Fetch-Dest
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: empty
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://localhost:8080/demoAdmin
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate, br"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
                auth:
                  useDefault: false
                  authName: Basic
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: PUT
                httpHeaders:
                  properties:
                  - name: sec-ch-ua
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "\"Google Chrome\";v=\"93\", \" Not;A Brand\";v=\"\
                          99\", \"Chromium\";v=\"93\""
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: sec-ch-ua-mobile
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: ?0
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/93.0.4577.82 Safari/537.36"
                  - name: sec-ch-ua-platform
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: '"Windows"'
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://localhost:8080
                  - name: Sec-Fetch-Site
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: same-origin
                  - name: Sec-Fetch-Mode
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: cors
                  - name: Sec-Fetch-Dest
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: empty
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://localhost:8080/demoAdmin
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate, br"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
              keepAlive1_1:
                bool: true
            - $type: NoneTransportProperties
          messageExchangePattern:
            inverted: true
        outputProviders:
          requestHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Request Transport Header
          responseHeader:
            $type: HTTPNamedToolOutputProvider
            menuName: Transport Header
            name: Response Transport Header
          xmlRequestOutput:
            $type: NamedXMLToolOutputProvider
            menuName: Traffic
            name: Request Traffic
          trafficOutput:
            m_name: Traffic Stream
          objectOutput:
            $type: ObjectOutputProvider
            outputTools:
            - $type: TrafficViewer
              iconName: TrafficViewer
              name: Traffic Viewer
              showRequestHeaders: true
              showResponseHeaders: true
            name: Traffic Object
        literal:
          use: 1
          text:
            MessagingClient_LiteralMessage: ""
            type: text/plain
          dataSource:
            columnName: A
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: v1
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: demoAdmin
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: databaseReset
        resourceMethod:
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    nextIdentifier: 304
    tests:
    - $type: TestSuite
      testLogic: true
      testID: 111
      enabled: true
      name: /v1/assets/categories
      profileMappingID: 2
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 226
        enabled: true
        name: /v1/assets/categories - POST
        performanceGroup: 1
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/assets/categories - POST
          outputTools:
          - $type: GenericDataBank
            dataSourceNames:
            - Users
            iconName: XMLDataBank
            name: JSON Data Bank
            wrappedTool:
              $type: XMLtoDataSource
              dataSourceNames:
              - Users
              iconName: XMLDataBank
              name: XML Data Bank
              selectedXPaths:
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/id[1]/text()"
                mode: 1
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/name[1]/text()"
                mode: 1
              canonicalizeOutput: true
              xmlMessage: true
              virtualDSCreator:
                writableColumns:
                - customName: CategoryId
                - customName: CategoryName
            conversionStrategy:
              dataFormatName: JSON
              conversionStrategyId: JSON
              conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/CategoryDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: name
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 9
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 10
                    - $type: ElementType
                      hash: 11
                      minOccurs: 0
                      localName: description
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 12
                      minOccurs: 0
                      localName: imagePath
                      bodyType:
                        $type: ComplexType
                        hash: 7
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: NewCategory
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: NewCategory description
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:4040/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          timeout:
            useDefault: false
            timeout: 300000
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showResponseHeaders: true
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"\",\"description\":\"\"\
                ,\"imagePath\":\"\"}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: categories
          resourceMethod:
            resourceId: /v1/assets/categories
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 112
        enabled: true
        name: /v1/assets/categories - GET
        performanceGroup: 0
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/assets/categories - GET
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories?searchString&page=0&size=0&sort"
          urlParameters:
            properties:
            - name: searchString
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
            - name: page
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: size
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: sort
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                minOccurs: 0
                localName: searchString
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                minOccurs: 0
                localName: page
                bodyType:
                  $type: BigIntegerType
                  hash: 2
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                minOccurs: 0
                localName: size
                bodyType:
                  $type: BigIntegerType
                  hash: 2
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                minOccurs: 0
                maxOccurs: -1
                localName: sort
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: categories
          resourceMethod:
            resourceId: /v1/assets/categories
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 216
        enabled: true
        name: "/v1/assets/categories/name/{categoryName} - GET"
        performanceGroup: 1
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/assets/categories/name/{categoryName} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories/name/{categoryName}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: password
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: categories
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: name
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{categoryName}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: categoryName
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                mode: 3
                columnName: CategoryName
                value: Category-1
                xmlEncoding: 2
          resourceMethod:
            resourceId: "/v1/assets/categories/name/{categoryName}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 217
        enabled: true
        name: "/v1/assets/categories/{categoryId} - GET"
        performanceGroup: 2
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/assets/categories/{categoryId} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories/{categoryId}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: categories
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{categoryId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: categoryId
                bodyType:
                  $type: LongType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                mode: 3
                columnName: CategoryId
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/categories/{categoryId}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 218
        enabled: true
        name: "/v1/assets/categories/{categoryId} - PUT"
        performanceGroup: 3
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/assets/categories/{categoryId} - PUT"
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/CategoryDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: name
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 9
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 10
                    - $type: ElementType
                      hash: 11
                      minOccurs: 0
                      localName: description
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 12
                      minOccurs: 0
                      localName: imagePath
                      bodyType:
                        $type: ComplexType
                        hash: 7
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            mode: 3
                            columnName: CategoryName
                            value: NewCategory
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: Updated description
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories/{categoryId}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"\",\"description\":\"\"\
                ,\"imagePath\":\"\"}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: categories
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{categoryId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :categoryId
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                mode: 3
                columnName: CategoryId
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/categories/{categoryId}"
            httpMethod: PUT
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 219
        enabled: true
        name: "/v1/assets/categories/{categoryId} - DELETE"
        performanceGroup: 4
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/assets/categories/{categoryId} - DELETE"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories/{categoryId}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: categories
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{categoryId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :categoryId
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                mode: 3
                columnName: CategoryId
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/categories/{categoryId}"
            httpMethod: DELETE
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 120
      name: /v1/assets/items
      profileMappingID: 5
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 122
        enabled: true
        name: /v1/assets/items - POST
        performanceGroup: 4
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/assets/items - POST
          outputTools:
          - $type: GenericDataBank
            dataSourceNames:
            - Users
            iconName: XMLDataBank
            name: JSON Data Bank
            wrappedTool:
              $type: XMLtoDataSource
              dataSourceNames:
              - Users
              iconName: XMLDataBank
              name: XML Data Bank
              selectedXPaths:
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/id[1]/text()"
                mode: 1
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/name[1]/text()"
                mode: 1
              canonicalizeOutput: true
              xmlMessage: true
              virtualDSCreator:
                writableColumns:
                - customName: ItemId
                - customName: ItemName
            conversionStrategy:
              dataFormatName: JSON
              conversionStrategyId: JSON
              conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/ItemsDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: name
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 9
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 10
                    - $type: ElementType
                      hash: 11
                      minOccurs: 0
                      localName: description
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 12
                      minOccurs: 0
                      localName: categoryId
                      bodyType:
                        $type: ComplexType
                        hash: 13
                        attributes:
                        - hash: 14
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: LongType
                          hash: 15
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 16
                    - $type: ElementType
                      hash: 17
                      minOccurs: 0
                      localName: inStock
                      bodyType:
                        $type: ComplexType
                        hash: 18
                        attributes:
                        - hash: 19
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 20
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 21
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 22
                    - $type: ElementType
                      hash: 23
                      minOccurs: 0
                      localName: imagePath
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 24
                      minOccurs: 0
                      localName: region
                      bodyType:
                        $type: ComplexType
                        hash: 25
                        attributes:
                        - hash: 26
                          ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            hash: 20
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 27
                          values:
                          - '"UNITED_STATES"'
                          - '"UNITED_KINGDOM"'
                          - '"GERMANY"'
                          - '"FRANCE"'
                          - '"JAPAN"'
                          - '"SOUTH_KOREA"'
                          - '"SPAIN"'
                          - '"AUSTRALIA"'
                          - '"MERCURY"'
                          - '"VENUS"'
                          - '"EARTH"'
                          - '"MARS"'
                          - '"JUPITER"'
                          - '"SATURN"'
                          - '"URANUS"'
                          - '"NEPTUNE"'
                          - '"LOCATION_1"'
                          - '"LOCATION_2"'
                          - '"LOCATION_3"'
                          - '"LOCATION_4"'
                          - '"LOCATION_5"'
                          - '"LOCATION_6"'
                          - '"LOCATION_7"'
                          - '"LOCATION_8"'
                          baseType: anonymous
                        name: /components/schemas/ItemsDTO/properties/region
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 28
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: NewItem
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: NewItem description
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: LongValue
                            replacedColumn: ""
                            columnName: CategoryId
                            value: 1
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            value: 0
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: enum
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: EnumValue
                            replacedColumn: ""
                            selectedIdx: 16
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"\",\"description\":\"\"\
                ,\"categoryId\":0,\"inStock\":0,\"imagePath\":\"\",\"region\":\"UNITED_STATES\"\
                }"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: items
          resourceMethod:
            resourceId: /v1/assets/items
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 253
        enabled: true
        name: /v1/assets/items - GET
        performanceGroup: 3
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/assets/items - GET
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items?categoryId=0&regions=UNITED_STATES&searchString&page=0&size=0&sort"
          urlParameters:
            properties:
            - name: categoryId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: regions
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: UNITED_STATES
            - name: searchString
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
            - name: page
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: size
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: sort
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                minOccurs: 0
                localName: categoryId
                bodyType:
                  $type: LongType
                  hash: 2
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: UNITED_STATES
                minOccurs: 0
                maxOccurs: -1
                localName: regions
                bodyType:
                  $type: EnumType
                  hash: 2
                  values:
                  - UNITED_STATES
                  - UNITED_KINGDOM
                  - GERMANY
                  - FRANCE
                  - JAPAN
                  - SOUTH_KOREA
                  - SPAIN
                  - AUSTRALIA
                  - MERCURY
                  - VENUS
                  - EARTH
                  - MARS
                  - JUPITER
                  - SATURN
                  - URANUS
                  - NEPTUNE
                  - LOCATION_1
                  - LOCATION_2
                  - LOCATION_3
                  - LOCATION_4
                  - LOCATION_5
                  - LOCATION_6
                  - LOCATION_7
                  - LOCATION_8
                  baseType: string
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :searchString
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :page
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :size
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :sort
              replacedColumn: ""
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: items
          resourceMethod:
            resourceId: /v1/assets/items
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 277
        enabled: true
        name: "/v1/assets/items/name/{itemName} - GET"
        performanceGroup: 5
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/assets/items/name/{itemName} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/name/{itemName}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: items
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: name
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{itemName}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: itemName
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                mode: 3
                columnName: ItemName
                value: ""
                xmlEncoding: 2
          resourceMethod:
            resourceId: "/v1/assets/items/name/{itemName}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 251
        enabled: true
        name: "/v1/assets/items/inStock/{itemId} - PUT"
        performanceGroup: 4
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/assets/items/inStock/{itemId} - PUT"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/inStock/{itemId}?newInStock=0"
          urlParameters:
            properties:
            - name: newInStock
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: newInStock
                bodyType:
                  $type: IntegerType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: IntegerValue
                replacedColumn: ""
                value: 0
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: items
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: inStock
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{itemId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: itemId
                bodyType:
                  $type: LongType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                mode: 3
                columnName: ItemId
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/items/inStock/{itemId}"
            httpMethod: PUT
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 246
        enabled: true
        name: "/v1/assets/items/name/{itemName} - DELETE"
        performanceGroup: 6
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/assets/items/name/{itemName} - DELETE"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/name/{itemName}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: items
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: name
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{itemName}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemName
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                mode: 3
                columnName: ItemName
                value: ""
                xmlEncoding: 2
          resourceMethod:
            resourceId: "/v1/assets/items/name/{itemName}"
            httpMethod: DELETE
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 279
        enabled: true
        name: /v1/assets/items - POST 2
        performanceGroup: 4
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/assets/items - POST 2
          outputTools:
          - $type: GenericDataBank
            dataSourceNames:
            - Users
            iconName: XMLDataBank
            name: JSON Data Bank
            wrappedTool:
              $type: XMLtoDataSource
              dataSourceNames:
              - Users
              iconName: XMLDataBank
              name: XML Data Bank
              selectedXPaths:
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/id[1]/text()"
                mode: 1
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/name[1]/text()"
                mode: 1
              canonicalizeOutput: true
              xmlMessage: true
              virtualDSCreator:
                writableColumns:
                - customName: ItemId
                - customName: ItemName
            conversionStrategy:
              dataFormatName: JSON
              conversionStrategyId: JSON
              conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/ItemsDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: name
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 9
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 10
                    - $type: ElementType
                      hash: 11
                      minOccurs: 0
                      localName: description
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 12
                      minOccurs: 0
                      localName: categoryId
                      bodyType:
                        $type: ComplexType
                        hash: 13
                        attributes:
                        - hash: 14
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: LongType
                          hash: 15
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 16
                    - $type: ElementType
                      hash: 17
                      minOccurs: 0
                      localName: inStock
                      bodyType:
                        $type: ComplexType
                        hash: 18
                        attributes:
                        - hash: 19
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 20
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 21
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 22
                    - $type: ElementType
                      hash: 23
                      minOccurs: 0
                      localName: imagePath
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 24
                      minOccurs: 0
                      localName: region
                      bodyType:
                        $type: ComplexType
                        hash: 25
                        attributes:
                        - hash: 26
                          ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            hash: 20
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 27
                          values:
                          - '"UNITED_STATES"'
                          - '"UNITED_KINGDOM"'
                          - '"GERMANY"'
                          - '"FRANCE"'
                          - '"JAPAN"'
                          - '"SOUTH_KOREA"'
                          - '"SPAIN"'
                          - '"AUSTRALIA"'
                          - '"MERCURY"'
                          - '"VENUS"'
                          - '"EARTH"'
                          - '"MARS"'
                          - '"JUPITER"'
                          - '"SATURN"'
                          - '"URANUS"'
                          - '"NEPTUNE"'
                          - '"LOCATION_1"'
                          - '"LOCATION_2"'
                          - '"LOCATION_3"'
                          - '"LOCATION_4"'
                          - '"LOCATION_5"'
                          - '"LOCATION_6"'
                          - '"LOCATION_7"'
                          - '"LOCATION_8"'
                          baseType: anonymous
                        name: /components/schemas/ItemsDTO/properties/region
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 28
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: NewItem
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: NewItem description
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: LongValue
                            replacedColumn: ""
                            columnName: CategoryId
                            value: 1
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            value: 0
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: enum
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: EnumValue
                            replacedColumn: ""
                            selectedIdx: 16
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"\",\"description\":\"\"\
                ,\"categoryId\":0,\"inStock\":0,\"imagePath\":\"\",\"region\":\"UNITED_STATES\"\
                }"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: items
          resourceMethod:
            resourceId: /v1/assets/items
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 280
        enabled: true
        name: "/v1/assets/items/{itemId} - GET"
        performanceGroup: 6
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/assets/items/{itemId} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/{itemId}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: items
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{itemId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemId
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                mode: 3
                columnName: ItemId
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/items/{itemId}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 281
        enabled: true
        name: "/v1/assets/items/{itemId} - PUT"
        performanceGroup: 7
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/assets/items/{itemId} - PUT"
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/ItemsDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: name
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 9
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 10
                    - $type: ElementType
                      hash: 11
                      minOccurs: 0
                      localName: description
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 12
                      minOccurs: 0
                      localName: categoryId
                      bodyType:
                        $type: ComplexType
                        hash: 13
                        attributes:
                        - hash: 14
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: LongType
                          hash: 15
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 16
                    - $type: ElementType
                      hash: 17
                      minOccurs: 0
                      localName: inStock
                      bodyType:
                        $type: ComplexType
                        hash: 18
                        attributes:
                        - hash: 19
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 20
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 21
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 22
                    - $type: ElementType
                      hash: 23
                      minOccurs: 0
                      localName: imagePath
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 24
                      minOccurs: 0
                      localName: region
                      bodyType:
                        $type: ComplexType
                        hash: 25
                        attributes:
                        - hash: 26
                          ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            hash: 20
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 27
                          values:
                          - '"UNITED_STATES"'
                          - '"UNITED_KINGDOM"'
                          - '"GERMANY"'
                          - '"FRANCE"'
                          - '"JAPAN"'
                          - '"SOUTH_KOREA"'
                          - '"SPAIN"'
                          - '"AUSTRALIA"'
                          - '"MERCURY"'
                          - '"VENUS"'
                          - '"EARTH"'
                          - '"MARS"'
                          - '"JUPITER"'
                          - '"SATURN"'
                          - '"URANUS"'
                          - '"NEPTUNE"'
                          - '"LOCATION_1"'
                          - '"LOCATION_2"'
                          - '"LOCATION_3"'
                          - '"LOCATION_4"'
                          - '"LOCATION_5"'
                          - '"LOCATION_6"'
                          - '"LOCATION_7"'
                          - '"LOCATION_8"'
                          baseType: anonymous
                        name: /components/schemas/ItemsDTO/properties/region
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 28
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            mode: 3
                            columnName: ItemName
                            value: NewItem
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: Updated description
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: LongValue
                            replacedColumn: ""
                            value: 1
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: number
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            value: 0
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: enum
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: EnumValue
                            replacedColumn: ""
                            selectedIdx: 16
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/{itemId}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"name\":\"\",\"description\":\"\"\
                ,\"categoryId\":0,\"inStock\":0,\"imagePath\":\"\",\"region\":\"UNITED_STATES\"\
                }"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: items
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{itemId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemId
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                mode: 3
                columnName: ItemId
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/items/{itemId}"
            httpMethod: PUT
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 249
        enabled: true
        name: "/v1/assets/items/{itemId} - DELETE"
        performanceGroup: 8
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/assets/items/{itemId} - DELETE"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/{itemId}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: assets
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: items
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{itemId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemId
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                mode: 3
                columnName: ItemId
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/items/{itemId}"
            httpMethod: DELETE
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 132
      name: /v1/cartItems
      profileMappingID: 9
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 274
        enabled: true
        name: /v1/cartItems - POST
        performanceGroup: 8
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/cartItems - POST
          outputTools:
          - $type: GenericDataBank
            dataSourceNames:
            - Users
            iconName: XMLDataBank
            name: JSON Data Bank
            wrappedTool:
              $type: XMLtoDataSource
              dataSourceNames:
              - Users
              iconName: XMLDataBank
              name: XML Data Bank
              selectedXPaths:
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/id[1]/text()"
                mode: 1
              canonicalizeOutput: true
              xmlMessage: true
              virtualDSCreator:
                writableColumns:
                - customName: CartItemId
            conversionStrategy:
              dataFormatName: JSON
              conversionStrategyId: JSON
              conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems?itemId=0&itemQty=0"
          urlParameters:
            properties:
            - name: itemId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: itemQty
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemId
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                value: 1
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: 0
                localName: itemQty
                bodyType:
                  $type: LongType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                value: 1
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: cartItems
          resourceMethod:
            resourceId: /v1/cartItems
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 133
        enabled: true
        name: /v1/cartItems - GET
        performanceGroup: 7
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/cartItems - GET
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: cartItems
          resourceMethod:
            resourceId: /v1/cartItems
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 282
        enabled: true
        name: "/v1/cartItems/{itemId} - PUT"
        performanceGroup: 9
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/cartItems/{itemId} - PUT"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems/{itemId}?itemQty=0"
          urlParameters:
            properties:
            - name: itemQty
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemQty
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                value: 1
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: cartItems
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{itemId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemId
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                columnName: CartItemId
                value: 1
          resourceMethod:
            resourceId: "/v1/cartItems/{itemId}"
            httpMethod: PUT
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 283
        enabled: true
        name: "/v1/cartItems/{itemId} - GET"
        performanceGroup: 8
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/cartItems/{itemId} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems/{itemId}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: cartItems
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{itemId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemId
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                columnName: CartItemId
                value: 1
          resourceMethod:
            resourceId: "/v1/cartItems/{itemId}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 256
        enabled: true
        name: "/v1/cartItems/{itemId} - DELETE"
        performanceGroup: 10
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/cartItems/{itemId} - DELETE"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems/{itemId}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: cartItems
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{itemId}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemId
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                columnName: CartItemId
                value: 1
          resourceMethod:
            resourceId: "/v1/cartItems/{itemId}"
            httpMethod: DELETE
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 290
        enabled: true
        name: /v1/cartItems - POST 2
        performanceGroup: 8
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/cartItems - POST 2
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems?itemId=0&itemQty=0"
          urlParameters:
            properties:
            - name: itemId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: itemQty
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemId
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                value: 1
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemQty
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                value: 1
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: cartItems
          resourceMethod:
            resourceId: /v1/cartItems
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 288
        enabled: true
        name: /v1/cartItems - DELETE
        performanceGroup: 9
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/cartItems - DELETE
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: DELETE
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: cartItems
          resourceMethod:
            resourceId: /v1/cartItems
            httpMethod: DELETE
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 306
        enabled: true
        name: /v1/cartItems - POST 3
        performanceGroup: 8
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/cartItems - POST 3
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems?itemId=0&itemQty=0"
          urlParameters:
            properties:
            - name: itemId
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: itemQty
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CategoryId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemId
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                value: 1
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :itemQty
              replacedColumn: ""
              values:
              - $type: LongValue
                replacedColumn: ""
                value: 1
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: cartItems
          resourceMethod:
            resourceId: /v1/cartItems
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 154
      name: /v1/images
      profileMappingID: 18
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 155
        enabled: true
        name: /v1/images - POST
        performanceGroup: 16
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/images - POST
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          postDataTable:
            properties:
            - name: image
              value:
                values:
                - $type: ScriptedValue
                - $type: RelativeLocationTestValue
                fixedValue:
                  $type: StringTestValue
                selectedIndex: 1
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/images"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: multipart/form-data
          mode: Param Input
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: images
          resourceMethod:
            resourceId: /v1/images
            httpMethod: POST
          payloadFormat: MIME Multipart
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
          parameters:
          - $type: ElementValue
            writeType: true
            type:
              $type: ElementType
              hash: 1
              minOccurs: 0
              localName: image
              bodyType:
                $type: Base64BinaryType
                hash: 2
            replacedColumn: ""
    - $type: TestSuite
      testLogic: true
      testID: 156
      name: /v1/labels
      profileMappingID: 19
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 267
        enabled: true
        name: /v1/labels/overrided - GET
        performanceGroup: 19
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/labels/overrided - GET
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/labels/overrided?language=EN"
          urlParameters:
            properties:
            - name: language
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: EN
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: EN
                localName: language
                bodyType:
                  $type: EnumType
                  hash: 2
                  values:
                  - EN
                  - ZH
                  baseType: string
              replacedColumn: ""
              values:
              - $type: EnumValue
                replacedColumn: ""
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: labels
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: overrided
          resourceMethod:
            resourceId: /v1/labels/overrided
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 266
        enabled: true
        name: /v1/labels/default - GET
        performanceGroup: 18
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/labels/default - GET
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/labels/default?language=EN"
          urlParameters:
            properties:
            - name: language
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: EN
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :language
              replacedColumn: ""
              values:
              - $type: EnumValue
                replacedColumn: ""
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: labels
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: default
          resourceMethod:
            resourceId: /v1/labels/default
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 157
        enabled: true
        name: /v1/labels - PUT
        performanceGroup: 17
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/labels - PUT
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/LabelsRequestDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: languageType
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 9
                          values:
                          - '"EN"'
                          - '"ZH"'
                          baseType: anonymous
                        name: /components/schemas/LabelsRequestDTO/properties/languageType
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 10
                    - $type: ElementType
                      hash: 11
                      minOccurs: 0
                      localName: labelsOverrided
                      bodyType:
                        $type: ComplexType
                        hash: 12
                        attributes:
                        - hash: 13
                          ns: ""
                          name: type
                          defaultValue: boolean
                          fixed: boolean
                          contentType:
                            $type: StringType
                            hash: 14
                          required: true
                        content: true
                        contentObj:
                          $type: BooleanType
                          hash: 15
                        namespace: urn:parasoft:json
                        name: boolean
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 16
                    - $type: ElementType
                      hash: 17
                      minOccurs: 0
                      localName: labelPairs
                      bodyType:
                        $type: ComplexType
                        hash: 18
                        attributes:
                        - hash: 19
                          ns: ""
                          name: type
                          defaultValue: object
                          fixed: object
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        name: /components/schemas/LabelsRequestDTO/properties/labelPairs
                        compositor: true
                        compositorObj:
                          $type: AllCompositor
                          hash: 20
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: enum
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: EnumValue
                            replacedColumn: ""
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: boolean
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: BooleanValue
                            replacedColumn: ""
                            value: "true"
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/labels"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"languageType\":\"EN\",\"labelsOverrided\"\
                :false,\"labelPairs\":{}}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: labels
          resourceMethod:
            resourceId: /v1/labels
            httpMethod: PUT
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 162
      name: /v1/locations/location
      profileMappingID: 22
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 163
        enabled: true
        name: /v1/locations/location - GET
        performanceGroup: 20
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/locations/location - GET
          outputTools:
          - $type: GenericDataBank
            dataSourceNames:
            - Users
            iconName: XMLDataBank
            name: JSON Data Bank
            wrappedTool:
              $type: XMLtoDataSource
              dataSourceNames:
              - Users
              iconName: XMLDataBank
              name: XML Data Bank
              selectedXPaths:
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/locationInfo[1]/text()"
                mode: 1
              canonicalizeOutput: true
              xmlMessage: true
              virtualDSCreator:
                writableColumns:
                - customName: Location
            conversionStrategy:
              dataFormatName: JSON
              conversionStrategyId: JSON
              conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/locations/location?region=UNITED_STATES"
          urlParameters:
            properties:
            - name: region
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: UNITED_STATES
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CartItemId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                defaultValue: UNITED_STATES
                localName: region
                bodyType:
                  $type: EnumType
                  hash: 2
                  values:
                  - UNITED_STATES
                  - UNITED_KINGDOM
                  - GERMANY
                  - FRANCE
                  - JAPAN
                  - SOUTH_KOREA
                  - SPAIN
                  - AUSTRALIA
                  - MERCURY
                  - VENUS
                  - EARTH
                  - MARS
                  - JUPITER
                  - SATURN
                  - URANUS
                  - NEPTUNE
                  - LOCATION_1
                  - LOCATION_2
                  - LOCATION_3
                  - LOCATION_4
                  - LOCATION_5
                  - LOCATION_6
                  - LOCATION_7
                  - LOCATION_8
                  baseType: string
              replacedColumn: ""
              values:
              - $type: EnumValue
                replacedColumn: ""
                selectedIdx: 16
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: locations
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: location
          resourceMethod:
            resourceId: /v1/locations/location
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 166
      name: /v1/orders
      profileMappingID: 24
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 167
        enabled: true
        name: /v1/orders - GET
        performanceGroup: 22
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/orders - GET
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/orders?page=0&size=0&sort"
          urlParameters:
            properties:
            - name: page
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: size
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: sort
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CartItemId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :page
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :size
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :sort
              replacedColumn: ""
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: orders
          resourceMethod:
            resourceId: /v1/orders
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 168
        enabled: true
        name: /v1/orders - POST
        performanceGroup: 23
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/orders - POST
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/OrderDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: region
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 9
                          values:
                          - '"UNITED_STATES"'
                          - '"UNITED_KINGDOM"'
                          - '"GERMANY"'
                          - '"FRANCE"'
                          - '"JAPAN"'
                          - '"SOUTH_KOREA"'
                          - '"SPAIN"'
                          - '"AUSTRALIA"'
                          - '"MERCURY"'
                          - '"VENUS"'
                          - '"EARTH"'
                          - '"MARS"'
                          - '"JUPITER"'
                          - '"SATURN"'
                          - '"URANUS"'
                          - '"NEPTUNE"'
                          - '"LOCATION_1"'
                          - '"LOCATION_2"'
                          - '"LOCATION_3"'
                          - '"LOCATION_4"'
                          - '"LOCATION_5"'
                          - '"LOCATION_6"'
                          - '"LOCATION_7"'
                          - '"LOCATION_8"'
                          baseType: anonymous
                        name: /components/schemas/OrderDTO/properties/region
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 10
                    - $type: ElementType
                      hash: 11
                      minOccurs: 0
                      localName: location
                      bodyType:
                        $type: ComplexType
                        hash: 12
                        attributes:
                        - hash: 13
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 14
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 4
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 15
                    - $type: ElementType
                      hash: 16
                      minOccurs: 0
                      localName: receiverId
                      bodyType:
                        $type: ComplexType
                        hash: 12
                    - $type: ElementType
                      hash: 17
                      minOccurs: 0
                      localName: eventId
                      bodyType:
                        $type: ComplexType
                        hash: 12
                    - $type: ElementType
                      hash: 18
                      minOccurs: 0
                      localName: eventNumber
                      bodyType:
                        $type: ComplexType
                        hash: 12
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: enum
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: EnumValue
                            replacedColumn: ""
                            selectedIdx: 16
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            mode: 3
                            columnName: Location
                            value: "29.90° E, 54.41° N"
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: Parasoft
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: 111
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
                      - $type: ElementValue
                        replacedColumn: ""
                        values:
                        - $type: ComplexValue
                          replacedColumn: ""
                          allowArrayExclude: true
                          attributes:
                          - replacedColumn: ""
                            value:
                              $type: StringValue
                              replacedColumn: ""
                              value: string
                              xmlEncoding: 2
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            value: 222
                            xmlEncoding: 2
                          compositorValue: true
                          compositorValueObj:
                            replacedColumn: ""
                            values:
                              $type: CompositorValueSetCollectionSet
                              set:
                              - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/orders"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: POST
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"region\":\"UNITED_STATES\",\"location\"\
                :\"\",\"receiverId\":\"\",\"eventId\":\"\",\"eventNumber\":\"\"}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: orders
          resourceMethod:
            resourceId: /v1/orders
            httpMethod: POST
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 269
        enabled: true
        name: "/v1/orders/{orderNumber} - PUT"
        performanceGroup: 24
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/orders/{orderNumber} - PUT"
          formJson:
            builtFromSchema: true
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    defaultValue: object
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: /components/schemas/OrderStatusDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: status
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            hash: 4
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 9
                          values:
                          - '"SUBMITTED"'
                          - '"APPROVED"'
                          - '"DECLINED"'
                          baseType: anonymous
                        name: /components/schemas/OrderStatusDTO/properties/status
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 10
                    - $type: ElementType
                      hash: 11
                      minOccurs: 0
                      localName: comments
                      bodyType:
                        $type: ComplexType
                        hash: 12
                        attributes:
                        - hash: 13
                          ns: ""
                          name: type
                          defaultValue: string
                          fixed: string
                          contentType:
                            $type: StringType
                            hash: 14
                          required: true
                        content: true
                        contentObj:
                          $type: StringType
                          hash: 4
                        namespace: urn:parasoft:json
                        name: string
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 15
                    - $type: ElementType
                      hash: 16
                      minOccurs: 0
                      localName: reviewedByPRCH
                      bodyType:
                        $type: ComplexType
                        hash: 17
                        attributes:
                        - hash: 18
                          ns: ""
                          name: type
                          defaultValue: boolean
                          fixed: boolean
                          contentType:
                            $type: StringType
                            hash: 19
                          required: true
                        content: true
                        contentObj:
                          $type: BooleanType
                          hash: 20
                        namespace: urn:parasoft:json
                        name: boolean
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 21
                    - $type: ElementType
                      hash: 22
                      minOccurs: 0
                      localName: reviewedByAPV
                      bodyType:
                        $type: ComplexType
                        hash: 17
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
                      values:
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/orders/{orderNumber}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: PUT
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: "{\"status\":\"SUBMITTED\",\"comments\"\
                :\"\",\"reviewedByPRCH\":false,\"reviewedByAPV\":false}"
              type: application/json
          mode: Form JSON
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: orders
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{orderNumber}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: orderNumber
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
                xmlEncoding: 2
          resourceMethod:
            resourceId: "/v1/orders/{orderNumber}"
            httpMethod: PUT
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 268
        enabled: true
        name: "/v1/orders/{orderNumber} - GET"
        performanceGroup: 23
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: "/v1/orders/{orderNumber} - GET"
          formJson:
            value:
              $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: root
                bodyType:
                  $type: ComplexType
                  hash: 2
                  attributes:
                  - hash: 3
                    ns: ""
                    name: type
                    fixed: object
                    contentType:
                      $type: StringType
                      hash: 4
                    required: true
                  name: rootType
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/orders/{orderNumber}"
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    authName: Basic
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CartItemId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: orders
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "{orderNumber}"
          constrainedPath:
            pathParameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :orderNumber
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
                xmlEncoding: 2
          resourceMethod:
            resourceId: "/v1/orders/{orderNumber}"
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 303
      name: /v1/search
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 1
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 304
        enabled: true
        name: /v1/search/categories - GET
        performanceGroup: 24
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/search/categories - GET
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/search/categories?key&page=0&size=0&sort"
          urlParameters:
            properties:
            - name: key
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
            - name: page
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: size
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: sort
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CartItemId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: key
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: Category
                xmlEncoding: 2
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :page
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :size
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :sort
              replacedColumn: ""
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: search
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: categories
          resourceMethod:
            resourceId: /v1/search/categories
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 305
        enabled: true
        name: /v1/search/items - GET
        performanceGroup: 25
        tool:
          $type: RESTClient
          dataSourceNames:
          - Users
          iconName: RESTClient
          name: /v1/search/items - GET
          formJson:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :root
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                attributes:
                - replacedColumn: ""
                  value:
                    $type: StringValue
                    replacedColumn: ""
                    value: object
                    xmlEncoding: 2
                  useValue: true
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
            elementTypeName: root
          hasServiceInfo: true
          serviceInfo:
            serviceDescriptor:
              $type: StandardServiceDescriptor
              location: http://localhost:8080/pda/api-docs/v1
            serviceName: ""
            versionName: ""
          jsonBuilder:
            hasValue: true
            value:
              $type: JSONObjectValue
              nameIsNull: true
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
          formInput:
            value:
              $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: ":"
              replacedColumn: ""
              values:
              - $type: ComplexValue
                replacedColumn: ""
                compositorValue: true
                compositorValueObj:
                  replacedColumn: ""
                  values:
                    $type: CompositorValueSetCollectionSet
                    set:
                    - $type: CompositorValueSet
          jmsMessageOutputProvider:
            $type: JMSMessageOutputProvider
            jmsOutputProviderRequest:
              $type: JMSOutputProvider
              name: Request Object
              menuName: Object
            jmsOutputProviderResponse:
              $type: JMSOutputProvider
              name: Response Message Object
              menuName: Message Object
          validResponseRange:
            validResponseRange:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                validResponseRange: 200
          router:
            values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              HTTPClient_Endpoint: "${BASEURL}/v1/search/items?key&page=0&size=0&sort"
          urlParameters:
            properties:
            - name: key
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
            - name: page
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: size
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: 0
            - name: sort
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
          transportProperties:
            manager:
              properties:
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                keepAlive1_1:
                  bool: true
              - $type: HTTPClientHTTPProperties
                followRedirects:
                  bool: true
                common:
                  auth:
                    useDefault: false
                    customType: 1
                  method:
                    values:
                    - $type: ScriptedValue
                    fixedValue:
                      $type: HTTPMethodTestValue
                      method: GET
                  httpHeaders:
                    properties:
                    - name: Accept
                      value:
                        values:
                        - $type: ScriptedValue
                        fixedValue:
                          $type: StringTestValue
                          value: application/json
                protocol: 1
                keepAlive1_1:
                  bool: true
              - $type: NoneTransportProperties
            messageExchangePattern:
              inverted: true
          outputProviders:
            requestHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Request Transport Header
            responseHeader:
              $type: HTTPNamedToolOutputProvider
              menuName: Transport Header
              name: Response Transport Header
            xmlRequestOutput:
              $type: NamedXMLToolOutputProvider
              menuName: Traffic
              name: Request Traffic
            trafficOutput:
              m_name: Traffic Stream
            objectOutput:
              $type: ObjectOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
              - $type: HttpPenTestingTool
                allowToolbar: false
                iconName: PentestTool
                name: Penetration Testing Tool
                objectOutput:
                  $type: ObjectOutputProvider
                  outputTools:
                  - $type: TrafficViewer
                    iconName: TrafficViewer
                    name: Traffic Viewer
                    showRequestHeaders: true
                    showResponseHeaders: true
                  name: Traffic Object
                errorsOutput:
                  name: Errors
              name: Traffic Object
          literal:
            use: 1
            text:
              MessagingClient_LiteralMessage: ""
              type: application/json
            dataSource:
              columnName: CartItemId
          mode: Literal
          literalQuery:
            isPropertiesRef: true
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :key
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: Item
                xmlEncoding: 2
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :page
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :size
              replacedColumn: ""
            - $type: ElementValue
              writeType: true
              hasReference: true
              qnameAsString: :sort
              replacedColumn: ""
          literalPath:
            pathElements:
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: v1
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: search
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: items
          resourceMethod:
            resourceId: /v1/search/items
            httpMethod: GET
          resourceMode: 3
          baseUrl:
            values:
            - $type: ScriptedValue
            - $type: WadlTestValue
              value: http://localhost:8080
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
