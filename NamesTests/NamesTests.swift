
import XCTest
@testable import Names

class NamesTests: XCTestCase
{
	func testGivenEmptyStringReturnEmptyString()
	{
		let nameFormatter = NameFormatter(name: "")
		XCTAssertEqual(nameFormatter.inverted(), "")
	}
	
	func testGivenSingleNameReturnSingleName()
	{
		let nameFormatter = NameFormatter(name: "Jose")
		XCTAssertEqual(nameFormatter.inverted(), "Jose")
	}
	
	func testGivenSingleNameWithExtraSpacesReturnSingleName()
	{
		let nameFormatter = NameFormatter(name: "  Jose ")
		XCTAssertEqual(nameFormatter.inverted(), "Jose")
	}
	
	func testGivenFirstAndLastReturnLastAndFirst()
	{
		let nameFormatter = NameFormatter(name: "Jose Neto")
		XCTAssertEqual(nameFormatter.inverted(), "Neto, Jose")
	}
	
	func testGivenFirstAndLastWithExtraSpacesReturnLastAndFirst()
	{
		let nameFormatter = NameFormatter(name: " Jose Neto   ")
		XCTAssertEqual(nameFormatter.inverted(), "Neto, Jose")
	}
	
	func testGivenSingleHonorificReturnEmptyString()
	{
		let nameFormatter = NameFormatter(name: "Dr. ")
		XCTAssertEqual(nameFormatter.inverted(), "")
	}
	
	func testGivenHonorificAndFirstNameReturnHonorificAndFirstName()
	{
		let nameFormatter = NameFormatter(name: "Dr. Neto")
		XCTAssertEqual(nameFormatter.inverted(), "Dr. Neto")
	}
	
	func testGivenHonorificFirstAndLastNamesReturnHonorificLastNameAndFirstName()
	{
		let nameFormatter = NameFormatter(name: "Dr. Jose Neto")
		XCTAssertEqual(nameFormatter.inverted(), "Dr. Neto, Jose")
	}
	
}
