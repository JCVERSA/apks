package oq;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import com.transsion.share.R$string;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;

public final class o {

    public static final o f67944a = new o();

    private static final String[] f67945b;

    private static long f67946c;

    private static int f67947d;

    static {
        f67945b = Build.VERSION.SDK_INT < 33 ? new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"} : new String[]{"android.permission.READ_MEDIA_VIDEO"};
    }

    private o() {
    }

    public static boolean e(o oVar, int i10, long j10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            j10 = 2000;
        }
        return oVar.d(i10, j10);
    }

    public static final void g(Function0 function0, DialogInterface dialogInterface, int i10) {
        function0.invoke();
        dialogInterface.dismiss();
    }

    public static final void h(DialogInterface dialogInterface, int i10) {
        dialogInterface.dismiss();
    }

    public static void j(o oVar, Activity activity, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 14;
        }
        oVar.i(activity, i10);
    }

    public final String[] c() {
        return f67945b;
    }

    public final boolean d(int i10, long j10) {
        if (f67947d != i10) {
            f67947d = i10;
            f67946c = System.currentTimeMillis();
            return false;
        }
        if (System.currentTimeMillis() - f67946c <= j10) {
            return true;
        }
        f67947d = i10;
        f67946c = System.currentTimeMillis();
        return false;
    }

    public final void f(Context context, String title, String message, final Function0 onConfirm) {
        Intrinsics.h(context, "context");
        Intrinsics.h(title, "title");
        Intrinsics.h(message, "message");
        Intrinsics.h(onConfirm, "onConfirm");
        androidx.appcompat.app.c.a aVar = new androidx.appcompat.app.c.a(context);
        aVar.setTitle(title);
        aVar.d(message);
        aVar.g(context.getString(R$string.system_settings), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i10) {
                o.g(onConfirm, dialogInterface, i10);
            }
        });
        aVar.e(context.getString(R$string.cancel), new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i10) {
                o.h(dialogInterface, i10);
            }
        });
        androidx.appcompat.app.c cVarCreate = aVar.create();
        Intrinsics.g(cVarCreate, "create(...)");
        cVarCreate.show();
    }

    public final void i(Activity activity, int i10) {
        Intrinsics.h(activity, "activity");
        String packageName = activity.getPackageName();
        Intrinsics.g(packageName, "getPackageName(...)");
        Intent intent = new Intent("com.android.setting.ACTION_GET_PERMISSION_DETAILS");
        intent.putExtra("packagename", packageName);
        intent.addFlags(ASTNode.DEOP);
        try {
            try {
                try {
                    if (i10 > 0) {
                        activity.startActivityForResult(intent, i10);
                    } else {
                        activity.startActivity(intent);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            } catch (ActivityNotFoundException unused) {
                Intent intent2 = new Intent("android.settings.MANAGE_APPLICATIONS_SETTINGS");
                intent2.addFlags(ASTNode.DEOP);
                if (i10 > 0) {
                    activity.startActivityForResult(intent2, i10);
                } else {
                    activity.startActivity(intent2);
                }
            }
        } catch (ActivityNotFoundException unused2) {
            Intent intent3 = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent3.setData(Uri.parse("package:" + packageName));
            intent3.addFlags(ASTNode.DEOP);
            if (i10 > 0) {
                activity.startActivityForResult(intent3, i10);
            } else {
                activity.startActivity(intent3);
            }
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public final boolean k(int[] grantResults) {
        Intrinsics.h(grantResults, "grantResults");
        for (int i10 : grantResults) {
            if (i10 == -1) {
                return false;
            }
        }
        return true;
    }
}
