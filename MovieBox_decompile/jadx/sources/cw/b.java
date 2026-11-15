package cw;

import androidx.fragment.app.FragmentActivity;
import com.transsion.player.orplayer.f;
import com.transsion.videofloat.manager.i;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

public interface b {

    public static final a f58659a = a.f58660a;

    public static final class a {

        static final a f58660a = new a();

        private static final String f58661b = "pip_permission_dialog";

        private static final String f58662c = "key_video_float_permission";

        private static final Lazy f58663d = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return b.a.e();
            }
        });

        private a() {
        }

        public static final i e() {
            return new i();
        }

        public final String b() {
            return f58662c;
        }

        public final b c() {
            return (b) f58663d.getValue();
        }

        public final String d() {
            return f58661b;
        }
    }

    public static final class C0694b {
        public static void a(b bVar, boolean z10, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: stopFloat");
            }
            if ((i10 & 1) != 0) {
                z10 = true;
            }
            bVar.g(z10);
        }
    }

    boolean b(String str);

    boolean c(f fVar);

    void d();

    void e(FragmentActivity fragmentActivity, dw.a aVar, boolean z10, boolean z11, Function1 function1, gw.a aVar2);

    void f(FragmentActivity fragmentActivity, String str, String str2, String str3, String str4);

    void g(boolean z10);

    boolean isPlaying();
}
