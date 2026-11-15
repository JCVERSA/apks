package com.aliyun.player;

import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class VidPlayerConfigGen {
    private Map<String, Object> configMap = new HashMap();

    public enum EncryptType {
        Unencrypted,
        AliyunVodEncryption,
        HLSEncryption
    }

    public void addPlayerConfig(String str, String str2) {
        if (str != null) {
            this.configMap.put(str, str2);
        }
    }

    public String genConfig() {
        if (this.configMap.isEmpty()) {
            return "";
        }
        JSONObject jSONObject = new JSONObject();
        for (String str : this.configMap.keySet()) {
            try {
                jSONObject.put(str, this.configMap.get(str));
            } catch (JSONException e10) {
                e10.printStackTrace();
            }
        }
        return jSONObject.toString();
    }

    public void setEncryptType(EncryptType encryptType) {
        if (encryptType == EncryptType.AliyunVodEncryption) {
            addPlayerConfig("EncryptType", "AliyunVoDEncryption");
        } else {
            addPlayerConfig("EncryptType", encryptType.name());
        }
    }

    public void setMtsHlsUriToken(String str) {
        addPlayerConfig("MtsHlsUriToken", str);
    }

    public void setPreviewTime(int i10) {
        addPlayerConfig("PreviewTime", i10);
    }

    public void addPlayerConfig(String str, int i10) {
        if (str != null) {
            this.configMap.put(str, Integer.valueOf(i10));
        }
    }
}
