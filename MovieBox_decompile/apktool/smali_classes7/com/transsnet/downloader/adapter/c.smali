.class public final synthetic Lcom/transsnet/downloader/adapter/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/transsnet/downloader/adapter/DownTitleHolder;

.field public final synthetic b:I

.field public final synthetic c:Lp6/a;


# direct methods
.method public synthetic constructor <init>(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILp6/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsnet/downloader/adapter/c;->a:Lcom/transsnet/downloader/adapter/DownTitleHolder;

    .line 5
    .line 6
    iput p2, p0, Lcom/transsnet/downloader/adapter/c;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/transsnet/downloader/adapter/c;->c:Lp6/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/downloader/adapter/c;->a:Lcom/transsnet/downloader/adapter/DownTitleHolder;

    .line 2
    .line 3
    iget v1, p0, Lcom/transsnet/downloader/adapter/c;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsnet/downloader/adapter/c;->c:Lp6/a;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/transsnet/downloader/adapter/DownTitleHolder;->f(Lcom/transsnet/downloader/adapter/DownTitleHolder;ILp6/a;)Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
