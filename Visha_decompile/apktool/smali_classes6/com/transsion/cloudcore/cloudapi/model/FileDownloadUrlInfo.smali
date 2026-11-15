.class public final Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0014\u0008\u0087\u0008\u0018\u00002\u00020\u0001BC\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001d\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0004H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u0017J\u0010\u0010\u001d\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001d\u0010\u0017J\u0010\u0010\u001e\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001e\u0010\u0017JN\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010!\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008!\u0010\u0017J\u0010\u0010\"\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\"\u0010\u0015J\u001a\u0010&\u001a\u00020%2\u0008\u0010$\u001a\u0004\u0018\u00010#H\u00d6\u0003\u00a2\u0006\u0004\u0008&\u0010\'R\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010(\u001a\u0004\u0008)\u0010\u0017R\"\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010*\u001a\u0004\u0008+\u0010\u0019\"\u0004\u0008,\u0010-R$\u0010\u0007\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010.\u001a\u0004\u0008/\u0010\u001b\"\u0004\u00080\u00101R\"\u0010\u0008\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010(\u001a\u0004\u00082\u0010\u0017\"\u0004\u00083\u00104R\"\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\t\u0010(\u001a\u0004\u00085\u0010\u0017\"\u0004\u00086\u00104R\"\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010(\u001a\u0004\u00087\u0010\u0017\"\u0004\u00088\u00104\u00a8\u00069"
    }
    d2 = {
        "Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;",
        "Landroid/os/Parcelable;",
        "",
        "url",
        "",
        "size",
        "Ljava/time/LocalDateTime;",
        "expiration",
        "contentHashName",
        "contentHash",
        "crc64Hash",
        "<init>",
        "(Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "Landroid/os/Parcel;",
        "dest",
        "",
        "flags",
        "Lzfb;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "describeContents",
        "()I",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "()J",
        "component3",
        "()Ljava/time/LocalDateTime;",
        "component4",
        "component5",
        "component6",
        "copy",
        "(Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getUrl",
        "J",
        "getSize",
        "setSize",
        "(J)V",
        "Ljava/time/LocalDateTime;",
        "getExpiration",
        "setExpiration",
        "(Ljava/time/LocalDateTime;)V",
        "getContentHashName",
        "setContentHashName",
        "(Ljava/lang/String;)V",
        "getContentHash",
        "setContentHash",
        "getCrc64Hash",
        "setCrc64Hash",
        "cloudcore_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private contentHash:Ljava/lang/String;

.field private contentHashName:Ljava/lang/String;

.field private crc64Hash:Ljava/lang/String;

.field private expiration:Ljava/time/LocalDateTime;

.field private size:J

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo$Creator;

    invoke-direct {v0}, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo$Creator;-><init>()V

    sput-object v0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentHashName"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentHash"

    invoke-static {p6, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crc64Hash"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->url:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->size:J

    .line 4
    iput-object p4, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->expiration:Ljava/time/LocalDateTime;

    .line 5
    iput-object p5, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHashName:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHash:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->crc64Hash:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    and-int/lit8 v2, p8, 0x4

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move-object v2, p4

    :goto_1
    and-int/lit8 v3, p8, 0x8

    .line 8
    const-string v4, ""

    if-eqz v3, :cond_2

    move-object v3, v4

    goto :goto_2

    :cond_2
    move-object v3, p5

    :goto_2
    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_3

    :cond_3
    move-object v5, p6

    :goto_3
    and-int/lit8 v6, p8, 0x20

    if-eqz v6, :cond_4

    goto :goto_4

    :cond_4
    move-object v4, p7

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-object p6, v2

    move-object p7, v3

    move-object p8, v5

    move-object/from16 p9, v4

    invoke-direct/range {p2 .. p9}, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;-><init>(Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->url:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-wide p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->size:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p4, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->expiration:Ljava/time/LocalDateTime;

    :cond_2
    move-object p9, p4

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p5, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHashName:Ljava/lang/String;

    :cond_3
    move-object v2, p5

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p6, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHash:Ljava/lang/String;

    :cond_4
    move-object v3, p6

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->crc64Hash:Ljava/lang/String;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-object p6, p9

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->copy(Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->size:J

    return-wide v0
.end method

.method public final component3()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->expiration:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final component4()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHashName:Ljava/lang/String;

    return-object p0
.end method

.method public final component5()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHash:Ljava/lang/String;

    return-object p0
.end method

.method public final component6()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->crc64Hash:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;
    .locals 8

    const-string p0, "url"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "contentHashName"

    invoke-static {p5, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "contentHash"

    invoke-static {p6, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "crc64Hash"

    invoke-static {p7, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;-><init>(Ljava/lang/String;JLjava/time/LocalDateTime;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->size:J

    iget-wide v5, p1, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->size:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->expiration:Ljava/time/LocalDateTime;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->expiration:Ljava/time/LocalDateTime;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHashName:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHashName:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHash:Ljava/lang/String;

    iget-object v3, p1, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHash:Ljava/lang/String;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->crc64Hash:Ljava/lang/String;

    iget-object p1, p1, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->crc64Hash:Ljava/lang/String;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getContentHash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHash:Ljava/lang/String;

    return-object p0
.end method

.method public final getContentHashName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHashName:Ljava/lang/String;

    return-object p0
.end method

.method public final getCrc64Hash()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->crc64Hash:Ljava/lang/String;

    return-object p0
.end method

.method public final getExpiration()Ljava/time/LocalDateTime;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->expiration:Ljava/time/LocalDateTime;

    return-object p0
.end method

.method public final getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->size:J

    return-wide v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->url:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->size:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->expiration:Ljava/time/LocalDateTime;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/time/LocalDateTime;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHashName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->crc64Hash:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final setContentHash(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHash:Ljava/lang/String;

    return-void
.end method

.method public final setContentHashName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHashName:Ljava/lang/String;

    return-void
.end method

.method public final setCrc64Hash(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->crc64Hash:Ljava/lang/String;

    return-void
.end method

.method public final setExpiration(Ljava/time/LocalDateTime;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->expiration:Ljava/time/LocalDateTime;

    return-void
.end method

.method public final setSize(J)V
    .locals 0

    iput-wide p1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->size:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->url:Ljava/lang/String;

    iget-wide v1, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->size:J

    iget-object v3, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->expiration:Ljava/time/LocalDateTime;

    iget-object v4, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHashName:Ljava/lang/String;

    iget-object v5, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHash:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->crc64Hash:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FileDownloadUrlInfo(url="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", size="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", expiration="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentHashName="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", contentHash="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", crc64Hash="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "dest"

    invoke-static {p1, p2}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->expiration:Ljava/time/LocalDateTime;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHashName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->contentHash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/model/FileDownloadUrlInfo;->crc64Hash:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
