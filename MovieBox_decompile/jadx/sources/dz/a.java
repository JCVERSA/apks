package dz;

import androidx.core.view.InputDeviceCompat;
import com.cloud.tmc.offline.download.model.TaskResultKt;
import com.transsion.baselib.db.download.DownloadException;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.File;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.compress.archivers.zip.r;

public class a implements cz.a {

    private static final a[] f59184w = new a[0];

    private String f59185a;

    private final boolean f59186b;

    private int f59187c;

    private long f59188d;

    private long f59189e;

    private long f59190f;

    private long f59191g;

    private boolean f59192h;

    private byte f59193i;

    private String f59194j;

    private String f59195k;

    private String f59196l;

    private String f59197m;

    private String f59198n;

    private int f59199o;

    private int f59200p;

    private boolean f59201q;

    private long f59202r;

    private boolean f59203s;

    private boolean f59204t;

    private final File f59205u;

    private final Map f59206v;

    private a(boolean z10) {
        this.f59185a = "";
        this.f59188d = 0L;
        this.f59189e = 0L;
        this.f59190f = 0L;
        this.f59194j = "";
        this.f59195k = "ustar\u0000";
        this.f59196l = "00";
        this.f59198n = "";
        this.f59199o = 0;
        this.f59200p = 0;
        this.f59206v = new HashMap();
        String property = System.getProperty("user.name", "");
        this.f59197m = property.length() > 31 ? property.substring(0, 31) : property;
        this.f59205u = null;
        this.f59186b = z10;
    }

    private int b(byte[] bArr) {
        if (ez.a.c("ustar ", bArr, InputDeviceCompat.SOURCE_KEYBOARD, 6)) {
            return 2;
        }
        if (ez.a.c("ustar\u0000", bArr, InputDeviceCompat.SOURCE_KEYBOARD, 6)) {
            return ez.a.c("tar\u0000", bArr, DownloadException.EXCEPTION_IO_MALFORMED_URL, 4) ? 4 : 3;
        }
        return 0;
    }

    private static String o(String str, boolean z10) {
        String lowerCase;
        int iIndexOf;
        if (!z10 && (lowerCase = System.getProperty("os.name").toLowerCase(Locale.ENGLISH)) != null) {
            if (lowerCase.startsWith("windows")) {
                if (str.length() > 2) {
                    char cCharAt = str.charAt(0);
                    if (str.charAt(1) == ':' && ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z'))) {
                        str = str.substring(2);
                    }
                }
            } else if (lowerCase.contains("netware") && (iIndexOf = str.indexOf(58)) != -1) {
                str = str.substring(iIndexOf + 1);
            }
        }
        String strReplace = str.replace(File.separatorChar, '/');
        while (!z10 && strReplace.startsWith("/")) {
            strReplace = strReplace.substring(1);
        }
        return strReplace;
    }

    private long p(byte[] bArr, int i10, int i11, boolean z10) {
        if (!z10) {
            return d.h(bArr, i10, i11);
        }
        try {
            return d.h(bArr, i10, i11);
        } catch (IllegalArgumentException unused) {
            return -1L;
        }
    }

    private void q(byte[] bArr, r rVar, boolean z10, boolean z11) {
        this.f59185a = z10 ? d.e(bArr, 0, 100) : d.f(bArr, 0, 100, rVar);
        this.f59187c = (int) p(bArr, 100, 8, z11);
        this.f59188d = (int) p(bArr, TaskResultKt.ERROR_LOAD_RESPONSE_STR_EMPTY, 8, z11);
        this.f59189e = (int) p(bArr, Sdk$SDKError.Reason.GZIP_ENCODE_ERROR_VALUE, 8, z11);
        this.f59190f = d.h(bArr, Sdk$SDKError.Reason.INVALID_LOG_ERROR_ENDPOINT_VALUE, 12);
        this.f59191g = p(bArr, Sdk$SDKError.Reason.PRIVACY_URL_ERROR_VALUE, 12, z11);
        this.f59192h = d.i(bArr);
        this.f59193i = bArr[156];
        this.f59194j = z10 ? d.e(bArr, 157, 100) : d.f(bArr, 157, 100, rVar);
        this.f59195k = d.e(bArr, InputDeviceCompat.SOURCE_KEYBOARD, 6);
        this.f59196l = d.e(bArr, 263, 2);
        this.f59197m = z10 ? d.e(bArr, 265, 32) : d.f(bArr, 265, 32, rVar);
        this.f59198n = z10 ? d.e(bArr, 297, 32) : d.f(bArr, 297, 32, rVar);
        byte b10 = this.f59193i;
        if (b10 == 51 || b10 == 52) {
            this.f59199o = (int) p(bArr, 329, 8, z11);
            this.f59200p = (int) p(bArr, 337, 8, z11);
        }
        int iB = b(bArr);
        if (iB == 2) {
            this.f59201q = d.d(bArr, 482);
            this.f59202r = d.g(bArr, 483, 12);
            return;
        }
        if (iB == 4) {
            String strE = z10 ? d.e(bArr, 345, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE) : d.f(bArr, 345, Sdk$SDKError.Reason.MRAID_JS_WRITE_FAILED_VALUE, rVar);
            if (strE.length() > 0) {
                this.f59185a = strE + "/" + this.f59185a;
                return;
            }
            return;
        }
        String strE2 = z10 ? d.e(bArr, 345, 155) : d.f(bArr, 345, 155, rVar);
        if (h() && !this.f59185a.endsWith("/")) {
            this.f59185a += "/";
        }
        if (strE2.length() > 0) {
            this.f59185a = strE2 + "/" + this.f59185a;
        }
    }

