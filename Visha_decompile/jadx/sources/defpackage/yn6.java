package defpackage;

import android.content.Context;
import android.content.Intent;
import androidx.webkit.internal.AssetHelper;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.share.constants.SharePlatformConfig;
import com.transsion.playercommon.share.model.ShareContent;
import com.transsion.playercommon.share.model.ShareOption;
import com.transsion.playercommon.share.model.SharePlatformInfo;

public final class yn6 implements fw4 {
    @Override
    public SharePlatformInfo a() {
        SharePlatformConfig sharePlatformConfig = SharePlatformConfig.MESSENGER;
        return new SharePlatformInfo(sharePlatformConfig.getDisplayName(), sharePlatformConfig.getPackageName(), null, ShareOption.MESSENGER, 4, null);
    }

    @Override
    public void b(Context context, ShareContent shareContent, ShareOption shareOption) {
        y45.j(context, "context");
        y45.j(shareContent, ICode.CALL.CALL_KEY_CONTENT);
        y45.j(shareOption, "option");
        kf kfVar = kf.a;
        String mimeType = shareContent.getMimeType();
        if (mimeType == null) {
            mimeType = AssetHelper.DEFAULT_MIME_TYPE;
        }
        Intent intentB = kfVar.b(shareContent, mimeType);
        intentB.setPackage(SharePlatformConfig.MESSENGER.getPackageName());
        if (intentB.resolveActivity(context.getPackageManager()) != null) {
            Intent intentCreateChooser = Intent.createChooser(intentB, "Share to Messenger");
            intentCreateChooser.addFlags(268435456);
            context.startActivity(intentCreateChooser);
        }
    }
}
