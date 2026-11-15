package com.transsion.athena.hatnea;

import java.util.Arrays;
import java.util.List;

public class ehatna {

    public String f41653a;

    public byte[] f41654b;

    public int f41655c;

    public List<Integer> f41656d;

    public String f41657e;

    public String f41658f;

    private ehatna(String str, byte[] bArr, int i10, List<Integer> list, String str2, String str3) {
        this.f41653a = str;
        this.f41654b = bArr;
        this.f41655c = i10;
        this.f41656d = list;
        this.f41657e = str2;
        this.f41658f = str3;
    }

    public static ehatna a(String str, byte[] bArr, int i10, List<Integer> list, String str2, String str3) {
        return new ehatna(str, bArr, i10, list, str2, str3);
    }

    public String toString() {
        return "UploadEventsRequest{host='" + this.f41653a + "', data=" + Arrays.toString(this.f41654b) + ", lineNumber=" + this.f41655c + ", appidList=" + this.f41656d + ", packetUid='" + this.f41657e + "', dupid='" + this.f41658f + "'}";
    }
}
