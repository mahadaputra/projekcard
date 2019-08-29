user= User.create{
  email: "mpuchan@gmail.com"
  password: "wasdasw"
  password_cc: "wasdasw"
}

board = Board.create{
  title: 'PKL'
  description: "Board tentang aktivitas PKL Jul -Okt 2019",
  user_id: user.id
}

Card.create([
  {
    title: 'Neque porrro quisquam',
    content: "Lorem ipsum"
    user_id: user.id,
    board_id: board.id,
    status: 0
  },
  {
    title: 'Neque porrro quisquam',
    content: "Lorem ipsum"
    user_id: user.id,
    board_id: board.id,
    status: 0
  },
  {
    title: 'Neque porrro quisquam',
    content: "Lorem ipsum"
    user_id: user.id,
    board_id: board.id,
    status: 0

  }


])