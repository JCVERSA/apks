package defpackage;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import com.lzy.okgo.model.Progress;
import com.transsion.playercommon.share.model.ShareContent;

public final class kf {
    public static final kf a = new kf();

    public final Drawable a(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, "packageName");
        try {
            return context.getPackageManager().getApplicationIcon(str);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public final Intent b(ShareContent shareContent, String str) {
        y45.j(shareContent, "shareContent");
        y45.j(str, Progress.MIMETYPE);
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(str);
        String title = shareContent.getTitle();
        if (title != null) {
            intent.putExtra("android.intent.extra.SUBJECT", title);
        }
        String description = shareContent.getDescription();
        if (description != null) {
            intent.putExtra("android.intent.extra.TEXT", description);
        }
        String thumbnailUrl = shareContent.getThumbnailUrl();
        if (thumbnailUrl != null) {
            intent.putExtra("android.intent.extra.STREAM", thumbnailUrl);
        }
        intent.putExtra("android.intent.extra.TEXT", shareContent.getVideoUrl());
        intent.addFlags(1);
        intent.addFlags(268435456);
        return intent;
    }

    public final boolean c(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, "packageName");
        try {
            context.getPackageManager().getPackageInfo(str, 0);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }
}
