package com.cloud.hisavana.sdk.common.bean;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.facebook.ads.AdSDKNotificationListener;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b&\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b8\b\u0087\b\u0018\u00002\u00020\u0001Bé\u0001\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b\u0012\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r\u0012\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000f\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u0012\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0013\u0012\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0015\u0012\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0015\u0012\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000f¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\u0015¢\u0006\u0004\b!\u0010\"J\u0012\u0010#\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b#\u0010$J\u0012\u0010%\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b%\u0010$J\u0012\u0010&\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b&\u0010'J\u0012\u0010(\u001a\u0004\u0018\u00010\u0007HÆ\u0003¢\u0006\u0004\b(\u0010)J\u0012\u0010*\u001a\u0004\u0018\u00010\tHÆ\u0003¢\u0006\u0004\b*\u0010+J\u0012\u0010,\u001a\u0004\u0018\u00010\u000bHÆ\u0003¢\u0006\u0004\b,\u0010-J\u0012\u0010.\u001a\u0004\u0018\u00010\rHÆ\u0003¢\u0006\u0004\b.\u0010/J\u0018\u00100\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000fHÆ\u0003¢\u0006\u0004\b0\u00101J\u0012\u00102\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b2\u0010$J\u0012\u00103\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b3\u0010$J\u0012\u00104\u001a\u0004\u0018\u00010\u0013HÆ\u0003¢\u0006\u0004\b4\u00105J\u0012\u00106\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0004\b6\u00107J\u0012\u00108\u001a\u0004\u0018\u00010\u0017HÆ\u0003¢\u0006\u0004\b8\u00109J\u0012\u0010:\u001a\u0004\u0018\u00010\u0013HÆ\u0003¢\u0006\u0004\b:\u00105J\u0012\u0010;\u001a\u0004\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b;\u0010$J\u0012\u0010<\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0004\b<\u00107J\u0012\u0010=\u001a\u0004\u0018\u00010\u0015HÆ\u0003¢\u0006\u0004\b=\u00107J\u0016\u0010>\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000fHÆ\u0003¢\u0006\u0004\b>\u00101Jò\u0001\u0010?\u001a\u00020\u00002\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u000b2\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0010\b\u0002\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000f2\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00172\n\b\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00132\n\b\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00152\n\b\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00152\u000e\b\u0002\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000fHÆ\u0001¢\u0006\u0004\b?\u0010@J\u0010\u0010A\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\bA\u0010$J\u0010\u0010B\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\bB\u0010CJ\u001a\u0010F\u001a\u00020\u00152\b\u0010E\u001a\u0004\u0018\u00010DHÖ\u0003¢\u0006\u0004\bF\u0010GJ\u0010\u0010H\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\bH\u0010CJ \u0010M\u001a\u00020L2\u0006\u0010J\u001a\u00020I2\u0006\u0010K\u001a\u00020\u0013HÖ\u0001¢\u0006\u0004\bM\u0010NR$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0003\u0010O\u001a\u0004\bP\u0010$\"\u0004\bQ\u0010RR$\u0010\u0004\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010O\u001a\u0004\bS\u0010$\"\u0004\bT\u0010RR$\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0006\u0010U\u001a\u0004\bV\u0010'\"\u0004\bW\u0010XR$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010Y\u001a\u0004\bZ\u0010)\"\u0004\b[\u0010\\R$\u0010\n\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\n\u0010]\u001a\u0004\b^\u0010+\"\u0004\b_\u0010`R$\u0010\f\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010a\u001a\u0004\bb\u0010-\"\u0004\bc\u0010dR$\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010e\u001a\u0004\bf\u0010/\"\u0004\bg\u0010hR*\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010i\u001a\u0004\bj\u00101\"\u0004\bk\u0010lR$\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0011\u0010O\u001a\u0004\bm\u0010$\"\u0004\bn\u0010RR$\u0010\u0012\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010O\u001a\u0004\bo\u0010$\"\u0004\bp\u0010RR$\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0014\u0010q\u001a\u0004\br\u00105\"\u0004\bs\u0010tR$\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010u\u001a\u0004\b\u0016\u00107\"\u0004\bv\u0010wR$\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010x\u001a\u0004\by\u00109\"\u0004\bz\u0010{R$\u0010\u0019\u001a\u0004\u0018\u00010\u00138\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010q\u001a\u0004\b|\u00105\"\u0004\b}\u0010tR$\u0010\u001a\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001a\u0010O\u001a\u0004\b~\u0010$\"\u0004\b\u007f\u0010RR%\u0010\u001b\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0013\n\u0004\b\u001b\u0010u\u001a\u0004\b\u001b\u00107\"\u0005\b\u0080\u0001\u0010wR%\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e¢\u0006\u0013\n\u0004\b\u001c\u0010u\u001a\u0004\b\u001c\u00107\"\u0005\b\u0081\u0001\u0010wR*\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u001d0\u000f8\u0006@\u0006X\u0086\u000e¢\u0006\u0014\n\u0004\b\u001e\u0010i\u001a\u0005\b\u0082\u0001\u00101\"\u0005\b\u0083\u0001\u0010l¨\u0006\u0084\u0001"}, d2 = {"Lcom/cloud/hisavana/sdk/common/bean/VastData;", "Landroid/os/Parcelable;", "", TtmlNode.ATTR_ID, "title", "Lcom/cloud/hisavana/sdk/common/bean/VastIcon;", "icon", "Lcom/cloud/hisavana/sdk/common/bean/VastTracking;", "vastTrack", "Lcom/cloud/hisavana/sdk/common/bean/VastClick;", "vastClick", "Lcom/cloud/hisavana/sdk/common/bean/VastMedia;", "mainAd", "Lcom/cloud/hisavana/sdk/common/bean/VideoMask;", "videoMask", "", AdSDKNotificationListener.IMPRESSION_EVENT, "version", "description", "", "duration", "", "isCached", "Lcom/cloud/hisavana/sdk/common/bean/ProgressData;", "progressData", "skipOffSet", "buttonTxt", "isVideoType", "isVideoCached", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;", "adVerifications", MethodDecl.initName, "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V", "checkVast", "()Z", "component1", "()Ljava/lang/String;", "component2", "component3", "()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;", "component4", "()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;", "component5", "()Lcom/cloud/hisavana/sdk/common/bean/VastClick;", "component6", "()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;", "component7", "()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;", "component8", "()Ljava/util/List;", "component9", "component10", "component11", "()Ljava/lang/Integer;", "component12", "()Ljava/lang/Boolean;", "component13", "()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;", "component14", "component15", "component16", "component17", "component18", "copy", "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/hisavana/sdk/common/bean/VastData;", "toString", "hashCode", "()I", "", "other", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Lzfb;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getId", "setId", "(Ljava/lang/String;)V", "getTitle", "setTitle", "Lcom/cloud/hisavana/sdk/common/bean/VastIcon;", "getIcon", "setIcon", "(Lcom/cloud/hisavana/sdk/common/bean/VastIcon;)V", "Lcom/cloud/hisavana/sdk/common/bean/VastTracking;", "getVastTrack", "setVastTrack", "(Lcom/cloud/hisavana/sdk/common/bean/VastTracking;)V", "Lcom/cloud/hisavana/sdk/common/bean/VastClick;", "getVastClick", "setVastClick", "(Lcom/cloud/hisavana/sdk/common/bean/VastClick;)V", "Lcom/cloud/hisavana/sdk/common/bean/VastMedia;", "getMainAd", "setMainAd", "(Lcom/cloud/hisavana/sdk/common/bean/VastMedia;)V", "Lcom/cloud/hisavana/sdk/common/bean/VideoMask;", "getVideoMask", "setVideoMask", "(Lcom/cloud/hisavana/sdk/common/bean/VideoMask;)V", "Ljava/util/List;", "getImpression", "setImpression", "(Ljava/util/List;)V", "getVersion", "setVersion", "getDescription", "setDescription", "Ljava/lang/Integer;", "getDuration", "setDuration", "(Ljava/lang/Integer;)V", "Ljava/lang/Boolean;", "setCached", "(Ljava/lang/Boolean;)V", "Lcom/cloud/hisavana/sdk/common/bean/ProgressData;", "getProgressData", "setProgressData", "(Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V", "getSkipOffSet", "setSkipOffSet", "getButtonTxt", "setButtonTxt", "setVideoType", "setVideoCached", "getAdVerifications", "setAdVerifications", "api_release"}, k = 1, mv = {1, 9, 0}, xi = 48)
public final class VastData implements Parcelable {
    public static final Parcelable.Creator<VastData> CREATOR = new Creator();
    private List<AdsProtocolBean.OmIdData> adVerifications;
    private String buttonTxt;
    private String description;
    private Integer duration;
    private VastIcon icon;
    private String id;
    private List<String> impression;
    private Boolean isCached;
    private Boolean isVideoCached;
    private Boolean isVideoType;
    private VastMedia mainAd;
    private ProgressData progressData;
    private Integer skipOffSet;
    private String title;
    private VastClick vastClick;
    private VastTracking vastTrack;
    private String version;
    private VideoMask videoMask;

