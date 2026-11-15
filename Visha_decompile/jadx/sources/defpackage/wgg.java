package defpackage;

import com.google.android.gms.internal.ads.j8;
import com.google.android.gms.internal.ads.zzbfg;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONObject;

public final class wgg {
    public final Executor a;
    public final ogg b;

    public wgg(Executor executor, ogg oggVar) {
        this.a = executor;
        this.b = oggVar;
    }

    public final im5 a(JSONObject jSONObject, String str) {
        im5 im5VarH;
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("custom_assets");
        if (jSONArrayOptJSONArray == null) {
            return j8.h(Collections.emptyList());
        }
        ArrayList arrayList = new ArrayList();
        int length = jSONArrayOptJSONArray.length();
        for (int i = 0; i < length; i++) {
            JSONObject jSONObjectOptJSONObject = jSONArrayOptJSONArray.optJSONObject(i);
            if (jSONObjectOptJSONObject == null) {
                im5VarH = j8.h(null);
            } else {
                final String strOptString = jSONObjectOptJSONObject.optString("name");
                if (strOptString == null) {
                    im5VarH = j8.h(null);
                } else {
                    String strOptString2 = jSONObjectOptJSONObject.optString("type");
                    im5VarH = "string".equals(strOptString2) ? j8.h(new vgg(strOptString, jSONObjectOptJSONObject.optString("string_value"))) : "image".equals(strOptString2) ? j8.m(this.b.e(jSONObjectOptJSONObject, "image_value"), new m2i() {
                        @Override
                        public final Object apply(Object obj) {
                            return new vgg(strOptString, (zzbfg) obj);
                        }
                    }, this.a) : j8.h(null);
                }
            }
            arrayList.add(im5VarH);
        }
        return j8.m(j8.d(arrayList), new m2i() {
            @Override
            public final Object apply(Object obj) {
                ArrayList arrayList2 = new ArrayList();
                for (vgg vggVar : (List) obj) {
                    if (vggVar != null) {
                        arrayList2.add(vggVar);
                    }
                }
                return arrayList2;
            }
        }, this.a);
    }
}
