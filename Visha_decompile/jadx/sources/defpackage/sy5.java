package defpackage;

import com.hunantv.imgo.net.entity.AuthInfo;
import com.transsion.livecaption.constant.ICode;
import java.util.LinkedHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

public abstract class sy5 {
    public static final a a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a() {
            p06.b0("vd_audio_shortcut_button_cl", new LinkedHashMap());
        }

        public final void b(boolean z) {
            p06.b0("vd_audio_shortcut_guideshow_cl", kotlin.collections.a.q(abb.a("action", z ? "cancel" : "add")));
        }

        public final void c() {
            p06.b0("vd_audio_shortcut_guideshow", new LinkedHashMap());
        }

        public final void d(boolean z) {
            p06.b0("vd_audio_shortcut_guideshow_cl", kotlin.collections.a.q(abb.a("remind_statue", z ? "on" : "off")));
        }

        public final void e(boolean z) {
            p06.b0("vd_audio_shortcut_result", kotlin.collections.a.q(abb.a(hb0.KEY_NAME_NUM, Integer.valueOf(z ? 1 : 0))));
        }

        public final void f(boolean z) {
            p06.b0("vd_audio_shortcut_show", kotlin.collections.a.q(abb.a("from", z ? AuthInfo.Component.CODE_BUTTON : "guide")));
        }

        public final void g(boolean z) {
            p06.b0("vd_audio_shortcut_cl", kotlin.collections.a.q(abb.a(ICode.CALL.CALL_KEY_STATE, Integer.valueOf(z ? 1 : 0))));
        }

        public a() {
        }
    }

    public static final void a() {
        a.a();
    }

    public static final void b(boolean z) {
        a.e(z);
    }

    public static final void c(boolean z) {
        a.g(z);
    }
}