    @Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<VastData> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VastData createFromParcel(Parcel parcel) {
            Boolean boolValueOf;
            Boolean boolValueOf2;
            Boolean boolValueOf3;
            y45.j(parcel, "parcel");
            String string = parcel.readString();
            String string2 = parcel.readString();
            VastIcon vastIconCreateFromParcel = parcel.readInt() == 0 ? null : VastIcon.CREATOR.createFromParcel(parcel);
            VastTracking vastTrackingCreateFromParcel = parcel.readInt() == 0 ? null : VastTracking.CREATOR.createFromParcel(parcel);
            VastClick vastClickCreateFromParcel = parcel.readInt() == 0 ? null : VastClick.CREATOR.createFromParcel(parcel);
            VastMedia vastMediaCreateFromParcel = parcel.readInt() == 0 ? null : VastMedia.CREATOR.createFromParcel(parcel);
            VideoMask videoMaskCreateFromParcel = parcel.readInt() == 0 ? null : VideoMask.CREATOR.createFromParcel(parcel);
            ArrayList<String> arrayListCreateStringArrayList = parcel.createStringArrayList();
            String string3 = parcel.readString();
            String string4 = parcel.readString();
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            int i = 0;
            if (parcel.readInt() == 0) {
                boolValueOf = null;
            } else {
                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
            }
            ProgressData progressDataCreateFromParcel = parcel.readInt() == 0 ? null : ProgressData.CREATOR.createFromParcel(parcel);
            Integer numValueOf2 = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            String string5 = parcel.readString();
            if (parcel.readInt() == 0) {
                boolValueOf2 = null;
            } else {
                boolValueOf2 = Boolean.valueOf(parcel.readInt() != 0);
            }
            if (parcel.readInt() == 0) {
                boolValueOf3 = null;
            } else {
                boolValueOf3 = Boolean.valueOf(parcel.readInt() != 0);
            }
            int i2 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i2);
            while (i != i2) {
                arrayList.add(parcel.readParcelable(VastData.class.getClassLoader()));
                i++;
                i2 = i2;
            }
            return new VastData(string, string2, vastIconCreateFromParcel, vastTrackingCreateFromParcel, vastClickCreateFromParcel, vastMediaCreateFromParcel, videoMaskCreateFromParcel, arrayListCreateStringArrayList, string3, string4, numValueOf, boolValueOf, progressDataCreateFromParcel, numValueOf2, string5, boolValueOf2, boolValueOf3, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public final VastData[] newArray(int i) {
            return new VastData[i];
        }
    }

