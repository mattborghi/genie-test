module BooksController

  using Genie.Renderer.Html

  # Build something great
  struct Book
      title::String
      author::String
  end

  const BillGatesBooks = Book[
  Book("The Best We Could Do", "Thi Bui"),
  Book("Evicted: Poverty and Profit in the American City", "Matthew Desmond"),
  Book("Believe Me: A Memoir of Love, Death, and Jazz Chickens", "Eddie Izzard"),
  Book("The Sympathizer", "Viet Thanh Nguyen"),
  Book("Energy and Civilization, A History", "Vaclav Smil")
  ]

    # TODO: Check why VIEWS_FOLDER is not defined
    # I thing the solution is to check the Genie.Renderer.HTML and import
    # all the necessary constants
    function billgatesbooks()
      # html("Genie")
      html(:books, :billgatesbooks, layout = :app, books = BillGatesBooks)
    end
end
