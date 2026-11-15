package com.transsion.mediationads.beans;

import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\r\u001a\u00020\u000eH\u0016R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\t¨\u0006\u0010"}, d2 = {"Lcom/transsion/mediationads/beans/SplashInterstitialStrategy;", "", MethodDecl.initName, "()V", "positionType", "", "getPositionType", "()I", "setPositionType", "(I)V", "protectDays", "getProtectDays", "setProtectDays", "toString", "", "Companion", "mediationads-api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SplashInterstitialStrategy {
    public static final int POSITION_TYPE_INTERSTITIAL = 2;
    public static final int POSITION_TYPE_SPLASH = 1;
    private int positionType;
    private int protectDays;

    public final int getPositionType() {
        return this.positionType;
    }

    public final int getProtectDays() {
        return this.protectDays;
    }

    public final void setPositionType(int i) {
        this.positionType = i;
    }

    public final void setProtectDays(int i) {
        this.protectDays = i;
    }

    public String toString() {
        return "SplashInterstitialStrategy(positionType=" + this.positionType + ", protectDays=" + this.protectDays + ")";
    }
}
