package com.yandex.mobile.ads.instream;

import androidx.annotation.MainThread;
import com.yandex.mobile.ads.impl.ao0;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/yandex/mobile/ads/instream/MobileInstreamAds;", "", MethodDecl.initName, "()V", "", "enabled", "Lzfb;", "setAdGroupPreloading", "(Z)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
@MainThread
public final class MobileInstreamAds {
    public static final MobileInstreamAds INSTANCE = new MobileInstreamAds();

    private MobileInstreamAds() {
    }

    public static final void setAdGroupPreloading(boolean enabled) {
        int i = ao0.g;
        ao0.a.a().a(enabled);
    }
}
