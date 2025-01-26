package lk.ijse.ecommercewebapp.Dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ProductDTO {
    private int product_id;
    private String productName;
    private String productDescription;
    private double productPrice;
    private int productQuantity;
    private int category_id;
    private String image_path;
}
