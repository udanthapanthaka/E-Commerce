package lk.ijse.ecommercewebapp.Dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class Cart {
    private int cartId;
    private int userId;
    private int productId;
    private int quantity;
}
