package defpackage;

import android.view.View;
import com.blankj.utilcode.util.ThreadUtils;
import com.tencent.mmkv.MMKV;
import com.transsion.playercommon.R;
import java.lang.ref.WeakReference;

public abstract class mq {
    public static void b(WeakReference weakReference) {
        View view = (View) weakReference.get();
        if (view == null || !view.isAttachedToWindow()) {
            return;
        }
        ea7.p(view, se.a().getString(R.string.visha_try_to_click), 8388661);
        MMKV.p().y("mmkv_key_show_audio_smart_edit_btn_tip", false);
    }

    public static void c(View view) {
        if (!ydc.e() && MMKV.p().e("mmkv_key_show_audio_smart_edit_btn_tip", true)) {
            final WeakReference weakReference = new WeakReference(view);
            ThreadUtils.t(new Runnable() {
                @Override
                public final void run() {
                    mq.b(weakReference);
                }
            }, 300L);
        }
    }
}
