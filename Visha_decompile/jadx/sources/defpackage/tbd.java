package defpackage;

import java.util.Arrays;
import java.util.List;

public class tbd {
    public String a;
    public byte[] b;
    public int c;
    public List d;
    public String e;
    public String f;

    public tbd(String str, byte[] bArr, int i, List list, String str2, String str3) {
        this.a = str;
        this.b = bArr;
        this.c = i;
        this.d = list;
        this.e = str2;
        this.f = str3;
    }

    public static tbd a(String str, byte[] bArr, int i, List list, String str2, String str3) {
        return new tbd(str, bArr, i, list, str2, str3);
    }

    public String toString() {
        return "UploadEventsRequest{host='" + this.a + "', data=" + Arrays.toString(this.b) + ", lineNumber=" + this.c + ", appidList=" + this.d + ", packetUid='" + this.e + "', dupid='" + this.f + "'}";
    }
}
