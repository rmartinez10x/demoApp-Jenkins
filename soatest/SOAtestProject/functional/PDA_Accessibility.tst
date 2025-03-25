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
      - name: LOCALHOST_BASE_URL
        value: http://localhost:4040
      - name: BASEURL
        value: http://localhost:4040
      name: Default localhost Environment
    - variables:
      - name: LOCALHOST_BASE_URL
        value: http://demoApp-baseline:8080
      - name: BASEURL
        value: http://demoApp-baseline:8080
      name: Baseline
      active: true
  enabled: true
  name: Test Suite
  rootTestSuite: true
  lastModifiedBy: rmartinez
  profileMappingID: 0
  maxProfileMappingID: 6
  setUpTests:
  - $type: RESTClientToolTest
    testID: 12
    enabled: true
    name: REST Client 2
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: REST Client 2
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
  tearDownTests:
  - $type: RESTClientToolTest
    testID: 10
    enabled: true
    name: REST Client
    tool:
      $type: RESTClient
      iconName: RESTClient
      name: REST Client
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
  nextIdentifier: 14
  tests:
  - $type: TestSuite
    testLogic: true
    testID: 1
    enabled: true
    name: Web Scenarios
    profileMappingID: 1
    tests:
    - $type: TestSuite
      testLogic: true
      testID: 2
      enabled: true
      name: Demo
      abortOnError: 1
      browserOptions:
        browserType:
          useDefault: false
          type:
            $type: SingleBrowserType
            typeValue: 3
      profileMappingID: 2
      runMode: 2
      tests:
      - $type: BrowserTest
        testLogic: true
        testID: 3
        enabled: true
        name: Navigate to "http://localhost:4040/loginPage"
        tool:
          $type: BrowserTestingTool
          usesAutomaticallyGeneratedName: true
          iconName: BrowserTest
          name: Navigate to "http://localhost:4040/loginPage"
          commands:
          - windowIdentifier:
              BrowserTestingTool_WindowName: ""
            action:
              $type: NavigateAction
              url:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  BrowserTestingTool_NavigateURL: "${LOCALHOST_BASE_URL}/loginPage"
          delaySettings:
            delays:
            - $type: PageLoadDelay
            - $type: ElementDelay
              windowIdentifier:
                WindowName: ""
              elementState: 1
              specifiedLocator:
                criteria:
                  $type: AttributeCriteria
                  elementName: any
                  attributeName: ""
          originalCommand: true
          command:
            windowIdentifier:
              BrowserTestingTool_WindowName: ""
            action:
              $type: NavigateAction
              url:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  BrowserTestingTool_NavigateURL: "${LOCALHOST_BASE_URL}/loginPage"
          browserContents: true
          contents:
            windowContents:
            - parentUrl: ""
              charSet: UTF-8
              url: http://localhost:4040/loginPage
              htmlSize: 1746
              html: !!binary |-
                H4sIAAAAAAAA/80Z227bNvS9X8FoD12B0kqaAusc21vaOoWHNQ7iFMOwDQYt0TYTilRJKolR9Dv2
                QfuxkRQl0bJ8SZwOy4PFy+G5X8iTzsH74bur3y/6YK4S2nvWMR9wn1Am22zWDeZKpe0wRGyWUSSu
                ZYuLWQDYDKI07QZpjE7TNAARRVJ2A70sI57ioNeZYxT3OlItKO79HM2RkFiB4NPVGXwTnPzBZn+2
                I8rRzV8v9RgWwxgpBL35vTdpFcOXrWrZrs5JjNuMq++LCUSMJEjhF19iIlOKFnqXYXBAkpQLhZg6
                +WoYmHKRlBATyqObk68GhTsN5ZwkX26JJBNCiVq0NeoYswImmnPxJeWSKMJZG00kp5nCJ187YS70
                M6D/OglWCDjxu058t6WIohgogZikmlw3uLgc/tJ/dzU+P/3Yb1Dpxenl6Wh4dgXe9z8OwenFRSe0
                KBw6StgNEJh2AxJxFoC5wNNuEEY8STgLtUQzLMMpujW7Lf0TALVINVW7E95De2oFl5VFzjFWBbzC
                9yqMpCwpUDIJJ5wrqUVJzU41ayWEtQzsY/FOOVPoDkueYDuGbrIXYqcSw2k+fApMlM/2YIlnKuZc
                PAVPPiqfqU5oQ/JZZ8LjBbCIuoHn3cCOKT4pqBKWZspRyV0/ACTuBlEmBGZqfIcnY4mFdig8TniM
                A3CLaKaBL/ujK+2fgwCgTHEtTkqx8W8+nRa4Y3JbOHiq3Q9Gxs6EYeEALNABhDrRDFhEMx3g4Hmh
                7tS6spEGi5ZJV88BhD0fZ74HJY5McIIyhsyI5Pi6wQZ8FtDwJDilWBQI35UrQU7OqMPRqiRYjdwV
                md2ZPAMQFmc6WhZj4+C+/KgwqaYmU8SWT4/t6bHzDR1tkRqbjIaUJ++67NKUTAyJXidEjt1Q87uW
                8wSzzGeVodtqZlcyurzgW3TaBkSO5vxuhJUibPY2U0qbSRtx+5FL/DkjedJ95DEzxFI95PRpFPGM
                qRXgTuiL2QlLNTjtFZ+6u09QdDMTGmUMbfoFXuFcOlmibgoYHYTNLu57rk0BleMCJIFdCmqSeATs
                fkEhaFDPCqzxuyoClj0aNGCoY7HnrT+vAS4OrN+1EH6UlExEnHIxftUcFaPBh/Px4DzomQEYnLsw
                WM9EuJaLTVuerFgIbgJISmP4dcG/gqFyyTypE9k3iBr99wHcVPbbRNzsr+jVGlcrNRVE6ii2Tqwr
                AIm1D3I7sBquxhso1NmytQdSNMEU1A25BY1FZR3BM/OnUf9y3b3qky5iDCXYmb69mcn1al0vx5Rg
                Gu/Ctl9yTWEvuc0cjzkqkKM1EEBiOoVV3veNoTMWz6I5jkvLmAFOUrWwacIUbepcoBUJrCu8IojK
                VkFNQ+nfinpZ4bdZ8jFKemJjX5yORr8NL983XaT1/I6L+H9m8NSxFVSJPl/4b4xekc+NXs2/idEn
                iu2uJu+czCYJUXCSV+9d0+cSNne2YgSs5LSiUFjD5CQby4attpREN4VGORtZ6O9feCUlJ7iDnNtV
                WFeHdoIZV7AwVk2SWjQd7aoh5Mt6Nrz8MLzyAsq+0hWfzcwLQvsTosXj47saO9Dt1rWUgxVxqHW1
                GqRnFgQUMD+VF9M9FbgFpBOasHpQSW1YblryjGa1UvNd+5ZYoz6FJhoY33cDeBQAfZHTeo910PKZ
                fmIJgmD+PNM1Q2TY2cdcMWPBU/NmRIpEW+5xlhJ0SLdfG3Jwd0V8SNJeRZK/KLYlFxezeUDmk9Jp
                IsolXvF1YJehDm+nkZjIhJR0g94/f+8WmZ3562WO3UW1ue4MznW8fDy9GgzPm+4aGgR4IOWra/76
                UXfOZpWaF/42hVb3yYM8JnURSZBYmNuQHLC8uJD8gbR8YUQxlClh5qK//LDWCWAzrp0qYpnZEJgi
                GBERUQw5ZFxFc7NiaJvv8b35nd6ZJxPZJeatyJjFO4u9qwIfj+jBlp1yrvYLFlPuTO2N8RRlVAEX
                FSZOPHM2BYzv6u9+HY76Qc9+tkfRwx9N23Nqfbq5WZTrzWsW5Qub+kH+kaYGd9H/cSZZ1/XJaKn5
                jNDYeIbfOKGk8V1Vf53XU01jq3hdF2hts6eBRiURtPxq9VTha1CaSqQvh4LHWaTeliJ54hsIwnQV
                uT1qHbUOx68OXx0fHh29Ofzx8PjohzrpTkhJ0TMxzRQXq079q70oGQmS+m+k8Brdonw1AFJErnN8
                /TnDYuE+8Lh1rHkxTeNraRJGDv9AlFWT+7re494Da/mflWL05Ahh6TjfEDU0hUF7TSbovlQUR1qz
                7rMPMhfP12VPfW88eapfRqNd1hRcU8TNf9D+BZ9SWmlRGwAA
              isTopLevelWindow: true
            browserType:
              $type: SingleBrowserType
              typeValue: 3
          browserOutputProvider:
            msgOutputProviders:
            - $type: HttpMessageOutputProvider
              name: http://clients2.google.com/time/1/current?cup2key=8:oxqgnIYf5k_cHl8EzS_jWO06lY44NTujbnXYbPFTacg&cup2hreq=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              baseUrl: http://clients2.google.com/time/1/current
              hasUrlArgs: true
              urlArgs:
                properties:
                - name: cup2key
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: 8:oxqgnIYf5k_cHl8EzS_jWO06lY44NTujbnXYbPFTacg
                - name: cup2hreq
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: Request Header of http://clients2.google.com/time/1/current?cup2key=8:oxqgnIYf5k_cHl8EzS_jWO06lY44NTujbnXYbPFTacg&cup2hreq=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: Request Body of http://clients2.google.com/time/1/current?cup2key=8:oxqgnIYf5k_cHl8EzS_jWO06lY44NTujbnXYbPFTacg&cup2hreq=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: Configure Request for http://clients2.google.com/time/1/current?cup2key=8:oxqgnIYf5k_cHl8EzS_jWO06lY44NTujbnXYbPFTacg&cup2hreq=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: Response Header of http://clients2.google.com/time/1/current?cup2key=8:oxqgnIYf5k_cHl8EzS_jWO06lY44NTujbnXYbPFTacg&cup2hreq=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: Response Body of http://clients2.google.com/time/1/current?cup2key=8:oxqgnIYf5k_cHl8EzS_jWO06lY44NTujbnXYbPFTacg&cup2hreq=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: Stub Request/Response for http://clients2.google.com/time/1/current?cup2key=8:oxqgnIYf5k_cHl8EzS_jWO06lY44NTujbnXYbPFTacg&cup2hreq=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: Traffic Object for http://clients2.google.com/time/1/current?cup2key=8:oxqgnIYf5k_cHl8EzS_jWO06lY44NTujbnXYbPFTacg&cup2hreq=e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/loginPage"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
              baseUrl: "${LOCALHOST_BASE_URL}/loginPage"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/loginPage"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/loginPage"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/loginPage"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/loginPage"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/loginPage"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/loginPage"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/loginPage"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/css,*/*;q=0.1"
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/css,*/*;q=0.1"
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/common/css/common.css"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/css,*/*;q=0.1"
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/common/css/common.css"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/common/css/common.css"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/common/css/common.css"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/common/css/common.css"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/common/css/common.css"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/common/css/common.css"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/css/common.css"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/css/common.css"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/outdoor/css/login.css"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/css,*/*;q=0.1"
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/outdoor/css/login.css"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/outdoor/css/login.css"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/outdoor/css/login.css"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/outdoor/css/login.css"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/outdoor/css/login.css"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/outdoor/css/login.css"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/outdoor/css/login.css"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/outdoor/css/login.css"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/outdoor/css/common.css"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/css,*/*;q=0.1"
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/outdoor/css/common.css"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/common/css/login.css"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "text/css,*/*;q=0.1"
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/common/css/login.css"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/common/css/login.css"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/common/css/login.css"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/common/css/login.css"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/common/css/login.css"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/common/css/login.css"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/css/login.css"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/css/login.css"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: '*/*'
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: '*/*'
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: '*/*'
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: '*/*'
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: '*/*'
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: '*/*'
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/common/js/common.js"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: '*/*'
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/common/js/common.js"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/common/js/common.js"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/common/js/common.js"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/common/js/common.js"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/common/js/common.js"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/common/js/common.js"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/js/common.js"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/js/common.js"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/common/js/login.js"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: '*/*'
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/common/js/login.js"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/common/js/login.js"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/common/js/login.js"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/common/js/login.js"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/common/js/login.js"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/common/js/login.js"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/js/login.js"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/js/login.js"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/v1/build-info"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "application/json, text/plain, */*"
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/v1/build-info"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/v1/build-info"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/v1/build-info"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/v1/build-info"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/v1/build-info"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/v1/build-info"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/v1/build-info"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/v1/build-info"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "application/json, text/plain, */*"
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/localize?lang=EN"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "application/json, text/plain, */*"
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/localize"
              hasUrlArgs: true
              urlArgs:
                properties:
                - name: lang
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: EN
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/localize?lang=EN"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/localize?lang=EN"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/localize?lang=EN"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/localize?lang=EN"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/localize?lang=EN"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/localize?lang=EN"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/localize?lang=EN"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/common/pages/footer.html"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "application/json, text/plain, */*"
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/common/pages/footer.html"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/common/pages/footer.html"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/common/pages/footer.html"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/common/pages/footer.html"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/common/pages/footer.html"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/common/pages/footer.html"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/pages/footer.html"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/pages/footer.html"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/common/pages/header.html"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "application/json, text/plain, */*"
              referer: http://localhost:4040/loginPage
              baseUrl: "${LOCALHOST_BASE_URL}/common/pages/header.html"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/common/pages/header.html"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/common/pages/header.html"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/common/pages/header.html"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/common/pages/header.html"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/common/pages/header.html"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/pages/header.html"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/pages/header.html"
            - $type: HttpMessageOutputProvider
              name: https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM0LjAuNjk5OC4xMTgSIAlN-SI5wUW4MBIFDeeNQA4SBQ3OQUx6ISrVwe2pB5j8?alt=proto
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              baseUrl: https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM0LjAuNjk5OC4xMTgSIAlN-SI5wUW4MBIFDeeNQA4SBQ3OQUx6ISrVwe2pB5j8
              hasUrlArgs: true
              urlArgs:
                properties:
                - name: alt
                  value:
                    fixedValue:
                      $type: StringTestValue
                      value: proto
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: Request Header of https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM0LjAuNjk5OC4xMTgSIAlN-SI5wUW4MBIFDeeNQA4SBQ3OQUx6ISrVwe2pB5j8?alt=proto
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: Request Body of https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM0LjAuNjk5OC4xMTgSIAlN-SI5wUW4MBIFDeeNQA4SBQ3OQUx6ISrVwe2pB5j8?alt=proto
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: Configure Request for https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM0LjAuNjk5OC4xMTgSIAlN-SI5wUW4MBIFDeeNQA4SBQ3OQUx6ISrVwe2pB5j8?alt=proto
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: Response Header of https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM0LjAuNjk5OC4xMTgSIAlN-SI5wUW4MBIFDeeNQA4SBQ3OQUx6ISrVwe2pB5j8?alt=proto
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: Response Body of https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM0LjAuNjk5OC4xMTgSIAlN-SI5wUW4MBIFDeeNQA4SBQ3OQUx6ISrVwe2pB5j8?alt=proto
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: Stub Request/Response for https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM0LjAuNjk5OC4xMTgSIAlN-SI5wUW4MBIFDeeNQA4SBQ3OQUx6ISrVwe2pB5j8?alt=proto
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: Traffic Object for https://content-autofill.googleapis.com/v1/pages/ChVDaHJvbWUvMTM0LjAuNjk5OC4xMTgSIAlN-SI5wUW4MBIFDeeNQA4SBQ3OQUx6ISrVwe2pB5j8?alt=proto
            contents:
              $type: BrowserContentsOutputProvider
              outputTools:
              - $type: BrowserContentsViewer
                iconName: BrowserContentsViewer
                name: Browser Contents Viewer
              - $type: AccessibilityScanTool
                allowToolbar: false
                iconName: AccessibilityScanTool
                name: Web Accessibility Scan
                outputProvider:
                  name: Errors
                locator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: id
              name: Browser Contents
            traffic:
              $type: NamedToolOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: HTTP Traffic
      - $type: TestSuite
        testLogic: true
        testID: 4
        enabled: true
        name: "Form: http://localhost:4040/loginPage"
        abortOnError: 1
        profileMappingID: 3
        runMode: 2
        tests:
        - $type: BrowserTest
          testLogic: true
          testID: 5
          enabled: true
          name: Type "purchaser"
          tool:
            $type: BrowserTestingTool
            usesAutomaticallyGeneratedName: true
            iconName: BrowserTest
            name: Type "purchaser"
            commands:
            - windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: TypeAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: name
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: username
                inputData:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
                    BrowserTestingTool_TypeValue: purchaser
            delaySettings:
              delays:
              - $type: ElementDelay
                windowIdentifier:
                  WindowName: ""
                elementState: 1
                specifiedLocator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: ""
            originalCommand: true
            command:
              windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: TypeAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: name
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: username
                inputData:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: StringTestValue
                    BrowserTestingTool_TypeValue: purchaser
            browserContents: true
            contents:
              windowContents:
              - parentUrl: ""
                charSet: UTF-8
                url: http://localhost:4040/loginPage
                htmlSize: 1771
                html: !!binary |-
                  H4sIAAAAAAAA/80Z227bNvS9X8FoD12B0kqaAusc25ubOoWHNQ7iFMOwDQYt0TYTilRJyolR9Dv2
                  QfuxkRR1sSzZTpwBy4PFy+G538h0jj6Mzm9+vxqAhYpo70XHfMBDRJlss3nXWygVt30fsXlCkbiV
                  LS7mHmBziOK468Uh6sexBwKKpOx6elkGPMZer7PAKOx1pFpR3Ps5WCAhsQLe55sL+M47+4PN/2wH
                  lKO7v17rMcyGIVIIluYPpUkrG75uFct2dUFC3GZcfZ9NIGIkQgq/+hoSGVO00rsMgyMSxVwoxNTZ
                  N8PAjIsoh5hSHtydfTMo3GkoFyT6uiSSTAklatXWqEPMMphgwcXXmEuiCGdtNJWcJgqffev4qdAv
                  gP7rRFgh4MTvOvHdliKKYqAEYpJqcl3v6nr0y+D8ZnLZ/zSoUelV/7o/Hl3cgA+DTyPQv7rq+BaF
                  Q0cJuwMC065HAs48sBB41vX8gEcRZ76WaI6lP0NLs9vSPx5Qq1hTtTv+A7SnNnBZWeQCY5XBK/yg
                  /EDKnAIlU3/KuZJalNjsFLNWRFjLwD4V74wzhe6x5BG2Y+gmByF2KjGcpsPnwET5/ACWeKJCzsVz
                  8FRGVWaq49uQfNGZ8nAFLKKuV/JuYMcUn2VUCYsT5aikru8BEna9IBECMzW5x9OJxEI7FJ5EPMQe
                  WCKaaODrwfhG++fQAyhRXIsTU2z8m89mGe6QLDMHj7X7wcDYmTAsHIAFOoJQJ5ohC2iiAxy8zNQd
                  W1c20mDRMunqJYCwV8aZ7kGJAxOcII8hMyIpvq63BZ8FNDwJTikWGcLzfMVLyRl1OFqFBJuRuyGz
                  O5NmAMLCREfLamIcvCw/ykyqqckYsfXTE3t64nxDR1ugJiajIVWStym71CUTQ6LX8ZFj19f8NnIe
                  YZaUWWVoWczsSkLXF8oWnbUBkeMFvx9jpQibv0+U0mbSRtx95Bp/SUiadJ94zAyxVI853Q8CnjC1
                  Adzxy2J2/FwNTnvZp+ruUxTczYVGGUKbfkGpcK6dzFHXBYwOwnoXL3uuTQGF4wIkgV3yKpKUCNj9
                  jIJXo54NWON3RQSsezSowVDFYs9bf24Azg4071qIcpTkTASccjF5Ux8V4+HHy8nw0uuZARheujBo
                  ZsJv5GLbVklWLAQ3ASSlMXxT8G9gKFwyTepEDgyiWv99BDeF/bYRN/sberXG1UrVWZ+EZhASoVb5
                  CoxN06P9kdup1XYx3kKtyqKtQ5CiKaagatQdaCwq6xQlk38eD66beqzPuqAxFGHnBu3tTDaruFmO
                  GcE03Iftcvk1RT7nNnE8pqhAitZAAInpDBY1QGcsngQLHK5ZSTfKEEdxaqkGk82hKejUuUcrEFhX
                  f0UQla2MuobSvwU3efWPE6H7XblWyp9Ne8/sBVf98fi30fWHum5bz++5CP9nnhA7tryiGqQLO70h
                  FkTqYoubPcN6xXbrF+RT6xdzZ/3nNfpUsf3VVDonk2lEFJymJX7fHLuGzZ0tGAEbiS+rJtYwKcna
                  2mJLMiXBXaZRzsYW+vtXpbqTEtxDzt0qrKpDO8FcR31mrIoklWg62VdDqCzrxej64+imFFD2Kq/4
                  fG6uGdqfEM1uKN9V2IFut6qlFCyLQ62rzSC9sCAgg/kp714PVOAOkI5vwupRdbdmuW6pZDSrlYrv
                  2gtHg/oUmmpg/ND14IkHdLen9R7qoOVzfQ8TBMH0DqeLiUiws4/pQ0PBY3OxRIoEO5o9Swk6pLt7
                  ixTc9ZGPSdqbSNJrx67k4mI2Dch0kjtNQLnEG74O7DLU4e00EhIZkZyu1/vn7/0is7N4u86x62br
                  687wUsfLp/7NcHRZ14RoEFACya9mi7dPakzrVWqeAXYptGg6j9KY1EUkQmJl2iQ5ZGlxIektar2r
                  RCGUMWHmNrB++9YJYDuuvSpintkQmCEYEBFQDLnpbYKFWTG0zff0wfzO7s29iuwT81ZkzMK9xd5X
                  gU9H9GjLzjhXhwWLKXem9oZ4hhKqgIsKEyclc9YFTNnVz38djQdez352R9Hjb1a7c2p1uv1FKdVb
                  6UUpXdj2aFQ+UvcKnj0SOZM0PQ0lNNd8QmhoPKP8ukJJ7eWreoWvppra9+Smp6LGF6EaGoVE0PKr
                  1VOEr0FpKpFuDgUPk0C9z0UqiW8gCNNVZHnSOmkdT94cvzk9Pjl5d/zj8enJD1XSHZ+S7GHFvLi4
                  WHXq33ywkoEgcfny5N+iJUpXPSBF4J6Xb78kWKzcB562TjUv5mX5VpqEkcI/EmXxEn5bfQg/AGv+
                  75ds9OwIYe44/yFqaAqD9ppE0EOpKI60Zt3nEGQunm/zh/eD8aSpfh2NdllTcE0RN/9m+xcKRroS
                  dhsAAA==
                isTopLevelWindow: true
              browserType:
                $type: SingleBrowserType
                typeValue: 3
            browserOutputProvider:
              contents:
                $type: BrowserContentsOutputProvider
                outputTools:
                - $type: BrowserContentsViewer
                  iconName: BrowserContentsViewer
                  name: Browser Contents Viewer
                name: Browser Contents
              traffic:
                $type: NamedToolOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: HTTP Traffic
        - $type: BrowserTest
          testLogic: true
          testID: 6
          enabled: true
          name: Type "********"
          tool:
            $type: BrowserTestingTool
            usesAutomaticallyGeneratedName: true
            iconName: BrowserTest
            name: Type "********"
            commands:
            - windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: TypePasswordAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: name
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: password
                inputData:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: PasswordTestValue
                    password: AwAAACx4YXhJU3NQdUtXUkFoUCtIMld0c1lib0JWN3EwSW9ialFiaXhxWndPMi9vPQ==
            delaySettings:
              delays:
              - $type: ElementDelay
                windowIdentifier:
                  WindowName: ""
                elementState: 1
                specifiedLocator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: ""
            originalCommand: true
            command:
              windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: TypeAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: input
                    attributeName: name
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: password
                inputData:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: PasswordTestValue
                    password: AwAAACx4YXhJU3NQdUtXUkFoUCtIMld0c1lib0JWN3EwSW9ialFiaXhxWndPMi9vPQ==
            browserContents: true
            contents:
              windowContents:
              - parentUrl: ""
                charSet: UTF-8
                url: http://localhost:4040/loginPage
                htmlSize: 1770
                html: !!binary |-
                  H4sIAAAAAAAA/80ZWW4bN/Q/p6CnH2mAUGPHAZrKklrFkQMVjWVYDoqiLQRqhpJoc8gJybEtBDlH
                  D9SLldsskkab5QL1h4bL49sX8rl19GFwfvP7VQ/MVEI7L1rmAx4TymSTTdvBTKm0GYaITTOKxK1s
                  cDENAJtClKbtII1RN00DEFEkZTvQyzLiKQ46rRlGcacl1Zzizs/RDAmJFQg+31zAd8HZH2z6ZzOi
                  HN399VqPYT6MkUKwMn+sTBr58HWjXLarMxLjJuPq+3wCESMJUvjV15jIlKK53mUYHJEk5UIhps6+
                  GQYmXCQFxJjy6O7sm0HhT0M5I8nXeyLJmFCi5k2NOsYsh4lmXHxNuSSKcNZEY8lppvDZt1bohH4B
                  9F8rwQoBL37bi++3FFEUAyUQk1STawdX14Nfeuc3o8vup16NSq+6193h4OIGfOh9GoDu1VUrtCg8
                  OkrYHRCYtgMScRaAmcCTdhBGPEk4C7VEUyzDCbo3uw39EwA1TzVVuxM+QntqBZeVRc4wVjm8wo8q
                  jKQsKFAyDsecK6lFSc1OOWskhDUM7FPxTjhT6AFLnmA7hn5yEGKvEsOpGz4HJsqnB7DEMxVzLp6D
                  pyqqKlOt0Ibki9aYx3NgEbWDincDO6b4LKdKWJopT8W5fgBI3A6iTAjM1OgBj0cSC+1QeJTwGAfg
                  HtFMA1/3hjfaP/sBQJniWpyUYuPffDLJccfkPnfwVLsfjIydCcPCA1igIwh1oumziGY6wMHLXN2p
                  dWUjDRYNk65eAgg7VZxuD0ocmeAERQyZEXH42sEGfBbQ8CQ4pVjkCM+LlcCRM+rwtEoJViN3RWZ/
                  xmUAwuJMR8t8ZBy8Kj/KTaqpyRSxxdMje3rkfUNHW6RGJqMhVZF3XXapSyaGRKcVIs9uqPldy3mC
                  WVZllaH7cmZXMrq4ULXopAmIHM74wxArRdj0faaUNpM24vYj1/hLRlzSfeIxM8RS7XO6G0U8Y2oF
                  uBVWxWyFhRq89vLPsruPUXQ3FRplDG36BZXCuXCyQF0XMDoI61286rk2BZSOC5AEdilYkqRCwO7n
                  FIIa9azAGr8rI2DRo0ENhmUs9rz15zXA+YH1uxaiGiUFExGnXIze1EfFsP/xctS/DDpmAPqXPgzW
                  MxGu5WLTVkVWLAQ3ASSlMfy64F/BULqkS+pE9gyiWv/dg5vSfpuIm/0VvVrjaqXqrE9iM4iJUPNi
                  Babm0qP9kdup1XY53kBtmUVbhyBFY0zBslG3oLGorFNUTP552Lted8f6rAsaQwn2btDczOR6Fa+X
                  Y0IwjXdhu1p+TZEvuM08jw4VcGgNBJCYTmBZAwrD6LsxxEnqjFNnJTNVPItmOLYJxJRz6p2jEQms
                  a78iiMpGTltD6d+Sl6L2p5nQt125UMifTXfP7ANX3eHwt8H1h7q7tp4/cBH/z/wg9WwFZS1wC1t9
                  QVcvZ9/9HGOzN5TsOG8o57k35AvP6gxjxXZXX+WczMYJUXDsCv+umXcBmz9bMgJW0mFeY6zBHMna
                  imMLNSXRXa5ZzoYW+vtXlWrkCO4g53YVLqtDO8dU2z+30ZIkS1F2squGUFXWi8H1x8FNJdDsA1/x
                  6dQ8PrRfIZq/W75bYgf63WUtObA8PrWuVoP3woKAHOan4k57oAK3gLRCE257VeOa5bqlitGsVpZ8
                  1z5D1qhPobEGxo/tAJ4EQN8Btd5jHbx8ql9ngiDoXna6xIgMe/uY22kseGqem0iRaMsV0FKCHun2
                  G4cD97fLfZL5KhL3GNmWXHzMuoB0k8JpIsolXvF1YJehDm+vkZjIhBR0g84/f+8Wma3Z20WO/R23
                  vh71L3W8fOre9AeXdVcTDQIqIMWDbfb2SdfVepWa5sA2hZZX0SMXk6nQrxgxN5cn2Weu6BD3tlq8
                  a6IYypQw80ZYfJPrBLAZ106VsshsCEwQjIiIKIbcVLloZlYMbfM9fTS/kwfz2iK7xLwVGbN4Z7F3
                  VeDTEe1t2Qnn6rBgMeXO1N4YT1BGFfBRYeKkYs66gKm6+vmvg2Ev6NjP9ija/721PacuTzf3mZze
                  Kn0mt7CplVQ9Utcbz1tH3iTrGkYZLTSfERobz6j2XCipfZItP+yXU01tl3ldA2ltn6iGRikRtPxq
                  9ZTha1CaSqTvhILHWaTeFyJVxDcQhOkqcn/SOGkcj94cvzk9Pjl5d/zj8enJD8ukWyElebvF9GF8
                  rHr1r7axZCRIWn1ShbfoHrnVAEgR+abz7ZcMi7n/wNPGqebF9JtvpUkYDn5PlGV//Ha5PX4A1uKf
                  Mvno2RHCwnH+Q9TQFAbtNZmgh1JRHGnN+s8hyHw83xbt+IPxuFS/iEa7rCm4poibf779C37vaxmM
                  GwAA
                isTopLevelWindow: true
              browserType:
                $type: SingleBrowserType
                typeValue: 3
            browserOutputProvider:
              contents:
                $type: BrowserContentsOutputProvider
                outputTools:
                - $type: BrowserContentsViewer
                  iconName: BrowserContentsViewer
                  name: Browser Contents Viewer
                name: Browser Contents
              traffic:
                $type: NamedToolOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: HTTP Traffic
        - $type: BrowserTest
          testLogic: true
          testID: 7
          enabled: true
          name: Click "SIGN IN"
          tool:
            $type: BrowserTestingTool
            usesAutomaticallyGeneratedName: true
            iconName: BrowserTest
            name: Click "SIGN IN"
            commands:
            - windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: ClickAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: button
                    attributeName: text
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: SIGN IN
            delaySettings:
              delays:
              - $type: PageLoadDelay
              - $type: ElementDelay
                windowIdentifier:
                  WindowName: ""
                elementState: 1
                specifiedLocator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: ""
            originalCommand: true
            command:
              windowIdentifier:
                BrowserTestingTool_WindowName: ""
                BrowserTestingTool_WindowIndex: 0
              action:
                $type: ClickAction
                location:
                  criteria:
                    $type: AttributeCriteria
                    elementName: button
                    attributeName: text
                    attributeValue:
                      values:
                      - $type: ScriptedValue
                      fixedValue:
                        $type: StringTestValue
                        BrowserTestingTool_LocatorAttributeValue: SIGN IN
            browserContents: true
            contents:
              windowContents:
              - parentUrl: ""
                charSet: UTF-8
                url: http://localhost:4040/
                htmlSize: 2871
                html: !!binary |-
                  H4sIAAAAAAAA/7Vaa3PaPBb+3l+henem7UwNuXzYd1NgliS0y74JUCCb7ezueIQtQIltuZIMYfv2
                  v++RfME3DAlpPgRjSUfn8pybUOvt9fBq+m3UQ0vpuZ03LfWBXOwv2gbxDfTkub64UN+WUgYXzSaM
                  hC7mD6LB+MJA/sLEQdA2Agd3g8BAtouFaBvwWtgsIEantSTY6bSE3Lik8zd7ibkgEhl308/mb8an
                  f/uL/1zYLsOP//0Iz2by6GCJzcz3p8yXRvL4sbF9rd8uqUMufCbfJ19M7FMPS/Lhh0NF4OINjPoE
                  vaVewLjEvvz0UzEwZ9xLZ8xcZj9++qlIxKtNsaTejxUVdEZdKjcXQNohfjLHXjL+I2CCSsr8CzwT
                  zA0l+fSz1YyEfoPgr+URiVEsfjsWPx6SVLoESY594cJ2bWM0Hv6jdzW1Bt3bXoVKR91xdzL8PEXX
                  vdsh6o5GraYm0XkT0XOp/4g4cdsGtRnYcMnJvG00beZ5zG+CSAsimnO8UqMN+GcguQlgWz3SfDL1
                  qk6RlhZGLAmRyXxJnmTTFiLdwaWz5owxKUCWQI1svzU86jfU3JfSlQwDofjjaGpz5ku8JoJ5RD+b
                  8ZejCMcKVnJHj69BKQg5oEYQ/mJiLJQOY/w1+MqSKjLWampPf9OaMWcTE6d+EMqYWOQ0BqJO27BD
                  zokvrRCW+9gjBlphN4RJKVED4VAyYDdwiXIJNp8bBxLlzCU5ouPhTc8a3Y2v/t6d9MZHUF6TmQW8
                  geMQy2NOZofeZAqO2K+h7dBV4skBuJlpKwRSHySNJuhJb00TImrft90QIhl6lwAh0C6r9AvqVhH6
                  HTLNjqYJYYFG89tGzfw0jEQvTUFsFa5QGlXUk+IJtOcSnsy7St8Y0XZKHTGJrQTlEFWSOV4ThTrq
                  OyF48cZSrpeVHydAg91EgP38akuvtmLEQlSxpaVCN5YZMXaF0aqoqbbotJo4ZrcJ/O7k3CN+mGXV
                  x6vtN/0mdPMvshadXyAqJku2nhApqb+4DKUE7SsjulQrVUQD5kyPaHNQ0ETFql3qLu2NFZFYoQ7x
                  WNeB6JaujjYylbeieei65pzCPxtwriyqVd02rmEZiteVKFVvq7fOGm/hboKlyikofQLsQO2AOcVm
                  5GcQa3ioqoXIJtXyJIaqUXKcxH/H80fc45xx1G630TtF/B36449kfIxnMypvv5amgEHKNoSM0dF7
                  EN+pN+Z++4/J95BGpUIZA3w7WI2D0upnYCEJ4RzQLJ6HgmG0psbe1FsUKMIbzbzgdiZxxMVHRtCG
                  WMHEg2a9HBZUjJLEkgbOmF3ssRDyfxrM0lCC4hoyY4LRNjupWWCQthH6nKwoWRNnEHqXmxFkGfQW
                  AHVyqHvEDPihN4t2n0F4BFQZyXPlHkbnpN5XVCwrgTanhWcAvRK1zwK7eiRCljFvYy73gj23+mDM
                  Z6xcD3PdRFD7EaLwmkp7eYn5+w8G0k2IZIuF8gEbsiAOBEleY75QhfyfMiC1ZnjrM1cg1yt6DIAt
                  CAAVltJXjc+U59UBZK/eqrwjdYrIASST2O3qea8O/AztgwD/MkiXsLkf2V3b1gJngJzUstVgjhe8
                  BLsOZ4HD1n4ZuDWK3oH9XOWFEsoxyCs8I+cCyfSafYt7q1p8T9G3k0wOK5H6LNWRIPUv5jALm07a
                  PNQBJSW/2wEOGQ7donl0hYhy30xOF8t9sir8FElRSbxDVISTlS5bQCDIlMFxtl+dNqOhXGE86X8Z
                  WMO7qdGZ0IWPYHhnEt3qAxypRltVxW808ky/zHhWvrzObdFqpvV3vEPyUeyzZth+XHAg6Zg6RG51
                  1MmvTElXdWoAtqRlKthlT8+WSQ+QVQ7v3arWlXq0/KRtr4awQJmxqlO5pJcrpa94apLuLAWrbe5T
                  FNQxQW5hQ8N8gFd0gWNesh1gxTZWrFOjWu1pEtORo6jwKpq2y4DXWb4+SCMO8M+4dZpN9Fn29eJM
                  PoDcX4FYHVL+VRVaKjBeyWQkzQ7uznbtmYbSAzreq+54ak370xvod9Xzc7hNDa9QaCXcVXEVqbkk
                  nghnHpVFI8ykX8g6+SOHCnMsif3YhwgoVBEGc6BpwzOXwHbx00TvdAmUoaVThY6afcOwo/u5nEaG
                  4+ve2JrcXd72p9bl3XQ6HBid0Xh41etdo+kQ6ZHJpD8ctJoR54fbFuQjUliSWQ4JXLZ5lmmDzrOt
                  251MetOJNR1a173RzfCb0dFaQpKhWbiprY700AVKjjz0zhkRolJsR+GViR5pqj1JD0+CWn1VxVZ9
                  2pEtU7NhJRmoKJ/jSDsmAcHyIrU7oCt9Fkpd9iOabdCfgVXylEsj2QOebOg/xMYVgShVbJWNtA+W
                  4+5V93bUH3xBva93/dFtb/AyD43yUdUJYtX8SISKDrd85sc8otJPPpOot3Vl6lZNBxaksU5F6HkY
                  nGTGnkjdUr28aHtJFoyrelaz14hfUFKPgBLZmi6oZmjbDRQ2T2PQzl2La4kXyM1VZFFxS4RQJUp1
                  c15dSJU6E2dFuIRY6i90nVFfnuB4Nun6zoCsRaFASQy2pbkLRrvqmOoNis3Rlr6R27jqQFnDLaHq
                  qWP5g/NqyVtvutPeZGoNeveTCmeNRpEazbpp8Zy4zFDsoadGUYHRsKrurcrz/3pyBUErJ1mFZisp
                  fQrhpKiI+95lf9AdW2NILN1vFbq4JxD7MUfggS4u5ZpdYX6XHNDA7RNDTSkwjXdzbN30B79DsoxP
                  ZayZi/3HpAtSv1wL9dO16zUCzLFgc9kAlDbJE0jhmDOyYfARUnNN5dLE1AzYmnDiANgd4oJTmjig
                  piRC6uOJknJ6mg661HTQXR/dAx3U7ZujiA66iumo34jQNKJTarlaQY18171pt3+zE+SZruYeS3uJ
                  5JIKtI6NxrXRVJ0gCIG4s1a8xTIiO8tbLCPgx+YEWmmh38AcsJGKTEpMWBTayQh5Inaof0mSFMJZ
                  rh4o59v94Dh7XZ85+4U+0x10b75B9AALDcfTClh0fexuQEfgM4zLo3zm7FV8Js/xy3wGClQOhifc
                  XONV1BxTP2ShMOehrxtk7GpXMdVPoR7e0YB+TsigeyCDrj5Pu+js5Oxkj1cUJDjcK74QCeBFCsfq
                  JB2xObgI7Juyjz6n7GsPRd2UfQRlyqNe7yCXYO6j9XKDRrFW0BpqJAEuZEvwJnjGapIDkkFxot0Q
                  7G6/gmucv65rnP9C17i8GX7ZeXsl0dulyxZHOcX5qziF5jVyhQj6D3iFhc1pIC9WjDrvTz5USKGY
                  v0D3SyzfCeQDoMDYqWRbp0gDqgjBTHvArTk5HNJTwK9ymcaZur8RRWuAdcrFZNhVu39E/6Rchtil
                  /yMfNYYLwI/zERoBF6r9RHNmw2vAfSZLRGkAcoJ2CJiGXLbW+RERf0U585XWxREop96iGsV4X0iK
                  Aw3ka/VqjTlJcrX5XcktN6bqNagsBbuCNdRvMtiF4d2/w2RK4cZDsOtXmOKsrErytw2yHWj1eWi+
                  nn9Os11f+s8Zk7nbJNGLumI+u6TuUDGat/NayPbsfBZS1+n7c5bV0PY8vO4ng1LMqbw0t+tYZedt
                  kIo9thKZml9QT0SOxr/yREcmAWdQF8nLVKSqc5PVaeO0cWKB256fnJ7+dvLXk/PTv5SDYHLWHh16
                  JxiJmMjBJ3qOolX20tY2hiUIVbfeHr6HhG/iD/O8cQ7MqAtvD0LfvNDzO88jub3u91C87XcE1fSS
                  afL06gTNFDm/kLTpMn13KOTusbuUrz8eQUxAvAyi/8eQimPDQ3qt8Gg62zuFR5NaAAyXX28m0XW9
                  Aj1wKX1LsdXUt57/D6o7aokFLQAA
                isTopLevelWindow: true
              browserType:
                $type: SingleBrowserType
                typeValue: 3
            browserOutputProvider:
              msgOutputProviders:
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/v1/login"
                unparsedPostData: "------WebKitFormBoundaryLRmB8j6P66QoTJfL\r\nContent-Disposition:\
                  \ form-data; name=\"username\"\r\n\r\npurchaser\r\n------WebKitFormBoundaryLRmB8j6P66QoTJfL\r\
                  \nContent-Disposition: form-data; name=\"password\"\r\n\r\npassword\r\
                  \n------WebKitFormBoundaryLRmB8j6P66QoTJfL--\r\n"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                accept: "application/json, text/plain, */*"
                referer: http://localhost:4040/loginPage
                contentType: multipart/form-data; boundary=----WebKitFormBoundaryLRmB8j6P66QoTJfL
                baseUrl: "${LOCALHOST_BASE_URL}/v1/login"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/v1/login"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/v1/login"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/v1/login"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/v1/login"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/v1/login"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/v1/login"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/v1/login"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.7"
                referer: http://localhost:4040/loginPage
                baseUrl: "${LOCALHOST_BASE_URL}/"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.css"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "text/css,*/*;q=0.1"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.css"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.css"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.css"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.css"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.css"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.css"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.css"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.css"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/common/css/purchaser.css"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "text/css,*/*;q=0.1"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/common/css/purchaser.css"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/common/css/purchaser.css"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/common/css/purchaser.css"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/common/css/purchaser.css"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/common/css/purchaser.css"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/common/css/purchaser.css"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/css/purchaser.css"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/css/purchaser.css"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/common/css/common.css"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "text/css,*/*;q=0.1"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/common/css/common.css"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/common/css/common.css"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/common/css/common.css"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/common/css/common.css"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/common/css/common.css"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/common/css/common.css"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/css/common.css"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/css/common.css"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/outdoor/css/common.css"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "text/css,*/*;q=0.1"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/outdoor/css/common.css"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/outdoor/css/common.css"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "text/css,*/*;q=0.1"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/fontawesome/font-awesome.min.css"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "text/css,*/*;q=0.1"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/bootstrap/css/bootstrap.min.css"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/outdoor/css/purchaser.css"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "text/css,*/*;q=0.1"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/outdoor/css/purchaser.css"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/outdoor/css/purchaser.css"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/outdoor/css/purchaser.css"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/outdoor/css/purchaser.css"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/outdoor/css/purchaser.css"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/outdoor/css/purchaser.css"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/outdoor/css/purchaser.css"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/outdoor/css/purchaser.css"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: '*/*'
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/jquery/jquery-3.3.1.min.js"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: '*/*'
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate-loader-url.min.js"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: '*/*'
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/bootstrap/js/bootstrap.min.js"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: '*/*'
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/angularjs/angular-translate.min.js"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: '*/*'
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/angularjs/angular.min.js"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: '*/*'
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/toastr/toastr.min.js"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/lib/stomp/stomp.min.js"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: '*/*'
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/lib/stomp/stomp.min.js"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/lib/stomp/stomp.min.js"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/lib/stomp/stomp.min.js"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/lib/stomp/stomp.min.js"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/lib/stomp/stomp.min.js"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/lib/stomp/stomp.min.js"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/lib/stomp/stomp.min.js"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/lib/stomp/stomp.min.js"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/common/js/purchaser.js"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: '*/*'
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/common/js/purchaser.js"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/common/js/purchaser.js"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/common/js/purchaser.js"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/common/js/purchaser.js"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/common/js/purchaser.js"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/common/js/purchaser.js"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/js/purchaser.js"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/js/purchaser.js"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/common/js/common.js"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: '*/*'
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/common/js/common.js"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/common/js/common.js"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/common/js/common.js"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/common/js/common.js"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/common/js/common.js"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/common/js/common.js"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/js/common.js"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/js/common.js"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/common/js/graphQLService.js"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: '*/*'
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/common/js/graphQLService.js"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/common/js/graphQLService.js"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/common/js/graphQLService.js"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/common/js/graphQLService.js"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/common/js/graphQLService.js"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/common/js/graphQLService.js"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/js/graphQLService.js"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/js/graphQLService.js"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/defense/images/category_dark_overlay.svg"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8"
                referer: http://localhost:4040/outdoor/css/purchaser.css
                baseUrl: "${LOCALHOST_BASE_URL}/defense/images/category_dark_overlay.svg"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/defense/images/category_dark_overlay.svg"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/defense/images/category_dark_overlay.svg"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/defense/images/category_dark_overlay.svg"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/defense/images/category_dark_overlay.svg"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/defense/images/category_dark_overlay.svg"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/defense/images/category_dark_overlay.svg"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/defense/images/category_dark_overlay.svg"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/v1/build-info"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "application/json, text/plain, */*"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/v1/build-info"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/v1/build-info"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/v1/build-info"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/v1/build-info"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/v1/build-info"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/v1/build-info"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/v1/build-info"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/v1/build-info"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/v1/MQConnectorUrl"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "application/json, text/plain, */*"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/v1/MQConnectorUrl"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/v1/MQConnectorUrl"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/v1/MQConnectorUrl"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/v1/MQConnectorUrl"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/v1/MQConnectorUrl"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/v1/MQConnectorUrl"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/v1/MQConnectorUrl"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/v1/MQConnectorUrl"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "application/json, text/plain, */*"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/v1/demoAdmin/currentPreferences"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/localize?lang=EN"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "application/json, text/plain, */*"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/localize"
                hasUrlArgs: true
                urlArgs:
                  properties:
                  - name: lang
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: EN
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/localize?lang=EN"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/localize?lang=EN"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/localize?lang=EN"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/localize?lang=EN"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/localize?lang=EN"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/localize?lang=EN"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/localize?lang=EN"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/common/pages/header.html"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "application/json, text/plain, */*"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/common/pages/header.html"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/common/pages/header.html"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/common/pages/header.html"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/common/pages/header.html"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/common/pages/header.html"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/common/pages/header.html"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/pages/header.html"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/pages/header.html"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/common/pages/footer.html"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "application/json, text/plain, */*"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/common/pages/footer.html"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/common/pages/footer.html"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/common/pages/footer.html"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/common/pages/footer.html"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/common/pages/footer.html"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/common/pages/footer.html"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/pages/footer.html"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/pages/footer.html"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/common/pages/requisitionBar.html"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "application/json, text/plain, */*"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/common/pages/requisitionBar.html"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/common/pages/requisitionBar.html"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/common/pages/requisitionBar.html"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/common/pages/requisitionBar.html"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/common/pages/requisitionBar.html"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/common/pages/requisitionBar.html"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/pages/requisitionBar.html"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/pages/requisitionBar.html"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/common/pages/advertiseAndNews.html"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "application/json, text/plain, */*"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/common/pages/advertiseAndNews.html"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/common/pages/advertiseAndNews.html"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/common/pages/advertiseAndNews.html"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/common/pages/advertiseAndNews.html"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/common/pages/advertiseAndNews.html"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/common/pages/advertiseAndNews.html"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/common/pages/advertiseAndNews.html"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/common/pages/advertiseAndNews.html"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/outdoor/images/requisition.svg"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/outdoor/images/requisition.svg"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/outdoor/images/requisition.svg"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/outdoor/images/requisition.svg"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/outdoor/images/requisition.svg"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/outdoor/images/requisition.svg"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/outdoor/images/requisition.svg"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/outdoor/images/requisition.svg"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/outdoor/images/requisition.svg"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/outdoor/images/shopping_cart.svg"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/outdoor/images/shopping_cart.svg"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/outdoor/images/shopping_cart.svg"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/outdoor/images/shopping_cart.svg"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/outdoor/images/shopping_cart.svg"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/outdoor/images/shopping_cart.svg"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/outdoor/images/shopping_cart.svg"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/outdoor/images/shopping_cart.svg"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/outdoor/images/shopping_cart.svg"
              - $type: HttpMessageOutputProvider
                name: "${LOCALHOST_BASE_URL}/outdoor/images/advertising.jpg"
                httpMethod:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                accept: "image/avif,image/webp,image/apng,image/svg+xml,image/*,*/*;q=0.8"
                referer: http://localhost:4040/
                baseUrl: "${LOCALHOST_BASE_URL}/outdoor/images/advertising.jpg"
                requestHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Request Header of ${LOCALHOST_BASE_URL}/outdoor/images/advertising.jpg"
                requestBody:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Body
                  name: "Request Body of ${LOCALHOST_BASE_URL}/outdoor/images/advertising.jpg"
                requestStub:
                  $type: StubToolOutputProvider
                  menuName: Configure Request
                  name: "Configure Request for ${LOCALHOST_BASE_URL}/outdoor/images/advertising.jpg"
                responseHeader:
                  $type: HTTPNamedToolOutputProvider
                  menuName: Header
                  name: "Response Header of ${LOCALHOST_BASE_URL}/outdoor/images/advertising.jpg"
                responseBody:
                  $type: MIMESpecificNamedToolOutputProvider
                  menuName: Body
                  name: "Response Body of ${LOCALHOST_BASE_URL}/outdoor/images/advertising.jpg"
                  type: text/html
                responseStub:
                  $type: StubToolOutputProvider
                  menuName: Stub Request/Response
                  name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/outdoor/images/advertising.jpg"
                trafficObject:
                  $type: ObjectOutputProvider
                  menuName: Traffic Object
                  name: "Traffic Object for ${LOCALHOST_BASE_URL}/outdoor/images/advertising.jpg"
              contents:
                $type: BrowserContentsOutputProvider
                outputTools:
                - $type: BrowserContentsViewer
                  iconName: BrowserContentsViewer
                  name: Browser Contents Viewer
                name: Browser Contents
              traffic:
                $type: NamedToolOutputProvider
                outputTools:
                - $type: TrafficViewer
                  iconName: TrafficViewer
                  name: Traffic Viewer
                  showRequestHeaders: true
                  showResponseHeaders: true
                name: HTTP Traffic
      - $type: BrowserTest
        testLogic: true
        testID: 9
        enabled: true
        name: Browser Playback Tool
        tool:
          $type: BrowserTestingTool
          usesAutomaticallyGeneratedName: true
          iconName: BrowserTest
          name: Browser Playback Tool
          commands:
          - windowIdentifier:
              BrowserTestingTool_WindowName: ""
              BrowserTestingTool_WindowIndex: 0
            action:
              $type: MaximizeWindowAction
          delaySettings:
            delays:
            - $type: ElementDelay
              windowIdentifier:
                WindowName: ""
              elementState: 1
              specifiedLocator:
                criteria:
                  $type: AttributeCriteria
                  elementName: any
                  attributeName: ""
          originalCommand: true
          command:
            windowIdentifier:
              BrowserTestingTool_WindowName: ""
            action:
              $type: UnknownAction
              location:
                criteria:
                  $type: AttributeCriteria
                  elementName: any
                  attributeName: id
              action: ""
          browserContents: true
          contents:
            windowContents:
            - parentUrl: ""
              charSet: UTF-8
              url: http://localhost:4040/
              htmlSize: 2871
              html: !!binary |-
                H4sIAAAAAAAA/7Vaa3PaPBb+3l+henem7UwNuXzYd1NgliS0y74JUCCb7ezueIQtQIltuZIMYfv2
                v++RfME3DAlpPgRjSUfn8pybUOvt9fBq+m3UQ0vpuZ03LfWBXOwv2gbxDfTkub64UN+WUgYXzSaM
                hC7mD6LB+MJA/sLEQdA2Agd3g8BAtouFaBvwWtgsIEantSTY6bSE3Lik8zd7ibkgEhl308/mb8an
                f/uL/1zYLsOP//0Iz2by6GCJzcz3p8yXRvL4sbF9rd8uqUMufCbfJ19M7FMPS/Lhh0NF4OINjPoE
                vaVewLjEvvz0UzEwZ9xLZ8xcZj9++qlIxKtNsaTejxUVdEZdKjcXQNohfjLHXjL+I2CCSsr8CzwT
                zA0l+fSz1YyEfoPgr+URiVEsfjsWPx6SVLoESY594cJ2bWM0Hv6jdzW1Bt3bXoVKR91xdzL8PEXX
                vdsh6o5GraYm0XkT0XOp/4g4cdsGtRnYcMnJvG00beZ5zG+CSAsimnO8UqMN+GcguQlgWz3SfDL1
                qk6RlhZGLAmRyXxJnmTTFiLdwaWz5owxKUCWQI1svzU86jfU3JfSlQwDofjjaGpz5ku8JoJ5RD+b
                8ZejCMcKVnJHj69BKQg5oEYQ/mJiLJQOY/w1+MqSKjLWampPf9OaMWcTE6d+EMqYWOQ0BqJO27BD
                zokvrRCW+9gjBlphN4RJKVED4VAyYDdwiXIJNp8bBxLlzCU5ouPhTc8a3Y2v/t6d9MZHUF6TmQW8
                geMQy2NOZofeZAqO2K+h7dBV4skBuJlpKwRSHySNJuhJb00TImrft90QIhl6lwAh0C6r9AvqVhH6
                HTLNjqYJYYFG89tGzfw0jEQvTUFsFa5QGlXUk+IJtOcSnsy7St8Y0XZKHTGJrQTlEFWSOV4ThTrq
                OyF48cZSrpeVHydAg91EgP38akuvtmLEQlSxpaVCN5YZMXaF0aqoqbbotJo4ZrcJ/O7k3CN+mGXV
                x6vtN/0mdPMvshadXyAqJku2nhApqb+4DKUE7SsjulQrVUQD5kyPaHNQ0ETFql3qLu2NFZFYoQ7x
                WNeB6JaujjYylbeieei65pzCPxtwriyqVd02rmEZiteVKFVvq7fOGm/hboKlyikofQLsQO2AOcVm
                5GcQa3ioqoXIJtXyJIaqUXKcxH/H80fc45xx1G630TtF/B36449kfIxnMypvv5amgEHKNoSM0dF7
                EN+pN+Z++4/J95BGpUIZA3w7WI2D0upnYCEJ4RzQLJ6HgmG0psbe1FsUKMIbzbzgdiZxxMVHRtCG
                WMHEg2a9HBZUjJLEkgbOmF3ssRDyfxrM0lCC4hoyY4LRNjupWWCQthH6nKwoWRNnEHqXmxFkGfQW
                AHVyqHvEDPihN4t2n0F4BFQZyXPlHkbnpN5XVCwrgTanhWcAvRK1zwK7eiRCljFvYy73gj23+mDM
                Z6xcD3PdRFD7EaLwmkp7eYn5+w8G0k2IZIuF8gEbsiAOBEleY75QhfyfMiC1ZnjrM1cg1yt6DIAt
                CAAVltJXjc+U59UBZK/eqrwjdYrIASST2O3qea8O/AztgwD/MkiXsLkf2V3b1gJngJzUstVgjhe8
                BLsOZ4HD1n4ZuDWK3oH9XOWFEsoxyCs8I+cCyfSafYt7q1p8T9G3k0wOK5H6LNWRIPUv5jALm07a
                PNQBJSW/2wEOGQ7donl0hYhy30xOF8t9sir8FElRSbxDVISTlS5bQCDIlMFxtl+dNqOhXGE86X8Z
                WMO7qdGZ0IWPYHhnEt3qAxypRltVxW808ky/zHhWvrzObdFqpvV3vEPyUeyzZth+XHAg6Zg6RG51
                1MmvTElXdWoAtqRlKthlT8+WSQ+QVQ7v3arWlXq0/KRtr4awQJmxqlO5pJcrpa94apLuLAWrbe5T
                FNQxQW5hQ8N8gFd0gWNesh1gxTZWrFOjWu1pEtORo6jwKpq2y4DXWb4+SCMO8M+4dZpN9Fn29eJM
                PoDcX4FYHVL+VRVaKjBeyWQkzQ7uznbtmYbSAzreq+54ak370xvod9Xzc7hNDa9QaCXcVXEVqbkk
                nghnHpVFI8ykX8g6+SOHCnMsif3YhwgoVBEGc6BpwzOXwHbx00TvdAmUoaVThY6afcOwo/u5nEaG
                4+ve2JrcXd72p9bl3XQ6HBid0Xh41etdo+kQ6ZHJpD8ctJoR54fbFuQjUliSWQ4JXLZ5lmmDzrOt
                251MetOJNR1a173RzfCb0dFaQpKhWbiprY700AVKjjz0zhkRolJsR+GViR5pqj1JD0+CWn1VxVZ9
                2pEtU7NhJRmoKJ/jSDsmAcHyIrU7oCt9Fkpd9iOabdCfgVXylEsj2QOebOg/xMYVgShVbJWNtA+W
                4+5V93bUH3xBva93/dFtb/AyD43yUdUJYtX8SISKDrd85sc8otJPPpOot3Vl6lZNBxaksU5F6HkY
                nGTGnkjdUr28aHtJFoyrelaz14hfUFKPgBLZmi6oZmjbDRQ2T2PQzl2La4kXyM1VZFFxS4RQJUp1
                c15dSJU6E2dFuIRY6i90nVFfnuB4Nun6zoCsRaFASQy2pbkLRrvqmOoNis3Rlr6R27jqQFnDLaHq
                qWP5g/NqyVtvutPeZGoNeveTCmeNRpEazbpp8Zy4zFDsoadGUYHRsKrurcrz/3pyBUErJ1mFZisp
                fQrhpKiI+95lf9AdW2NILN1vFbq4JxD7MUfggS4u5ZpdYX6XHNDA7RNDTSkwjXdzbN30B79DsoxP
                ZayZi/3HpAtSv1wL9dO16zUCzLFgc9kAlDbJE0jhmDOyYfARUnNN5dLE1AzYmnDiANgd4oJTmjig
                piRC6uOJknJ6mg661HTQXR/dAx3U7ZujiA66iumo34jQNKJTarlaQY18171pt3+zE+SZruYeS3uJ
                5JIKtI6NxrXRVJ0gCIG4s1a8xTIiO8tbLCPgx+YEWmmh38AcsJGKTEpMWBTayQh5Inaof0mSFMJZ
                rh4o59v94Dh7XZ85+4U+0x10b75B9AALDcfTClh0fexuQEfgM4zLo3zm7FV8Js/xy3wGClQOhifc
                XONV1BxTP2ShMOehrxtk7GpXMdVPoR7e0YB+TsigeyCDrj5Pu+js5Oxkj1cUJDjcK74QCeBFCsfq
                JB2xObgI7Juyjz6n7GsPRd2UfQRlyqNe7yCXYO6j9XKDRrFW0BpqJAEuZEvwJnjGapIDkkFxot0Q
                7G6/gmucv65rnP9C17i8GX7ZeXsl0dulyxZHOcX5qziF5jVyhQj6D3iFhc1pIC9WjDrvTz5USKGY
                v0D3SyzfCeQDoMDYqWRbp0gDqgjBTHvArTk5HNJTwK9ymcaZur8RRWuAdcrFZNhVu39E/6Rchtil
                /yMfNYYLwI/zERoBF6r9RHNmw2vAfSZLRGkAcoJ2CJiGXLbW+RERf0U585XWxREop96iGsV4X0iK
                Aw3ka/VqjTlJcrX5XcktN6bqNagsBbuCNdRvMtiF4d2/w2RK4cZDsOtXmOKsrErytw2yHWj1eWi+
                nn9Os11f+s8Zk7nbJNGLumI+u6TuUDGat/NayPbsfBZS1+n7c5bV0PY8vO4ng1LMqbw0t+tYZedt
                kIo9thKZml9QT0SOxr/yREcmAWdQF8nLVKSqc5PVaeO0cWKB256fnJ7+dvLXk/PTv5SDYHLWHh16
                JxiJmMjBJ3qOolX20tY2hiUIVbfeHr6HhG/iD/O8cQ7MqAtvD0LfvNDzO88jub3u91C87XcE1fSS
                afL06gTNFDm/kLTpMn13KOTusbuUrz8eQUxAvAyi/8eQimPDQ3qt8Gg62zuFR5NaAAyXX28m0XW9
                Aj1wKX1LsdXUt57/D6o7aokFLQAA
              isTopLevelWindow: true
            browserType:
              $type: SingleBrowserType
              typeValue: 3
          browserOutputProvider:
            msgOutputProviders:
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/proxy/v1/orders/unreviewedNumber"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "application/json, text/plain, */*"
              referer: http://localhost:4040/
              baseUrl: "${LOCALHOST_BASE_URL}/proxy/v1/orders/unreviewedNumber"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/proxy/v1/orders/unreviewedNumber"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/proxy/v1/orders/unreviewedNumber"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/proxy/v1/orders/unreviewedNumber"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/proxy/v1/orders/unreviewedNumber"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/proxy/v1/orders/unreviewedNumber"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/proxy/v1/orders/unreviewedNumber"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/proxy/v1/orders/unreviewedNumber"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/proxy/v1/cartItems"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "application/json, text/plain, */*"
              referer: http://localhost:4040/
              baseUrl: "${LOCALHOST_BASE_URL}/proxy/v1/cartItems"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/proxy/v1/cartItems"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/proxy/v1/cartItems"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/proxy/v1/cartItems"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/proxy/v1/cartItems"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/proxy/v1/cartItems"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/proxy/v1/cartItems"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/proxy/v1/cartItems"
            - $type: HttpMessageOutputProvider
              name: "${LOCALHOST_BASE_URL}/proxy/v1/assets/categories"
              httpMethod:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: HTTPMethodTestValue
                  method: GET
              accept: "application/json, text/plain, */*"
              referer: http://localhost:4040/
              baseUrl: "${LOCALHOST_BASE_URL}/proxy/v1/assets/categories"
              requestHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Request Header of ${LOCALHOST_BASE_URL}/proxy/v1/assets/categories"
              requestBody:
                $type: HTTPNamedToolOutputProvider
                menuName: Body
                name: "Request Body of ${LOCALHOST_BASE_URL}/proxy/v1/assets/categories"
              requestStub:
                $type: StubToolOutputProvider
                menuName: Configure Request
                name: "Configure Request for ${LOCALHOST_BASE_URL}/proxy/v1/assets/categories"
              responseHeader:
                $type: HTTPNamedToolOutputProvider
                menuName: Header
                name: "Response Header of ${LOCALHOST_BASE_URL}/proxy/v1/assets/categories"
              responseBody:
                $type: MIMESpecificNamedToolOutputProvider
                menuName: Body
                name: "Response Body of ${LOCALHOST_BASE_URL}/proxy/v1/assets/categories"
                type: text/html
              responseStub:
                $type: StubToolOutputProvider
                menuName: Stub Request/Response
                name: "Stub Request/Response for ${LOCALHOST_BASE_URL}/proxy/v1/assets/categories"
              trafficObject:
                $type: ObjectOutputProvider
                menuName: Traffic Object
                name: "Traffic Object for ${LOCALHOST_BASE_URL}/proxy/v1/assets/categories"
            contents:
              $type: BrowserContentsOutputProvider
              outputTools:
              - $type: BrowserContentsViewer
                iconName: BrowserContentsViewer
                name: Browser Contents Viewer
              - $type: AccessibilityScanTool
                allowToolbar: false
                iconName: AccessibilityScanTool
                name: Web Accessibility Scan
                outputProvider:
                  name: Errors
                locator:
                  criteria:
                    $type: AttributeCriteria
                    elementName: any
                    attributeName: id
              name: Browser Contents
            traffic:
              $type: NamedToolOutputProvider
              outputTools:
              - $type: TrafficViewer
                iconName: TrafficViewer
                name: Traffic Viewer
                showRequestHeaders: true
                showResponseHeaders: true
              name: HTTP Traffic
