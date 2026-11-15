package defpackage;

import androidx.core.app.NotificationCompat;
import com.transsion.log.upload.data.base.HttpUbtError;
import com.transsion.log.upload.data.base.HttpUbtException;
import com.transsion.log.upload.data.base.HttpUbtResponse;
import java.io.IOException;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;

public final class iz6 implements Callback {
    public final cs4 b;

    public iz6(cs4 cs4Var) {
        this.b = cs4Var;
    }

    @Override
    public void onFailure(Call call, IOException iOException) {
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(iOException, "e");
        cs4 cs4Var = this.b;
        if (cs4Var != null) {
            cs4Var.a(new HttpUbtError(1000, new HttpUbtException(1000, iOException.getMessage())));
        }
    }

    @Override
    public void onResponse(Call call, Response response) {
        cs4 cs4Var;
        y45.j(call, NotificationCompat.CATEGORY_CALL);
        y45.j(response, "response");
        if (response.code() != 200 || (cs4Var = this.b) == null) {
            return;
        }
        cs4Var.b(new HttpUbtResponse(2000, "上传成功", null));
    }
}
