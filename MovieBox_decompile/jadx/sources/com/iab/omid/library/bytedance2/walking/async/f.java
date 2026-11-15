package com.iab.omid.library.bytedance2.walking.async;

import android.text.TextUtils;
import java.util.HashSet;
import org.json.JSONObject;

public class f extends a {
    public f(b.InterfaceC0433b interfaceC0433b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0433b, hashSet, jSONObject, j10);
    }

    private void b(String str) {
        com.iab.omid.library.bytedance2.internal.c cVarC = com.iab.omid.library.bytedance2.internal.c.c();
        if (cVarC != null) {
            for (com.iab.omid.library.bytedance2.adsession.a aVar : cVarC.b()) {
                if (this.f32688c.contains(aVar.getAdSessionId())) {
                    aVar.getAdSessionStatePublisher().b(str, this.f32690e);
                }
            }
        }
    }

    @Override
    public String doInBackground(Object... objArr) {
        if (com.iab.omid.library.bytedance2.utils.c.h(this.f32689d, this.f32692b.a())) {
            return null;
        }
        this.f32692b.a(this.f32689d);
        return this.f32689d.toString();
    }

    @Override
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            b(str);
        }
        super.onPostExecute(str);
    }
}
