.class public final synthetic Lcom/transsnet/downloader/adapter/b0;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

.field public final synthetic b:Lp6/a;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/adapter/DownloadedHolder;Lp6/a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/b0;->a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/transsnet/downloader/adapter/b0;->b:Lp6/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/adapter/b0;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/b0;->a:Lcom/transsnet/downloader/adapter/DownloadedHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsnet/downloader/adapter/b0;->b:Lp6/a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/adapter/b0;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsnet/downloader/adapter/DownloadedHolder;->q(Lcom/transsnet/downloader/adapter/DownloadedHolder;Lp6/a;Ljava/lang/String;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
