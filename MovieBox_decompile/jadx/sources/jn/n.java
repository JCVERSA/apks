package jn;

import android.content.Context;
import android.view.ViewGroup;
import kotlin.jvm.internal.Intrinsics;

public interface n {

    public static final a f63232a = a.f63233a;

    public static final class a {

        static final a f63233a = new a();

        private a() {
        }

        public final n a(Context context, ViewGroup viewGroup) {
            Intrinsics.h(context, "context");
            return new m(context, viewGroup);
        }
    }

    void a(float f10, float f11);

    float b();

    int c();

    void d(float f10, float f11, int i10);

    void e(com.transsion.player.orplayer.f fVar);

    void f(boolean z10);

    void g();
}
