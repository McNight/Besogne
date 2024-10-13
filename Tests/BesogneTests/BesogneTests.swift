import Testing
@testable import Besogne

@Test func testBesogneID() async throws {
    let besogne = Besogne(description: "An example of a Besogne")
    #expect(besogne.id != 0)
}