    public VastData() {
        this(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 262143, null);
    }

    public final boolean checkVast() {
        VastMedia vastMedia = this.mainAd;
        return !TextUtils.isEmpty(vastMedia != null ? vastMedia.getMediaResource() : null);
    }

    public final String getId() {
        return this.id;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Integer getDuration() {
        return this.duration;
    }

    public final Boolean getIsCached() {
        return this.isCached;
    }

    public final ProgressData getProgressData() {
        return this.progressData;
    }

    public final Integer getSkipOffSet() {
        return this.skipOffSet;
    }

    public final String getButtonTxt() {
        return this.buttonTxt;
    }

    public final Boolean getIsVideoType() {
        return this.isVideoType;
    }

    public final Boolean getIsVideoCached() {
        return this.isVideoCached;
    }

    public final List<AdsProtocolBean.OmIdData> component18() {
        return this.adVerifications;
    }

    public final String getTitle() {
        return this.title;
    }

    public final VastIcon getIcon() {
        return this.icon;
    }

    public final VastTracking getVastTrack() {
        return this.vastTrack;
    }

    public final VastClick getVastClick() {
        return this.vastClick;
    }

    public final VastMedia getMainAd() {
        return this.mainAd;
    }

    public final VideoMask getVideoMask() {
        return this.videoMask;
    }

    public final List<String> component8() {
        return this.impression;
    }

    public final String getVersion() {
        return this.version;
    }

    public final VastData copy(String id, String title, VastIcon icon, VastTracking vastTrack, VastClick vastClick, VastMedia mainAd, VideoMask videoMask, List<String> impression, String version, String description, Integer duration, Boolean isCached, ProgressData progressData, Integer skipOffSet, String buttonTxt, Boolean isVideoType, Boolean isVideoCached, List<AdsProtocolBean.OmIdData> adVerifications) {
        y45.j(adVerifications, "adVerifications");
        return new VastData(id, title, icon, vastTrack, vastClick, mainAd, videoMask, impression, version, description, duration, isCached, progressData, skipOffSet, buttonTxt, isVideoType, isVideoCached, adVerifications);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof VastData)) {
            return false;
        }
        VastData vastData = (VastData) other;
        return y45.e(this.id, vastData.id) && y45.e(this.title, vastData.title) && y45.e(this.icon, vastData.icon) && y45.e(this.vastTrack, vastData.vastTrack) && y45.e(this.vastClick, vastData.vastClick) && y45.e(this.mainAd, vastData.mainAd) && y45.e(this.videoMask, vastData.videoMask) && y45.e(this.impression, vastData.impression) && y45.e(this.version, vastData.version) && y45.e(this.description, vastData.description) && y45.e(this.duration, vastData.duration) && y45.e(this.isCached, vastData.isCached) && y45.e(this.progressData, vastData.progressData) && y45.e(this.skipOffSet, vastData.skipOffSet) && y45.e(this.buttonTxt, vastData.buttonTxt) && y45.e(this.isVideoType, vastData.isVideoType) && y45.e(this.isVideoCached, vastData.isVideoCached) && y45.e(this.adVerifications, vastData.adVerifications);
    }

    public final List<AdsProtocolBean.OmIdData> getAdVerifications() {
        return this.adVerifications;
    }

    public final String getButtonTxt() {
        return this.buttonTxt;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Integer getDuration() {
        return this.duration;
    }

    public final VastIcon getIcon() {
        return this.icon;
    }

    public final String getId() {
        return this.id;
    }

    public final List<String> getImpression() {
        return this.impression;
    }

    public final VastMedia getMainAd() {
        return this.mainAd;
    }

    public final ProgressData getProgressData() {
        return this.progressData;
    }

    public final Integer getSkipOffSet() {
        return this.skipOffSet;
    }

    public final String getTitle() {
        return this.title;
    }

    public final VastClick getVastClick() {
        return this.vastClick;
    }

    public final VastTracking getVastTrack() {
        return this.vastTrack;
    }

    public final String getVersion() {
        return this.version;
    }

    public final VideoMask getVideoMask() {
        return this.videoMask;
    }

    public int hashCode() {
        String str = this.id;
        int iHashCode = (str == null ? 0 : str.hashCode()) * 31;
        String str2 = this.title;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        VastIcon vastIcon = this.icon;
        int iHashCode3 = (iHashCode2 + (vastIcon == null ? 0 : vastIcon.hashCode())) * 31;
        VastTracking vastTracking = this.vastTrack;
        int iHashCode4 = (iHashCode3 + (vastTracking == null ? 0 : vastTracking.hashCode())) * 31;
        VastClick vastClick = this.vastClick;
        int iHashCode5 = (iHashCode4 + (vastClick == null ? 0 : vastClick.hashCode())) * 31;
        VastMedia vastMedia = this.mainAd;
        int iHashCode6 = (iHashCode5 + (vastMedia == null ? 0 : vastMedia.hashCode())) * 31;
        VideoMask videoMask = this.videoMask;
        int iHashCode7 = (iHashCode6 + (videoMask == null ? 0 : videoMask.hashCode())) * 31;
        List<String> list = this.impression;
        int iHashCode8 = (iHashCode7 + (list == null ? 0 : list.hashCode())) * 31;
        String str3 = this.version;
        int iHashCode9 = (iHashCode8 + (str3 == null ? 0 : str3.hashCode())) * 31;
        String str4 = this.description;
        int iHashCode10 = (iHashCode9 + (str4 == null ? 0 : str4.hashCode())) * 31;
        Integer num = this.duration;
        int iHashCode11 = (iHashCode10 + (num == null ? 0 : num.hashCode())) * 31;
        Boolean bool = this.isCached;
        int iHashCode12 = (iHashCode11 + (bool == null ? 0 : bool.hashCode())) * 31;
        ProgressData progressData = this.progressData;
        int iHashCode13 = (iHashCode12 + (progressData == null ? 0 : progressData.hashCode())) * 31;
        Integer num2 = this.skipOffSet;
        int iHashCode14 = (iHashCode13 + (num2 == null ? 0 : num2.hashCode())) * 31;
        String str5 = this.buttonTxt;
        int iHashCode15 = (iHashCode14 + (str5 == null ? 0 : str5.hashCode())) * 31;
        Boolean bool2 = this.isVideoType;
        int iHashCode16 = (iHashCode15 + (bool2 == null ? 0 : bool2.hashCode())) * 31;
        Boolean bool3 = this.isVideoCached;
        return ((iHashCode16 + (bool3 != null ? bool3.hashCode() : 0)) * 31) + this.adVerifications.hashCode();
    }

    public final Boolean isCached() {
        return this.isCached;
    }

    public final Boolean isVideoCached() {
        return this.isVideoCached;
    }

    public final Boolean isVideoType() {
        return this.isVideoType;
    }

    public final void setAdVerifications(List<AdsProtocolBean.OmIdData> list) {
        y45.j(list, "<set-?>");
        this.adVerifications = list;
    }

    public final void setButtonTxt(String str) {
        this.buttonTxt = str;
    }

    public final void setCached(Boolean bool) {
        this.isCached = bool;
    }

    public final void setDescription(String str) {
        this.description = str;
    }

    public final void setDuration(Integer num) {
        this.duration = num;
    }

    public final void setIcon(VastIcon vastIcon) {
        this.icon = vastIcon;
    }

    public final void setId(String str) {
        this.id = str;
    }

    public final void setImpression(List<String> list) {
        this.impression = list;
    }

    public final void setMainAd(VastMedia vastMedia) {
        this.mainAd = vastMedia;
    }

    public final void setProgressData(ProgressData progressData) {
        this.progressData = progressData;
    }

    public final void setSkipOffSet(Integer num) {
        this.skipOffSet = num;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setVastClick(VastClick vastClick) {
        this.vastClick = vastClick;
    }

    public final void setVastTrack(VastTracking vastTracking) {
        this.vastTrack = vastTracking;
    }

    public final void setVersion(String str) {
        this.version = str;
    }

    public final void setVideoCached(Boolean bool) {
        this.isVideoCached = bool;
    }

    public final void setVideoMask(VideoMask videoMask) {
        this.videoMask = videoMask;
    }

    public final void setVideoType(Boolean bool) {
        this.isVideoType = bool;
    }

    public String toString() {
        return "VastData(id=" + this.id + ", title=" + this.title + ", icon=" + this.icon + ", vastTrack=" + this.vastTrack + ", vastClick=" + this.vastClick + ", mainAd=" + this.mainAd + ", videoMask=" + this.videoMask + ", impression=" + this.impression + ", version=" + this.version + ", description=" + this.description + ", duration=" + this.duration + ", isCached=" + this.isCached + ", progressData=" + this.progressData + ", skipOffSet=" + this.skipOffSet + ", buttonTxt=" + this.buttonTxt + ", isVideoType=" + this.isVideoType + ", isVideoCached=" + this.isVideoCached + ", adVerifications=" + this.adVerifications + ')';
    }

    @Override
    public void writeToParcel(Parcel parcel, int flags) {
        y45.j(parcel, "out");
        parcel.writeString(this.id);
        parcel.writeString(this.title);
        VastIcon vastIcon = this.icon;
        if (vastIcon == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            vastIcon.writeToParcel(parcel, flags);
        }
        VastTracking vastTracking = this.vastTrack;
        if (vastTracking == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            vastTracking.writeToParcel(parcel, flags);
        }
        VastClick vastClick = this.vastClick;
        if (vastClick == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            vastClick.writeToParcel(parcel, flags);
        }
        VastMedia vastMedia = this.mainAd;
        if (vastMedia == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            vastMedia.writeToParcel(parcel, flags);
        }
        VideoMask videoMask = this.videoMask;
        if (videoMask == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            videoMask.writeToParcel(parcel, flags);
        }
        parcel.writeStringList(this.impression);
        parcel.writeString(this.version);
        parcel.writeString(this.description);
        Integer num = this.duration;
        if (num == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num.intValue());
        }
        Boolean bool = this.isCached;
        if (bool == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool.booleanValue() ? 1 : 0);
        }
        ProgressData progressData = this.progressData;
        if (progressData == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            progressData.writeToParcel(parcel, flags);
        }
        Integer num2 = this.skipOffSet;
        if (num2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(num2.intValue());
        }
        parcel.writeString(this.buttonTxt);
        Boolean bool2 = this.isVideoType;
        if (bool2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool2.booleanValue() ? 1 : 0);
        }
        Boolean bool3 = this.isVideoCached;
        if (bool3 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeInt(bool3.booleanValue() ? 1 : 0);
        }
        List<AdsProtocolBean.OmIdData> list = this.adVerifications;
        parcel.writeInt(list.size());
        Iterator<AdsProtocolBean.OmIdData> it = list.iterator();
        while (it.hasNext()) {
            parcel.writeParcelable(it.next(), flags);
        }
    }

    public VastData(String str, String str2, VastIcon vastIcon, VastTracking vastTracking, VastClick vastClick, VastMedia vastMedia, VideoMask videoMask, List<String> list, String str3, String str4, Integer num, Boolean bool, ProgressData progressData, Integer num2, String str5, Boolean bool2, Boolean bool3, List<AdsProtocolBean.OmIdData> list2) {
        y45.j(list2, "adVerifications");
        this.id = str;
        this.title = str2;
        this.icon = vastIcon;
        this.vastTrack = vastTracking;
        this.vastClick = vastClick;
        this.mainAd = vastMedia;
        this.videoMask = videoMask;
        this.impression = list;
        this.version = str3;
        this.description = str4;
        this.duration = num;
        this.isCached = bool;
        this.progressData = progressData;
        this.skipOffSet = num2;
        this.buttonTxt = str5;
        this.isVideoType = bool2;
        this.isVideoCached = bool3;
        this.adVerifications = list2;
    }

    public VastData(String str, String str2, VastIcon vastIcon, VastTracking vastTracking, VastClick vastClick, VastMedia vastMedia, VideoMask videoMask, List list, String str3, String str4, Integer num, Boolean bool, ProgressData progressData, Integer num2, String str5, Boolean bool2, Boolean bool3, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : vastIcon, (i & 8) != 0 ? null : vastTracking, (i & 16) != 0 ? null : vastClick, (i & 32) != 0 ? null : vastMedia, (i & 64) != 0 ? null : videoMask, (i & 128) != 0 ? new ArrayList() : list, (i & 256) != 0 ? null : str3, (i & 512) != 0 ? null : str4, (i & 1024) != 0 ? null : num, (i & 2048) != 0 ? Boolean.FALSE : bool, (i & 4096) != 0 ? null : progressData, (i & 8192) != 0 ? 0 : num2, (i & 16384) != 0 ? null : str5, (i & 32768) != 0 ? Boolean.TRUE : bool2, (i & 65536) != 0 ? Boolean.FALSE : bool3, (i & 131072) != 0 ? new ArrayList() : list2);
    }
}
