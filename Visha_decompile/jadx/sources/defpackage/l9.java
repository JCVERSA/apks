package defpackage;

import android.content.Context;
import com.transsion.dbdata.beans.NewFeatureAdvertise;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.reponse.BaseResponse;

public abstract class l9 {
    public static NewFeatureAdvertise a = null;
    public static boolean b = true;

    public class a implements pd7 {
        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse.getCode() == 0 && baseResponse.isSuccess()) {
                l9.j((NewFeatureAdvertise) baseResponse.getData());
            }
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public interface b {
        void a(NewFeatureAdvertise newFeatureAdvertise);
    }

    public static void d(Context context, final b bVar) {
        mc7.K(context).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return l9.f((Context) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                l9.g(bVar, (NewFeatureAdvertise) obj);
            }
        });
    }

    public static void e() {
        try {
            NewFeatureAdvertise newFeatureAdvertise = (NewFeatureAdvertise) fi1.b(CacheManager.getInstance().getCache("bookmarks_cache"), NewFeatureAdvertise.class);
            if (newFeatureAdvertise == null) {
                newFeatureAdvertise = new NewFeatureAdvertise();
            }
            a = newFeatureAdvertise;
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static NewFeatureAdvertise f(Context context) {
        NewFeatureAdvertise newFeatureAdvertise = (NewFeatureAdvertise) fi1.b(CacheManager.getInstance().getCache("bookmarks_cache"), NewFeatureAdvertise.class);
        return newFeatureAdvertise == null ? new NewFeatureAdvertise() : newFeatureAdvertise;
    }

    public static void g(b bVar, NewFeatureAdvertise newFeatureAdvertise) {
        a = newFeatureAdvertise;
        if (bVar != null) {
            bVar.a(newFeatureAdvertise);
        }
    }

    public static Boolean h(NewFeatureAdvertise newFeatureAdvertise, Integer num) {
        a = newFeatureAdvertise;
        CacheManager.getInstance().setCache("bookmarks_cache", fi1.e(newFeatureAdvertise));
        return Boolean.TRUE;
    }

    public static void i(int i) {
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getAdvertise(i).d0(k29.c()).M(vb.a()).subscribe(new a());
    }

    public static void j(final NewFeatureAdvertise newFeatureAdvertise) {
        mc7.K(1).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return l9.h(newFeatureAdvertise, (Integer) obj);
            }
        }).d0(k29.c()).M(vb.a()).Y();
    }

    public static boolean k() {
        return b;
    }

    public static boolean l() {
        return false;
    }
}
