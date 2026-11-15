.class public final Lcom/transsion/cloud_drive/base/api/model/SharedFileDownloadUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/SharedFileDownloadUrl;",
        "",
        "url",
        "",
        "cdnUrl",
        "expiration",
        "Ljava/time/LocalDateTime;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V",
        "getCdnUrl",
        "()Ljava/lang/String;",
        "getExpiration",
        "()Ljava/time/LocalDateTime;",
        "getUrl",
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
.field private final cdnUrl:Ljava/lang/String;
    .annotation runtime Lv95;
        name = "cdn_url"
    .end annotation
.end field

.field private final expiration:Ljava/time/LocalDateTime;
    .annotation runtime Lv95;
        name = "expiration"
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation runtime Lv95;
        name = "url"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cdnUrl"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/SharedFileDownloadUrl;->url:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/transsion/cloud_drive/base/api/model/SharedFileDownloadUrl;->cdnUrl:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/transsion/cloud_drive/base/api/model/SharedFileDownloadUrl;->expiration:Ljava/time/LocalDateTime;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/cloud_drive/base/api/model/SharedFileDownloadUrl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/time/LocalDateTime;)V

    return-void
.end method


# virtual methods
.method public final getCdnUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/SharedFileDownloadUrl;->cdnUrl:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpiration()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/SharedFileDownloadUrl;->expiration:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/SharedFileDownloadUrl;->url:Ljava/lang/String;

    return-object p0
.end method
