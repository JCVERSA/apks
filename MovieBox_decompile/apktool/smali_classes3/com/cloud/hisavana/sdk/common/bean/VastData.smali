.class public final Lcom/cloud/hisavana/sdk/common/bean/VastData;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008P\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00e7\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0018\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0014\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0016\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0016\u0012\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0010\u00a2\u0006\u0002\u0010\u001fJ\u0006\u0010W\u001a\u00020\u0016J\u000b\u0010X\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010Y\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010Z\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u0010\u0010[\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003\u00a2\u0006\u0002\u00107J\u000b\u0010\\\u001a\u0004\u0018\u00010\u0018H\u00c6\u0003J\u0010\u0010]\u001a\u0004\u0018\u00010\u0014H\u00c6\u0003\u00a2\u0006\u0002\u0010+J\u000b\u0010^\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010_\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003\u00a2\u0006\u0002\u00107J\u0010\u0010`\u001a\u0004\u0018\u00010\u0016H\u00c6\u0003\u00a2\u0006\u0002\u00107J\u000f\u0010a\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0010H\u00c6\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u000b\u0010g\u001a\u0004\u0018\u00010\u000eH\u00c6\u0003J\u0011\u0010h\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010H\u00c6\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00f0\u0001\u0010j\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0010\u0008\u0002\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00182\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00142\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u00162\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00162\u000e\u0008\u0002\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0010H\u00c6\u0001\u00a2\u0006\u0002\u0010kJ\t\u0010l\u001a\u00020\u0014H\u00d6\u0001J\u0013\u0010m\u001a\u00020\u00162\u0008\u0010n\u001a\u0004\u0018\u00010oH\u00d6\u0003J\t\u0010p\u001a\u00020\u0014H\u00d6\u0001J\t\u0010q\u001a\u00020\u0003H\u00d6\u0001J\u0019\u0010r\u001a\u00020s2\u0006\u0010t\u001a\u00020u2\u0006\u0010v\u001a\u00020\u0014H\u00d6\u0001R \u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\u001c\u0010\u0012\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010%\"\u0004\u0008)\u0010\'R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00083\u0010%\"\u0004\u00084\u0010\'R\"\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010!\"\u0004\u00086\u0010#R\u001e\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010:\u001a\u0004\u0008\u0015\u00107\"\u0004\u00088\u00109R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010:\u001a\u0004\u0008\u001c\u00107\"\u0004\u0008;\u00109R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u0016X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010:\u001a\u0004\u0008\u001b\u00107\"\u0004\u0008<\u00109R\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010>\"\u0004\u0008?\u0010@R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008A\u0010B\"\u0004\u0008C\u0010DR\u001e\u0010\u0019\u001a\u0004\u0018\u00010\u0014X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010.\u001a\u0004\u0008E\u0010+\"\u0004\u0008F\u0010-R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u0010%\"\u0004\u0008H\u0010\'R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010J\"\u0004\u0008K\u0010LR\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Q\u0010%\"\u0004\u0008R\u0010\'R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008S\u0010T\"\u0004\u0008U\u0010V\u00a8\u0006w"
    }
    d2 = {
        "Lcom/cloud/hisavana/sdk/common/bean/VastData;",
        "Landroid/os/Parcelable;",
        "id",
        "",
        "title",
        "icon",
        "Lcom/cloud/hisavana/sdk/common/bean/VastIcon;",
        "vastTrack",
        "Lcom/cloud/hisavana/sdk/common/bean/VastTracking;",
        "vastClick",
        "Lcom/cloud/hisavana/sdk/common/bean/VastClick;",
        "mainAd",
        "Lcom/cloud/hisavana/sdk/common/bean/VastMedia;",
        "videoMask",
        "Lcom/cloud/hisavana/sdk/common/bean/VideoMask;",
        "impression",
        "",
        "version",
        "description",
        "duration",
        "",
        "isCached",
        "",
        "progressData",
        "Lcom/cloud/hisavana/sdk/common/bean/ProgressData;",
        "skipOffSet",
        "buttonTxt",
        "isVideoType",
        "isVideoCached",
        "adVerifications",
        "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V",
        "getAdVerifications",
        "()Ljava/util/List;",
        "setAdVerifications",
        "(Ljava/util/List;)V",
        "getButtonTxt",
        "()Ljava/lang/String;",
        "setButtonTxt",
        "(Ljava/lang/String;)V",
        "getDescription",
        "setDescription",
        "getDuration",
        "()Ljava/lang/Integer;",
        "setDuration",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getIcon",
        "()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;",
        "setIcon",
        "(Lcom/cloud/hisavana/sdk/common/bean/VastIcon;)V",
        "getId",
        "setId",
        "getImpression",
        "setImpression",
        "()Ljava/lang/Boolean;",
        "setCached",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "setVideoCached",
        "setVideoType",
        "getMainAd",
        "()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;",
        "setMainAd",
        "(Lcom/cloud/hisavana/sdk/common/bean/VastMedia;)V",
        "getProgressData",
        "()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;",
        "setProgressData",
        "(Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V",
        "getSkipOffSet",
        "setSkipOffSet",
        "getTitle",
        "setTitle",
        "getVastClick",
        "()Lcom/cloud/hisavana/sdk/common/bean/VastClick;",
        "setVastClick",
        "(Lcom/cloud/hisavana/sdk/common/bean/VastClick;)V",
        "getVastTrack",
        "()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;",
        "setVastTrack",
        "(Lcom/cloud/hisavana/sdk/common/bean/VastTracking;)V",
        "getVersion",
        "setVersion",
        "getVideoMask",
        "()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;",
        "setVideoMask",
        "(Lcom/cloud/hisavana/sdk/common/bean/VideoMask;)V",
        "checkVast",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/hisavana/sdk/common/bean/VastData;",
        "describeContents",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "writeToParcel",
        "",
        "parcel",
        "Landroid/os/Parcel;",
        "flags",
        "api_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cloud/hisavana/sdk/common/bean/VastData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adVerifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;"
        }
    .end annotation
.end field

.field private buttonTxt:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private duration:Ljava/lang/Integer;

.field private icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

.field private id:Ljava/lang/String;

.field private impression:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isCached:Ljava/lang/Boolean;

.field private isVideoCached:Ljava/lang/Boolean;

.field private isVideoType:Ljava/lang/Boolean;

.field private mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

.field private progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

.field private skipOffSet:Ljava/lang/Integer;

.field private title:Ljava/lang/String;

.field private vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

.field private vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

.field private version:Ljava/lang/String;

.field private videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/hisavana/sdk/common/bean/VastData$Creator;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastData$Creator;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    const v19, 0x3ffff

    const/16 v20, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    .line 1
    invoke-direct/range {v0 .. v20}, Lcom/cloud/hisavana/sdk/common/bean/VastData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastIcon;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastTracking;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastClick;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastMedia;",
            "Lcom/cloud/hisavana/sdk/common/bean/VideoMask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/cloud/hisavana/sdk/common/bean/ProgressData;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p18

    const-string v2, "adVerifications"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    .line 3
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    move-object v2, p2

    .line 4
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    move-object v2, p3

    .line 5
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    move-object v2, p4

    .line 6
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    move-object v2, p5

    .line 7
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    move-object v2, p6

    .line 8
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    move-object v2, p7

    .line 9
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    move-object v2, p8

    .line 10
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    move-object v2, p9

    .line 11
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    move-object v2, p10

    .line 12
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    move-object v2, p11

    .line 13
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    move-object v2, p12

    .line 14
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    move-object/from16 v2, p13

    .line 15
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    move-object/from16 v2, p14

    .line 16
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    move-object/from16 v2, p15

    .line 17
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    move-object/from16 v2, p16

    .line 18
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    move-object/from16 v2, p17

    .line 19
    iput-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    .line 20
    iput-object v1, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    .line 21
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const/4 v10, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const/4 v12, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    .line 22
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const/4 v14, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v0, 0x2000

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    .line 23
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    .line 24
    sget-object v16, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    .line 25
    sget-object v17, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v0, v0, v18

    if-eqz v0, :cond_11

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_11

    :cond_11
    move-object/from16 v0, p18

    :goto_11
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v2

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v0

    .line 27
    invoke-direct/range {p1 .. p19}, Lcom/cloud/hisavana/sdk/common/bean/VastData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/hisavana/sdk/common/bean/VastData;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;ILjava/lang/Object;)Lcom/cloud/hisavana/sdk/common/bean/VastData;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p19

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move-object/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v1, v1, v16

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p18

    :goto_11
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p17, v15

    move-object/from16 p18, v1

    invoke-virtual/range {p0 .. p18}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final checkVast()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->getMediaResource()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0

    .line 19
    :cond_1
    const/4 v0, 0x1

    .line 20
    return v0
.end method

.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Lcom/cloud/hisavana/sdk/common/bean/VastClick;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)Lcom/cloud/hisavana/sdk/common/bean/VastData;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastIcon;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastTracking;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastClick;",
            "Lcom/cloud/hisavana/sdk/common/bean/VastMedia;",
            "Lcom/cloud/hisavana/sdk/common/bean/VideoMask;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lcom/cloud/hisavana/sdk/common/bean/ProgressData;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;)",
            "Lcom/cloud/hisavana/sdk/common/bean/VastData;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move-object/from16 v17, p17

    move-object/from16 v18, p18

    const-string v0, "adVerifications"

    move-object/from16 v1, p18

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v19, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v18}, Lcom/cloud/hisavana/sdk/common/bean/VastData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/cloud/hisavana/sdk/common/bean/VastIcon;Lcom/cloud/hisavana/sdk/common/bean/VastTracking;Lcom/cloud/hisavana/sdk/common/bean/VastClick;Lcom/cloud/hisavana/sdk/common/bean/VastMedia;Lcom/cloud/hisavana/sdk/common/bean/VideoMask;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/cloud/hisavana/sdk/common/bean/ProgressData;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/List;)V

    return-object v19
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 36
    .line 37
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 38
    .line 39
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 47
    .line 48
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 49
    .line 50
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    .line 58
    .line 59
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    .line 60
    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_6

    .line 66
    .line 67
    return v2

    .line 68
    :cond_6
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-nez v1, :cond_7

    .line 77
    .line 78
    return v2

    .line 79
    :cond_7
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 80
    .line 81
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 82
    .line 83
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_8

    .line 88
    .line 89
    return v2

    .line 90
    :cond_8
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    .line 91
    .line 92
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    .line 93
    .line 94
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_9

    .line 99
    .line 100
    return v2

    .line 101
    :cond_9
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    .line 104
    .line 105
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-nez v1, :cond_a

    .line 110
    .line 111
    return v2

    .line 112
    :cond_a
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    .line 115
    .line 116
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_b

    .line 121
    .line 122
    return v2

    .line 123
    :cond_b
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    .line 124
    .line 125
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    .line 126
    .line 127
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_c

    .line 132
    .line 133
    return v2

    .line 134
    :cond_c
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    .line 135
    .line 136
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    .line 137
    .line 138
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-nez v1, :cond_d

    .line 143
    .line 144
    return v2

    .line 145
    :cond_d
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 146
    .line 147
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 148
    .line 149
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-nez v1, :cond_e

    .line 154
    .line 155
    return v2

    .line 156
    :cond_e
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    .line 157
    .line 158
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    .line 159
    .line 160
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_f

    .line 165
    .line 166
    return v2

    .line 167
    :cond_f
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    .line 168
    .line 169
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 172
    .line 173
    .line 174
    move-result v1

    .line 175
    if-nez v1, :cond_10

    .line 176
    .line 177
    return v2

    .line 178
    :cond_10
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    .line 179
    .line 180
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    .line 181
    .line 182
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-nez v1, :cond_11

    .line 187
    .line 188
    return v2

    .line 189
    :cond_11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    .line 190
    .line 191
    iget-object v3, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    .line 192
    .line 193
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-nez v1, :cond_12

    .line 198
    .line 199
    return v2

    .line 200
    :cond_12
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    .line 201
    .line 202
    iget-object p1, p1, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    .line 203
    .line 204
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_13

    .line 209
    .line 210
    return v2

    .line 211
    :cond_13
    return v0
.end method

.method public final getAdVerifications()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getButtonTxt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDuration()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIcon()Lcom/cloud/hisavana/sdk/common/bean/VastIcon;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImpression()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMainAd()Lcom/cloud/hisavana/sdk/common/bean/VastMedia;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProgressData()Lcom/cloud/hisavana/sdk/common/bean/ProgressData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSkipOffSet()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVastClick()Lcom/cloud/hisavana/sdk/common/bean/VastClick;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVastTrack()Lcom/cloud/hisavana/sdk/common/bean/VastTracking;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    move v2, v1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 28
    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    move v2, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 41
    .line 42
    if-nez v2, :cond_3

    .line 43
    .line 44
    move v2, v1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    :goto_3
    add-int/2addr v0, v2

    .line 51
    mul-int/lit8 v0, v0, 0x1f

    .line 52
    .line 53
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    .line 54
    .line 55
    if-nez v2, :cond_4

    .line 56
    .line 57
    move v2, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_4
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastClick;->hashCode()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    :goto_4
    add-int/2addr v0, v2

    .line 64
    mul-int/lit8 v0, v0, 0x1f

    .line 65
    .line 66
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 67
    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    move v2, v1

    .line 71
    goto :goto_5

    .line 72
    :cond_5
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->hashCode()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    :goto_5
    add-int/2addr v0, v2

    .line 77
    mul-int/lit8 v0, v0, 0x1f

    .line 78
    .line 79
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v2, v1

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    :goto_6
    add-int/2addr v0, v2

    .line 90
    mul-int/lit8 v0, v0, 0x1f

    .line 91
    .line 92
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    .line 93
    .line 94
    if-nez v2, :cond_7

    .line 95
    .line 96
    move v2, v1

    .line 97
    goto :goto_7

    .line 98
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    :goto_7
    add-int/2addr v0, v2

    .line 103
    mul-int/lit8 v0, v0, 0x1f

    .line 104
    .line 105
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    .line 106
    .line 107
    if-nez v2, :cond_8

    .line 108
    .line 109
    move v2, v1

    .line 110
    goto :goto_8

    .line 111
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    :goto_8
    add-int/2addr v0, v2

    .line 116
    mul-int/lit8 v0, v0, 0x1f

    .line 117
    .line 118
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    .line 119
    .line 120
    if-nez v2, :cond_9

    .line 121
    .line 122
    move v2, v1

    .line 123
    goto :goto_9

    .line 124
    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    :goto_9
    add-int/2addr v0, v2

    .line 129
    mul-int/lit8 v0, v0, 0x1f

    .line 130
    .line 131
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    .line 132
    .line 133
    if-nez v2, :cond_a

    .line 134
    .line 135
    move v2, v1

    .line 136
    goto :goto_a

    .line 137
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    :goto_a
    add-int/2addr v0, v2

    .line 142
    mul-int/lit8 v0, v0, 0x1f

    .line 143
    .line 144
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    .line 145
    .line 146
    if-nez v2, :cond_b

    .line 147
    .line 148
    move v2, v1

    .line 149
    goto :goto_b

    .line 150
    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    :goto_b
    add-int/2addr v0, v2

    .line 155
    mul-int/lit8 v0, v0, 0x1f

    .line 156
    .line 157
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 158
    .line 159
    if-nez v2, :cond_c

    .line 160
    .line 161
    move v2, v1

    .line 162
    goto :goto_c

    .line 163
    :cond_c
    invoke-virtual {v2}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->hashCode()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :goto_c
    add-int/2addr v0, v2

    .line 168
    mul-int/lit8 v0, v0, 0x1f

    .line 169
    .line 170
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    .line 171
    .line 172
    if-nez v2, :cond_d

    .line 173
    .line 174
    move v2, v1

    .line 175
    goto :goto_d

    .line 176
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    :goto_d
    add-int/2addr v0, v2

    .line 181
    mul-int/lit8 v0, v0, 0x1f

    .line 182
    .line 183
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    .line 184
    .line 185
    if-nez v2, :cond_e

    .line 186
    .line 187
    move v2, v1

    .line 188
    goto :goto_e

    .line 189
    :cond_e
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    :goto_e
    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    .line 195
    .line 196
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    .line 197
    .line 198
    if-nez v2, :cond_f

    .line 199
    .line 200
    move v2, v1

    .line 201
    goto :goto_f

    .line 202
    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    :goto_f
    add-int/2addr v0, v2

    .line 207
    mul-int/lit8 v0, v0, 0x1f

    .line 208
    .line 209
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    .line 210
    .line 211
    if-nez v2, :cond_10

    .line 212
    .line 213
    goto :goto_10

    .line 214
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    :goto_10
    add-int/2addr v0, v1

    .line 219
    mul-int/lit8 v0, v0, 0x1f

    .line 220
    .line 221
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    .line 222
    .line 223
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 224
    .line 225
    .line 226
    move-result v1

    .line 227
    add-int/2addr v0, v1

    .line 228
    return v0
.end method

.method public final isCached()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isVideoCached()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isVideoType()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAdVerifications(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean$OmIdData;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setButtonTxt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCached(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setDuration(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setIcon(Lcom/cloud/hisavana/sdk/common/bean/VastIcon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 2
    .line 3
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setImpression(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setMainAd(Lcom/cloud/hisavana/sdk/common/bean/VastMedia;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 2
    .line 3
    return-void
.end method

.method public final setProgressData(Lcom/cloud/hisavana/sdk/common/bean/ProgressData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 2
    .line 3
    return-void
.end method

.method public final setSkipOffSet(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVastClick(Lcom/cloud/hisavana/sdk/common/bean/VastClick;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    .line 2
    .line 3
    return-void
.end method

.method public final setVastTrack(Lcom/cloud/hisavana/sdk/common/bean/VastTracking;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 2
    .line 3
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideoCached(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideoMask(Lcom/cloud/hisavana/sdk/common/bean/VideoMask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 2
    .line 3
    return-void
.end method

.method public final setVideoType(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "VastData(id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", title="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", icon="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", vastTrack="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", vastClick="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", mainAd="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", videoMask="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", impression="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", version="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", description="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", duration="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", isCached="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", progressData="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", skipOffSet="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", buttonTxt="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", isVideoType="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", isVideoCached="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", adVerifications="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const/16 v1, 0x29

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->id:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->title:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->icon:Lcom/cloud/hisavana/sdk/common/bean/VastIcon;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastIcon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastTrack:Lcom/cloud/hisavana/sdk/common/bean/VastTracking;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastTracking;->writeToParcel(Landroid/os/Parcel;I)V

    .line 44
    .line 45
    .line 46
    :goto_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->vastClick:Lcom/cloud/hisavana/sdk/common/bean/VastClick;

    .line 47
    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastClick;->writeToParcel(Landroid/os/Parcel;I)V

    .line 58
    .line 59
    .line 60
    :goto_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->mainAd:Lcom/cloud/hisavana/sdk/common/bean/VastMedia;

    .line 61
    .line 62
    if-nez v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_3

    .line 68
    :cond_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VastMedia;->writeToParcel(Landroid/os/Parcel;I)V

    .line 72
    .line 73
    .line 74
    :goto_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->videoMask:Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 75
    .line 76
    if-nez v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 86
    .line 87
    .line 88
    :goto_4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->impression:Ljava/util/List;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->version:Ljava/lang/String;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->description:Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->duration:Ljava/lang/Integer;

    .line 104
    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_5
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    .line 120
    .line 121
    :goto_5
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isCached:Ljava/lang/Boolean;

    .line 122
    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    .line 138
    .line 139
    :goto_6
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->progressData:Lcom/cloud/hisavana/sdk/common/bean/ProgressData;

    .line 140
    .line 141
    if-nez v0, :cond_7

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_7

    .line 147
    :cond_7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/ProgressData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 151
    .line 152
    .line 153
    :goto_7
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->skipOffSet:Ljava/lang/Integer;

    .line 154
    .line 155
    if-nez v0, :cond_8

    .line 156
    .line 157
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    .line 159
    .line 160
    goto :goto_8

    .line 161
    :cond_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    .line 170
    .line 171
    :goto_8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->buttonTxt:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoType:Ljava/lang/Boolean;

    .line 177
    .line 178
    if-nez v0, :cond_9

    .line 179
    .line 180
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_9

    .line 184
    :cond_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    .line 193
    .line 194
    :goto_9
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->isVideoCached:Ljava/lang/Boolean;

    .line 195
    .line 196
    if-nez v0, :cond_a

    .line 197
    .line 198
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_a

    .line 202
    :cond_a
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    .line 211
    .line 212
    :goto_a
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/common/bean/VastData;->adVerifications:Ljava/util/List;

    .line 213
    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    .line 220
    .line 221
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_b

    .line 230
    .line 231
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    check-cast v1, Landroid/os/Parcelable;

    .line 236
    .line 237
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 238
    .line 239
    .line 240
    goto :goto_b

    .line 241
    :cond_b
    return-void
.end method
