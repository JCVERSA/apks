.class public final Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R*\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R*\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\n\u001a\u0004\u0008\u0014\u0010\u000c\"\u0004\u0008\u0015\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;",
        "",
        "width",
        "",
        "height",
        "(II)V",
        "audioStreams",
        "",
        "Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;",
        "getAudioStreams$annotations",
        "()V",
        "getAudioStreams",
        "()Ljava/util/List;",
        "setAudioStreams",
        "(Ljava/util/List;)V",
        "getHeight",
        "()I",
        "videoStreams",
        "Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;",
        "getVideoStreams$annotations",
        "getVideoStreams",
        "setVideoStreams",
        "getWidth",
        "cloud-drive-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private audioStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;",
            ">;"
        }
    .end annotation
.end field

.field private final height:I

.field private videoStreams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;",
            ">;"
        }
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1    # I
        .annotation runtime Lv95;
            name = "width"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lv95;
            name = "height"
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;->width:I

    .line 4
    iput p2, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;->height:I

    .line 5
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;->audioStreams:Ljava/util/List;

    .line 6
    invoke-static {}, Ly71;->k()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;->videoStreams:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move p2, v0

    .line 7
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;-><init>(II)V

    return-void
.end method

.method public static synthetic getAudioStreams$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "video_media_audio_stream"
    .end annotation

    return-void
.end method

.method public static synthetic getVideoStreams$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "video_media_video_stream"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAudioStreams()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;->audioStreams:Ljava/util/List;

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;->height:I

    return p0
.end method

.method public final getVideoStreams()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;->videoStreams:Ljava/util/List;

    return-object p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;->width:I

    return p0
.end method

.method public final setAudioStreams(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;->audioStreams:Ljava/util/List;

    return-void
.end method

.method public final setVideoStreams(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMetaInfo;->videoStreams:Ljava/util/List;

    return-void
.end method
