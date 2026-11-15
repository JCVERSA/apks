package com.transsion.apiinvoke.common.router;

public class APIClassEntity {
    public String apiName;
    public int constructorType;
    public long livingTime;
    public String packageName;
    public Class serviceClass;

    private APIClassEntity() {
    }

    public static APIClassEntity createLocalServer(String str, String str2, Class cls, int i, long j) {
        APIClassEntity aPIClassEntity = new APIClassEntity();
        aPIClassEntity.packageName = str;
        aPIClassEntity.apiName = str2;
        aPIClassEntity.serviceClass = cls;
        aPIClassEntity.constructorType = i;
        aPIClassEntity.livingTime = j;
        return aPIClassEntity;
    }

    public String toString() {
        return "APIClassEntity{apiName='" + this.apiName + "', serviceClass='" + this.serviceClass + "', packageName='" + this.packageName + "', constructorType=" + this.constructorType + ", livingTime=" + this.livingTime + '}';
    }
}
