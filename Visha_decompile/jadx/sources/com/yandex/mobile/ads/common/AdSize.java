package com.yandex.mobile.ads.common;

import androidx.annotation.Dimension;
import androidx.media3.exoplayer.upstream.CmcdData;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u000f\u001a\u00020\u0006\u0012\u0006\u0010\u0012\u001a\u00020\u0006¢\u0006\u0004\b\u0013\u0010\u0014J\u001a\u0010\u0004\u001a\u00020\u00032\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u000f\u001a\u00020\u00068\u0007¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\bR\u0017\u0010\u0012\u001a\u00020\u00068\u0007¢\u0006\f\n\u0004\b\u0010\u0010\r\u001a\u0004\b\u0011\u0010\b¨\u0006\u0015"}, d2 = {"Lcom/yandex/mobile/ads/common/AdSize;", "", "o", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "I", "getWidth", "width", "b", "getHeight", "height", MethodDecl.initName, "(II)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class AdSize {

    private final int width;

    private final int height;

    public AdSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || !y45.e(AdSize.class, o.getClass())) {
            return false;
        }
        AdSize adSize = (AdSize) o;
        return this.width == adSize.width && this.height == adSize.height;
    }

    @Dimension(unit = 0)
    public final int getHeight() {
        return this.height;
    }

    @Dimension(unit = 0)
    public final int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (this.width * 31) + this.height;
    }

    public String toString() {
        return "AdSize (width=" + this.width + ", height=" + this.height + ")";
    }
}
