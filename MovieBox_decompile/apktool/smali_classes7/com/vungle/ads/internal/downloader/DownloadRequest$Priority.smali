.class public final enum Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;
.super Ljava/lang/Enum;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/internal/downloader/DownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;",
        "",
        "priority",
        "",
        "(Ljava/lang/String;II)V",
        "getPriority",
        "()I",
        "CRITICAL",
        "HIGHEST",
        "HIGH",
        "LOWEST",
        "vungle-ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

.field public static final enum CRITICAL:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

.field public static final enum HIGH:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

.field public static final enum HIGHEST:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

.field public static final enum LOWEST:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;


# instance fields
.field private final priority:I


# direct methods
.method private static final synthetic $values()[Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 3
    .line 4
    sget-object v1, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->CRITICAL:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->HIGHEST:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->HIGH:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->LOWEST:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 2
    .line 3
    const v1, -0x7fffffff

    .line 4
    .line 5
    .line 6
    const-string v2, "CRITICAL"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v2, v3, v1}, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;-><init>(Ljava/lang/String;II)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->CRITICAL:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 13
    .line 14
    new-instance v0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 15
    .line 16
    const-string v1, "HIGHEST"

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;-><init>(Ljava/lang/String;II)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->HIGHEST:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 23
    .line 24
    new-instance v0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 25
    .line 26
    const-string v1, "HIGH"

    .line 27
    .line 28
    const/4 v3, 0x2

    .line 29
    invoke-direct {v0, v1, v3, v2}, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;-><init>(Ljava/lang/String;II)V

    .line 30
    .line 31
    .line 32
    sput-object v0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->HIGH:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 33
    .line 34
    new-instance v0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    const v2, 0x7fffffff

    .line 38
    .line 39
    .line 40
    const-string v3, "LOWEST"

    .line 41
    .line 42
    invoke-direct {v0, v3, v1, v2}, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;-><init>(Ljava/lang/String;II)V

    .line 43
    .line 44
    .line 45
    sput-object v0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->LOWEST:Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 46
    .line 47
    invoke-static {}, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->$values()[Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->$VALUES:[Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 52
    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->priority:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;
    .locals 1

    .line 1
    const-class v0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->$VALUES:[Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vungle/ads/internal/downloader/DownloadRequest$Priority;->priority:I

    .line 2
    .line 3
    return v0
.end method
