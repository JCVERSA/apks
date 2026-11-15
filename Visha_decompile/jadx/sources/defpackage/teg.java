package defpackage;

import android.text.TextUtils;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.android.gms.ads.internal.client.zzr;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.internal.util.zze;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;

public final class teg {
    public final ujg a;
    public final hig b;
    public final zqf c;
    public final ldg d;

    public teg(ujg ujgVar, hig higVar, zqf zqfVar, ldg ldgVar) {
        this.a = ujgVar;
        this.b = higVar;
        this.c = zqfVar;
        this.d = ldgVar;
    }

    public static void b(teg tegVar, ejf ejfVar, Map map) {
        int i = zze.zza;
        zzo.zzi("Hiding native ads overlay.");
        ejfVar.zzF().setVisibility(8);
        tegVar.c.d(false);
    }

    public static void d(teg tegVar, ejf ejfVar, Map map) {
        int i = zze.zza;
        zzo.zzi("Showing native ads overlay.");
        ejfVar.zzF().setVisibility(0);
        tegVar.c.d(true);
    }

    public static void e(teg tegVar, Map map, boolean z, int i, String str, String str2) {
        HashMap map2 = new HashMap();
        map2.put("messageType", "htmlLoaded");
        map2.put(TtmlNode.ATTR_ID, (String) map.get(TtmlNode.ATTR_ID));
        tegVar.b.j("sendMessageToNativeJs", map2);
    }

    public final View a() {
        ejf ejfVarA = this.a.a(zzr.zzc(), null, null);
        ejfVarA.zzF().setVisibility(8);
        ejfVarA.zzag("/sendMessageToSdk", new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                this.a.b.j("sendMessageToNativeJs", map);
            }
        });
        ejfVarA.zzag("/adMuted", new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                this.a.d.zzi();
            }
        });
        WeakReference weakReference = new WeakReference(ejfVarA);
        n3f n3fVar = new n3f() {
            @Override
            public final void a(Object obj, final Map map) {
                ejf ejfVar = (ejf) obj;
                ikf ikfVarZzN = ejfVar.zzN();
                final teg tegVar = this.a;
                ikfVarZzN.v(new gkf() {
                    @Override
                    public final void zza(boolean z, int i, String str, String str2) {
                        teg.e(tegVar, map, z, i, str, str2);
                    }
                });
                String str = (String) map.get("overlayHtml");
                String str2 = (String) map.get("baseUrl");
                if (TextUtils.isEmpty(str2)) {
                    ejfVar.loadData(str, "text/html", "UTF-8");
                } else {
                    ejfVar.loadDataWithBaseURL(str2, str, "text/html", "UTF-8", null);
                }
            }
        };
        hig higVar = this.b;
        higVar.m(weakReference, "/loadHtml", n3fVar);
        higVar.m(new WeakReference(ejfVarA), "/showOverlay", new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                teg.d(this.a, (ejf) obj, map);
            }
        });
        higVar.m(new WeakReference(ejfVarA), "/hideOverlay", new n3f() {
            @Override
            public final void a(Object obj, Map map) {
                teg.b(this.a, (ejf) obj, map);
            }
        });
        return ejfVarA.zzF();
    }
}
