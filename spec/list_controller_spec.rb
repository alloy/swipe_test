describe "List Controller" do
  tests ListController

  it "new view should appear after a swipe" do
    cell = view('number 3')
    from = cell.convertPoint(CGPointMake(10, 30), toView:nil)
    to   = cell.convertPoint(CGPointMake(cell.bounds.size.width - 10, 35), toView:nil)

    flick cell, :from => from, :to => to
    view('new view').should.not == nil
  end
end
