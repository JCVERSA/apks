.class public final Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;",
        "",
        "bitRate",
        "",
        "codeName",
        "",
        "(ILjava/lang/String;)V",
        "getBitRate",
        "()I",
        "getCodeName",
        "()Ljava/lang/String;",
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


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v0}, Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;-><init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
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

    const-string v0, "codeName"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;->bitRate:I

    .line 4
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;->codeName:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 5
    const-string p2, ""

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBitRate()I
    .locals 0

    iget p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;->bitRate:I

    return p0
.end method

.method public final getCodeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/VideoMediaAudioStream;->codeName:Ljava/lang/String;

    return-object p0
.end method
