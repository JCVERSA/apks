package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010!\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018\u00002\u00020\u0001B#\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\b\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ\u0016\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJ,\u0010\f\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u0004HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\tJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0011J \u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010\u001e\u001a\u0004\b\u001f\u0010\t\"\u0004\b \u0010!R(\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0005\u0010\"\u001a\u0004\b#\u0010\u000b\"\u0004\b$\u0010%¨\u0006&"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VastClick;", "Landroid/os/Parcelable;", "", "videoClick", "", "clickTrack", MethodDecl.initName, "(Ljava/lang/String;Ljava/util/List;)V", "component1", "()Ljava/lang/String;", "component2", "()Ljava/util/List;", "copy", "(Ljava/lang/String;Ljava/util/List;)Lcom/cloud/hisavana/sdk/common/bean/VastClick;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getVideoClick", "setVideoClick", "(Ljava/lang/String;)V", "Ljava/util/List;", "getClickTrack", "setClickTrack", "(Ljava/util/List;)V", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VastClick implements Parcelable {
    public static final Parcelable.Creator<VastClick> CREATOR = new Creator();
    private List<String> clickTrack;
    private String videoClick;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<VastClick> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VastClick createFromParcel(Parcel parcel) {
            y45.j(parcel, "parcel");
            return new VastClick(parcel.readString(), parcel.createStringArrayList());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VastClick[] newArray(int i) {
            return new VastClick[i];
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public VastClick() {
        this(null, 0 == true ? 1 : 0, 3, 0 == true ? 1 : 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static VastClick copy$default(VastClick vastClick, String str, List list, int i, Object obj) {
        if ((i & 1) != 0) {
            str = vastClick.videoClick;
        }
        if ((i & 2) != 0) {
            list = vastClick.clickTrack;
        }
        return vastClick.copy(str, list);
    }

    public final String getVideoClick() {
        return this.videoClick;
    }

    public final List<String> component2() {
        return this.clickTrack;
    }

    public final VastClick copy(String videoClick, List<String> clickTrack) {
        y45.j(clickTrack, "clickTrack");
        return new VastClick(videoClick, clickTrack);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VastClick)) {
            return false;
        }
        VastClick vastClick = (VastClick) other;
        return y45.e(this.videoClick, vastClick.videoClick) && y45.e(this.clickTrack, vastClick.clickTrack);
    }

    public final List<String> getClickTrack() {
        return this.clickTrack;
    }

    public final String getVideoClick() {
        return this.videoClick;
    }

    public int hashCode() {
        String str = this.videoClick;
        return ((str == null ? 0 : str.hashCode()) * 31) + this.clickTrack.hashCode();
    }

    public final void setClickTrack(List<String> list) {
        y45.j(list, "<set-?>");
        this.clickTrack = list;
    }

    public final void setVideoClick(String str) {
        this.videoClick = str;
    }

    public String toString() {
        return "VastClick(videoClick=" + this.videoClick + ", clickTrack=" + this.clickTrack + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        parcel.writeString(this.videoClick);
        parcel.writeStringList(this.clickTrack);
    }

    public VastClick(String str, List<String> list) {
        y45.j(list, "clickTrack");
        this.videoClick = str;
        this.clickTrack = list;
    }

    public VastClick(String str, List list, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? new ArrayList() : list);
    }
}
