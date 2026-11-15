package defpackage;

import OooO0OO.OooO0O0;
import android.content.Context;
import android.text.TextUtils;
import androidx.media3.exoplayer.rtsp.RtspHeaders;
import com.transsion.core.log.ObjectLogUtils;
import com.transsion.palmsdk.PalmAuthParam;
import com.transsion.palmsdk.PalmID;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
import p002OooO0Oo.OooO0o;

public class lj7 {
    public final Context a;
    public final PalmAuthParam b;

    public class a implements rj7 {
        public final PalmID.a a;
        public final String b;
        public final Map c;

        public a(PalmID.a aVar, String str, Map map) {
            this.a = aVar;
            this.b = str;
            this.c = map;
        }

        @Override
        public void a(int i, String str) {
            if (i != 40055) {
                this.a.a(i, str);
                return;
            }
            lj7 lj7Var = lj7.this;
            String str2 = this.b;
            Map map = this.c;
            PalmID.a aVar = this.a;
            lj7Var.getClass();
            vj7.a.g("PalmNetworkManager token invalid, trying to refresh...");
            OooO0O0.a(lj7Var.a).c(new tj7(lj7Var, str2, map, aVar), false);
        }

        @Override
        public void onSuccess(Object obj) {
            String str = (String) obj;
            if (lj7.b(lj7.this, str)) {
                this.a.onSuccess(str);
            } else {
                this.a.a(40104, "Invalid response format");
            }
        }
    }

    public lj7(Context context, PalmAuthParam palmAuthParam) {
        this.a = context.getApplicationContext();
        this.b = palmAuthParam;
    }

    public static boolean b(lj7 lj7Var, String str) {
        lj7Var.getClass();
        if (!TextUtils.isEmpty(str)) {
            try {
                new JSONObject(str);
            } catch (Exception unused) {
                if (str.length() <= 0) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public void a(String str, String str2, Map map, PalmID.a aVar) {
        if (aVar == null) {
            vj7.a.i("PalmNetworkManager callOpenApi apiListener is null");
            return;
        }
        if (TextUtils.isEmpty(str)) {
            aVar.a(40101, "API path is empty");
            return;
        }
        if (TextUtils.isEmpty(str2)) {
            aVar.a(40105, "Access token is empty");
            return;
        }
        try {
            if (!vj7.h(this.a)) {
                aVar.a(40103, "Network not available");
                return;
            }
            HashMap map2 = new HashMap();
            map2.put(RtspHeaders.AUTHORIZATION, "Bearer " + str2);
            map2.put("Client-ID", this.b.getAppid());
            OooO0o.e().d(str, map2, map, new a(aVar, str, map));
        } catch (Exception e) {
            ObjectLogUtils objectLogUtils = vj7.a;
            StringBuilder sbA = qj7.a("PalmNetworkManager callOpenApi error: ");
            sbA.append(e.getMessage());
            objectLogUtils.i(sbA.toString());
            aVar.a(40102, "API call failed: " + e.getMessage());
        }
    }
}
