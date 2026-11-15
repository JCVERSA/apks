.class public final Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;",
        "",
        "shareToken",
        "",
        "expiresIn",
        "",
        "(Ljava/lang/String;J)V",
        "getExpiresIn",
        "()J",
        "getShareToken",
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
.field private final expiresIn:J

.field private final shareToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_token"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lv95;
            name = "expires_in"
        .end annotation
    .end param

    const-string v0, "shareToken"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;->shareToken:Ljava/lang/String;

    .line 4
    iput-wide p2, p0, Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;->expiresIn:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 5
    const-string p1, ""

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const-wide/16 p2, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final getExpiresIn()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;->expiresIn:J

    return-wide v0
.end method

.method public final getShareToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/FileShareLinkToken;->shareToken:Ljava/lang/String;

    return-object p0
.end method
