package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.UriPermission;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.util.Log;
import androidx.documentfile.provider.DocumentFile;
import com.just.agentweb.AgentWebPermissions;
import com.transsion.playercommon.videomodel.WhatsappViewModel;
import java.io.File;

public abstract class ikc {
    public static final String a = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/media/com.whatsapp/WhatsApp/Media/.Statuses/";
    public static final String b = Environment.getExternalStorageDirectory().getAbsolutePath() + "/WhatsApp/Media/.Statuses/";
    public static final String c = Environment.getExternalStorageDirectory().getAbsolutePath() + "/Android/media/com.whatsapp/WhatsApp/Media/";
    public static final String d = Environment.getExternalStorageDirectory().getAbsolutePath() + "/WhatsApp/Media/";
    public static volatile Boolean e;
    public static volatile Boolean f;

    public static boolean a(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Environment.isExternalStorageManager();
        }
        return true;
    }

    public static boolean b(Context context) {
        return c(context, false, false);
    }

    public static boolean c(Context context, boolean z, boolean z2) {
        if (Build.VERSION.SDK_INT < 30) {
            boolean z3 = context.checkSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 && context.checkSelfPermission("android.permission.READ_EXTERNAL_STORAGE") == 0;
            if (!z) {
                return z3;
            }
            if (z3) {
                return e(z2 ? d : b);
            }
            return false;
        }
        if (Environment.isExternalStorageManager()) {
            if (z) {
                return e(z2 ? c : a);
            }
            return true;
        }
        for (UriPermission uriPermission : context.getContentResolver().getPersistedUriPermissions()) {
            if (uriPermission != null && uriPermission.getUri() != null && uriPermission.getUri().toString().toLowerCase().contains("whatsapp")) {
                if (uriPermission.getUri().toString().endsWith(z2 ? AgentWebPermissions.ACTION_MEDIA : ".Statuses")) {
                    if (z) {
                        return d(context, uriPermission);
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean d(Context context, UriPermission uriPermission) {
        DocumentFile documentFileFromTreeUri = DocumentFile.fromTreeUri(context, uriPermission.getUri());
        return documentFileFromTreeUri != null && documentFileFromTreeUri.listFiles().length >= 2;
    }

    public static boolean e(String str) {
        File file = new File(str);
        return file.isDirectory() && file.listFiles() != null && file.listFiles().length >= 2;
    }

    public static boolean f(boolean z) {
        String str = z ? c : a;
        String str2 = z ? d : b;
        boolean z2 = (Build.VERSION.SDK_INT >= 30 ? WhatsappViewModel.m(str, str2) : WhatsappViewModel.m(str2, str)) != null;
        if (z) {
            e = Boolean.valueOf(z2);
        } else {
            f = Boolean.valueOf(z2);
        }
        return z2;
    }

    public static void g(Activity activity, boolean z) {
        Intent intentCreateOpenDocumentTreeIntent = ((StorageManager) activity.getSystemService("storage")).getPrimaryStorageVolume().createOpenDocumentTreeIntent();
        String str = z ? "Android%2Fmedia%2Fcom.whatsapp%2FWhatsApp%2FMedia" : "Android%2Fmedia%2Fcom.whatsapp%2FWhatsApp%2FMedia%2F.Statuses";
        Uri uri = Uri.parse(((Uri) intentCreateOpenDocumentTreeIntent.getParcelableExtra("android.provider.extra.INITIAL_URI")).toString().replace("/root/", "/document/") + "%3A" + str);
        Log.d("URI", uri.toString());
        intentCreateOpenDocumentTreeIntent.putExtra("android.provider.extra.INITIAL_URI", uri);
        intentCreateOpenDocumentTreeIntent.setFlags(67);
        f5.b(intentCreateOpenDocumentTreeIntent, 20001, activity);
    }
}
