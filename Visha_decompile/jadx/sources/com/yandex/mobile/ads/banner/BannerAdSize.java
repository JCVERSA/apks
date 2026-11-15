package com.yandex.mobile.ads.banner;

import android.content.Context;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.yandex.mobile.ads.impl.fl1;
import com.yandex.mobile.ads.impl.gz1;
import com.yandex.mobile.ads.impl.rb0;
import com.yandex.mobile.ads.impl.u22;
import com.yandex.mobile.ads.impl.zs;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0011\b\u0000\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u0015\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\t\u0010\u0006J\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\b\u0010\u0010R\u0011\u0010\u0015\u001a\u00020\u00048F¢\u0006\u0006\u001a\u0004\b\t\u0010\u0010¨\u0006\u001b"}, d2 = {"Lcom/yandex/mobile/ads/banner/BannerAdSize;", "Lcom/yandex/mobile/ads/impl/fl1;", "Landroid/content/Context;", "context", "", "getHeightInPixels", "(Landroid/content/Context;)I", "getWidthInPixels", "getHeight", "getWidth", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "height", "width", "Lcom/yandex/mobile/ads/impl/gz1;", "sizeInfo", MethodDecl.initName, "(Lcom/yandex/mobile/ads/impl/gz1;)V", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class BannerAdSize extends fl1 {

    public static final Companion INSTANCE = new Companion(null);
    private final gz1 b;

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0007J \u0010\n\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0007J\u0018\u0010\f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0007¨\u0006\r"}, d2 = {"Lcom/yandex/mobile/ads/banner/BannerAdSize$a;", "", "()V", "fixedSize", "Lcom/yandex/mobile/ads/banner/BannerAdSize;", "context", "Landroid/content/Context;", "width", "", "height", "inlineSize", "maxHeight", "stickySize", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final BannerAdSize fixedSize(Context context, int width, int height) {
            y45.j(context, "context");
            return new BannerAdSize(new rb0(width, height, gz1.a.c));
        }

        public final BannerAdSize inlineSize(Context context, int width, int maxHeight) {
            y45.j(context, "context");
            return new BannerAdSize(new rb0(width, maxHeight, gz1.a.d));
        }

        public final BannerAdSize stickySize(Context context, int width) {
            y45.j(context, "context");
            zs zsVarA = u22.a(context, width);
            y45.j(zsVarA, "coreBannerAdSize");
            return new BannerAdSize(zsVarA.a());
        }

        private Companion() {
        }
    }

    public BannerAdSize(gz1 gz1Var) {
        y45.j(gz1Var, "sizeInfo");
        this.b = gz1Var;
    }

    public static final BannerAdSize fixedSize(Context context, int i, int i2) {
        return INSTANCE.fixedSize(context, i, i2);
    }

    public static final BannerAdSize inlineSize(Context context, int i, int i2) {
        return INSTANCE.inlineSize(context, i, i2);
    }

    public static final BannerAdSize stickySize(Context context, int i) {
        return INSTANCE.stickySize(context, i);
    }

    public final gz1 getB() {
        return this.b;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (other == null || !y45.e(BannerAdSize.class, other.getClass())) {
            return false;
        }
        return y45.e(this.b, ((BannerAdSize) other).b);
    }

    public final int getHeight() {
        return this.b.getHeight();
    }

    public final int getHeightInPixels(Context context) {
        y45.j(context, "context");
        return this.b.b(context);
    }

    public final int getWidth() {
        return this.b.getWidth();
    }

    public final int getWidthInPixels(Context context) {
        y45.j(context, "context");
        return this.b.d(context);
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public String toString() {
        return this.b.toString();
    }

    public final int getHeight(Context context) {
        y45.j(context, "context");
        return this.b.a(context);
    }

    public final int getWidth(Context context) {
        y45.j(context, "context");
        return this.b.c(context);
    }
}
