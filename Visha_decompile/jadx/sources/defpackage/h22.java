package defpackage;

import android.util.Log;
import com.lzy.okgo.model.Progress;
import com.transsion.livecaption.constant.ICode;

public final class h22 implements wp5 {
    @Override
    public void a(String str, String str2) {
        y45.j(str, Progress.TAG);
        y45.j(str2, ICode.CALL.CALL_KEY_CONTENT);
        Log.v(str, str2);
    }

    @Override
    public void b(String str, String str2) {
        y45.j(str, Progress.TAG);
        y45.j(str2, ICode.CALL.CALL_KEY_CONTENT);
        Log.w(str, str2);
    }

    @Override
    public void debug(String str, String str2) {
        y45.j(str, Progress.TAG);
        y45.j(str2, ICode.CALL.CALL_KEY_CONTENT);
        Log.d(str, str2);
    }

    @Override
    public void error(String str, String str2) {
        y45.j(str, Progress.TAG);
        y45.j(str2, ICode.CALL.CALL_KEY_CONTENT);
        Log.e(str, str2);
    }

    @Override
    public void info(String str, String str2) {
        y45.j(str, Progress.TAG);
        y45.j(str2, ICode.CALL.CALL_KEY_CONTENT);
        Log.i(str, str2);
    }
}
