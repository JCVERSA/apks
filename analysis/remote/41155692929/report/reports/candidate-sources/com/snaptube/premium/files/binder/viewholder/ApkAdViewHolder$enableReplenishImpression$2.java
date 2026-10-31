package com.snaptube.premium.files.binder.viewholder;

import com.snaptube.ads.base.AdsPos;
import com.snaptube.premium.app.PhoenixApplication;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import o.bx2;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"<anonymous>", "", "kotlin.jvm.PlatformType", "invoke", "()Ljava/lang/Boolean;"}, k = 3, mv = {1, 9, 0}, xi = 48)
public final class ApkAdViewHolder$enableReplenishImpression$2 extends Lambda implements bx2 {
    public static final ApkAdViewHolder$enableReplenishImpression$2 INSTANCE = new ApkAdViewHolder$enableReplenishImpression$2();

    public ApkAdViewHolder$enableReplenishImpression$2() {
        super(0);
    }

    @Override
    public final Boolean invoke() {
        return PhoenixApplication.C().y().X("/" + AdsPos.NATIVE_MYFILE_ALL_PLAY_LIST.pos() + "/enable_replenish_impression", true);
    }

    @Override
    public Object invoke() {
        return invoke();
    }
}
