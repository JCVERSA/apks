package org.libtorrent4j.swig;

public final class protocol_version {
    public static final protocol_version NUM;
    public static final protocol_version V1;
    public static final protocol_version V2;
    private static int swigNext;
    private static protocol_version[] swigValues;
    private final String swigName;
    private final int swigValue;

    static {
        protocol_version protocol_versionVar = new protocol_version("V1");
        V1 = protocol_versionVar;
        protocol_version protocol_versionVar2 = new protocol_version("V2");
        V2 = protocol_versionVar2;
        protocol_version protocol_versionVar3 = new protocol_version("NUM");
        NUM = protocol_versionVar3;
        swigValues = new protocol_version[]{protocol_versionVar, protocol_versionVar2, protocol_versionVar3};
        swigNext = 0;
    }

    private protocol_version(String str) {
        this.swigName = str;
        int i = swigNext;
        swigNext = i + 1;
        this.swigValue = i;
    }

    public static protocol_version swigToEnum(int i) {
        protocol_version[] protocol_versionVarArr = swigValues;
        if (i < protocol_versionVarArr.length && i >= 0) {
            protocol_version protocol_versionVar = protocol_versionVarArr[i];
            if (protocol_versionVar.swigValue == i) {
                return protocol_versionVar;
            }
        }
        int i2 = 0;
        while (true) {
            protocol_version[] protocol_versionVarArr2 = swigValues;
            if (i2 >= protocol_versionVarArr2.length) {
                throw new IllegalArgumentException("No enum " + protocol_version.class + " with value " + i);
            }
            protocol_version protocol_versionVar2 = protocol_versionVarArr2[i2];
            if (protocol_versionVar2.swigValue == i) {
                return protocol_versionVar2;
            }
            i2++;
        }
    }

    public final int swigValue() {
        return this.swigValue;
    }

    public String toString() {
        return this.swigName;
    }

    private protocol_version(String str, int i) {
        this.swigName = str;
        this.swigValue = i;
        swigNext = i + 1;
    }

    private protocol_version(String str, protocol_version protocol_versionVar) {
        this.swigName = str;
        int i = protocol_versionVar.swigValue;
        this.swigValue = i;
        swigNext = i + 1;
    }
}
