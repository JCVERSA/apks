package com.transsion.apiinvoke.common.router;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;

public class APIMethodEntity implements Serializable {
    private static final long serialVersionUID = 2039301988460371727L;
    public String apiMethod;
    public String apiName;
    private Map<String, TypeMapping.Convert> mappings;
    public String packageName;
    public ApiParameter[] requestParameter;
    public String returnType;

    public void addTypeMapping(String str, TypeMapping.Convert convert) {
        if (this.mappings == null) {
            this.mappings = new HashMap();
        }
        this.mappings.put(str, convert);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        APIMethodEntity aPIMethodEntity = (APIMethodEntity) obj;
        return Objects.equals(this.packageName, aPIMethodEntity.packageName) && Objects.equals(this.apiName, aPIMethodEntity.apiName) && Objects.equals(this.apiMethod, aPIMethodEntity.apiMethod);
    }

    public int hashCode() {
        return Objects.hash(this.packageName, this.apiName, this.apiMethod);
    }

    public void removeTypeMapping(String str) {
        Map<String, TypeMapping.Convert> map = this.mappings;
        if (map != null) {
            map.remove(str);
        }
    }

    public String toString() {
        return "APIMethodEntity{packageName='" + this.packageName + "', apiName='" + this.apiName + "', apiMethod='" + this.apiMethod + "'}";
    }
}
