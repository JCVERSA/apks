package defpackage;

import android.content.Context;
import com.alibaba.android.arouter.utils.Consts;
import com.just.agentweb.DefaultWebClient;
import com.transsion.cloud.region_host.model.DomainMappingData;
import com.transsion.cloud.region_host.util.StorageHelper;
import java.util.concurrent.ConcurrentHashMap;
import okhttp3.HttpUrl;

public final class nr8 {
    public final Context a;
    public final lr8 b;
    public final String c;
    public final StorageHelper d;
    public final ConcurrentHashMap e;
    public DomainMappingData f;

    public nr8(Context context, lr8 lr8Var) {
        y45.j(context, "context");
        y45.j(lr8Var, "config");
        this.a = context;
        this.b = lr8Var;
        this.c = "RegionHostHelper";
        this.d = new StorageHelper(context);
        this.e = new ConcurrentHashMap();
        tp5.a.c(lr8Var.a());
        e();
    }

    public final void a(String str, String str2) {
        y45.j(str, "originalHost");
        y45.j(str2, "newHost");
        if (y45.e(str, str2)) {
            return;
        }
        this.e.put(str, str2);
        this.d.e(str, str2);
        tp5.a.a(this.c, "缓存域名映射: " + str + " -> " + str2);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x002e  */
    public final String b(String str) {
        if (str == null) {
            return null;
        }
        try {
            if (g1a.R(str, DefaultWebClient.HTTP_SCHEME, false, 2, null) || g1a.R(str, "https://", false, 2, null)) {
                HttpUrl httpUrl = HttpUrl.INSTANCE.parse(str);
                if (httpUrl != null) {
                    str = httpUrl.host();
                } else {
                    str = null;
                }
            } else if (!mr8.a.a().matches(str) || !j1a.X(str, Consts.DOT, false, 2, null)) {
                str = null;
            }
            return str;
        } catch (Exception e) {
            tp5.a.b(this.c, "解析URL失败: " + str + ", 错误: " + e.getMessage());
            return null;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:14:0x0020  */
    /* JADX WARN: Code duplicated, block: B:32:0x0060  */
    /* JADX WARN: Code duplicated, block: B:33:0x007a  */
    /* JADX WARN: Instruction removed from duplicated block: B:32:0x0060, please report this as an issue */
    public final String c(String str) {
        String cloudServerWebUrlItel;
        DomainMappingData domainMappingData = this.f;
        if (domainMappingData == null) {
            return null;
        }
        switch (str) {
            case "oscloud.palm.tech":
                cloudServerWebUrlItel = domainMappingData.getCloudServer();
                break;
            case "itel-cloud.palm.tech":
                cloudServerWebUrlItel = domainMappingData.getCloudServerWebUrlItel();
                break;
            case "test-oscloud.transsion-os.com":
                cloudServerWebUrlItel = domainMappingData.getCloudServer();
                break;
            case "infinix-cloud.palm.tech":
                cloudServerWebUrlItel = domainMappingData.getCloudServerWebUrlInfinix();
                break;
            case "tecno-cloud.palm.tech":
                cloudServerWebUrlItel = domainMappingData.getCloudServerWebUrlTecno();
                break;
            case "test-cloud-disk.palm.tech":
            case "cloud-disk.palm.tech":
                cloudServerWebUrlItel = domainMappingData.getCloudDiskWeb();
                break;
            default:
                tp5.a.b(this.c, "cannot find mapping host: " + str);
                cloudServerWebUrlItel = null;
                break;
        }
        if (cloudServerWebUrlItel != null) {
            return b(cloudServerWebUrlItel);
        }
        return null;
    }

    public final String d(String str) {
        String strB;
        y45.j(str, "originalHost");
        String str2 = (String) this.e.get(str);
        if (str2 == null && (strB = this.d.b(str)) != null && !y45.e(strB, str)) {
            this.e.put(str, strB);
            str2 = strB;
        }
        if (str2 != null && !j1a.o0(str2)) {
            return str2;
        }
        String strC = c(str);
        tp5.a.a(this.c, "find mapping host " + str + " -> " + strC);
        if (strC == null || y45.e(strC, str)) {
            return str2;
        }
        this.d.e(str, strC);
        this.e.put(str, strC);
        return strC;
    }

    public final DomainMappingData e() {
        String strC = this.d.c();
        if (strC == null || strC.length() == 0) {
            return null;
        }
        try {
            DomainMappingData domainMappingData = DomainMappingData.INSTANCE.parse(strC);
            this.f = domainMappingData;
            return domainMappingData;
        } catch (Exception e) {
            tp5.a.b(this.c, "parse region host domain error: " + e.getMessage());
            return null;
        }
    }
}
