.class public final Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B%\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;",
        "",
        "resolution",
        "",
        "status",
        "completedTime",
        "Ljava/time/LocalDateTime;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V",
        "getCompletedTime",
        "()Ljava/time/LocalDateTime;",
        "getResolution",
        "()Ljava/lang/String;",
        "getStatus",
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
.field private final completedTime:Ljava/time/LocalDateTime;

.field private final resolution:Ljava/lang/String;

.field private final status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "resolution"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "status"
        .end annotation
    .end param
    .param p3    # Ljava/time/LocalDateTime;
        .annotation runtime Lv95;
            name = "completed_time"
        .end annotation
    .end param

    const-string v0, "resolution"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;->resolution:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;->status:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;->completedTime:Ljava/time/LocalDateTime;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 6
    const-string p1, ""

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 7
    const-string p2, "NONE"

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V

    return-void
.end method


# virtual methods
.method public final getCompletedTime()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;->completedTime:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getResolution()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;->resolution:Ljava/lang/String;

    return-object p0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoTranscodeResult;->status:Ljava/lang/String;

    return-object p0
.end method
