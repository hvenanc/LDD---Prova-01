let $stores := distinct-values(//customer/@store_id)
return
<table border="2">
      <thead>
        <tr>
            <th>Store ID</th>
            <th>NumberOfClients</th>
        </tr>
      </thead>
      <tbody>
        {
          for $store-id in $stores
          return
          <tr>
            <td>{ $store-id }</td>
            <td>{ count(//customer[@store_id = $store-id]) }</td>
          </tr>
        }
      </tbody>  
</table>
