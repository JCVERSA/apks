package com.transsion.mimedia.activity;

import android.widget.TextView;
import com.blankj.utilcode.util.LanguageUtils;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.playercommon.share.model.ShareContent;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import defpackage.nk1;
import defpackage.nt1;
import defpackage.s74;
import defpackage.wh1;
import defpackage.y45;
import defpackage.z45;
import defpackage.zfb;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lnk1;", "Lzfb;", "<anonymous>", "(Lnk1;)V"}, k = 3, mv = {2, 1, 0})
@nt1(c = "com.transsion.mimedia.activity.MediaBottomShareActivity$generateShareLink$1$1", f = "MediaBottomShareActivity.kt", l = {}, m = "invokeSuspend")
public final class MediaBottomShareActivity$generateShareLink$1$1 extends SuspendLambda implements s74 {
    final String $id;
    int label;
    final MediaBottomShareActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MediaBottomShareActivity$generateShareLink$1$1(String str, MediaBottomShareActivity mediaBottomShareActivity, wh1<? super MediaBottomShareActivity$generateShareLink$1$1> wh1Var) {
        super(2, wh1Var);
        this.$id = str;
        this.this$0 = mediaBottomShareActivity;
    }

    @Override
    public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
        return new MediaBottomShareActivity$generateShareLink$1$1(this.$id, this.this$0, wh1Var);
    }

    @Override
    public final Object invoke(nk1 nk1Var, wh1<? super zfb> wh1Var) {
        return ((MediaBottomShareActivity$generateShareLink$1$1) create(nk1Var, wh1Var)).invokeSuspend(zfb.a);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        z45.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        c.b(obj);
        try {
            LogUtils.j("MediaBottomShareActivity", "generating share link for mediaLibraryId: " + this.$id);
            String language = LanguageUtils.b().getLanguage();
            String str = OnlineVideoApiManager.getInstance().createBaseUrl() + "/#/cloudShare?appName=cloud";
            this.this$0.shareUrl = str + "&lang=" + language + "&country=" + CountryInfoUtil.i() + "&mediaLibraryId=" + this.this$0.mediaLibraryId;
            TextView textView = this.this$0.tvShareLink;
            if (textView == null) {
                y45.B("tvShareLink");
                textView = null;
            }
            textView.setText(this.this$0.shareUrl);
            this.this$0.shareContent = new ShareContent(this.this$0.shareUrl, null, null, null, null, 30, null);
            LogUtils.j("MediaBottomShareActivity", "share link generated successfully: " + this.this$0.shareUrl);
        } catch (Exception e) {
            LogUtils.m("MediaBottomShareActivity", "generateShareLink error: " + e.getMessage());
        }
        return zfb.a;
    }
}
