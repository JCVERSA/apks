package o;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.snaptube.util.ProductionEnv;
import dagger.Lazy;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import net.pubnative.mediation.request.model.PubnativeAdModel;

public class w25 implements ne3 {

    @Inject
    Lazy<nc6> a;
    public ne3 b;
    public SharedPreferences c;
    public final a d = new a(null);

    public static class a extends aa implements ne3 {
        public List b;

        public a() {
        }

        public a(v25 v25Var) {
            this();
        }

        @Override
        public boolean a(String str) {
            return false;
        }

        @Override
        public void b(List list) {
            this.b = list;
        }

        @Override
        public void d(String str, Object obj) {
        }

        @Override
        public void e(db dbVar) {
        }

        @Override
        public void f(String str, Map map, Map map2, boolean z) {
        }
    }

    public w25(Context context) {
        ((com.snaptube.premium.app.a) fc1.a(context)).h0(this);
        this.c = context.getSharedPreferences(PubnativeAdModel.PREF_NAME, 0);
    }

    @Override
    public boolean a(String str) {
        return h().a(str);
    }

    @Override
    public void b(List list) {
        h().b(list);
    }

    @Override
    public void c(n9 n9Var) {
        h().c(n9Var);
    }

    @Override
    public void d(String str, Object obj) {
        h().d(str, obj);
    }

    @Override
    public void e(db dbVar) {
        h().e(dbVar);
    }

    @Override
    public void f(String str, Map map, Map map2, boolean z) {
        h().f(str, map, map2, z);
    }

    @Override
    public void g(n9 n9Var) {
        h().g(n9Var);
    }

    public ne3 h() {
        Lazy<nc6> lazy;
        ne3 ne3Var = this.b;
        if (ne3Var == null || ne3Var == this.d) {
            if (!TextUtils.equals(this.c.getString("/native_ad_engine", "pubnative_mediation"), "pubnative_mediation") || (lazy = this.a) == null || lazy.get() == null) {
                ProductionEnv.d("NativeAdManagerProvider", "native ad engine: dummy");
                this.b = this.d;
            } else {
                ProductionEnv.d("NativeAdManagerProvider", "native ad engine: mediation");
                this.b = (ne3) this.a.get();
            }
            ne3 ne3Var2 = this.b;
            a aVar = this.d;
            if (ne3Var2 != aVar) {
                List listC = aVar.C();
                if (listC != null) {
                    Iterator it2 = listC.iterator();
                    while (it2.hasNext()) {
                        this.b.g((n9) it2.next());
                    }
                }
                this.d.D();
                this.b.b(this.d.b);
                this.d.b(null);
            }
        }
        return this.b;
    }
}
