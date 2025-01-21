<table border="2">
      <thead>
        <tr>
            <th>Store ID</th>
            <th>NumberOfClients</th>
        </tr>
      </thead>
      <tbody>
        {
          let $stores := distinct-values(/customers/customer/@store_id)
          for $store-id in $stores
          return
          <tr>
            <td>{ $store-id }</td>
            <td>{ count(/customers/customer[@store_id = $store-id]) }</td>
          </tr>
        }
      </tbody>  
</table>
