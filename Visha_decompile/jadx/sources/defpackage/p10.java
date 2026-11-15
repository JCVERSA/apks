package defpackage;

import com.transsion.audio.R;
import com.transsion.utils.ToastUtils;

public abstract class p10 {
    public static void a() {
        ToastUtils.s(R.string.audio_format_not_support_edit);
    }

    public static void b(int i) {
        if (i == 1) {
            ToastUtils.s(R.string.repeat_all);
        } else if (i == 2) {
            ToastUtils.s(R.string.repeat_one);
        } else {
            ToastUtils.s(R.string.shuffle);
        }
    }
}
