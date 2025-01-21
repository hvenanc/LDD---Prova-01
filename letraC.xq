<ul>
  {
    for $customer in //customer
    order by $customer/@first_name
    return
      <li>{ concat(data($customer/@first_name), ' ', $customer/@last_name) }</li>
  }
</ul>
