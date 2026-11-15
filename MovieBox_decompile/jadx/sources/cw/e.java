package cw;

import android.app.PictureInPictureParams;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import com.transsion.player.orplayer.f;
import com.transsion.videofloat.bean.FloatActionType;
import com.transsion.videofloat.manager.VideoPipManagerImp;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;

public interface e {

    public static final a f58665a = a.f58666a;

    public static final class a {

        static final a f58666a = new a();

        private static final Lazy f58667b = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return e.a.c();
            }
        });

        private a() {
        }

        public static final VideoPipManagerImp c() {
            return new VideoPipManagerImp();
        }

        public final e b() {
            return (e) f58667b.getValue();
        }
    }

    public static final class b {
        public static void a(e eVar, boolean z10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: closePip");
            }
            if ((i10 & 1) != 0) {
                z10 = true;
            }
            eVar.e(z10);
        }

        public static void b(e eVar, FragmentActivity fragmentActivity, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unregisterReceiver");
            }
            if ((i10 & 1) != 0) {
                fragmentActivity = null;
            }
            eVar.j(fragmentActivity);
        }

        public static PictureInPictureParams c(e eVar, FragmentActivity fragmentActivity, boolean z10, boolean z11, ViewGroup viewGroup, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: updatePictureInPictureParams");
            }
            if ((i10 & 4) != 0) {
                z11 = true;
            }
            if ((i10 & 8) != 0) {
                viewGroup = null;
            }
            return eVar.a(fragmentActivity, z10, z11, viewGroup);
        }
    }

    PictureInPictureParams a(FragmentActivity fragmentActivity, boolean z10, boolean z11, ViewGroup viewGroup);

    boolean b(String str);

    boolean c();

    void d(FragmentActivity fragmentActivity, dw.a aVar, FloatActionType floatActionType, boolean z10);

    void e(boolean z10);

    void f();

    boolean g(f fVar);

    void h(FragmentActivity fragmentActivity, dw.a aVar);

    boolean i();

    boolean isPlaying();

    void j(FragmentActivity fragmentActivity);

    boolean k();

    void onPipModeChanged(boolean z10);
}
