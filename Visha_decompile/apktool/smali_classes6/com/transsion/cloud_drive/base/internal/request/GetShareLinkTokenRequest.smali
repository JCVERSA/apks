.class public final Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;",
        "",
        "shareId",
        "",
        "sharePwd",
        "expireSeconds",
        "",
        "(Ljava/lang/String;Ljava/lang/String;J)V",
        "getExpireSeconds",
        "()J",
        "getShareId",
        "()Ljava/lang/String;",
        "getSharePwd",
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
.field private final expireSeconds:J

.field private final shareId:Ljava/lang/String;

.field private final sharePwd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "share_pwd"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lv95;
            name = "expire_sec"
        .end annotation
    .end param

    const-string v0, "shareId"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharePwd"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;->shareId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;->sharePwd:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;->expireSeconds:J

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 5
    const-string p2, ""

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const-wide/16 p3, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public final getExpireSeconds()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;->expireSeconds:J

    return-wide v0
.end method

.method public final getShareId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;->shareId:Ljava/lang/String;

    return-object p0
.end method

.method public final getSharePwd()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/internal/request/GetShareLinkTokenRequest;->sharePwd:Ljava/lang/String;

    return-object p0
.end method
