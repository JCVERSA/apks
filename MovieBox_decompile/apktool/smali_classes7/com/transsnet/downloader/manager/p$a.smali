.class public final Lcom/transsnet/downloader/manager/p$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/manager/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/manager/p$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/transsnet/downloader/manager/p$a;Landroid/content/Context;ILjava/lang/Object;)Lcom/transsnet/downloader/manager/g;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsnet/downloader/manager/p$a;->a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/transsnet/downloader/manager/g;
    .locals 0

    .line 1
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadManagerImpl;->y:Lcom/transsnet/downloader/manager/DownloadManagerImpl$a;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadManagerImpl$a;->a()Lcom/transsnet/downloader/manager/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
