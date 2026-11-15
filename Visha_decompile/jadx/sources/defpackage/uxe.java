package defpackage;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.util.client.zzo;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public final class uxe {
    public final List a = new ArrayList();
    public final List b = new ArrayList();
    public final List c = new ArrayList();

    public final List a() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            String str = (String) zzbd.zzc().b((qxe) it.next());
            if (!TextUtils.isEmpty(str)) {
                arrayList.add(str);
            }
        }
        arrayList.addAll(dye.a());
        return arrayList;
    }

    public final List b() {
        List listA = a();
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            String str = (String) zzbd.zzc().b((qxe) it.next());
            if (!TextUtils.isEmpty(str)) {
                listA.add(str);
            }
        }
        listA.addAll(dye.b());
        return listA;
    }

    public final void c(qxe qxeVar) {
        this.b.add(qxeVar);
    }

    public final void d(qxe qxeVar) {
        this.a.add(qxeVar);
    }

    public final void e(SharedPreferences.Editor editor, int i, JSONObject jSONObject) {
        for (qxe qxeVar : this.a) {
            if (qxeVar.e() == 1) {
                qxeVar.d(editor, qxeVar.a(jSONObject));
            }
        }
        if (jSONObject != null) {
            editor.putString("flag_configuration", jSONObject.toString());
        } else {
            zzo.zzg("Flag Json is null.");
        }
    }
}
