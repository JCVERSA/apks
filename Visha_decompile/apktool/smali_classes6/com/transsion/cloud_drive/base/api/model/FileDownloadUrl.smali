.class public final Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R$\u0010\u0005\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u0004R$\u0010\u000b\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000c\u0010\u0007\u001a\u0004\u0008\r\u0010\t\"\u0004\u0008\u000e\u0010\u0004R$\u0010\u000f\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0010\u0010\u0007\u001a\u0004\u0008\u0011\u0010\t\"\u0004\u0008\u0012\u0010\u0004R$\u0010\u0013\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0014\u0010\u0007\u001a\u0004\u0008\u0015\u0010\t\"\u0004\u0008\u0016\u0010\u0004R&\u0010\u0017\u001a\u0004\u0018\u00010\u00188\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0019\u0010\u0007\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u001e\u001a\u00020\u001f8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008 \u0010\u0007\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\t\u00a8\u0006&"
    }
    d2 = {
        "Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;",
        "",
        "url",
        "",
        "(Ljava/lang/String;)V",
        "contentHash",
        "getContentHash$annotations",
        "()V",
        "getContentHash",
        "()Ljava/lang/String;",
        "setContentHash",
        "contentHashName",
        "getContentHashName$annotations",
        "getContentHashName",
        "setContentHashName",
        "crc",
        "getCrc$annotations",
        "getCrc",
        "setCrc",
        "crc64Hash",
        "getCrc64Hash$annotations",
        "getCrc64Hash",
        "setCrc64Hash",
        "expiration",
        "Ljava/time/LocalDateTime;",
        "getExpiration$annotations",
        "getExpiration",
        "()Ljava/time/LocalDateTime;",
        "setExpiration",
        "(Ljava/time/LocalDateTime;)V",
        "size",
        "",
        "getSize$annotations",
        "getSize",
        "()J",
        "setSize",
        "(J)V",
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
.field private contentHash:Ljava/lang/String;

.field private contentHashName:Ljava/lang/String;

.field private crc:Ljava/lang/String;

.field private crc64Hash:Ljava/lang/String;

.field private expiration:Ljava/time/LocalDateTime;

.field private size:J

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lv95;
            name = "url"
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->url:Ljava/lang/String;

    const-string p1, ""

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->contentHashName:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->contentHash:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->crc64Hash:Ljava/lang/String;

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->crc:Ljava/lang/String;

    return-void
.end method

.method public static synthetic getContentHash$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "content_hash"
    .end annotation

    return-void
.end method

.method public static synthetic getContentHashName$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "content_hash_name"
    .end annotation

    return-void
.end method

.method public static synthetic getCrc$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "crc"
    .end annotation

    return-void
.end method

.method public static synthetic getCrc64Hash$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "crc64_hash"
    .end annotation

    return-void
.end method

.method public static synthetic getExpiration$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "expiration"
    .end annotation

    return-void
.end method

.method public static synthetic getSize$annotations()V
    .locals 0
    .annotation runtime Lv95;
        name = "size"
    .end annotation

    return-void
.end method


# virtual methods
.method public final getContentHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->contentHash:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentHashName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->contentHashName:Ljava/lang/String;

    return-object p0
.end method

.method public final getCrc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->crc:Ljava/lang/String;

    return-object p0
.end method

.method public final getCrc64Hash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->crc64Hash:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpiration()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->expiration:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->size:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final setContentHash(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->contentHash:Ljava/lang/String;

    return-void
.end method

.method public final setContentHashName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->contentHashName:Ljava/lang/String;

    return-void
.end method

.method public final setCrc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->crc:Ljava/lang/String;

    return-void
.end method

.method public final setCrc64Hash(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->crc64Hash:Ljava/lang/String;

    return-void
.end method

.method public final setExpiration(Ljava/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->expiration:Ljava/time/LocalDateTime;

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloud_drive/base/api/model/FileDownloadUrl;->size:J

    return-void
.end method
