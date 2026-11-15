package defpackage;

import OppOp00.OppO0Op;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import com.transsion.xuanniao.account.center.view.UserCenterActivity;
import java.io.File;

public class hk7 {

    public static class a {
        public static hk7 a = new hk7();
    }

    public static File b(Context context) {
        return new File(context.getFilesDir(), "Pictures");
    }

    public Bitmap a(Context context, String str) {
        if (TextUtils.isEmpty(str) || context.getFilesDir() == null) {
            return null;
        }
        try {
            return BitmapFactory.decodeFile(b(context).getAbsolutePath() + "/OriPicture/avatar/" + str.substring(str.lastIndexOf("/")));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public void c(Context context, Bitmap bitmap, String str, OppOp00.a.InterfaceC0003a interfaceC0003a) {
        if (TextUtils.isEmpty(str) || str.lastIndexOf("/") == -1 || context.getFilesDir() == null) {
            ((UserCenterActivity.e) interfaceC0003a).F(null);
            return;
        }
        String strSubstring = str.substring(str.lastIndexOf("/"));
        File file = new File(b(context).getAbsolutePath() + "/OriPicture/avatar");
        if (!file.exists()) {
            file.mkdirs();
        }
        new Thread(new OppO0Op(bitmap, str, file.getPath() + "/" + strSubstring, interfaceC0003a)).start();
    }

    public void d(Context context, String str, OppOp00.a.InterfaceC0003a interfaceC0003a) {
        if (TextUtils.isEmpty(str) || str.lastIndexOf("/") == -1 || context.getFilesDir() == null) {
            interfaceC0003a.F(null);
            return;
        }
        String strSubstring = str.substring(str.lastIndexOf("/"));
        File file = new File(b(context).getAbsolutePath() + "/OriPicture/avatar");
        if (!file.exists()) {
            file.mkdirs();
        }
        new Thread(new OppO0Op(null, str, file.getPath() + "/" + strSubstring, interfaceC0003a)).start();
    }
}
