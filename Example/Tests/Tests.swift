import XCTest
import ACErrorMapper

class Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMapError() {
        let error_code = "error_code"
        let applecation_code = "error_code"
        let method = "login"
        let input = "input"
        let messgae = "user not found"
        let exampleError:[String:ErrorData] = [
            error_code:ErrorData(code: applecation_code, type: .BadRequest)
        ]
        
        let errorMapper = ErrorMapper(exampleError)
        let error = errorMapper.mapError(code: error_code, method: method, input: input, messgae:messgae )
        
        XCTAssertEqual(error.errorType, .BadRequest)
        XCTAssertEqual(error.applicationCode, applecation_code)
        XCTAssertEqual(error.causeCode, error_code)
        XCTAssertEqual(error.input, input)
        XCTAssertEqual(error.method, method)
        XCTAssertEqual(error.causeMessage, messgae)
    }
    
    
}
