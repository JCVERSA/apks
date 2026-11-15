.class public final Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;
.super Loh/a;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/wrapperad/view/DownloadMovieAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/transsion/wrapperad/view/DownloadMovieAdView;


# direct methods
.method constructor <init>(Lcom/transsion/wrapperad/view/DownloadMovieAdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;->d:Lcom/transsion/wrapperad/view/DownloadMovieAdView;

    .line 2
    .line 3
    invoke-direct {p0}, Loh/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public w(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Loh/a;->w(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;->d:Lcom/transsion/wrapperad/view/DownloadMovieAdView;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->access$showData(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    check-cast p1, Ljava/util/Collection;

    .line 12
    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 v0, 0x1

    .line 18
    xor-int/2addr p1, v0

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;->d:Lcom/transsion/wrapperad/view/DownloadMovieAdView;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
