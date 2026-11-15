package com.transsion.xuanniao.account.model.data;

import java.io.Serializable;

public class ThirdBindReq implements Serializable {
    public String bindToken;
    public String clientId;
    public String thirdToken;
    public int thirdType;
    public String token;
    public String userId;
}
