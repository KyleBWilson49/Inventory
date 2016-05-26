import React from 'react'

// const Navbar = () => {
//   <div>
//     <nav>
//       <h1>Inventory</h1>
//     </nav>
//     <nav>Add Item</nav>
//     <nav>Log In/out</nav>
//   </div>
// }

const Navbar = React.createClass({
  render: function () {
    return (
      <div>
        <nav>
        <h1>Inventory</h1>
        </nav>
        <nav>Add Item</nav>
        <nav>Log In/out</nav>
      </div>
    )
  }
})

export default Navbar
