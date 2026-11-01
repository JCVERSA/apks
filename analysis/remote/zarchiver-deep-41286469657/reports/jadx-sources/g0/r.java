package g0;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.view.View;
import ru.zdevs.zarchiver.ZArchiver;

public final class r implements DialogInterface.OnShowListener {

    public final s f1035a;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public final void onClick(View view) {
            String str;
            s sVar = r.this.f1035a;
            int i2 = sVar.f1039i;
            String str2 = "sd_permissions.html#";
            if (i2 == 5) {
                str = "files12";
            } else if (i2 == 6) {
                str2 = "android_data_obb.html";
                str = "";
            } else {
                int i3 = sVar.f1038h;
                if (i3 == 4 || i3 == 0) {
                    int i4 = Build.VERSION.SDK_INT;
                    if (i4 >= 30) {
                        str = "and11";
                    } else if (i4 == 29) {
                        str = "and10";
                    } else {
                        str = i4 >= 26 ? "and7" : "and5";
                    }
                } else if (Build.VERSION.SDK_INT >= 33) {
                    str = i3 == 1 ? "and13obb" : "and13data";
                } else {
                    str = "and11data";
                }
            }
            try {
                ZArchiver zArchiverZ = ZArchiver.z();
                if (zArchiverZ != null) {
                    h1.h.e(zArchiverZ, new Intent("android.intent.action.VIEW", Uri.parse("http://zdevs.ru/za/" + str2 + str)));
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public r(s sVar) {
        this.f1035a = sVar;
    }

    @Override
    public final void onShow(DialogInterface dialogInterface) {
        i.i(this.f1035a.f1037g);
        z0.e.j((AlertDialog) dialogInterface, new a());
    }
}
