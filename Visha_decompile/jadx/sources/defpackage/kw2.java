package defpackage;

import android.content.Context;
import android.net.Uri;
import android.provider.DocumentsContract;
import java.io.FileNotFoundException;

public abstract class kw2 {
    public static Uri a(Context context, Uri uri, String str) {
        try {
            return DocumentsContract.renameDocument(context.getContentResolver(), uri, str);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }
}
