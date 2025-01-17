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
      - name: BASEURL
        value: http://localhost:4040
      - name: PDA_BASEURL
        value: http://localhost:4040
      - name: PDA_SWAGGER
        value: http://localhost:4040/pda/api-docs/v1-proxy
      - name: SWAGGER
        value: http://localhost:4040/pda/api-docs/v1
      - name: DATAREPO
        value: localhost
      name: Local
    - variables:
      - name: BASEURL
        value: http://demoApp-baseline:8080
      - name: PDA_BASEURL
        value: http://demoApp-baseline:8080
      - name: PDA_SWAGGER
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
  notes: |-
    Created by Parasoft Selenium Agent from: com.parasoft.pda.tests.FullFlowTest.testPDA_FullFlow()
    Timestamp: 2021-06-04 08:37:00 PDT
  profileMappingID: 0
  maxProfileMappingID: 4
  nextIdentifier: 787
  tests:
  - $type: TestSuite
    testLogic: true
    testID: 725
    enabled: true
    name: E2E API Flow
    soapClientOptions:
      soap:
        authentication:
          useDefault: false
          customType: 1
    profileMappingID: 0
    maxProfileMappingID: 1
    nextIdentifier: 46
    dataSources:
    - id: ds_-46215558_1673466044154_1929664257
      impl:
        $type: TableDataSource
        hasAdvancedOptions: true
        advancedOptions:
          numRows: 1
        model:
          columnIdentifiers:
          - p_user
          - a_user
          rows:
          - - purchaser
            - approver
          - - purchaser2
            - approver2
          - - purchaser3
            - approver3
          - - purchaser4
            - approver4
          - - purchaser5
            - approver5
          - - purchaser6
            - approver6
          - - purchaser7
            - approver7
          - - purchaser8
            - approver8
          - - purchaser9
            - approver9
          - - purchaser10
            - approver10
          - - purchaser11
            - approver11
          - - purchaser12
            - approver12
          - - purchaser13
            - approver13
          - - purchaser14
            - approver14
          - - purchaser15
            - approver15
          - - purchaser16
            - approver16
          - - purchaser17
            - approver17
          - - purchaser18
            - approver18
          - - purchaser19
            - approver19
          - - purchaser20
            - approver20
          - - purchaser21
            - approver21
          - - purchaser22
            - approver22
          - - purchaser23
            - approver23
          - - purchaser24
            - approver24
          - - purchaser25
            - approver25
          - - purchaser26
            - approver26
          - - purchaser27
            - approver27
          - - purchaser28
            - approver28
          - - purchaser29
            - approver29
          - - purchaser30
            - approver30
          - - purchaser31
            - approver31
          - - purchaser32
            - approver32
          - - purchaser33
            - approver33
          - - purchaser34
            - approver34
          - - purchaser35
            - approver35
          - - purchaser36
            - approver36
          - - purchaser37
            - approver37
          - - purchaser38
            - approver38
          - - purchaser39
            - approver39
          - - purchaser40
            - approver40
          - - purchaser41
            - approver41
          - - purchaser42
            - approver42
          - - purchaser43
            - approver43
          - - purchaser44
            - approver44
          - - purchaser45
            - approver45
          - - purchaser46
            - approver46
          - - purchaser47
            - approver47
          - - purchaser48
            - approver48
          - - purchaser49
            - approver49
          - - purchaser50
            - approver50
      rowUse: 1
      name: TestData
      lastRow: 2
    tests:
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 726
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: POST qa1.parasoft.com/v1/login
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
            HTTPClient_Endpoint: "${BASEURL}/v1/login"
        transportProperties:
          manager:
            protocol: 1
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
                    method: POST
                resetCookies:
                  resetExistingCookiesProvider:
                    resetExistingCookies: true
                  resetExistingCookies:
                    useDefault: false
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/loginPage
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                resetCookies:
                  resetExistingCookiesProvider:
                    resetExistingCookies: true
                  resetExistingCookies:
                    useDefault: false
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/loginPage
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
            MessagingClient_LiteralMessage: "------WebKitFormBoundarywNdV56hzAFSAN0IX\r\
              \nContent-Disposition: form-data; name=\"username\"\r\n\r\n${p_user}\r\
              \n------WebKitFormBoundarywNdV56hzAFSAN0IX\r\nContent-Disposition: form-data;\
              \ name=\"password\"\r\n\r\npassword\r\n------WebKitFormBoundarywNdV56hzAFSAN0IX--\r\
              \n"
            type: multipart/form-data
          dataSource:
            columnName: "Test 1: Date/Time"
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
              value: login
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 727
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/assets/categories
        outputTools:
        - $type: GenericDataBank
          iconName: XMLDataBank
          name: Smart - JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/data[1]/content[1]/item[1]/id[1]/text()"
              mode: 1
            saveExpectedXML: true
            canonicalizeOutput: true
            xmlMessage: true
            xmlMessageObj:
              content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48cm9vdCB0eXBlPSJvYmplY3QiPjxzdGF0dXMgdHlwZT0ibnVtYmVyIj4xPC9zdGF0dXM+PG1lc3NhZ2U+c3VjY2VzczwvbWVzc2FnZT48ZGF0YSB0eXBlPSJvYmplY3QiPjx0b3RhbEVsZW1lbnRzIHR5cGU9Im51bWJlciI+MzwvdG90YWxFbGVtZW50cz48dG90YWxQYWdlcyB0eXBlPSJudW1iZXIiPjE8L3RvdGFsUGFnZXM+PHNpemUgdHlwZT0ibnVtYmVyIj4yMDAwPC9zaXplPjxudW1iZXIgdHlwZT0ibnVtYmVyIj4wPC9udW1iZXI+PG51bWJlck9mRWxlbWVudHMgdHlwZT0ibnVtYmVyIj4zPC9udW1iZXJPZkVsZW1lbnRzPjxzb3J0Pm5hbWU6IEFTQzwvc29ydD48Y29udGVudCB0eXBlPSJhcnJheSI+PGl0ZW0gdHlwZT0ib2JqZWN0Ij48aWQgdHlwZT0ibnVtYmVyIj4yPC9pZD48bmFtZT5CYWNrcGFja3M8L25hbWU+PGRlc2NyaXB0aW9uPkJhY2twYWNrcyBzdWl0YWJsZSBmb3Igc2hvcnRlciBoaWtlcywgZGF5IGhpa2VzLCBvciBleHRlbmRlZCBiYWNrcGFja2luZyB0cmlwcy4gQWRqdXN0YWJsZSB0byBjb21mb3J0YWJseSBmaXQgYW55IGJvZHkgdHlwZS48L2Rlc2NyaXB0aW9uPjxpbWFnZT4vb3V0ZG9vci9pbWFnZXMvY2F0ZWdvcnktYmFja3BhY2sucG5nPC9pbWFnZT48L2l0ZW0+PGl0ZW0gdHlwZT0ib2JqZWN0Ij48aWQgdHlwZT0ibnVtYmVyIj4xPC9pZD48bmFtZT5TbGVlcGluZyBiYWdzPC9uYW1lPjxkZXNjcmlwdGlvbj5XYXRlciByZXBlbGxlbnQgc2hlbGwgbWFkZSBmcm9tIHBvbHllc3RlciB3aXRoIHN5bnRoZXRpYyBmaWxsLiBFYXN5IHVzZSB6aXBwZXIgZm9yIHNhZmUgYW5kIHF1aWNrIG9wZW4gb3IgY2xvc2luZy4gVGVtcGVyYXR1cmUgcmF0aW5ncyBvZiAyNSBkZWdyZWVzIGFuZCAzNSBkZWdyZWVzLjwvZGVzY3JpcHRpb24+PGltYWdlPi9vdXRkb29yL2ltYWdlcy9jYXRlZ29yeS1zbGVlcGluZ2JhZ3MucG5nPC9pbWFnZT48L2l0ZW0+PGl0ZW0gdHlwZT0ib2JqZWN0Ij48aWQgdHlwZT0ibnVtYmVyIj4zPC9pZD48bmFtZT5UZW50czwvbmFtZT48ZGVzY3JpcHRpb24+U2xlZXBpbmcgY2FwYWNpdHkgMywgNCwgb3IgNi4gRmVhdHVyZXMgaW5jbHVkZSBlYXN5IHNpbmdsZS1wZXJzb24gc2V0dXAgYW5kIGxpZ2h0d2VpZ2h0IGNvbnN0cnVjdGlvbi4gTGFyZ2UgbWVzaCB3aW5kb3dzIGtlZXAgaW5zZWN0cyBvdXQuPC9kZXNjcmlwdGlvbj48aW1hZ2U+L291dGRvb3IvaW1hZ2VzL2NhdGVnb3J5LXRlbnRzLnBuZzwvaW1hZ2U+PC9pdGVtPjwvY29udGVudD48L2RhdGE+PC9yb290Pg==
              editable: true
              headersAvailable: false
              mimeType: true
              mimeTypeObj:
                extensions:
                - xml
                isXML: true
                isText: true
                type: text/xml
            virtualDSCreator:
              writableColumns:
              - customName: "Test 2: id"
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/assets/categories"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 728
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders/unreviewedNumber
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/unreviewedNumber"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: unreviewedNumber
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 729
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 730
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems 2
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 731
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/locations/regions
        outputTools:
        - $type: GenericDataBank
          iconName: XMLDataBank
          name: Smart - JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/data[1]/item[4]/text()"
              mode: 1
            saveExpectedXML: true
            canonicalizeOutput: true
            xmlMessage: true
            xmlMessageObj:
              content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48cm9vdCB0eXBlPSJvYmplY3QiPjxzdGF0dXMgdHlwZT0ibnVtYmVyIj4xPC9zdGF0dXM+PG1lc3NhZ2U+c3VjY2VzczwvbWVzc2FnZT48ZGF0YSB0eXBlPSJhcnJheSI+PGl0ZW0+TE9DQVRJT05fMTwvaXRlbT48aXRlbT5MT0NBVElPTl8yPC9pdGVtPjxpdGVtPkxPQ0FUSU9OXzM8L2l0ZW0+PGl0ZW0+TE9DQVRJT05fNDwvaXRlbT48aXRlbT5MT0NBVElPTl81PC9pdGVtPjxpdGVtPkxPQ0FUSU9OXzY8L2l0ZW0+PGl0ZW0+TE9DQVRJT05fNzwvaXRlbT48aXRlbT5MT0NBVElPTl84PC9pdGVtPjwvZGF0YT48L3Jvb3Q+
              editable: true
              headersAvailable: false
              mimeType: true
              mimeTypeObj:
                extensions:
                - xml
                isXML: true
                isText: true
                type: text/xml
            virtualDSCreator:
              writableColumns:
              - customName: "Test 6: data_4"
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/locations/regions"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: regions
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 732
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/assets/categories/2
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/assets/categories/${Test 2:\
              \ id}"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: "${Test 2: id}"
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 733
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders/unreviewedNumber 2
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/unreviewedNumber"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: unreviewedNumber
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 734
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/assets/items
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/assets/items?categoryId=2"
        urlParameters:
          properties:
          - name: categoryId
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: 2
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 735
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems/5
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems/5"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: 5
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 736
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: POST qa1.parasoft.com/proxy/v1/cartItems
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
                name: anonymous
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
                  types:
                  - $type: ElementType
                    hash: 6
                    defaultValue: 0
                    minOccurs: 0
                    nillable: true
                    localName: itemId
                    bodyType:
                      $type: ComplexType
                      hash: 7
                      attributes:
                      - hash: 8
                        ns: ""
                        name: type
                        fixed: number
                        contentType:
                          $type: StringType
                          hash: 4
                        required: true
                      isAbstract: true
                      content: true
                      contentObj:
                        $type: StringType
                        hash: 9
                      namespace: urn:parasoft:json
                      name: Number
                  - $type: ElementType
                    hash: 10
                    defaultValue: 0
                    minOccurs: 0
                    nillable: true
                    localName: itemQty
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
                            value: number
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: 5
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
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: 1
          elementTypeName: root
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            MessagingClient_LiteralMessage: "{\"itemId\":5,\"itemQty\":1}"
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
              value: proxy
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
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 737
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems 3
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 738
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems/6
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems/6"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: 6
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 739
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: POST qa1.parasoft.com/proxy/v1/cartItems 2
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
                name: anonymous
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
                  types:
                  - $type: ElementType
                    hash: 6
                    defaultValue: 0
                    minOccurs: 0
                    nillable: true
                    localName: itemId
                    bodyType:
                      $type: ComplexType
                      hash: 7
                      attributes:
                      - hash: 8
                        ns: ""
                        name: type
                        fixed: number
                        contentType:
                          $type: StringType
                          hash: 4
                        required: true
                      isAbstract: true
                      content: true
                      contentObj:
                        $type: StringType
                        hash: 9
                      namespace: urn:parasoft:json
                      name: Number
                  - $type: ElementType
                    hash: 10
                    defaultValue: 0
                    minOccurs: 0
                    nillable: true
                    localName: itemQty
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
                            value: number
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: 6
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
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: 1
          elementTypeName: root
        jsonBuilder:
          hasValue: true
          value:
            $type: JSONObjectValue
            nameIsNull: true
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            MessagingClient_LiteralMessage: "{\"itemId\":6,\"itemQty\":1}"
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
              value: proxy
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
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 740
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems 4
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/categories/2
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 741
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders/unreviewedNumber 3
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/unreviewedNumber"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: unreviewedNumber
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 742
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/assets/categories 2
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/assets/categories"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 743
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems 5
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 744
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems 6
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 745
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders/unreviewedNumber 4
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/unreviewedNumber"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: unreviewedNumber
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 746
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems 7
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 747
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/locations/regions 2
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/locations/regions"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: regions
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 748
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/locations/location
        outputTools:
        - $type: GenericDataBank
          iconName: XMLDataBank
          name: Smart - JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/data[1]/locationInfo[1]/text()"
              mode: 1
            saveExpectedXML: true
            canonicalizeOutput: true
            xmlMessage: true
            xmlMessageObj:
              content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48cm9vdCB0eXBlPSJvYmplY3QiPjxzdGF0dXMgdHlwZT0ibnVtYmVyIj4xPC9zdGF0dXM+PG1lc3NhZ2U+c3VjY2VzczwvbWVzc2FnZT48ZGF0YSB0eXBlPSJvYmplY3QiPjxpZCB0eXBlPSJudW1iZXIiPjQ8L2lkPjxsb2NhdGlvbkluZm8+NTkuOTDCsCBXLCA1MC40N8KwIFM8L2xvY2F0aW9uSW5mbz48bG9jYXRpb25JbWFnZT4vb3V0ZG9vci9pbWFnZXMvZ2VuZXJpYy1tYXAtNC5wbmc8L2xvY2F0aW9uSW1hZ2U+PC9kYXRhPjwvcm9vdD4=
              editable: true
              headersAvailable: false
              mimeType: true
              mimeTypeObj:
                extensions:
                - xml
                isXML: true
                isText: true
                type: text/xml
            virtualDSCreator:
              writableColumns:
              - customName: "Test 23: locationInfo"
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/locations/location?region=${Test\
              \ 6: data_4}"
        urlParameters:
          properties:
          - name: region
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "${Test 6: data_4}"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 749
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems 8
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 750
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: POST qa1.parasoft.com/proxy/v1/orders
        outputTools:
        - $type: GenericDataBank
          iconName: XMLDataBank
          name: Smart - JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/data[1]/orderNumber[1]/text()"
              mode: 1
            saveExpectedXML: true
            canonicalizeOutput: true
            xmlMessage: true
            xmlMessageObj:
              content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48cm9vdCB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB0eXBlPSJvYmplY3QiPjxzdGF0dXMgdHlwZT0ibnVtYmVyIj4xPC9zdGF0dXM+PG1lc3NhZ2U+c3VjY2VzczwvbWVzc2FnZT48ZGF0YSB0eXBlPSJvYmplY3QiPjxpZCB0eXBlPSJudW1iZXIiPjY8L2lkPjxvcmRlck51bWJlcj4yMy00NTYtMDA2PC9vcmRlck51bWJlcj48cmVxdWVzdGVkQnk+cHVyY2hhc2VyMzwvcmVxdWVzdGVkQnk+PHN0YXR1cz5TVUJNSVRURUQ8L3N0YXR1cz48cmV2aWV3ZWRCeUFQViB0eXBlPSJib29sZWFuIj5mYWxzZTwvcmV2aWV3ZWRCeUFQVj48cmV2aWV3ZWRCeVBSQ0ggdHlwZT0iYm9vbGVhbiI+dHJ1ZTwvcmV2aWV3ZWRCeVBSQ0g+PHJlc3BvbmRlZEJ5IHhzaTpuaWw9InRydWUiPm51bGw8L3Jlc3BvbmRlZEJ5PjxvcmRlckl0ZW1zIHR5cGU9ImFycmF5Ij48aXRlbSB0eXBlPSJvYmplY3QiPjxpZCB0eXBlPSJudW1iZXIiPjExPC9pZD48bmFtZT5EYXkgSGlrZSBCYWNrcGFjazwvbmFtZT48ZGVzY3JpcHRpb24+UGxlbnR5IG9mIHN0b3JhZ2Ugc3BhY2UgdG8gb3JnYW5pemUgZ2VhciBmb3IgYW4gYWxsLWRheSBhZHZlbnR1cmUuPC9kZXNjcmlwdGlvbj48aW1hZ2U+L291dGRvb3IvaW1hZ2VzL2JhY2twYWNrLWRldGFpbC1tZC5wbmc8L2ltYWdlPjxpdGVtSWQgdHlwZT0ibnVtYmVyIj41PC9pdGVtSWQ+PHF1YW50aXR5IHR5cGU9Im51bWJlciI+MTwvcXVhbnRpdHk+PC9pdGVtPjxpdGVtIHR5cGU9Im9iamVjdCI+PGlkIHR5cGU9Im51bWJlciI+MTI8L2lkPjxuYW1lPk11bHRpLURheSBCYWNrcGFjazwvbmFtZT48ZGVzY3JpcHRpb24+U3RvcmFnZSBzcGFjZSwgb3JnYW5pemluZyBwb2NrZXRzLCBhbmQgZmVhdHVyZXMgdG8ga2VlcCBhbGwgZ2VhciBuZWVkZWQgZm9yIGEgc2V2ZXJhbC1kYXkgYmFja3BhY2tpbmcgdHJlay48L2Rlc2NyaXB0aW9uPjxpbWFnZT4vb3V0ZG9vci9pbWFnZXMvYmFja3BhY2stZGV0YWlsLWxnLnBuZzwvaW1hZ2U+PGl0ZW1JZCB0eXBlPSJudW1iZXIiPjY8L2l0ZW1JZD48cXVhbnRpdHkgdHlwZT0ibnVtYmVyIj4xPC9xdWFudGl0eT48L2l0ZW0+PC9vcmRlckl0ZW1zPjxyZWdpb24+TE9DQVRJT05fNDwvcmVnaW9uPjxsb2NhdGlvbj41OS45MMKwIFcsIDUwLjQ3wrAgUzwvbG9jYXRpb24+PG9yZGVySW1hZ2U+L291dGRvb3IvaW1hZ2VzL2dlbmVyaWMtbWFwLTQucG5nPC9vcmRlckltYWdlPjxyZWNlaXZlcklkPjExMTwvcmVjZWl2ZXJJZD48ZXZlbnRJZD4yMjI8L2V2ZW50SWQ+PGV2ZW50TnVtYmVyPjMzMzwvZXZlbnROdW1iZXI+PHN1Ym1pc3Npb25EYXRlPjIwMjUtMDEtMTdUMjI6MTc6MDMuMDU2KzAwOjAwPC9zdWJtaXNzaW9uRGF0ZT48YXBwcm92ZXJSZXBseURhdGUgeHNpOm5pbD0idHJ1ZSI+bnVsbDwvYXBwcm92ZXJSZXBseURhdGU+PGNvbW1lbnRzIHhzaTpuaWw9InRydWUiPm51bGw8L2NvbW1lbnRzPjwvZGF0YT48L3Jvb3Q+
              editable: true
              headersAvailable: false
              mimeType: true
              mimeTypeObj:
                extensions:
                - xml
                isXML: true
                isText: true
                type: text/xml
            virtualDSCreator:
              writableColumns:
              - customName: "Test 25: orderNumber"
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
                name: anonymous
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
                  types:
                  - $type: ElementType
                    hash: 6
                    minOccurs: 0
                    nillable: true
                    localName: region
                    bodyType:
                      $type: ComplexType
                      hash: 7
                      attributes:
                      - hash: 8
                        ns: ""
                        name: type
                        fixed: string
                        contentType:
                          $type: StringType
                          hash: 4
                      isAbstract: true
                      content: true
                      contentObj:
                        $type: StringType
                        hash: 9
                      namespace: urn:parasoft:json
                      name: String
                  - $type: ElementType
                    hash: 10
                    minOccurs: 0
                    nillable: true
                    localName: location
                    bodyType:
                      $type: ComplexType
                      hash: 7
                  - $type: ElementType
                    hash: 11
                    minOccurs: 0
                    nillable: true
                    localName: receiverId
                    bodyType:
                      $type: ComplexType
                      hash: 7
                  - $type: ElementType
                    hash: 12
                    minOccurs: 0
                    nillable: true
                    localName: eventId
                    bodyType:
                      $type: ComplexType
                      hash: 7
                  - $type: ElementType
                    hash: 13
                    minOccurs: 0
                    nillable: true
                    localName: eventNumber
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
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          mode: 3
                          columnName: "Test 6: data_4"
                          value: LOCATION_4
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
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          mode: 3
                          columnName: "Test 23: locationInfo"
                          value: "59.90° W, 50.47° S"
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
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: 111
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
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: 222
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
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: 333
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders"
        transportProperties:
          manager:
            protocol: 1
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
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
            MessagingClient_LiteralMessage: "{\"region\":\"${Test 6: data_4}\",\"\
              location\":\"${Test 23: locationInfo}\",\"receiverId\":\"111\",\"eventId\"\
              :\"222\",\"eventNumber\":\"333\"}"
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
              value: proxy
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
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 751
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: GET qa1.parasoft.com/v1/logout
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
              validResponseRange: 302
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/v1/logout"
        transportProperties:
          manager:
            protocol: 1
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
                resetCookies:
                  resetExistingCookiesProvider:
                    resetExistingCookies: true
                httpHeaders:
                  properties:
                  - name: Upgrade-Insecure-Requests
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 1
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                resetCookies:
                  resetExistingCookiesProvider:
                    resetExistingCookies: true
                httpHeaders:
                  properties:
                  - name: Upgrade-Insecure-Requests
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 1
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orderWizard
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
            outputTools:
            - $type: HeaderToDataSource
              iconName: HeaderDataBank
              name: Smart - Header Data Bank
              headers:
              - name: X-Content-Type-Options
                value: nosniff
              - name: X-XSS-Protection
                value: 1; mode=block
              - name: Cache-Control
                value: "no-cache, no-store, max-age=0, must-revalidate"
              - name: Pragma
                value: no-cache
              - name: Expires
                value: 0
              - name: X-Frame-Options
                value: DENY
              - name: Location
                value: http://localhost:4040/loginPage
              - name: Content-Length
                value: 0
              - name: Date
                value: "Fri, 17 Jan 2025 22:17:03 GMT"
              extractedHeaders:
              - Location
              virtualDSCreator:
                writableColumns:
                - customName: "Test 26: Location"
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
            columnName: "Test 23: locationInfo"
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
              value: logout
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 752
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: POST qa1.parasoft.com/v1/login 2
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
            HTTPClient_Endpoint: "${BASEURL}/v1/login"
        transportProperties:
          manager:
            protocol: 1
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
                    method: POST
                resetCookies:
                  resetExistingCookiesProvider:
                    resetExistingCookies: true
                  resetExistingCookies:
                    useDefault: false
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "${Test 26: Location}"
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: POST
                resetCookies:
                  resetExistingCookiesProvider:
                    resetExistingCookies: true
                  resetExistingCookies:
                    useDefault: false
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "${Test 26: Location}"
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
            MessagingClient_LiteralMessage: "------WebKitFormBoundaryDSg2KYqkIAr1hEYJ\r\
              \nContent-Disposition: form-data; name=\"username\"\r\n\r\n${a_user}\r\
              \n------WebKitFormBoundaryDSg2KYqkIAr1hEYJ\r\nContent-Disposition: form-data;\
              \ name=\"password\"\r\n\r\npassword\r\n------WebKitFormBoundaryDSg2KYqkIAr1hEYJ--\r\
              \n"
            type: multipart/form-data
          dataSource:
            columnName: "Test 1: Date/Time"
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
              value: login
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 753
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders?sort=orderNumber,desc"
        urlParameters:
          properties:
          - name: sort
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "orderNumber,desc"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 754
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders/23-456-003
        outputTools:
        - $type: GenericAssertionTool
          iconName: XMLAssertor
          name: Smart - JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: StringComparisonAssertion
              timestamp: 1673465973055
              name: Assert reviewedByAPV
              Assertion_XPath: /root/data/reviewedByAPV
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: "false"
            - $type: StringComparisonAssertion
              timestamp: 1673465973055
              name: Assert reviewedByPRCH
              Assertion_XPath: /root/data/reviewedByPRCH
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: "true"
            - $type: StringComparisonAssertion
              timestamp: 1673465973055
              name: Assert respondedBy
              Assertion_XPath: /root/data/respondedBy
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: "null"
            - $type: StringComparisonAssertion
              timestamp: 1673465973055
              name: Assert region
              Assertion_XPath: /root/data/region
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                  parameterizedValue:
                    column: "Test 6: data_4"
                  selectedIndex: -2
            - $type: StringComparisonAssertion
              timestamp: 1673465973055
              name: Assert location
              Assertion_XPath: /root/data/location
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                  parameterizedValue:
                    column: "Test 23: locationInfo"
                  selectedIndex: -2
            - $type: StringComparisonAssertion
              timestamp: 1673465973055
              name: Assert orderImage
              Assertion_XPath: /root/data/orderImage
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: /outdoor/images/generic-map-4.png
            message:
              $type: ExpectedXMLMessage
              saveExpectedMessage: true
              message: true
              messageObj:
                content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48cm9vdCB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB0eXBlPSJvYmplY3QiPjxzdGF0dXMgdHlwZT0ibnVtYmVyIj4xPC9zdGF0dXM+PG1lc3NhZ2U+c3VjY2VzczwvbWVzc2FnZT48ZGF0YSB0eXBlPSJvYmplY3QiPjxpZCB0eXBlPSJudW1iZXIiPjY8L2lkPjxvcmRlck51bWJlcj4yMy00NTYtMDA2PC9vcmRlck51bWJlcj48cmVxdWVzdGVkQnk+cHVyY2hhc2VyMzwvcmVxdWVzdGVkQnk+PHN0YXR1cz5QUk9DRVNTRUQ8L3N0YXR1cz48cmV2aWV3ZWRCeUFQViB0eXBlPSJib29sZWFuIj5mYWxzZTwvcmV2aWV3ZWRCeUFQVj48cmV2aWV3ZWRCeVBSQ0ggdHlwZT0iYm9vbGVhbiI+dHJ1ZTwvcmV2aWV3ZWRCeVBSQ0g+PHJlc3BvbmRlZEJ5IHhzaTpuaWw9InRydWUiPm51bGw8L3Jlc3BvbmRlZEJ5PjxvcmRlckl0ZW1zIHR5cGU9ImFycmF5Ij48aXRlbSB0eXBlPSJvYmplY3QiPjxpZCB0eXBlPSJudW1iZXIiPjExPC9pZD48bmFtZT5EYXkgSGlrZSBCYWNrcGFjazwvbmFtZT48ZGVzY3JpcHRpb24+UGxlbnR5IG9mIHN0b3JhZ2Ugc3BhY2UgdG8gb3JnYW5pemUgZ2VhciBmb3IgYW4gYWxsLWRheSBhZHZlbnR1cmUuPC9kZXNjcmlwdGlvbj48aW1hZ2U+L291dGRvb3IvaW1hZ2VzL2JhY2twYWNrLWRldGFpbC1tZC5wbmc8L2ltYWdlPjxpdGVtSWQgdHlwZT0ibnVtYmVyIj41PC9pdGVtSWQ+PHF1YW50aXR5IHR5cGU9Im51bWJlciI+MTwvcXVhbnRpdHk+PC9pdGVtPjxpdGVtIHR5cGU9Im9iamVjdCI+PGlkIHR5cGU9Im51bWJlciI+MTI8L2lkPjxuYW1lPk11bHRpLURheSBCYWNrcGFjazwvbmFtZT48ZGVzY3JpcHRpb24+U3RvcmFnZSBzcGFjZSwgb3JnYW5pemluZyBwb2NrZXRzLCBhbmQgZmVhdHVyZXMgdG8ga2VlcCBhbGwgZ2VhciBuZWVkZWQgZm9yIGEgc2V2ZXJhbC1kYXkgYmFja3BhY2tpbmcgdHJlay48L2Rlc2NyaXB0aW9uPjxpbWFnZT4vb3V0ZG9vci9pbWFnZXMvYmFja3BhY2stZGV0YWlsLWxnLnBuZzwvaW1hZ2U+PGl0ZW1JZCB0eXBlPSJudW1iZXIiPjY8L2l0ZW1JZD48cXVhbnRpdHkgdHlwZT0ibnVtYmVyIj4xPC9xdWFudGl0eT48L2l0ZW0+PC9vcmRlckl0ZW1zPjxyZWdpb24+TE9DQVRJT05fNDwvcmVnaW9uPjxsb2NhdGlvbj41OS45MMKwIFcsIDUwLjQ3wrAgUzwvbG9jYXRpb24+PG9yZGVySW1hZ2U+L291dGRvb3IvaW1hZ2VzL2dlbmVyaWMtbWFwLTQucG5nPC9vcmRlckltYWdlPjxyZWNlaXZlcklkPjExMTwvcmVjZWl2ZXJJZD48ZXZlbnRJZD4yMjI8L2V2ZW50SWQ+PGV2ZW50TnVtYmVyPjMzMzwvZXZlbnROdW1iZXI+PHN1Ym1pc3Npb25EYXRlPjIwMjUtMDEtMTdUMjI6MTc6MDMuMDU2KzAwOjAwPC9zdWJtaXNzaW9uRGF0ZT48YXBwcm92ZXJSZXBseURhdGUgeHNpOm5pbD0idHJ1ZSI+bnVsbDwvYXBwcm92ZXJSZXBseURhdGU+PGNvbW1lbnRzIHhzaTpuaWw9InRydWUiPm51bGw8L2NvbW1lbnRzPjwvZGF0YT48L3Jvb3Q+
                editable: true
                headersAvailable: false
                mimeType: true
                mimeTypeObj:
                  extensions:
                  - xml
                  isXML: true
                  isText: true
                  type: text/xml
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/${Test 25: orderNumber}"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: "${Test 25: orderNumber}"
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 755
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: PUT qa1.parasoft.com/proxy/v1/orders/23-456-003
        outputTools:
        - $type: GenericAssertionTool
          dataSourceNames:
          - TestData
          enabled: false
          iconName: XMLAssertor
          name: Smart - JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            dataSourceNames:
            - TestData
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: StringComparisonAssertion
              timestamp: 1673465973060
              name: Assert reviewedByPRCH
              Assertion_XPath: /root/data/reviewedByPRCH
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: "true"
            - $type: StringComparisonAssertion
              timestamp: 1673465973060
              name: Assert respondedBy
              Assertion_XPath: /root/data/respondedBy
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: "null"
            message:
              $type: ExpectedXMLMessage
              saveExpectedMessage: true
              message: true
              messageObj:
                content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48cm9vdCB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB0eXBlPSJvYmplY3QiPjxzdGF0dXMgdHlwZT0ibnVtYmVyIj4xPC9zdGF0dXM+PG1lc3NhZ2U+c3VjY2VzczwvbWVzc2FnZT48ZGF0YSB0eXBlPSJvYmplY3QiPjxpZCB0eXBlPSJudW1iZXIiPjM8L2lkPjxvcmRlck51bWJlcj4yMy00NTYtMDAzPC9vcmRlck51bWJlcj48cmVxdWVzdGVkQnk+cHVyY2hhc2VyMzwvcmVxdWVzdGVkQnk+PHN0YXR1cz5QUk9DRVNTRUQ8L3N0YXR1cz48cmV2aWV3ZWRCeUFQViB0eXBlPSJib29sZWFuIj50cnVlPC9yZXZpZXdlZEJ5QVBWPjxyZXZpZXdlZEJ5UFJDSCB0eXBlPSJib29sZWFuIj50cnVlPC9yZXZpZXdlZEJ5UFJDSD48cmVzcG9uZGVkQnkgeHNpOm5pbD0idHJ1ZSI+bnVsbDwvcmVzcG9uZGVkQnk+PG9yZGVySXRlbXMgdHlwZT0iYXJyYXkiPjxpdGVtIHR5cGU9Im9iamVjdCI+PGlkIHR5cGU9Im51bWJlciI+NTwvaWQ+PG5hbWU+RGF5IEhpa2UgQmFja3BhY2s8L25hbWU+PGRlc2NyaXB0aW9uPlBsZW50eSBvZiBzdG9yYWdlIHNwYWNlIHRvIG9yZ2FuaXplIGdlYXIgZm9yIGFuIGFsbC1kYXkgYWR2ZW50dXJlLjwvZGVzY3JpcHRpb24+PGltYWdlPi9vdXRkb29yL2ltYWdlcy9iYWNrcGFjay1kZXRhaWwtbWQucG5nPC9pbWFnZT48aXRlbUlkIHR5cGU9Im51bWJlciI+NTwvaXRlbUlkPjxxdWFudGl0eSB0eXBlPSJudW1iZXIiPjE8L3F1YW50aXR5PjwvaXRlbT48aXRlbSB0eXBlPSJvYmplY3QiPjxpZCB0eXBlPSJudW1iZXIiPjY8L2lkPjxuYW1lPk11bHRpLURheSBCYWNrcGFjazwvbmFtZT48ZGVzY3JpcHRpb24+U3RvcmFnZSBzcGFjZSwgb3JnYW5pemluZyBwb2NrZXRzLCBhbmQgZmVhdHVyZXMgdG8ga2VlcCBhbGwgZ2VhciBuZWVkZWQgZm9yIGEgc2V2ZXJhbC1kYXkgYmFja3BhY2tpbmcgdHJlay48L2Rlc2NyaXB0aW9uPjxpbWFnZT4vb3V0ZG9vci9pbWFnZXMvYmFja3BhY2stZGV0YWlsLWxnLnBuZzwvaW1hZ2U+PGl0ZW1JZCB0eXBlPSJudW1iZXIiPjY8L2l0ZW1JZD48cXVhbnRpdHkgdHlwZT0ibnVtYmVyIj4xPC9xdWFudGl0eT48L2l0ZW0+PC9vcmRlckl0ZW1zPjxyZWdpb24+TE9DQVRJT05fNDwvcmVnaW9uPjxsb2NhdGlvbj41OS45MMKwIFcsIDUwLjQ3wrAgUzwvbG9jYXRpb24+PG9yZGVySW1hZ2U+L291dGRvb3IvaW1hZ2VzL2dlbmVyaWMtbWFwLTQucG5nPC9vcmRlckltYWdlPjxyZWNlaXZlcklkPjExMTwvcmVjZWl2ZXJJZD48ZXZlbnRJZD4yMjI8L2V2ZW50SWQ+PGV2ZW50TnVtYmVyPjMzMzwvZXZlbnROdW1iZXI+PHN1Ym1pc3Npb25EYXRlPjIwMjUtMDEtMTdUMTg6MzM6NTUuMDcxKzAwOjAwPC9zdWJtaXNzaW9uRGF0ZT48YXBwcm92ZXJSZXBseURhdGUgeHNpOm5pbD0idHJ1ZSI+bnVsbDwvYXBwcm92ZXJSZXBseURhdGU+PGNvbW1lbnRzIHhzaTpuaWw9InRydWUiPm51bGw8L2NvbW1lbnRzPjwvZGF0YT48L3Jvb3Q+
                editable: true
                headersAvailable: false
                mimeType: true
                mimeTypeObj:
                  extensions:
                  - xml
                  isXML: true
                  isText: true
                  type: text/xml
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
                name: anonymous
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
                  types:
                  - $type: ElementType
                    hash: 6
                    minOccurs: 0
                    nillable: true
                    localName: status
                    bodyType:
                      $type: ComplexType
                      hash: 7
                      attributes:
                      - hash: 8
                        ns: ""
                        name: type
                        fixed: string
                        contentType:
                          $type: StringType
                          hash: 4
                      isAbstract: true
                      content: true
                      contentObj:
                        $type: StringType
                        hash: 9
                      namespace: urn:parasoft:json
                      name: String
                  - $type: ElementType
                    hash: 10
                    minOccurs: 0
                    nillable: true
                    localName: reviewedByAPV
                    bodyType:
                      $type: ComplexType
                      hash: 11
                      attributes:
                      - hash: 12
                        ns: ""
                        name: type
                        fixed: boolean
                        contentType:
                          $type: StringType
                          hash: 9
                        required: true
                      isAbstract: true
                      content: true
                      contentObj:
                        $type: BooleanType
                        hash: 13
                      namespace: urn:parasoft:json
                      name: Boolean
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
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: PROCESSED
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
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: BooleanValue
                          replacedColumn: ""
                          value: "true"
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/${Test 25: orderNumber}"
        transportProperties:
          manager:
            protocol: 1
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
                    method: PUT
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
            MessagingClient_LiteralMessage: "{\"status\":\"PROCESSED\",\"reviewedByAPV\"\
              :true}"
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
              value: proxy
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
              value: "${Test 25: orderNumber}"
        resourceMethod:
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 756
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: PUT qa1.parasoft.com/proxy/v1/orders/23-456-003 2
        outputTools:
        - $type: GenericAssertionTool
          dataSourceNames:
          - TestData
          enabled: false
          iconName: XMLAssertor
          name: Smart - JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            dataSourceNames:
            - TestData
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: StringComparisonAssertion
              timestamp: 1673465973064
              name: Assert reviewedByPRCH
              Assertion_XPath: /root/data/reviewedByPRCH
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: "false"
            - $type: StringComparisonAssertion
              timestamp: 1673465973064
              name: Assert respondedBy
              Assertion_XPath: /root/data/respondedBy
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: approver
                  parameterizedValue:
                    column: a_user
                  selectedIndex: -2
            message:
              $type: ExpectedXMLMessage
              saveExpectedMessage: true
              message: true
              messageObj:
                content: PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz48cm9vdCB0eXBlPSJvYmplY3QiPjxzdGF0dXMgdHlwZT0ibnVtYmVyIj4xPC9zdGF0dXM+PG1lc3NhZ2U+c3VjY2VzczwvbWVzc2FnZT48ZGF0YSB0eXBlPSJvYmplY3QiPjxpZCB0eXBlPSJudW1iZXIiPjM8L2lkPjxvcmRlck51bWJlcj4yMy00NTYtMDAzPC9vcmRlck51bWJlcj48cmVxdWVzdGVkQnk+cHVyY2hhc2VyMzwvcmVxdWVzdGVkQnk+PHN0YXR1cz5BUFBST1ZFRDwvc3RhdHVzPjxyZXZpZXdlZEJ5QVBWIHR5cGU9ImJvb2xlYW4iPnRydWU8L3Jldmlld2VkQnlBUFY+PHJldmlld2VkQnlQUkNIIHR5cGU9ImJvb2xlYW4iPmZhbHNlPC9yZXZpZXdlZEJ5UFJDSD48cmVzcG9uZGVkQnk+YXBwcm92ZXIzPC9yZXNwb25kZWRCeT48b3JkZXJJdGVtcyB0eXBlPSJhcnJheSI+PGl0ZW0gdHlwZT0ib2JqZWN0Ij48aWQgdHlwZT0ibnVtYmVyIj41PC9pZD48bmFtZT5EYXkgSGlrZSBCYWNrcGFjazwvbmFtZT48ZGVzY3JpcHRpb24+UGxlbnR5IG9mIHN0b3JhZ2Ugc3BhY2UgdG8gb3JnYW5pemUgZ2VhciBmb3IgYW4gYWxsLWRheSBhZHZlbnR1cmUuPC9kZXNjcmlwdGlvbj48aW1hZ2U+L291dGRvb3IvaW1hZ2VzL2JhY2twYWNrLWRldGFpbC1tZC5wbmc8L2ltYWdlPjxpdGVtSWQgdHlwZT0ibnVtYmVyIj41PC9pdGVtSWQ+PHF1YW50aXR5IHR5cGU9Im51bWJlciI+MTwvcXVhbnRpdHk+PC9pdGVtPjxpdGVtIHR5cGU9Im9iamVjdCI+PGlkIHR5cGU9Im51bWJlciI+NjwvaWQ+PG5hbWU+TXVsdGktRGF5IEJhY2twYWNrPC9uYW1lPjxkZXNjcmlwdGlvbj5TdG9yYWdlIHNwYWNlLCBvcmdhbml6aW5nIHBvY2tldHMsIGFuZCBmZWF0dXJlcyB0byBrZWVwIGFsbCBnZWFyIG5lZWRlZCBmb3IgYSBzZXZlcmFsLWRheSBiYWNrcGFja2luZyB0cmVrLjwvZGVzY3JpcHRpb24+PGltYWdlPi9vdXRkb29yL2ltYWdlcy9iYWNrcGFjay1kZXRhaWwtbGcucG5nPC9pbWFnZT48aXRlbUlkIHR5cGU9Im51bWJlciI+NjwvaXRlbUlkPjxxdWFudGl0eSB0eXBlPSJudW1iZXIiPjE8L3F1YW50aXR5PjwvaXRlbT48L29yZGVySXRlbXM+PHJlZ2lvbj5MT0NBVElPTl80PC9yZWdpb24+PGxvY2F0aW9uPjU5LjkwwrAgVywgNTAuNDfCsCBTPC9sb2NhdGlvbj48b3JkZXJJbWFnZT4vb3V0ZG9vci9pbWFnZXMvZ2VuZXJpYy1tYXAtNC5wbmc8L29yZGVySW1hZ2U+PHJlY2VpdmVySWQ+MTExPC9yZWNlaXZlcklkPjxldmVudElkPjIyMjwvZXZlbnRJZD48ZXZlbnROdW1iZXI+MzMzPC9ldmVudE51bWJlcj48c3VibWlzc2lvbkRhdGU+MjAyNS0wMS0xN1QxODozMzo1NS4wNzErMDA6MDA8L3N1Ym1pc3Npb25EYXRlPjxhcHByb3ZlclJlcGx5RGF0ZT4yMDI1LTAxLTE3VDE4OjMzOjU2LjAxMCswMDowMDwvYXBwcm92ZXJSZXBseURhdGU+PGNvbW1lbnRzLz48L2RhdGE+PC9yb290Pg==
                editable: true
                headersAvailable: false
                mimeType: true
                mimeTypeObj:
                  extensions:
                  - xml
                  isXML: true
                  isText: true
                  type: text/xml
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
                name: anonymous
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
                  types:
                  - $type: ElementType
                    hash: 6
                    minOccurs: 0
                    nillable: true
                    localName: status
                    bodyType:
                      $type: ComplexType
                      hash: 7
                      attributes:
                      - hash: 8
                        ns: ""
                        name: type
                        fixed: string
                        contentType:
                          $type: StringType
                          hash: 4
                      isAbstract: true
                      content: true
                      contentObj:
                        $type: StringType
                        hash: 9
                      namespace: urn:parasoft:json
                      name: String
                  - $type: ElementType
                    hash: 10
                    minOccurs: 0
                    nillable: true
                    localName: comments
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
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: APPROVED
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
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: ""
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/${Test 25: orderNumber}"
        transportProperties:
          manager:
            protocol: 1
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
                    method: PUT
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
            MessagingClient_LiteralMessage: "{\"status\":\"APPROVED\",\"comments\"\
              :\"\"}"
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
              value: proxy
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
              value: "${Test 25: orderNumber}"
        resourceMethod:
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 757
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders 2
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders?sort=orderNumber,desc"
        urlParameters:
          properties:
          - name: sort
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "orderNumber,desc"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 758
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/v1/logout 2
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
        xmlBuilder: false
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
              validResponseRange: 302
        router:
          values:
          - $type: ScriptedValue
          fixedValue:
            $type: StringTestValue
            HTTPClient_Endpoint: "${BASEURL}/v1/logout"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Upgrade-Insecure-Requests
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 1
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
                method:
                  values:
                  - $type: ScriptedValue
                  fixedValue:
                    $type: HTTPMethodTestValue
                    method: GET
                httpHeaders:
                  properties:
                  - name: Upgrade-Insecure-Requests
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: 1
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
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
              value: logout
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 759
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: POST qa1.parasoft.com/v1/login 3
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
            HTTPClient_Endpoint: "${BASEURL}/v1/login"
        transportProperties:
          manager:
            protocol: 1
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
                    method: POST
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "${Test 26: Location}"
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "${Test 26: Location}"
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
            MessagingClient_LiteralMessage: "------WebKitFormBoundaryHlrabxP3kkHHHOmz\r\
              \nContent-Disposition: form-data; name=\"username\"\r\n\r\n${p_user}\r\
              \n------WebKitFormBoundaryHlrabxP3kkHHHOmz\r\nContent-Disposition: form-data;\
              \ name=\"password\"\r\n\r\npassword\r\n------WebKitFormBoundaryHlrabxP3kkHHHOmz--\r\
              \n"
            type: multipart/form-data
          dataSource:
            columnName: "Test 1: Date/Time"
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
              value: login
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 760
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders/unreviewedNumber 5
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/unreviewedNumber"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: unreviewedNumber
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 761
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/assets/categories 3
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/assets/categories"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 762
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems 9
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 763
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders/unreviewedNumber 6
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/unreviewedNumber"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: unreviewedNumber
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 764
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/cartItems 10
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/cartItems"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 765
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders 3
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders?sort=orderNumber,desc"
        urlParameters:
          properties:
          - name: sort
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "orderNumber,desc"
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
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
            columnName: "Test 23: locationInfo"
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
          httpMethod: GET
        payloadFormat: Other
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 766
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders/23-456-003 2
        outputTools:
        - $type: GenericAssertionTool
          dataSourceNames:
          - TestData
          enabled: false
          iconName: XMLAssertor
          name: Smart - JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            dataSourceNames:
            - TestData
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: StringComparisonAssertion
              timestamp: 1673465973079
              name: Assert reviewedByAPV
              Assertion_XPath: /root/data/reviewedByAPV
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: "true"
            - $type: StringComparisonAssertion
              timestamp: 1673465973079
              name: Assert reviewedByPRCH
              Assertion_XPath: /root/data/reviewedByPRCH
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: "false"
            - $type: StringComparisonAssertion
              timestamp: 1673465973079
              name: Assert respondedBy
              Assertion_XPath: /root/data/respondedBy
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: approver
                  parameterizedValue:
                    column: a_user
                  selectedIndex: -2
            - $type: StringComparisonAssertion
              timestamp: 1673465973079
              name: Assert region
              Assertion_XPath: /root/data/region
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: LOCATION_8
            - $type: StringComparisonAssertion
              timestamp: 1673465973079
              name: Assert location
              Assertion_XPath: /root/data/location
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: "44.20° E, 25.17° N"
            - $type: StringComparisonAssertion
              timestamp: 1673465973079
              name: Assert orderImage
              Assertion_XPath: /root/data/orderImage
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: /outdoor/images/generic-map-8.png
            message:
              $type: ExpectedXMLMessage
              saveExpectedMessage: true
              message: true
              messageObj:
                content: PD94bWwgdmVyc2lvbj0iMS4xIiBlbmNvZGluZz0iVVRGLTgiPz48cm9vdCB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB0eXBlPSJvYmplY3QiPjxzdGF0dXMgdHlwZT0ibnVtYmVyIj4xPC9zdGF0dXM+PG1lc3NhZ2U+c3VjY2VzczwvbWVzc2FnZT48ZGF0YSB0eXBlPSJvYmplY3QiPjxpZCB0eXBlPSJudW1iZXIiPjE3NjwvaWQ+PG9yZGVyTnVtYmVyPjIzLTQ1Ni0xNzY8L29yZGVyTnVtYmVyPjxyZXF1ZXN0ZWRCeT5wdXJjaGFzZXI1MDwvcmVxdWVzdGVkQnk+PHN0YXR1cz5QUk9DRVNTRUQ8L3N0YXR1cz48cmV2aWV3ZWRCeUFQViB0eXBlPSJib29sZWFuIj5mYWxzZTwvcmV2aWV3ZWRCeUFQVj48cmV2aWV3ZWRCeVBSQ0ggdHlwZT0iYm9vbGVhbiI+dHJ1ZTwvcmV2aWV3ZWRCeVBSQ0g+PHJlc3BvbmRlZEJ5IHhzaTpuaWw9InRydWUiPm51bGw8L3Jlc3BvbmRlZEJ5PjxvcmRlckl0ZW1zIHR5cGU9ImFycmF5Ij48aXRlbSB0eXBlPSJvYmplY3QiPjxpZCB0eXBlPSJudW1iZXIiPjMzNjwvaWQ+PG5hbWU+RGF5IEhpa2UgQmFja3BhY2s8L25hbWU+PGRlc2NyaXB0aW9uPlBsZW50eSBvZiBzdG9yYWdlIHNwYWNlIHRvIG9yZ2FuaXplIGdlYXIgZm9yIGFuIGFsbC1kYXkgYWR2ZW50dXJlLjwvZGVzY3JpcHRpb24+PGltYWdlPi9vdXRkb29yL2ltYWdlcy9iYWNrcGFjay1kZXRhaWwtbWQucG5nPC9pbWFnZT48aXRlbUlkIHR5cGU9Im51bWJlciI+NTwvaXRlbUlkPjxxdWFudGl0eSB0eXBlPSJudW1iZXIiPjE8L3F1YW50aXR5PjwvaXRlbT48aXRlbSB0eXBlPSJvYmplY3QiPjxpZCB0eXBlPSJudW1iZXIiPjMzNzwvaWQ+PG5hbWU+TXVsdGktRGF5IEJhY2twYWNrPC9uYW1lPjxkZXNjcmlwdGlvbj5TdG9yYWdlIHNwYWNlLCBvcmdhbml6aW5nIHBvY2tldHMsIGFuZCBmZWF0dXJlcyB0byBrZWVwIGFsbCBnZWFyIG5lZWRlZCBmb3IgYSBzZXZlcmFsLWRheSBiYWNrcGFja2luZyB0cmVrLjwvZGVzY3JpcHRpb24+PGltYWdlPi9vdXRkb29yL2ltYWdlcy9iYWNrcGFjay1kZXRhaWwtbGcucG5nPC9pbWFnZT48aXRlbUlkIHR5cGU9Im51bWJlciI+NjwvaXRlbUlkPjxxdWFudGl0eSB0eXBlPSJudW1iZXIiPjE8L3F1YW50aXR5PjwvaXRlbT48L29yZGVySXRlbXM+PHJlZ2lvbj5MT0NBVElPTl80PC9yZWdpb24+PGxvY2F0aW9uPjU5LjkwsCBXLCA1MC40N7AgUzwvbG9jYXRpb24+PG9yZGVySW1hZ2U+L291dGRvb3IvaW1hZ2VzL2dlbmVyaWMtbWFwLTQucG5nPC9vcmRlckltYWdlPjxyZWNlaXZlcklkPjExMTwvcmVjZWl2ZXJJZD48ZXZlbnRJZD4yMjI8L2V2ZW50SWQ+PGV2ZW50TnVtYmVyPjMzMzwvZXZlbnROdW1iZXI+PHN1Ym1pc3Npb25EYXRlPjIwMjMtMDItMjJUMDA6MDc6NTEuMTUwKzAwOjAwPC9zdWJtaXNzaW9uRGF0ZT48YXBwcm92ZXJSZXBseURhdGUgeHNpOm5pbD0idHJ1ZSI+bnVsbDwvYXBwcm92ZXJSZXBseURhdGU+PGNvbW1lbnRzIHhzaTpuaWw9InRydWUiPm51bGw8L2NvbW1lbnRzPjwvZGF0YT48L3Jvb3Q+
                editable: true
                headersAvailable: false
                mimeType: true
                mimeTypeObj:
                  extensions:
                  - xml
                  isXML: true
                  isText: true
                  type: text/xml
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/${Test 25: orderNumber}"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: "${Test 25: orderNumber}"
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
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 767
      name: REST Client
      tool:
        $type: RESTClient
        dataSourceNames:
        - TestData
        iconName: RESTClient
        name: PUT qa1.parasoft.com/proxy/v1/orders/23-456-003 3
        outputTools:
        - $type: GenericAssertionTool
          dataSourceNames:
          - TestData
          enabled: false
          iconName: XMLAssertor
          name: Smart - JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            dataSourceNames:
            - TestData
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: StringComparisonAssertion
              timestamp: 1673465973084
              name: Assert reviewedByPRCH
              Assertion_XPath: /root/data/reviewedByPRCH
              ignoreCase: true
              value:
                name: String Comparison Assertion
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: "true"
            message:
              $type: ExpectedXMLMessage
              saveExpectedMessage: true
              message: true
              messageObj:
                content: PD94bWwgdmVyc2lvbj0iMS4xIiBlbmNvZGluZz0iVVRGLTgiPz48cm9vdCB4bWxuczp4c2k9Imh0dHA6Ly93d3cudzMub3JnLzIwMDEvWE1MU2NoZW1hLWluc3RhbmNlIiB0eXBlPSJvYmplY3QiPjxzdGF0dXMgdHlwZT0ibnVtYmVyIj4wPC9zdGF0dXM+PG1lc3NhZ2U+WW91IGRvIG5vdCBoYXZlIHBlcm1pc3Npb24gdG8gY2hhbmdlIHRoZSBzdGF0dXMgb2Ygb3JkZXIgdG8gQVBQUk9WRUQuPC9tZXNzYWdlPjxkYXRhIHhzaTpuaWw9InRydWUiPm51bGw8L2RhdGE+PC9yb290Pg==
                editable: true
                headersAvailable: false
                mimeType: true
                mimeTypeObj:
                  extensions:
                  - xml
                  isXML: true
                  isText: true
                  type: text/xml
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
                name: anonymous
                compositor: true
                compositorObj:
                  $type: AllCompositor
                  hash: 5
                  types:
                  - $type: ElementType
                    hash: 6
                    minOccurs: 0
                    nillable: true
                    localName: status
                    bodyType:
                      $type: ComplexType
                      hash: 7
                      attributes:
                      - hash: 8
                        ns: ""
                        name: type
                        fixed: string
                        contentType:
                          $type: StringType
                          hash: 4
                      isAbstract: true
                      content: true
                      contentObj:
                        $type: StringType
                        hash: 9
                      namespace: urn:parasoft:json
                      name: String
                  - $type: ElementType
                    hash: 10
                    minOccurs: 0
                    nillable: true
                    localName: reviewedByPRCH
                    bodyType:
                      $type: ComplexType
                      hash: 11
                      attributes:
                      - hash: 12
                        ns: ""
                        name: type
                        fixed: boolean
                        contentType:
                          $type: StringType
                          hash: 9
                        required: true
                      isAbstract: true
                      content: true
                      contentObj:
                        $type: BooleanType
                        hash: 13
                      namespace: urn:parasoft:json
                      name: Boolean
                  - $type: ElementType
                    hash: 14
                    minOccurs: 0
                    nillable: true
                    localName: reviewedByAPV
                    bodyType:
                      $type: ComplexType
                      hash: 11
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
                        contentValue: true
                        contentValueObj:
                          $type: StringValue
                          replacedColumn: ""
                          value: APPROVED
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
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: BooleanValue
                          replacedColumn: ""
                          value: "true"
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
                          useValue: true
                        contentValue: true
                        contentValueObj:
                          $type: BooleanValue
                          replacedColumn: ""
                          value: "true"
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/${Test 25: orderNumber}"
        transportProperties:
          manager:
            protocol: 1
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
                    method: PUT
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Origin
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            MessagingClient_LiteralMessage: "{\"status\":\"APPROVED\",\"reviewedByPRCH\"\
              :true,\"reviewedByAPV\":true}"
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
              value: proxy
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
              value: "${Test 25: orderNumber}"
        resourceMethod:
          httpMethod: GET
        baseUrl:
          values:
          - $type: ScriptedValue
          - $type: WadlTestValue
          fixedValue:
            $type: StringTestValue
          selectedIndex: 1
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 768
      enabled: true
      name: REST Client
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: GET qa1.parasoft.com/proxy/v1/orders/unreviewedNumber 7
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
        xmlBuilder: false
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
            HTTPClient_Endpoint: "${BASEURL}/proxy/v1/orders/unreviewedNumber"
        transportProperties:
          manager:
            protocol: 1
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
                httpHeaders:
                  properties:
                  - name: Accept
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              keepAlive1_1:
                bool: true
            - $type: HTTPClientHTTPProperties
              common:
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
                      fixedValue:
                        $type: StringTestValue
                        value: "application/json, text/plain, */*"
                  - name: User-Agent
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36\
                          \ (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36"
                  - name: Referer
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: http://qa1.parasoft.com:4040/orders
                  - name: Accept-Encoding
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "gzip, deflate"
                  - name: Accept-Language
                    value:
                      fixedValue:
                        $type: StringTestValue
                        value: "en-US,en;q=0.9"
              protocol: 1
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
            type: text/plain
        mode: Literal
        literalQuery:
          isPropertiesRef: true
        literalPath:
          pathElements:
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: proxy
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
              value: unreviewedNumber
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
  - $type: TestSuite
    testLogic: true
    testID: 773
    enabled: true
    name: /v1/locations
    authentications:
    - $type: BasicAuthentication
      name: Basic 2
      username:
        fixedValue:
          $type: StringTestValue
          username: purchaser50
      password:
        fixedValue:
          $type: PasswordTestValue
          password: AwAAACx4YXhJU3NQdUtXUkFoUCtIMld0c1lib0JWN3EwSW9ialFiaXhxWndPMi9vPQ==
    profileMappingID: 23
    nextIdentifier: 90
    dataSources:
    - id: ds_-1682070462_1653445997461_1919478906
      iterationScope: 1
      impl:
        $type: WritableDataSource
        hasAdvancedOptions: true
        advancedOptions:
          numRows: 1
        model:
          columnCount: 1
          columnIdentifiers:
          - regions
        resetMode: 2
        writingMode: 3
      name: Regions
      useAllRows: true
    tests:
    - $type: RESTClientToolTest
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 774
      enabled: true
      name: /v1/locations/regions - GET
      performanceGroup: 21
      tool:
        $type: RESTClient
        dataSourceNames:
        - Regions
        iconName: RESTClient
        name: /v1/locations/regions - GET
        outputTools:
        - $type: GenericDataBank
          dataSourceNames:
          - Regions
          enabled: false
          iconName: XMLDataBank
          name: JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            dataSourceNames:
            - Regions
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: /root/data/item/text()
              mode: 1
            canonicalizeOutput: true
            xmlMessage: true
            virtualDSCreator:
              writableColumns:
              - dataSourceNames:
                - "Regions: regions"
                mode: 2
                customName: "Test 1: item[1]"
          conversionStrategy:
            dataFormatName: JSON
            conversionStrategyId: JSON
            conversionStrategyClassName: com.parasoft.xml.convert.json.JsonConversionStrategy
        - $type: DiffTool
          dataSourceNames:
          - Regions
          enabled: false
          iconName: Diff
          name: "Diff control generated on Aug 29, 2022, 9:00:11 AM."
          differs:
          - $type: BinaryDiffer
            source:
              optionsSource: 1
          - $type: TextDiffer
          - $type: XMLDifferNew
            formXml:
              formXML:
                rootNodeExists: true
                rootNode:
                  $type: XMLElementNode
                  xmlEncoding: 2
                  value: ""
                  name: NewElement
                  showAttributes: true
            hasSoapControlSource: true
            soapControlSource:
              $type: SoapDiffControlSource
          - $type: JSONDiffer
          source:
            controls:
            - keys:
              - ""
              - ""
              row:
                refs:
                - dataSourceName: ""
                last: false
            - "{\"status\":1,\"message\":\"failure\",\"data\":[\"UNITED_STATES\",\"\
              UNITED_KINGDOM\",\"GERMANY\",\"FRANCE\",\"JAPAN\",\"SOUTH_KOREA\",\"\
              SPAIN\",\"AUSTRALIA\"]}"
          mode: 3
        - $type: GenericAssertionTool
          dataSourceNames:
          - Regions
          enabled: false
          iconName: XMLAssertor
          name: JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            dataSourceNames:
            - Regions
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: ValueAssertion
              timestamp: 1661788917718
              name: Value Assertion
              extractEntireElement: true
              Assertion_XPath: "/root/data/item[1]/string()"
              value:
                name: Value
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: UNITED_STATES
            message:
              $type: ExpectedXMLMessage
              message: true
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
            HTTPClient_Endpoint: "${BASEURL}/v1/locations/regions"
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
            type: application/json
          dataSource:
            columnName: "Test 1: Location"
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
              value: locations
          - values:
            - $type: ScriptedValue
            fixedValue:
              $type: StringTestValue
              value: regions
        resourceMethod:
          resourceId: /v1/locations/regions
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
    - $type: TestSuite
      testLogic: true
      testFlowLogic:
        condition: true
      testID: 775
      name: 'Loop regions on /v1/locations/location '
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 1
      runMode: 1
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testFlowLogic:
          condition: true
        testID: 776
        enabled: true
        name: /v1/locations/location - GET
        performanceGroup: 20
        tool:
          $type: RESTClient
          dataSourceNames:
          - Regions
          iconName: RESTClient
          name: /v1/locations/location - GET
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
              location: http://qa1.parasoft.com:4040/pda/api-docs/v1
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
              type: application/json
            dataSource:
              columnName: "Regions: regions"
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
                mode: 3
                columnName: "Regions: regions"
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
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
