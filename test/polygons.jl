@testset "Polygons" begin

@testset "construction" begin
    points = Point2f0[
        (0,6),
        (0,0),
        (3,0),
        (4,1),
        (6,1),
        (8,0),
        (12,0),
        (13,2),
        (8,2),
        (8,4),
        (11,4),
        (11,6),
        (6,6),
        (4,3),
        (2,6)
    ]
    mesh = GLNormalMesh(points)
    faces = polygon2faces(points, Triangle{Int})
    @test eltype(faces) == Triangle{Int}
    @test facetype(mesh) == GLTriangle

end
end
