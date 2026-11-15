.class public final Lcom/transsion/moviedetailapi/DownloadItem;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008;\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u00a9\u0001\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e\u0012\u0006\u0010\u0010\u001a\u00020\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u0007\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0013\u0010J\u001a\u00020K2\u0008\u0010L\u001a\u0004\u0018\u00010MH\u0096\u0002J\u0008\u0010N\u001a\u00020\u0007H\u0016J\u0006\u0010O\u001a\u00020PJ\u000b\u0010Q\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010R\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010S\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010T\u001a\u00020\u0007H\u00c6\u0003J\u0010\u0010U\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010&J\u000b\u0010V\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010W\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010X\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u00101J\u0011\u0010Y\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000eH\u00c6\u0003J\t\u0010Z\u001a\u00020\u0007H\u00c6\u0003J\t\u0010[\u001a\u00020\u0007H\u00c6\u0003J\u0010\u0010\\\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u00101J\u000b\u0010]\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010^\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u00101J\u0010\u0010_\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u00101J\u000b\u0010`\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u00ce\u0001\u0010a\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u0010\u0008\u0002\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00072\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010bJ\t\u0010c\u001a\u00020\u0003H\u00d6\u0001R \u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR \u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001a\"\u0004\u0008\u001e\u0010\u001cR \u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010\u001a\"\u0004\u0008 \u0010\u001cR\u001e\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\"\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010)\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R \u0010\n\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010\u001a\"\u0004\u0008+\u0010\u001cR \u0010\u000b\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u001a\"\u0004\u0008-\u0010\u001cR(\u0010\u000c\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0016\n\u0002\u00104\u0012\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101\"\u0004\u00082\u00103R&\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u000f\u0018\u00010\u000e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R\u001e\u0010\u0010\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00089\u0010\"\"\u0004\u0008:\u0010$R\u001e\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\"\"\u0004\u0008<\u0010$R\u001e\u0010\u0012\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00104\u001a\u0004\u0008=\u00101\"\u0004\u0008>\u00103R \u0010\u0013\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008?\u0010\u001a\"\u0004\u0008@\u0010\u001cR\"\u0010\u0014\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00104\u001a\u0004\u0008A\u00101\"\u0004\u0008B\u00103R\"\u0010\u0015\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u00104\u001a\u0004\u0008C\u00101\"\u0004\u0008D\u00103R \u0010\u0016\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008E\u0010\u001a\"\u0004\u0008F\u0010\u001cR\"\u0010G\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0010\n\u0002\u0010)\u001a\u0004\u0008H\u0010&\"\u0004\u0008I\u0010(\u00a8\u0006d"
    }
    d2 = {
        "Lcom/transsion/moviedetailapi/DownloadItem;",
        "Ljava/io/Serializable;",
        "resourceId",
        "",
        "name",
        "url",
        "linkType",
        "",
        "size",
        "",
        "uploadBy",
        "postId",
        "epse",
        "extSubtitle",
        "",
        "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
        "se",
        "ep",
        "status",
        "sourceUrl",
        "resolution",
        "requireMemberType",
        "memberIcon",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V",
        "getResourceId",
        "()Ljava/lang/String;",
        "setResourceId",
        "(Ljava/lang/String;)V",
        "getName",
        "setName",
        "getUrl",
        "setUrl",
        "getLinkType",
        "()I",
        "setLinkType",
        "(I)V",
        "getSize",
        "()Ljava/lang/Long;",
        "setSize",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "getUploadBy",
        "setUploadBy",
        "getPostId",
        "setPostId",
        "getEpse$annotations",
        "()V",
        "getEpse",
        "()Ljava/lang/Integer;",
        "setEpse",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getExtSubtitle",
        "()Ljava/util/List;",
        "setExtSubtitle",
        "(Ljava/util/List;)V",
        "getSe",
        "setSe",
        "getEp",
        "setEp",
        "getStatus",
        "setStatus",
        "getSourceUrl",
        "setSourceUrl",
        "getResolution",
        "setResolution",
        "getRequireMemberType",
        "setRequireMemberType",
        "getMemberIcon",
        "setMemberIcon",
        "duration",
        "getDuration",
        "setDuration",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toDownloadBean",
        "Lcom/transsion/baselib/db/download/DownloadBean;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/moviedetailapi/DownloadItem;",
        "toString",
        "MovieDetailApi_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private duration:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private ep:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ep"
    .end annotation
.end field

.field private epse:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "episode"
    .end annotation
.end field

.field private extSubtitle:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "extCaptions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation
.end field

.field private linkType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "linkType"
    .end annotation
.end field

.field private memberIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "memberIcon"
    .end annotation
.end field

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private postId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "postId"
    .end annotation
.end field

.field private requireMemberType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "requireMemberType"
    .end annotation
.end field

.field private resolution:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resolution"
    .end annotation
.end field

.field private resourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resourceId"
    .end annotation
.end field

.field private se:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "se"
    .end annotation
.end field

.field private size:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "size"
    .end annotation
.end field

.field private sourceUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sourceUrl"
    .end annotation
.end field

.field private transient status:Ljava/lang/Integer;

.field private uploadBy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uploadBy"
    .end annotation
.end field

.field private url:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resourceLink"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;II",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    move v1, p4

    .line 5
    iput v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    move v1, p10

    .line 11
    iput v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    move v1, p11

    .line 12
    iput v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 18

    move/from16 v0, p17

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object/from16 v9, p8

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    .line 19
    invoke-direct/range {v1 .. v17}, Lcom/transsion/moviedetailapi/DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/moviedetailapi/DownloadItem;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/moviedetailapi/DownloadItem;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget v12, v0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    goto :goto_a

    :cond_a
    move/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget-object v15, v0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    goto :goto_e

    :cond_e
    move-object/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p15, v15

    move-object/from16 p16, v1

    invoke-virtual/range {p0 .. p16}, Lcom/transsion/moviedetailapi/DownloadItem;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/moviedetailapi/DownloadItem;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getEpse$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component10()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    .line 2
    .line 3
    return v0
.end method

.method public final component11()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    .line 2
    .line 3
    return v0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lcom/transsion/moviedetailapi/DownloadItem;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;II",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ")",
            "Lcom/transsion/moviedetailapi/DownloadItem;"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move/from16 v10, p10

    .line 20
    .line 21
    move/from16 v11, p11

    .line 22
    .line 23
    move-object/from16 v12, p12

    .line 24
    .line 25
    move-object/from16 v13, p13

    .line 26
    .line 27
    move-object/from16 v14, p14

    .line 28
    .line 29
    move-object/from16 v15, p15

    .line 30
    .line 31
    move-object/from16 v16, p16

    .line 32
    .line 33
    new-instance v17, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 34
    .line 35
    move-object/from16 v0, v17

    .line 36
    .line 37
    invoke-direct/range {v0 .. v16}, Lcom/transsion/moviedetailapi/DownloadItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/List;IILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v17
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    .line 15
    .line 16
    check-cast p1, Lcom/transsion/moviedetailapi/DownloadItem;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    return v1
.end method

.method public final getDuration()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->duration:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEpse()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtSubtitle()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLinkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMemberIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPostId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequireMemberType()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResolution()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getResourceId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSe()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSize()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSourceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUploadBy()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final setDuration(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->duration:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setEp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    .line 2
    .line 3
    return-void
.end method

.method public final setEpse(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtSubtitle(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/moviedetailapi/bean/SubtitleItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setLinkType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    .line 2
    .line 3
    return-void
.end method

.method public final setMemberIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setPostId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRequireMemberType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setResolution(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setResourceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setSe(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSize(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setSourceUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setUploadBy(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final toDownloadBean()Lcom/transsion/baselib/db/download/DownloadBean;
    .locals 96

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v4, Lcom/transsion/baselib/db/download/DownloadBean;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    .line 6
    .line 7
    const-string v93, ""

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    move-object/from16 v2, v93

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v2, v1

    .line 15
    :goto_0
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    move-object/from16 v3, v93

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object v3, v1

    .line 23
    :goto_1
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    move-object/from16 v94, v93

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-object/from16 v94, v1

    .line 31
    .line 32
    :goto_2
    iget-object v6, v0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    .line 33
    .line 34
    const v91, 0xffff

    .line 35
    .line 36
    .line 37
    const/16 v92, 0x0

    .line 38
    .line 39
    const/4 v7, 0x0

    .line 40
    const/4 v8, 0x0

    .line 41
    const/4 v9, 0x0

    .line 42
    const/4 v10, 0x0

    .line 43
    const/4 v11, 0x0

    .line 44
    const-wide/16 v12, 0x0

    .line 45
    .line 46
    const/4 v14, 0x0

    .line 47
    const/4 v15, 0x0

    .line 48
    const/16 v16, 0x0

    .line 49
    .line 50
    const-wide/16 v17, 0x0

    .line 51
    .line 52
    const-wide/16 v19, 0x0

    .line 53
    .line 54
    const/16 v21, 0x0

    .line 55
    .line 56
    const/16 v22, 0x0

    .line 57
    .line 58
    const/16 v23, 0x0

    .line 59
    .line 60
    const/16 v24, 0x0

    .line 61
    .line 62
    const/16 v25, 0x0

    .line 63
    .line 64
    const/16 v26, 0x0

    .line 65
    .line 66
    const/16 v27, 0x0

    .line 67
    .line 68
    const/16 v28, 0x0

    .line 69
    .line 70
    const/16 v29, 0x0

    .line 71
    .line 72
    const/16 v30, 0x0

    .line 73
    .line 74
    const/16 v31, 0x0

    .line 75
    .line 76
    const/16 v32, 0x0

    .line 77
    .line 78
    const/16 v33, 0x0

    .line 79
    .line 80
    const/16 v34, 0x0

    .line 81
    .line 82
    const/16 v35, 0x0

    .line 83
    .line 84
    const-wide/16 v36, 0x0

    .line 85
    .line 86
    const/16 v38, 0x0

    .line 87
    .line 88
    const/16 v39, 0x0

    .line 89
    .line 90
    const/16 v40, 0x0

    .line 91
    .line 92
    const/16 v41, 0x0

    .line 93
    .line 94
    const-wide/16 v42, 0x0

    .line 95
    .line 96
    const/16 v44, 0x0

    .line 97
    .line 98
    const/16 v45, 0x0

    .line 99
    .line 100
    const-wide/16 v46, 0x0

    .line 101
    .line 102
    const/16 v48, 0x0

    .line 103
    .line 104
    const-wide/16 v49, 0x0

    .line 105
    .line 106
    const/16 v51, 0x0

    .line 107
    .line 108
    const/16 v52, 0x0

    .line 109
    .line 110
    const/16 v53, 0x0

    .line 111
    .line 112
    const/16 v54, 0x0

    .line 113
    .line 114
    const/16 v55, 0x0

    .line 115
    .line 116
    const/16 v56, 0x0

    .line 117
    .line 118
    const/16 v57, 0x0

    .line 119
    .line 120
    const/16 v58, 0x0

    .line 121
    .line 122
    const/16 v59, 0x0

    .line 123
    .line 124
    const/16 v60, 0x0

    .line 125
    .line 126
    const/16 v61, 0x0

    .line 127
    .line 128
    const/16 v62, 0x0

    .line 129
    .line 130
    const/16 v63, 0x0

    .line 131
    .line 132
    const/16 v64, 0x0

    .line 133
    .line 134
    const/16 v65, 0x0

    .line 135
    .line 136
    const/16 v66, 0x0

    .line 137
    .line 138
    const/16 v67, 0x0

    .line 139
    .line 140
    const/16 v68, 0x0

    .line 141
    .line 142
    const/16 v69, 0x0

    .line 143
    .line 144
    const/16 v70, 0x0

    .line 145
    .line 146
    const/16 v71, 0x0

    .line 147
    .line 148
    const/16 v72, 0x0

    .line 149
    .line 150
    const/16 v73, 0x0

    .line 151
    .line 152
    const/16 v74, 0x0

    .line 153
    .line 154
    const/16 v75, 0x0

    .line 155
    .line 156
    const/16 v76, 0x0

    .line 157
    .line 158
    const/16 v77, 0x0

    .line 159
    .line 160
    const/16 v78, 0x0

    .line 161
    .line 162
    const/16 v79, 0x0

    .line 163
    .line 164
    const/16 v80, 0x0

    .line 165
    .line 166
    const/16 v81, 0x0

    .line 167
    .line 168
    const/16 v82, 0x0

    .line 169
    .line 170
    const/16 v83, 0x0

    .line 171
    .line 172
    const/16 v84, 0x0

    .line 173
    .line 174
    const/16 v85, 0x0

    .line 175
    .line 176
    const/16 v86, 0x0

    .line 177
    .line 178
    const/16 v87, 0x0

    .line 179
    .line 180
    const/16 v88, 0x0

    .line 181
    .line 182
    const/16 v89, -0x20

    .line 183
    .line 184
    const/16 v90, -0x1

    .line 185
    .line 186
    const-string v5, ""

    .line 187
    .line 188
    move-object v1, v4

    .line 189
    move-object/from16 v95, v4

    .line 190
    .line 191
    move-object/from16 v4, v94

    .line 192
    .line 193
    invoke-direct/range {v1 .. v92}, Lcom/transsion/baselib/db/download/DownloadBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;JIIIJJIIIIIIIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JIJLjava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZILjava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    .line 197
    .line 198
    if-nez v1, :cond_3

    .line 199
    .line 200
    move-object/from16 v1, v93

    .line 201
    .line 202
    :cond_3
    move-object/from16 v2, v95

    .line 203
    .line 204
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setUploadBy(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    .line 208
    .line 209
    if-nez v1, :cond_4

    .line 210
    .line 211
    move-object/from16 v1, v93

    .line 212
    .line 213
    :cond_4
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSourceUrl(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    .line 217
    .line 218
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setPostId(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    .line 222
    .line 223
    const/4 v3, 0x0

    .line 224
    if-eqz v1, :cond_5

    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    goto :goto_3

    .line 231
    :cond_5
    move v1, v3

    .line 232
    :goto_3
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setEpse(I)V

    .line 233
    .line 234
    .line 235
    iget v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    .line 236
    .line 237
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setEp(I)V

    .line 238
    .line 239
    .line 240
    iget v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    .line 241
    .line 242
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setSe(I)V

    .line 243
    .line 244
    .line 245
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->duration:Ljava/lang/Long;

    .line 246
    .line 247
    invoke-virtual {v2, v1}, Lcom/transsion/baselib/db/download/DownloadBean;->setDuration(Ljava/lang/Long;)V

    .line 248
    .line 249
    .line 250
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    .line 251
    .line 252
    if-eqz v1, :cond_6

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    :cond_6
    invoke-virtual {v2, v3}, Lcom/transsion/baselib/db/download/DownloadBean;->setResolution(I)V

    .line 259
    .line 260
    .line 261
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resourceId:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/transsion/moviedetailapi/DownloadItem;->name:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/transsion/moviedetailapi/DownloadItem;->url:Ljava/lang/String;

    .line 8
    .line 9
    iget v4, v0, Lcom/transsion/moviedetailapi/DownloadItem;->linkType:I

    .line 10
    .line 11
    iget-object v5, v0, Lcom/transsion/moviedetailapi/DownloadItem;->size:Ljava/lang/Long;

    .line 12
    .line 13
    iget-object v6, v0, Lcom/transsion/moviedetailapi/DownloadItem;->uploadBy:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/transsion/moviedetailapi/DownloadItem;->postId:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/transsion/moviedetailapi/DownloadItem;->epse:Ljava/lang/Integer;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/transsion/moviedetailapi/DownloadItem;->extSubtitle:Ljava/util/List;

    .line 20
    .line 21
    iget v10, v0, Lcom/transsion/moviedetailapi/DownloadItem;->se:I

    .line 22
    .line 23
    iget v11, v0, Lcom/transsion/moviedetailapi/DownloadItem;->ep:I

    .line 24
    .line 25
    iget-object v12, v0, Lcom/transsion/moviedetailapi/DownloadItem;->status:Ljava/lang/Integer;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/transsion/moviedetailapi/DownloadItem;->sourceUrl:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/transsion/moviedetailapi/DownloadItem;->resolution:Ljava/lang/Integer;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/transsion/moviedetailapi/DownloadItem;->requireMemberType:Ljava/lang/Integer;

    .line 32
    .line 33
    move-object/from16 v16, v15

    .line 34
    .line 35
    iget-object v15, v0, Lcom/transsion/moviedetailapi/DownloadItem;->memberIcon:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    move-object/from16 v17, v15

    .line 43
    .line 44
    const-string v15, "DownloadItem(resourceId="

    .line 45
    .line 46
    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v1, ", name="

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", url="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v1, ", linkType="

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", size="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", uploadBy="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", postId="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", epse="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", extSubtitle="

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", se="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ", ep="

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", status="

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const-string v1, ", sourceUrl="

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v1, ", resolution="

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", requireMemberType="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    move-object/from16 v1, v16

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", memberIcon="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    move-object/from16 v1, v17

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ")"

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    return-object v0
.end method
