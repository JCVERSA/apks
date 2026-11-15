package com.transsion.mediationads.beans;

import android.content.Context;
import android.view.View;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.mediationads.beans.AdMediaItem;
import defpackage.hb0;
import defpackage.s74;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\r\b\u0016\u0018\u0000 22\u00020\u0001:\u00012B\u001b\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0019\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u0010\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\nH\u0016¢\u0006\u0004\b\u0015\u0010\u0013R\u0016\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u0018R$\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\"\u0010 \u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\"\u0010'\u001a\u00020&8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b'\u0010(\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,R\"\u0010-\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b-\u0010!\u001a\u0004\b.\u0010#\"\u0004\b/\u0010%R\u0014\u00100\u001a\u00020\u00168VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b0\u00101¨\u00063"}, d2 = {"Lcom/transsion/mediationads/beans/AdMediaItem;", "Lcom/transsion/dbdata/beans/media/MediaItem;", "", "adId", "", "listMode", MethodDecl.initName, "(Ljava/lang/String;I)V", "Landroid/content/Context;", "context", "Lzfb;", "setContext", "(Landroid/content/Context;)V", "Landroid/view/View;", "nativeAdView", "position", "bindValues", "(Landroid/view/View;I)V", "release", "()V", "markAsClosed", "markAsConsumed", "", "isClosed", "Z", "isConsumed", "advertisingId", "Ljava/lang/String;", "getAdvertisingId", "()Ljava/lang/String;", "setAdvertisingId", "(Ljava/lang/String;)V", "adPosition", "I", "getAdPosition", "()I", "setAdPosition", "(I)V", "", "adLoadTime", "J", "getAdLoadTime", "()J", "setAdLoadTime", "(J)V", "displayMode", "getDisplayMode", "setDisplayMode", "isAdAvailable", "()Z", "Companion", "mediationads-api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class AdMediaItem extends MediaItem {

    public static final Companion INSTANCE = new Companion(null);
    private static volatile s74 factory = new s74() {
        @Override
        public final Object invoke(Object obj, Object obj2) {
            return AdMediaItem.factory$lambda$0((String) obj, ((Integer) obj2).intValue());
        }
    };
    private long adLoadTime;
    private int adPosition;
    private String advertisingId;
    private int displayMode;
    public boolean isClosed;
    public boolean isConsumed;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J+\u0010\n\u001a\u00020\t2\u001a\u0010\b\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0004H\u0007¢\u0006\u0004\b\n\u0010\u000bJ!\u0010\u000e\u001a\u00020\u00072\b\u0010\f\u001a\u0004\u0018\u00010\u00052\u0006\u0010\r\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u000e\u0010\u000fR*\u0010\u0010\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/transsion/mediationads/beans/AdMediaItem$Companion;", "", MethodDecl.initName, "()V", "Lkotlin/Function2;", "", "", "Lcom/transsion/mediationads/beans/AdMediaItem;", "f", "Lzfb;", "installFactory", "(Ls74;)V", "adId", hb0.KEY_NAME_MODE, "create", "(Ljava/lang/String;I)Lcom/transsion/mediationads/beans/AdMediaItem;", "factory", "Ls74;", "mediationads-api_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final AdMediaItem create(String adId, int mode) {
            return (AdMediaItem) AdMediaItem.factory.invoke(adId, Integer.valueOf(mode));
        }

        public final void installFactory(s74 f) {
            y45.j(f, "f");
            AdMediaItem.factory = f;
        }

        private Companion() {
        }
    }

    public AdMediaItem(String str, int i) {
        this.mIsMediaTionAd = true;
        this.displayMode = i;
        this.advertisingId = str;
    }

    public static final AdMediaItem create(String str, int i) {
        return INSTANCE.create(str, i);
    }

    public static final AdMediaItem factory$lambda$0(String str, int i) {
        return new AdMediaItem(str, i);
    }

    public static final void installFactory(s74 s74Var) {
        INSTANCE.installFactory(s74Var);
    }

    public void bindValues(View nativeAdView, int position) {
        y45.j(nativeAdView, "nativeAdView");
    }

    public final long getAdLoadTime() {
        return this.adLoadTime;
    }

    public final int getAdPosition() {
        return this.adPosition;
    }

    public final String getAdvertisingId() {
        return this.advertisingId;
    }

    public final int getDisplayMode() {
        return this.displayMode;
    }

    public boolean isAdAvailable() {
        return (this.isConsumed || this.isClosed) ? false : true;
    }

    public void markAsClosed() {
        this.isClosed = true;
        release();
    }

    public void markAsConsumed() {
        this.isConsumed = true;
    }

    public void release() {
    }

    public final void setAdLoadTime(long j) {
        this.adLoadTime = j;
    }

    public final void setAdPosition(int i) {
        this.adPosition = i;
    }

    public final void setAdvertisingId(String str) {
        this.advertisingId = str;
    }

    public void setContext(Context context) {
    }

    public final void setDisplayMode(int i) {
        this.displayMode = i;
    }
}
