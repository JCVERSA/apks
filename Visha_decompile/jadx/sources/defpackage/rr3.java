package defpackage;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import androidx.webkit.internal.AssetHelper;
import com.chad.library.adapter.base.listener.SimpleClickListener;
import com.transsion.playercommon.R;
import com.transsion.utils.ToastUtils;
import java.util.ArrayList;

public abstract class rr3 {
    public static void a(String str, Uri uri, Context context) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        try {
            intent.setType(str);
            intent.putExtra("android.intent.extra.STREAM", uri);
            intent.addFlags(1);
            f5.c(Intent.createChooser(intent, context.getResources().getString(R.string.send_file)), context);
        } catch (Exception e) {
            ToastUtils.s(R.string.share_failed);
            Log.e(SimpleClickListener.TAG, "Cannot find any activity", e);
        }
    }

    public static void b(String str, ArrayList arrayList, Context context) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND_MULTIPLE");
        intent.setType(str);
        intent.putParcelableArrayListExtra("android.intent.extra.STREAM", arrayList);
        try {
            intent.addFlags(1);
            f5.c(Intent.createChooser(intent, context.getResources().getString(R.string.send_file)), context);
        } catch (Exception e) {
            ToastUtils.s(R.string.share_failed);
            Log.e(SimpleClickListener.TAG, "Cannot find any activity", e);
        }
    }

    public static void c(String str, Context context) {
        Intent intent = new Intent();
        intent.setAction("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", str);
        try {
            intent.addFlags(1);
            f5.c(Intent.createChooser(intent, context.getResources().getString(R.string.send_file)), context);
        } catch (Exception e) {
            ToastUtils.s(R.string.share_failed);
            Log.e(SimpleClickListener.TAG, "Cannot find any activity", e);
        }
    }
}
