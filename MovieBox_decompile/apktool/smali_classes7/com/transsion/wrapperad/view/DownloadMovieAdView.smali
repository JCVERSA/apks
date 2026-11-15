.class public final Lcom/transsion/wrapperad/view/DownloadMovieAdView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000e\u001a\u00020\r2\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0019\u0010\u0012\u001a\u00020\r2\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\r\u0010\u0014\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\r\u00a2\u0006\u0004\u0008\u0016\u0010\u0015R\u0018\u0010\u0019\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u001d\u001a\u00020\u001a8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u0018\u0010 \u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006-"
    }
    d2 = {
        "Lcom/transsion/wrapperad/view/DownloadMovieAdView;",
        "Landroid/widget/FrameLayout;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
        "",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;",
        "data",
        "",
        "c",
        "(Ljava/util/List;)V",
        "",
        "genre",
        "loadAd",
        "(Ljava/lang/String;)V",
        "download",
        "()V",
        "onDestroy",
        "a",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;",
        "wrapperIconBean",
        "Lqw/b;",
        "b",
        "Lqw/b;",
        "viewBinderProvider",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;",
        "Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;",
        "iconView",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "d",
        "Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;",
        "adManager",
        "",
        "e",
        "Z",
        "isChecked",
        "Loh/a;",
        "f",
        "Loh/a;",
        "listener",
        "wrapperad_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private a:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

.field private final b:Lqw/b;

.field private c:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

.field private d:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

.field private e:Z

.field private final f:Loh/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    new-instance p2, Lqw/b;

    invoke-direct {p2, p1}, Lqw/b;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->b:Lqw/b;

    .line 6
    new-instance p2, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    invoke-direct {p2}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;-><init>()V

    iput-object p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->d:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->e:Z

    .line 8
    new-instance p2, Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;

    invoke-direct {p2, p0}, Lcom/transsion/wrapperad/view/DownloadMovieAdView$a;-><init>(Lcom/transsion/wrapperad/view/DownloadMovieAdView;)V

    iput-object p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->f:Loh/a;

    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 10
    sget p2, Lcom/transsion/wrapperad/R$layout;->view_download_movie_ad_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 p2, 0x8

    .line 12
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 13
    sget p2, Lcom/transsion/wrapperad/R$id;->iconView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    iput-object p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->c:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    .line 14
    sget p2, Lcom/transsion/wrapperad/R$id;->ivCheck:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 15
    new-instance p2, Lcom/transsion/wrapperad/view/i;

    invoke-direct {p2, p0, p1}, Lcom/transsion/wrapperad/view/i;-><init>(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 3
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic a(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->b(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Landroid/widget/ImageView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getAdManager$p(Lcom/transsion/wrapperad/view/DownloadMovieAdView;)Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->d:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getListener$p(Lcom/transsion/wrapperad/view/DownloadMovieAdView;)Loh/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->f:Loh/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$showData(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->c(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->e:Z

    .line 2
    .line 3
    xor-int/lit8 v0, p2, 0x1

    .line 4
    .line 5
    iput-boolean v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->e:Z

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    sget p0, Lcom/transsion/wrapperad/R$mipmap;->ad_check_oval_2:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget p0, Lcom/transsion/wrapperad/R$mipmap;->ad_check_oval_1:I

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final c(Ljava/util/List;)V
    .locals 3

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->a:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->c:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v1, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->d:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->b:Lqw/b;

    .line 31
    .line 32
    invoke-virtual {v0, v1, p1, v2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->showData(Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic loadAd$default(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Ljava/lang/String;ILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->loadAd(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final download()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->c:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->a:Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->b:Lqw/b;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/transsion/ad/bidding/icon/BiddingWrapperIconView;->onClick(Lcom/transsion/ad/bidding/icon/BiddingWrapperIconBean;Lcom/transsion/ad/bidding/base/r;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public final loadAd(Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v0}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    new-instance v6, Lcom/transsion/wrapperad/view/DownloadMovieAdView$loadAd$1;

    .line 23
    .line 24
    invoke-direct {v6, p0, p1, v2}, Lcom/transsion/wrapperad/view/DownloadMovieAdView$loadAd$1;-><init>(Lcom/transsion/wrapperad/view/DownloadMovieAdView;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v7, 0x3

    .line 28
    const/4 v8, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/wrapperad/view/DownloadMovieAdView;->d:Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/icon/BiddingIconAdManager;->I()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
