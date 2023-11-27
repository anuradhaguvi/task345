import './App.css'
import Card from './card.js';

function App() {

  return (
    <div className='body'>
      <div className='container'>
        <div className='row'>
          <div className='col-lg-12'>
            <div className='row'>
              {
                data.map((cardData) => {
                  return <Card cData={cardData}></Card>
                })
              }
            </div>
          </div>
        </div>
      </div>
    </div>

  );
}

export default App;

var data = [
  {
    id: 1,
    title: "FREE",
    price: 0,
    li1: "Single User",
    li2: "5GB Storage",
    li3: "Unlimited Public Projects",
    li4: "Community Access",
    li5: "Unlimited Private Projects",
    li6: "Dedicated Phone Support",
    li7: "Free Subdomain",
    li8: "Monthly Status Reports",
  },
  {
    id: 2,
    title: "PLUS",
    price: 9,
    li1: "5 Users",
    li2: "50GB Storage",
    li3: "Unlimited Public Projects",
    li4: "Community Access",
    li5: "Unlimited Private Projects",
    li6: "Dedicated Phone Support",
    li7: "Free Subdomain",
    li8: "Monthly Status Reports",
  },
  {
    id: 1,
    title: "PRO",
    price: 49,
    li1: "Unlimited Users",
    li2: "150GB Storage",
    li3: "Unlimited Public Projects",
    li4: "Community Access",
    li5: "Unlimited Private Projects",
    li6: "Dedicated Phone Support",
    li7: "Unlimited Free Subdomain",
    li8: "Monthly Status Reports",
  },
]