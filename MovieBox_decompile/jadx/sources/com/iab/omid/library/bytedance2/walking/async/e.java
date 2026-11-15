package com.iab.omid.library.bytedance2.walking.async;

import java.util.HashSet;
import org.json.JSONObject;

public class e extends a {
    public e(b.InterfaceC0433b interfaceC0433b, HashSet<String> hashSet, JSONObject jSONObject, long j10) {
        super(interfaceC0433b, hashSet, jSONObject, j10);
    }

    private void b(String str) {
        com.iab.omid.library.bytedance2.internal.c cVarC = com.iab.omid.library.bytedance2.internal.c.c();
        if (cVarC != null) {
            for (com.iab.omid.library.bytedance2.adsession.a aVar : cVarC.b()) {
                if (this.f32688c.contains(aVar.getAdSessionId())) {
                    aVar.getAdSessionStatePublisher().a(str, this.f32690e);
                }
            }
        }
    }

    @Override
    public String doInBackground(Object... objArr) {
        return this.f32689d.toString();
    }

    @Override
    public void onPostExecute(String str) {
        b(str);
        super.onPostExecute(str);
    }
}
