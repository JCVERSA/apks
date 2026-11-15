.class public final Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\n\u0018\u00002\u00020\u0001B-\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0003\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;",
        "",
        "bitRate",
        "",
        "codeName",
        "",
        "duration",
        "",
        "frameCount",
        "(ILjava/lang/String;DI)V",
        "getBitRate",
        "()I",
        "getCodeName",
        "()Ljava/lang/String;",
        "getDuration",
        "()D",
        "getFrameCount",
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
.field private final bitRate:I

.field private final codeName:Ljava/lang/String;

.field private final duration:D

.field private final frameCount:I


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;-><init>(ILjava/lang/String;DIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;DI)V
    .locals 1
    .param p1    # I
        .annotation runtime Lv95;
            name = "bit_rate"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "code_name"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Lv95;
            name = "duration"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lv95;
            name = "frame_count"
        .end annotation
    .end param

    const-string v0, "codeName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;->bitRate:I

    .line 4
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;->codeName:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;->duration:D

    .line 6
    iput p5, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;->frameCount:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;DIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 7
    const-string p2, ""

    :cond_1
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_2

    const-wide/16 p3, 0x0

    :cond_2
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_3

    move p5, v0

    .line 8
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;-><init>(ILjava/lang/String;DI)V

    return-void
.end method


# virtual methods
.method public final getBitRate()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;->bitRate:I

    return p0
.end method

.method public final getCodeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;->codeName:Ljava/lang/String;

    return-object p0
.end method

.method public final getDuration()D
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;->duration:D

    return-wide v0
.end method

.method public final getFrameCount()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaVideoStream;->frameCount:I

    return p0
.end method
