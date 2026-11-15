package com.cloud.tmc.integration.permission;

import com.google.gson.JsonObject;

public interface BizPermissionManager {
    boolean checkBizParamPermission(String str, String str2, JsonObject jsonObject);
}
