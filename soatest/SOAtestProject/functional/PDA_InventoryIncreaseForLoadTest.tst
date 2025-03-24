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
  authentications:
  - $type: BasicAuthentication
    name: Basic
    username:
      fixedValue:
        $type: StringTestValue
        username: purchaser
    password:
      fixedValue:
        $type: PasswordTestValue
        password: AwAAACx4YXhJU3NQdUtXUkFoUCtIMld0c1lib0JWN3EwSW9ialFiaXhxWndPMi9vPQ==
  performance:
    groups:
    - name: /v1/assets/categories - GET
    - id: 1
      name: /v1/assets/categories - POST
    - id: 1
      name: "/v1/assets/categories/name/{categoryName} - GET"
    - id: 2
      name: "/v1/assets/categories/{categoryId} - GET"
    - id: 3
      name: "/v1/assets/categories/{categoryId} - PUT"
    - id: 4
      name: "/v1/assets/categories/{categoryId} - DELETE"
    - id: 3
      name: /v1/assets/items - GET
    - id: 4
      name: /v1/assets/items - POST
    - id: 4
      name: "/v1/assets/items/inStock/{itemId} - PUT"
    - id: 5
      name: "/v1/assets/items/name/{itemName} - GET"
    - id: 6
      name: "/v1/assets/items/name/{itemName} - DELETE"
    - id: 6
      name: "/v1/assets/items/{itemId} - GET"
    - id: 7
      name: "/v1/assets/items/{itemId} - PUT"
    - id: 8
      name: "/v1/assets/items/{itemId} - DELETE"
    - id: 7
      name: /v1/cartItems - GET
    - id: 8
      name: /v1/cartItems - POST
    - id: 9
      name: /v1/cartItems - DELETE
    - id: 8
      name: "/v1/cartItems/{itemId} - GET"
    - id: 9
      name: "/v1/cartItems/{itemId} - PUT"
    - id: 10
      name: "/v1/cartItems/{itemId} - DELETE"
    - id: 9
      name: /v1/demoAdmin/currentIndustry - GET
    - id: 10
      name: /v1/demoAdmin/currentPreferences - GET
    - id: 11
      name: /v1/demoAdmin/databaseClear - PUT
    - id: 12
      name: /v1/demoAdmin/databaseReset - PUT
    - id: 13
      name: /v1/demoAdmin/defaultPreferences - GET
    - id: 14
      name: /v1/demoAdmin/kafkaBrokerUrlValidation - GET
    - id: 15
      name: /v1/demoAdmin/mqProperties - GET
    - id: 16
      name: /v1/demoAdmin/parasoftVirtualizeServerUrlValidation - GET
    - id: 17
      name: /v1/demoAdmin/preferences - PUT
    - id: 18
      name: /v1/demoAdmin/rabbitMQUrlValidation - GET
    - id: 19
      name: /v1/images - POST
    - id: 20
      name: /v1/labels - PUT
    - id: 21
      name: /v1/labels/default - GET
    - id: 22
      name: /v1/labels/overrided - GET
    - id: 23
      name: /v1/locations/location - GET
    - id: 24
      name: /v1/locations/regions - GET
    - id: 25
      name: /v1/orders - GET
    - id: 26
      name: /v1/orders - POST
    - id: 26
      name: /v1/orders/unreviewedNumber - GET
    - id: 27
      name: "/v1/orders/{orderNumber} - GET"
    - id: 28
      name: "/v1/orders/{orderNumber} - PUT"
    - id: 28
      name: /v1/search/categories - GET
    - id: 29
      name: /v1/search/items - GET
  notes: |-
    Created from: http://localhost:4040/pda/api-docs/v1
    Timestamp: 2023-01-11 13:23:00
  profileMappingID: 0
  maxProfileMappingID: 32
  nextIdentifier: 86
  tests:
  - $type: TestSuite
    testLogic: true
    testID: 1
    name: /pda/api-docs/v1
    profileMappingID: 1
    tests:
    - $type: TestSuite
      testLogic: true
      testID: 2
      enabled: true
      name: /v1/assets/categories
      profileMappingID: 2
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 3
        enabled: true
        name: /v1/assets/categories - GET
        performanceGroup: 0
        tool:
          $type: RESTClient
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
          xmlBuilder: false
          schemaURL:
            MessagingClient_SchemaLocation: "${SWAGGER}"
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories?searchString=&page=0&size=2147483647&sort=%5B%22name%2CASC%22%5D"
          urlParameters:
            properties:
            - $type: QueryParameterNameValuePair
              name: searchString
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
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
                  value: 2147483647
            - name: sort
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: "[\"name,ASC\"]"
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
                defaultValue: 2147483647
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
                defaultValue: "[\"name,ASC\"]"
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
        testID: 4
        enabled: true
        name: /v1/assets/categories - POST
        performanceGroup: 1
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/assets/categories - POST
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories"
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
    - $type: TestSuite
      testLogic: true
      testID: 5
      enabled: true
      name: "/v1/assets/categories/name/{categoryName}"
      profileMappingID: 3
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 6
        enabled: true
        name: "/v1/assets/categories/name/{categoryName} - GET"
        performanceGroup: 1
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/v1/assets/categories/name/{categoryName} - GET"
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories/name/{categoryName}"
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
                value: ""
          resourceMethod:
            resourceId: "/v1/assets/categories/name/{categoryName}"
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
      testID: 7
      enabled: true
      name: "/v1/assets/categories/{categoryId}"
      profileMappingID: 4
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 8
        enabled: true
        name: "/v1/assets/categories/{categoryId} - GET"
        performanceGroup: 2
        tool:
          $type: RESTClient
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories/{categoryId}"
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
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/categories/{categoryId}"
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
        testID: 9
        enabled: true
        name: "/v1/assets/categories/{categoryId} - PUT"
        performanceGroup: 3
        tool:
          $type: RESTClient
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories/{categoryId}"
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
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/categories/{categoryId}"
            httpMethod: PUT
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
        testID: 10
        enabled: true
        name: "/v1/assets/categories/{categoryId} - DELETE"
        performanceGroup: 4
        tool:
          $type: RESTClient
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/categories/{categoryId}"
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
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/categories/{categoryId}"
            httpMethod: DELETE
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
      testID: 11
      enabled: true
      name: /v1/assets/items
      profileMappingID: 5
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 12
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items?categoryId=0&regions=UNITED_STATES&searchString=&page=0&size=2147483647&sort=%5B%22name%2CASC%22%5D"
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
            - $type: QueryParameterNameValuePair
              name: searchString
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
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
                  value: 2147483647
            - name: sort
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: "[\"name,ASC\"]"
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
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
      - $type: RESTClientToolTest
        testLogic: true
        testID: 13
        enabled: true
        name: /v1/assets/items - POST
        performanceGroup: 4
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/assets/items - POST
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
                            hash: 9
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
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 20
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 21
                    - $type: ElementType
                      hash: 22
                      minOccurs: 0
                      localName: imagePath
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 23
                      minOccurs: 0
                      localName: region
                      bodyType:
                        $type: ComplexType
                        hash: 24
                        attributes:
                        - hash: 25
                          ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 26
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
                          hash: 27
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
                      - $type: ElementValue
                        replacedColumn: ""
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
              location: http://localhost:4040/pda/api-docs/v1
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items"
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
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 14
      enabled: true
      name: "/v1/assets/items/inStock/{itemId}"
      profileMappingID: 6
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 15
        enabled: true
        name: "/v1/assets/items/inStock/{itemId} - PUT"
        performanceGroup: 4
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/v1/assets/items/inStock/{itemId} - PUT"
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
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/items/inStock/{itemId}"
            httpMethod: PUT
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
      testID: 16
      enabled: true
      name: "/v1/assets/items/name/{itemName}"
      profileMappingID: 7
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 17
        enabled: true
        name: "/v1/assets/items/name/{itemName} - GET"
        performanceGroup: 5
        tool:
          $type: RESTClient
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/name/{itemName}"
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
                value: ""
          resourceMethod:
            resourceId: "/v1/assets/items/name/{itemName}"
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
        testID: 18
        enabled: true
        name: "/v1/assets/items/name/{itemName} - DELETE"
        performanceGroup: 6
        tool:
          $type: RESTClient
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/name/{itemName}"
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
                value: ""
          resourceMethod:
            resourceId: "/v1/assets/items/name/{itemName}"
            httpMethod: DELETE
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
      testID: 19
      enabled: true
      name: "/v1/assets/items/{itemId}"
      profileMappingID: 8
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 20
        enabled: true
        name: "/v1/assets/items/{itemId} - GET"
        performanceGroup: 6
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/v1/assets/items/{itemId} - GET"
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/{itemId}"
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
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/items/{itemId}"
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
        testID: 21
        enabled: true
        name: "/v1/assets/items/{itemId} - PUT"
        performanceGroup: 7
        tool:
          $type: RESTClient
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
                            hash: 9
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
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 20
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 21
                    - $type: ElementType
                      hash: 22
                      minOccurs: 0
                      localName: imagePath
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 23
                      minOccurs: 0
                      localName: region
                      bodyType:
                        $type: ComplexType
                        hash: 24
                        attributes:
                        - hash: 25
                          ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 26
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
                          hash: 27
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
                      - $type: ElementValue
                        replacedColumn: ""
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
              location: http://localhost:4040/pda/api-docs/v1
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/{itemId}"
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
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/items/{itemId}"
            httpMethod: PUT
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
        testID: 22
        enabled: true
        name: "/v1/assets/items/{itemId} - DELETE"
        performanceGroup: 8
        tool:
          $type: RESTClient
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/{itemId}"
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
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/items/{itemId}"
            httpMethod: DELETE
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
      testID: 23
      enabled: true
      name: /v1/cartItems
      profileMappingID: 9
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 24
        enabled: true
        name: /v1/cartItems - GET
        performanceGroup: 7
        tool:
          $type: RESTClient
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
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems"
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
                value: cartItems
          resourceMethod:
            resourceId: /v1/cartItems
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
        testID: 25
        enabled: true
        name: /v1/cartItems - POST
        performanceGroup: 8
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/cartItems - POST
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
                  name: /components/schemas/ShoppingCartDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: itemId
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: LongType
                          hash: 10
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 11
                    - $type: ElementType
                      hash: 12
                      minOccurs: 0
                      localName: itemQty
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
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 15
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 16
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
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems"
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
              MessagingClient_LiteralMessage: "{\"itemId\":0,\"itemQty\":0}"
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
                value: cartItems
          resourceMethod:
            resourceId: /v1/cartItems
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
        testID: 26
        enabled: true
        name: /v1/cartItems - DELETE
        performanceGroup: 9
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/cartItems - DELETE
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
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems"
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
                value: cartItems
          resourceMethod:
            resourceId: /v1/cartItems
            httpMethod: DELETE
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
      testID: 27
      enabled: true
      name: "/v1/cartItems/{itemId}"
      profileMappingID: 10
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 28
        enabled: true
        name: "/v1/cartItems/{itemId} - GET"
        performanceGroup: 8
        tool:
          $type: RESTClient
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
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems/{itemId}"
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
                value: 0
          resourceMethod:
            resourceId: "/v1/cartItems/{itemId}"
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
        testID: 29
        enabled: true
        name: "/v1/cartItems/{itemId} - PUT"
        performanceGroup: 9
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/v1/cartItems/{itemId} - PUT"
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
                  name: /components/schemas/UpdateShoppingCartItemDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: itemQty
                      bodyType:
                        $type: ComplexType
                        hash: 7
                        attributes:
                        - hash: 8
                          ns: ""
                          name: type
                          defaultValue: number
                          fixed: number
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 10
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
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
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems/{itemId}"
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
              MessagingClient_LiteralMessage: "{\"itemQty\":0}"
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
                value: 0
          resourceMethod:
            resourceId: "/v1/cartItems/{itemId}"
            httpMethod: PUT
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
        testID: 30
        enabled: true
        name: "/v1/cartItems/{itemId} - DELETE"
        performanceGroup: 10
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/v1/cartItems/{itemId} - DELETE"
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
              HTTPClient_Endpoint: "${BASEURL}/v1/cartItems/{itemId}"
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
                value: 0
          resourceMethod:
            resourceId: "/v1/cartItems/{itemId}"
            httpMethod: DELETE
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
      testID: 31
      enabled: true
      name: /v1/demoAdmin/currentIndustry
      profileMappingID: 11
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 32
        enabled: true
        name: /v1/demoAdmin/currentIndustry - GET
        performanceGroup: 9
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/demoAdmin/currentIndustry - GET
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
              HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/currentIndustry"
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
                value: currentIndustry
          resourceMethod:
            resourceId: /v1/demoAdmin/currentIndustry
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
      testID: 33
      enabled: true
      name: /v1/demoAdmin/currentPreferences
      profileMappingID: 12
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 34
        enabled: true
        name: /v1/demoAdmin/currentPreferences - GET
        performanceGroup: 10
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/demoAdmin/currentPreferences - GET
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
              HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/currentPreferences"
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
                value: currentPreferences
          resourceMethod:
            resourceId: /v1/demoAdmin/currentPreferences
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
      testID: 35
      enabled: true
      name: /v1/demoAdmin/databaseClear
      profileMappingID: 13
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 36
        enabled: true
        name: /v1/demoAdmin/databaseClear - PUT
        performanceGroup: 11
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/demoAdmin/databaseClear - PUT
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
              HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/databaseClear"
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
                value: databaseClear
          resourceMethod:
            resourceId: /v1/demoAdmin/databaseClear
            httpMethod: PUT
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
      testID: 37
      enabled: true
      name: /v1/demoAdmin/databaseReset
      profileMappingID: 14
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 38
        enabled: true
        name: /v1/demoAdmin/databaseReset - PUT
        performanceGroup: 12
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/demoAdmin/databaseReset - PUT
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
              HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/databaseReset"
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
            resourceId: /v1/demoAdmin/databaseReset
            httpMethod: PUT
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
      testID: 39
      enabled: true
      name: /v1/demoAdmin/defaultPreferences
      profileMappingID: 15
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 40
        enabled: true
        name: /v1/demoAdmin/defaultPreferences - GET
        performanceGroup: 13
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/demoAdmin/defaultPreferences - GET
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
              HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/defaultPreferences"
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
                value: defaultPreferences
          resourceMethod:
            resourceId: /v1/demoAdmin/defaultPreferences
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
      testID: 41
      enabled: true
      name: /v1/demoAdmin/kafkaBrokerUrlValidation
      profileMappingID: 16
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 42
        enabled: true
        name: /v1/demoAdmin/kafkaBrokerUrlValidation - GET
        performanceGroup: 14
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/demoAdmin/kafkaBrokerUrlValidation - GET
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
              HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/kafkaBrokerUrlValidation"
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
                value: kafkaBrokerUrlValidation
          resourceMethod:
            resourceId: /v1/demoAdmin/kafkaBrokerUrlValidation
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
      testID: 43
      enabled: true
      name: /v1/demoAdmin/mqProperties
      profileMappingID: 17
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 44
        enabled: true
        name: /v1/demoAdmin/mqProperties - GET
        performanceGroup: 15
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/demoAdmin/mqProperties - GET
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
              HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/mqProperties"
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
                value: mqProperties
          resourceMethod:
            resourceId: /v1/demoAdmin/mqProperties
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
      testID: 45
      enabled: true
      name: /v1/demoAdmin/parasoftVirtualizeServerUrlValidation
      profileMappingID: 18
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 46
        enabled: true
        name: /v1/demoAdmin/parasoftVirtualizeServerUrlValidation - GET
        performanceGroup: 16
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/demoAdmin/parasoftVirtualizeServerUrlValidation - GET
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
              HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/parasoftVirtualizeServerUrlValidation?url="
          urlParameters:
            properties:
            - $type: QueryParameterNameValuePair
              name: url
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
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
          constrainedQuery:
            parameters:
            - $type: ElementValue
              writeType: true
              type:
                $type: ElementType
                hash: 1
                localName: url
                bodyType:
                  $type: StringType
                  hash: 2
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
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
                value: parasoftVirtualizeServerUrlValidation
          resourceMethod:
            resourceId: /v1/demoAdmin/parasoftVirtualizeServerUrlValidation
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
      testID: 47
      enabled: true
      name: /v1/demoAdmin/preferences
      profileMappingID: 19
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 48
        enabled: true
        name: /v1/demoAdmin/preferences - PUT
        performanceGroup: 17
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/demoAdmin/preferences - PUT
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
                  name: /components/schemas/GlobalPreferencesDTO
                  compositor: true
                  compositorObj:
                    $type: AllCompositor
                    hash: 5
                    types:
                    - $type: ElementType
                      hash: 6
                      minOccurs: 0
                      localName: industryType
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
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 10
                          values:
                          - '"DEFENSE"'
                          - '"HEALTHCARE"'
                          - '"GOVERNMENT"'
                          - '"RETAIL"'
                          - '"AEROSPACE"'
                          - '"OUTDOOR"'
                          baseType: anonymous
                        name: /components/schemas/GlobalPreferencesDTO/properties/industryType
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 11
                    - $type: ElementType
                      hash: 12
                      minOccurs: 0
                      localName: webServiceMode
                      bodyType:
                        $type: ComplexType
                        hash: 13
                        attributes:
                        - hash: 14
                          ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 15
                          values:
                          - '"REST_API"'
                          - '"GRAPHQL"'
                          baseType: anonymous
                        name: /components/schemas/GlobalPreferencesDTO/properties/webServiceMode
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 16
                    - $type: ElementType
                      hash: 17
                      minOccurs: 0
                      localName: graphQLEndpoint
                      bodyType:
                        $type: ComplexType
                        hash: 18
                        attributes:
                        - hash: 19
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
                          hash: 20
                    - $type: ElementType
                      hash: 21
                      minOccurs: 0
                      localName: advertisingEnabled
                      bodyType:
                        $type: ComplexType
                        hash: 22
                        attributes:
                        - hash: 23
                          ns: ""
                          name: type
                          defaultValue: boolean
                          fixed: boolean
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: BooleanType
                          hash: 24
                        namespace: urn:parasoft:json
                        name: boolean
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 25
                    - $type: ElementType
                      hash: 26
                      minOccurs: 0
                      localName: demoBugs
                      bodyType:
                        $type: ComplexType
                        hash: 27
                        attributes:
                        - hash: 28
                          ns: ""
                          name: type
                          defaultValue: array
                          fixed: array
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        name: /components/schemas/GlobalPreferencesDTO/properties/demoBugs
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 29
                          types:
                          - $type: ElementType
                            hash: 30
                            minOccurs: 0
                            maxOccurs: -1
                            localName: item
                            bodyType:
                              $type: ComplexType
                              hash: 31
                              attributes:
                              - hash: 32
                                ns: ""
                                name: type
                                defaultValue: enum
                                fixed: enum
                                contentType:
                                  $type: StringType
                                  hash: 9
                                required: true
                              content: true
                              contentObj:
                                $type: EnumType
                                hash: 33
                                values:
                                - '"INCORRECT_LOCATION_FOR_APPROVED_ORDERS"'
                                - '"INCORRECT_NUMBER_OF_ITEMS_IN_SUMMARY_OF_PENDING_ORDER"'
                                - '"REVERSE_ORDER_OF_ORDERS"'
                                - '"REINITIALIZE_DATASOURCE_FOR_EACH_HTTP_REQUEST"'
                                baseType: anonymous
                              name: /components/schemas/GlobalPreferencesDTO/properties/demoBugs/items
                              compositor: true
                              compositorObj:
                                $type: SequenceCompositor
                                hash: 34
                    - $type: ElementType
                      hash: 35
                      minOccurs: 0
                      localName: categoriesRestEndpoint
                      bodyType:
                        $type: ComplexType
                        hash: 18
                    - $type: ElementType
                      hash: 36
                      minOccurs: 0
                      localName: itemsRestEndpoint
                      bodyType:
                        $type: ComplexType
                        hash: 18
                    - $type: ElementType
                      hash: 37
                      minOccurs: 0
                      localName: cartItemsRestEndpoint
                      bodyType:
                        $type: ComplexType
                        hash: 18
                    - $type: ElementType
                      hash: 38
                      minOccurs: 0
                      localName: ordersRestEndpoint
                      bodyType:
                        $type: ComplexType
                        hash: 18
                    - $type: ElementType
                      hash: 39
                      minOccurs: 0
                      localName: locationsRestEndpoint
                      bodyType:
                        $type: ComplexType
                        hash: 18
                    - $type: ElementType
                      hash: 40
                      minOccurs: 0
                      localName: useParasoftJDBCProxy
                      bodyType:
                        $type: ComplexType
                        hash: 22
                    - $type: ElementType
                      hash: 41
                      minOccurs: 0
                      localName: parasoftVirtualizeServerUrl
                      bodyType:
                        $type: ComplexType
                        hash: 18
                    - $type: ElementType
                      hash: 42
                      minOccurs: 0
                      localName: parasoftVirtualizeServerPath
                      bodyType:
                        $type: ComplexType
                        hash: 18
                    - $type: ElementType
                      hash: 43
                      minOccurs: 0
                      localName: parasoftVirtualizeGroupId
                      bodyType:
                        $type: ComplexType
                        hash: 18
                    - $type: ElementType
                      hash: 44
                      minOccurs: 0
                      localName: mqType
                      bodyType:
                        $type: ComplexType
                        hash: 45
                        attributes:
                        - hash: 46
                          ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 47
                          values:
                          - '"ACTIVE_MQ"'
                          - '"KAFKA"'
                          - '"RABBIT_MQ"'
                          baseType: anonymous
                        name: /components/schemas/GlobalPreferencesDTO/properties/mqType
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 48
                    - $type: ElementType
                      hash: 49
                      minOccurs: 0
                      localName: orderServiceSendTo
                      bodyType:
                        $type: ComplexType
                        hash: 18
                    - $type: ElementType
                      hash: 50
                      minOccurs: 0
                      localName: orderServiceListenOn
                      bodyType:
                        $type: ComplexType
                        hash: 18
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
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
                      - $type: ElementValue
                        replacedColumn: ""
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
              location: http://localhost:4040/pda/api-docs/v1
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
              HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/preferences"
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
              MessagingClient_LiteralMessage: "{\"industryType\":\"DEFENSE\",\"webServiceMode\"\
                :\"REST_API\",\"graphQLEndpoint\":\"\",\"advertisingEnabled\":false,\"\
                demoBugs\":[\"INCORRECT_LOCATION_FOR_APPROVED_ORDERS\"],\"categoriesRestEndpoint\"\
                :\"\",\"itemsRestEndpoint\":\"\",\"cartItemsRestEndpoint\":\"\",\"\
                ordersRestEndpoint\":\"\",\"locationsRestEndpoint\":\"\",\"useParasoftJDBCProxy\"\
                :false,\"parasoftVirtualizeServerUrl\":\"\",\"parasoftVirtualizeServerPath\"\
                :\"\",\"parasoftVirtualizeGroupId\":\"\",\"mqType\":\"ACTIVE_MQ\"\
                ,\"orderServiceSendTo\":\"\",\"orderServiceListenOn\":\"\"}"
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
                value: demoAdmin
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: preferences
          resourceMethod:
            resourceId: /v1/demoAdmin/preferences
            httpMethod: PUT
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
      testID: 49
      enabled: true
      name: /v1/demoAdmin/rabbitMQUrlValidation
      profileMappingID: 20
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 50
        enabled: true
        name: /v1/demoAdmin/rabbitMQUrlValidation - GET
        performanceGroup: 18
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/demoAdmin/rabbitMQUrlValidation - GET
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
              HTTPClient_Endpoint: "${BASEURL}/v1/demoAdmin/rabbitMQUrlValidation"
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
                value: rabbitMQUrlValidation
          resourceMethod:
            resourceId: /v1/demoAdmin/rabbitMQUrlValidation
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
      testID: 51
      enabled: true
      name: /v1/images
      profileMappingID: 21
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 52
        enabled: true
        name: /v1/images - POST
        performanceGroup: 19
        tool:
          $type: RESTClient
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
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
          parameters:
          - $type: ElementValue
            writeType: true
            type:
              $type: ElementType
              hash: 1
              localName: image
              bodyType:
                $type: Base64BinaryType
                hash: 2
            replacedColumn: ""
            values:
            - $type: Base64BinaryValue
              replacedColumn: ""
              base64Encode: true
              bytes: !!binary |-
                rO0ABXVyAAJbQqzzF/gGCFTgAgAAeHAAAAAA
    - $type: TestSuite
      testLogic: true
      testID: 53
      enabled: true
      name: /v1/labels
      profileMappingID: 22
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 54
        enabled: true
        name: /v1/labels - PUT
        performanceGroup: 20
        tool:
          $type: RESTClient
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
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 10
                          values:
                          - '"EN"'
                          - '"ZH"'
                          baseType: anonymous
                        name: /components/schemas/LabelsRequestDTO/properties/languageType
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 11
                    - $type: ElementType
                      hash: 12
                      minOccurs: 0
                      localName: labelsOverrided
                      bodyType:
                        $type: ComplexType
                        hash: 13
                        attributes:
                        - hash: 14
                          ns: ""
                          name: type
                          defaultValue: boolean
                          fixed: boolean
                          contentType:
                            $type: StringType
                            hash: 9
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
                            hash: 9
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
              HTTPClient_Endpoint: "${BASEURL}/v1/labels"
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
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 55
      enabled: true
      name: /v1/labels/default
      profileMappingID: 23
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 56
        enabled: true
        name: /v1/labels/default - GET
        performanceGroup: 21
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/labels/default - GET
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
                value: default
          resourceMethod:
            resourceId: /v1/labels/default
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
      testID: 57
      enabled: true
      name: /v1/labels/overrided
      profileMappingID: 24
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 58
        enabled: true
        name: /v1/labels/overrided - GET
        performanceGroup: 22
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
                value: overrided
          resourceMethod:
            resourceId: /v1/labels/overrided
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
      testID: 59
      enabled: true
      name: /v1/locations/location
      profileMappingID: 25
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 60
        enabled: true
        name: /v1/locations/location - GET
        performanceGroup: 23
        tool:
          $type: RESTClient
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
    - $type: TestSuite
      testLogic: true
      testID: 61
      enabled: true
      name: /v1/locations/regions
      profileMappingID: 26
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 62
        enabled: true
        name: /v1/locations/regions - GET
        performanceGroup: 24
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/locations/regions - GET
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
              HTTPClient_Endpoint: "${BASEURL}/v1/locations/regions"
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
      testID: 63
      enabled: true
      name: /v1/orders
      profileMappingID: 27
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 64
        enabled: true
        name: /v1/orders - GET
        performanceGroup: 25
        tool:
          $type: RESTClient
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
              HTTPClient_Endpoint: "${BASEURL}/v1/orders?page=0&size=2147483647&sort=%5B%22orderNumber%2CDESC%22%5D"
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
                  value: 2147483647
            - name: sort
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: "[\"orderNumber,DESC\"]"
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
              type:
                $type: ElementType
                hash: 1
                defaultValue: "[\"orderNumber,DESC\"]"
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
                value: orders
          resourceMethod:
            resourceId: /v1/orders
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
        testID: 65
        enabled: true
        name: /v1/orders - POST
        performanceGroup: 26
        tool:
          $type: RESTClient
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
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 10
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
                          hash: 11
                    - $type: ElementType
                      hash: 12
                      minOccurs: 0
                      localName: location
                      bodyType:
                        $type: ComplexType
                        hash: 13
                        attributes:
                        - hash: 14
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
                          hash: 15
                    - $type: ElementType
                      hash: 16
                      minOccurs: 0
                      localName: receiverId
                      bodyType:
                        $type: ComplexType
                        hash: 13
                    - $type: ElementType
                      hash: 17
                      minOccurs: 0
                      localName: eventId
                      bodyType:
                        $type: ComplexType
                        hash: 13
                    - $type: ElementType
                      hash: 18
                      minOccurs: 0
                      localName: eventNumber
                      bodyType:
                        $type: ComplexType
                        hash: 13
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
              location: http://localhost:4040/pda/api-docs/v1
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
              HTTPClient_Endpoint: "${BASEURL}/v1/orders"
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
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 66
      enabled: true
      name: /v1/orders/unreviewedNumber
      profileMappingID: 28
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 67
        enabled: true
        name: /v1/orders/unreviewedNumber - GET
        performanceGroup: 26
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/orders/unreviewedNumber - GET
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
              HTTPClient_Endpoint: "${BASEURL}/v1/orders/unreviewedNumber"
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
                value: orders
            - values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: unreviewedNumber
          resourceMethod:
            resourceId: /v1/orders/unreviewedNumber
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
      testID: 68
      enabled: true
      name: "/v1/orders/{orderNumber}"
      profileMappingID: 29
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 69
        enabled: true
        name: "/v1/orders/{orderNumber} - GET"
        performanceGroup: 27
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: "/v1/orders/{orderNumber} - GET"
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
              HTTPClient_Endpoint: "${BASEURL}/v1/orders/{orderNumber}"
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
          resourceMethod:
            resourceId: "/v1/orders/{orderNumber}"
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
        testID: 70
        enabled: true
        name: "/v1/orders/{orderNumber} - PUT"
        performanceGroup: 28
        tool:
          $type: RESTClient
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
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 10
                          values:
                          - '"SUBMITTED"'
                          - '"PROCESSED"'
                          - '"CANCELED"'
                          - '"APPROVED"'
                          - '"DECLINED"'
                          baseType: anonymous
                        name: /components/schemas/OrderStatusDTO/properties/status
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 11
                    - $type: ElementType
                      hash: 12
                      minOccurs: 0
                      localName: comments
                      bodyType:
                        $type: ComplexType
                        hash: 13
                        attributes:
                        - hash: 14
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
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: BooleanType
                          hash: 19
                        namespace: urn:parasoft:json
                        name: boolean
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 20
                    - $type: ElementType
                      hash: 21
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
              location: http://localhost:4040/pda/api-docs/v1
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
              HTTPClient_Endpoint: "${BASEURL}/v1/orders/{orderNumber}"
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
              hasReference: true
              qnameAsString: :orderNumber
              replacedColumn: ""
              values:
              - $type: StringValue
                replacedColumn: ""
                value: ""
          resourceMethod:
            resourceId: "/v1/orders/{orderNumber}"
            httpMethod: PUT
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
      testID: 71
      enabled: true
      name: /v1/search/categories
      profileMappingID: 30
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 72
        enabled: true
        name: /v1/search/categories - GET
        performanceGroup: 28
        tool:
          $type: RESTClient
          iconName: RESTClient
          name: /v1/search/categories - GET
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
              HTTPClient_Endpoint: "${BASEURL}/v1/search/categories?key=&page=0&size=2147483647&sort=%5B%22name%2CASC%22%5D"
          urlParameters:
            properties:
            - $type: QueryParameterNameValuePair
              name: key
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
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
                  value: 2147483647
            - name: sort
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: "[\"name,ASC\"]"
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
                value: ""
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
              type:
                $type: ElementType
                hash: 1
                defaultValue: "[\"name,ASC\"]"
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
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 73
      enabled: true
      name: /v1/search/items
      profileMappingID: 31
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 74
        enabled: true
        name: /v1/search/items - GET
        performanceGroup: 29
        tool:
          $type: RESTClient
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
              HTTPClient_Endpoint: "${BASEURL}/v1/search/items?key=&page=0&size=2147483647&sort=%5B%22name%2CASC%22%5D"
          urlParameters:
            properties:
            - $type: QueryParameterNameValuePair
              name: key
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
              hasEqualsForEmptyValue: true
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
                  value: 2147483647
            - name: sort
              value:
                values:
                - $type: ScriptedValue
                fixedValue:
                  $type: StringTestValue
                  value: "[\"name,ASC\"]"
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
                value: ""
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
              value: http://localhost:4040
            fixedValue:
              $type: StringTestValue
              value: "${BASEURL}"
  - $type: TestSuite
    testLogic: true
    testID: 76
    enabled: true
    name: /v1/assets/items
    profileMappingID: 5
    nextIdentifier: 80
    dataSources:
    - id: ds_-41664510_1673472239259_648839991
      impl:
        $type: WritableDataSource
        model:
          columnCount: 1
          columnIdentifiers:
          - itemIds
          rows:
          - - 7
          - - 8
          - - 9
          - - 1
          - - 5
          - - 2
          - - 4
          - - 6
          - - 3
        resetMode: 2
        writingMode: 3
      name: Items
      useAllRows: true
    tests:
    - $type: RESTClientToolTest
      testLogic: true
      testID: 77
      enabled: true
      name: /v1/assets/items - GET
      performanceGroup: 3
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: /v1/assets/items - GET
        outputTools:
        - $type: GenericDataBank
          dataSourceNames:
          - Items
          iconName: XMLDataBank
          name: JSON Data Bank
          wrappedTool:
            $type: XMLtoDataSource
            dataSourceNames:
            - Items
            iconName: XMLDataBank
            name: XML Data Bank
            selectedXPaths:
            - elementOption: 1
              contentOption: 1
              XMLDataBank_ExtractXPath: "/root/data/content/item/id[1]/text()"
              mode: 1
            canonicalizeOutput: true
            xmlMessage: true
            virtualDSCreator:
              writableColumns:
              - dataSourceNames:
                - "Items: itemIds"
                mode: 2
                customName: "Test 1: id"
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
            HTTPClient_Endpoint: "${BASEURL}/v1/assets/items?categoryId=0&regions=UNITED_STATES&searchString=&page=0&size=2147483647&sort=%5B%22name%2CASC%22%5D"
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
          - $type: QueryParameterNameValuePair
            name: searchString
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
            hasEqualsForEmptyValue: true
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
                value: 2147483647
          - name: sort
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "[\"name,ASC\"]"
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
        constrainedQuery:
          parameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :categoryId
            replacedColumn: ""
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :regions
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
            value: http://localhost:4040
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
    - $type: TestSuite
      testLogic: true
      testID: 79
      enabled: true
      name: Loop
      profileMappingID: 0
      maxProfileMappingID: 1
      nextIdentifier: 1
      runMode: 1
      tests:
      - $type: RESTClientToolTest
        testLogic: true
        testID: 83
        enabled: true
        name: "/v1/assets/items/{itemId} - GET"
        performanceGroup: 6
        tool:
          $type: RESTClient
          dataSourceNames:
          - Items
          iconName: RESTClient
          name: "/v1/assets/items/{itemId} - GET"
          outputTools:
          - $type: GenericDataBank
            dataSourceNames:
            - Items
            iconName: XMLDataBank
            name: JSON Data Bank
            wrappedTool:
              $type: XMLtoDataSource
              dataSourceNames:
              - Items
              iconName: XMLDataBank
              name: XML Data Bank
              selectedXPaths:
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/name[1]/text()"
                mode: 1
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/description[1]/text()"
                mode: 1
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/categoryId[1]/text()"
                mode: 1
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/image[1]/text()"
                mode: 1
              - elementOption: 1
                contentOption: 1
                XMLDataBank_ExtractXPath: "/root/data[1]/region[1]/text()"
                mode: 1
              canonicalizeOutput: true
              xmlMessage: true
              virtualDSCreator:
                writableColumns:
                - customName: "Test 1: name"
                - customName: "Test 1: description"
                - customName: "Test 1: categoryId"
                - customName: "Test 1: image"
                - customName: "Test 1: region"
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/{itemId}"
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
              columnName: "Items: itemIds"
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
                columnName: "Items: itemIds"
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/items/{itemId}"
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
        testFlowLogic:
          condition: true
        testID: 80
        enabled: true
        name: "/v1/assets/items/{itemId} - PUT"
        performanceGroup: 7
        tool:
          $type: RESTClient
          dataSourceNames:
          - Items
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
                            hash: 9
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
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: IntegerType
                          hash: 20
                        namespace: urn:parasoft:json
                        name: number
                        compositor: true
                        compositorObj:
                          $type: SequenceCompositor
                          hash: 21
                    - $type: ElementType
                      hash: 22
                      minOccurs: 0
                      localName: imagePath
                      bodyType:
                        $type: ComplexType
                        hash: 7
                    - $type: ElementType
                      hash: 23
                      minOccurs: 0
                      localName: region
                      bodyType:
                        $type: ComplexType
                        hash: 24
                        attributes:
                        - hash: 25
                          ns: ""
                          name: type
                          defaultValue: enum
                          fixed: enum
                          contentType:
                            $type: StringType
                            hash: 9
                          required: true
                        content: true
                        contentObj:
                          $type: EnumType
                          hash: 26
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
                          hash: 27
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
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            mode: 3
                            columnName: "Test 1: name"
                            value: Pink Sleeping Bag
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
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            mode: 3
                            columnName: "Test 1: description"
                            value: This sleeping bag has a temperature rating of 25
                              degrees. The water repellent shell keeps out moisture.
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
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: LongValue
                            replacedColumn: ""
                            mode: 3
                            columnName: "Test 1: categoryId"
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
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: IntegerValue
                            replacedColumn: ""
                            columnName: "Items: itemIds"
                            value: 1000000
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
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: StringValue
                            replacedColumn: ""
                            mode: 3
                            columnName: "Test 1: image"
                            value: /outdoor/images/sleepingbag-pink-detail.png
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
                              value: enum
                            useValue: true
                          contentValue: true
                          contentValueObj:
                            $type: EnumValue
                            replacedColumn: ""
                            mode: 3
                            columnName: "Test 1: region"
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
              HTTPClient_Endpoint: "${BASEURL}/v1/assets/items/{itemId}"
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
                columnName: "Items: itemIds"
                value: 0
          resourceMethod:
            resourceId: "/v1/assets/items/{itemId}"
            httpMethod: PUT
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
      testID: 84
      enabled: true
      name: /v1/assets/items - GET 2
      performanceGroup: 3
      tool:
        $type: RESTClient
        iconName: RESTClient
        name: /v1/assets/items - GET 2
        outputTools:
        - $type: GenericAssertionTool
          dataSourceNames:
          - Items
          iconName: XMLAssertor
          name: JSON Assertor
          wrappedTool:
            $type: XMLAssertionTool
            dataSourceNames:
            - Items
            iconName: XMLAssertor
            name: XML Assertor
            assertions:
            - $type: ValueAssertion
              timestamp: 1673472602420
              name: Stock Updated To 1000000
              extractEntireElement: true
              Assertion_XPath: /root/data/content/item/inStock/string()
              value:
                name: Value
                value:
                  fixedValue:
                    $type: StringTestValue
                    value: 1000000
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
            HTTPClient_Endpoint: "${BASEURL}/v1/assets/items?categoryId=0&regions=UNITED_STATES&searchString=&page=0&size=2147483647&sort=%5B%22name%2CASC%22%5D"
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
          - $type: QueryParameterNameValuePair
            name: searchString
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
            hasEqualsForEmptyValue: true
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
                value: 2147483647
          - name: sort
            value:
              values:
              - $type: ScriptedValue
              fixedValue:
                $type: StringTestValue
                value: "[\"name,ASC\"]"
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
        constrainedQuery:
          parameters:
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :categoryId
            replacedColumn: ""
          - $type: ElementValue
            writeType: true
            hasReference: true
            qnameAsString: :regions
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
            value: http://localhost:4040
          fixedValue:
            $type: StringTestValue
            value: "${BASEURL}"
