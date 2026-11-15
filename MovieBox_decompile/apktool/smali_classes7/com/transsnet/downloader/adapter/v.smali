.class public final synthetic Lcom/transsnet/downloader/adapter/v;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:J

.field public final synthetic c:I

.field public final synthetic d:Lcom/transsnet/downloader/adapter/DownloadedHolder;


# direct methods
.method public synthetic constructor <init>(IJILcom/transsnet/downloader/adapter/DownloadedHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/transsnet/downloader/adapter/v;->a:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/transsnet/downloader/adapter/v;->b:J

    .line 7
    .line 8
    iput p4, p0, Lcom/transsnet/downloader/adapter/v;->c:I

    .line 9
    .line 10
    iput-object p5, p0, Lcom/transsnet/downloader/adapter/v;->d:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget v0, p0, Lcom/transsnet/downloader/adapter/v;->a:I

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/transsnet/downloader/adapter/v;->b:J

    .line 4
    .line 5
    iget v3, p0, Lcom/transsnet/downloader/adapter/v;->c:I

    .line 6
    .line 7
    iget-object v4, p0, Lcom/transsnet/downloader/adapter/v;->d:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->r(IJILcom/transsnet/downloader/adapter/DownloadedHolder;)Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