    private void r(String str, String str2, Map map) {
        str.hashCode();
        switch (str) {
            case "SCHILY.devmajor":
                s(Integer.parseInt(str2));
                break;
            case "SCHILY.devminor":
                t(Integer.parseInt(str2));
                break;
            case "GNU.sparse.realsize":
                d(map);
                break;
            case "GNU.sparse.size":
                c(map);
                break;
            case "gid":
                u(Long.parseLong(str2));
                break;
            case "uid":
                A(Long.parseLong(str2));
                break;
            case "path":
                y(str2);
                break;
            case "size":
                z(Long.parseLong(str2));
                break;
            case "gname":
                v(str2);
                break;
            case "mtime":
                x((long) (Double.parseDouble(str2) * 1000.0d));
                break;
            case "uname":
                B(str2);
                break;
            case "SCHILY.filetype":
                if ("sparse".equals(str2)) {
                    e(map);
                    break;
                }
                break;
            case "linkpath":
                w(str2);
                break;
            default:
                this.f59206v.put(str, str2);
                break;
        }
    }

    public void A(long j10) {
        this.f59188d = j10;
    }

    public void B(String str) {
        this.f59197m = str;
    }

    void C(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            r((String) entry.getKey(), (String) entry.getValue(), map);
        }
    }

    public boolean a(a aVar) {
        return aVar != null && f().equals(aVar.f());
    }

    void c(Map map) {
        this.f59203s = true;
        this.f59202r = Integer.parseInt((String) map.get("GNU.sparse.size"));
        if (map.containsKey("GNU.sparse.name")) {
            this.f59185a = (String) map.get("GNU.sparse.name");
        }
    }

    void d(Map map) {
        this.f59203s = true;
        this.f59202r = Integer.parseInt((String) map.get("GNU.sparse.realsize"));
        this.f59185a = (String) map.get("GNU.sparse.name");
    }

    void e(Map map) {
        this.f59204t = true;
        if (map.containsKey("SCHILY.realsize")) {
            this.f59202r = Long.parseLong((String) map.get("SCHILY.realsize"));
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return a((a) obj);
    }

    public String f() {
        return this.f59185a;
    }

    public long g() {
        return this.f59190f;
    }

    public boolean h() {
        File file = this.f59205u;
        if (file != null) {
            return file.isDirectory();
        }
        if (this.f59193i == 53) {
            return true;
        }
        return (n() || l() || !f().endsWith("/")) ? false : true;
    }

    public int hashCode() {
        return f().hashCode();
    }

    public boolean i() {
        return this.f59201q;
    }

    public boolean j() {
        return this.f59193i == 75;
    }

    public boolean k() {
        return this.f59193i == 76;
    }

    public boolean l() {
        return this.f59193i == 103;
    }

    public boolean m() {
        return this.f59193i == 83;
    }

    public boolean n() {
        byte b10 = this.f59193i;
        return b10 == 120 || b10 == 88;
    }

    public void s(int i10) {
        if (i10 >= 0) {
            this.f59199o = i10;
            return;
        }
        throw new IllegalArgumentException("Major device number is out of range: " + i10);
    }

    public void t(int i10) {
        if (i10 >= 0) {
            this.f59200p = i10;
            return;
        }
        throw new IllegalArgumentException("Minor device number is out of range: " + i10);
    }

    public void u(long j10) {
        this.f59189e = j10;
    }

    public void v(String str) {
        this.f59198n = str;
    }

    public void w(String str) {
        this.f59194j = str;
    }

    public void x(long j10) {
        this.f59191g = j10 / 1000;
    }

    public void y(String str) {
        this.f59185a = o(str, this.f59186b);
    }

    public void z(long j10) {
        if (j10 >= 0) {
            this.f59190f = j10;
            return;
        }
        throw new IllegalArgumentException("Size is out of range: " + j10);
    }

    public a(byte[] bArr, r rVar, boolean z10) {
        this(false);
        q(bArr, rVar, false, z10);
    }
}
