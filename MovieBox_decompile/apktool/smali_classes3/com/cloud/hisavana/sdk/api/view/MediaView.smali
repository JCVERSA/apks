.class public Lcom/cloud/hisavana/sdk/api/view/MediaView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/api/view/MediaView$b;,
        Lcom/cloud/hisavana/sdk/api/view/MediaView$c;
    }
.end annotation


# instance fields
.field private a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

.field private b:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

.field private c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

.field private d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

.field private e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

.field private f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

.field private g:I

.field private h:Z

.field private volatile i:Z

.field private j:F

.field private k:F

.field private l:F

.field private m:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 5
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->b:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 6
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->i:Z

    const/high16 p1, -0x40800000    # -1.0f

    .line 8
    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->m:F

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->h(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->g(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Ljava/lang/String;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->j:F

    .line 2
    .line 3
    return p1
.end method

.method private d(II)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const/16 p1, 0x11

    .line 7
    .line 8
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 9
    .line 10
    return-object v0
.end method

.method static synthetic e(Lcom/cloud/hisavana/sdk/api/view/MediaView;)Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 2
    .line 3
    return-object p0
.end method

.method private f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/lang/String;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getAdItem()Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;->getNativeBridge()Lcom/cloud/hisavana/sdk/u3;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    new-instance v2, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-direct {v2, v3}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    iput-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    .line 26
    .line 27
    :cond_1
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    .line 28
    .line 29
    invoke-virtual {v2, p2}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;->setScale(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    .line 33
    .line 34
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-gez p2, :cond_2

    .line 39
    .line 40
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    .line 41
    .line 42
    const/4 v2, -0x1

    .line 43
    invoke-direct {p0, v2, v2}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d(II)Landroid/widget/FrameLayout$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {p0, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 51
    .line 52
    if-nez p2, :cond_3

    .line 53
    .line 54
    new-instance p2, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-direct {p2, v2}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setWebClientCallback(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 66
    .line 67
    .line 68
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 69
    .line 70
    new-instance v2, Lcom/cloud/hisavana/sdk/api/view/MediaView$c;

    .line 71
    .line 72
    const/4 v3, 0x0

    .line 73
    invoke-direct {v2, p0, v3}, Lcom/cloud/hisavana/sdk/api/view/MediaView$c;-><init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/api/view/MediaView$a;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 77
    .line 78
    .line 79
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 80
    .line 81
    new-instance v2, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;

    .line 82
    .line 83
    invoke-direct {v2, p0, v0, v1, p1}, Lcom/cloud/hisavana/sdk/api/view/MediaView$a;-><init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Lcom/cloud/hisavana/sdk/u3;Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v2}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->setInteractiveListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView$c;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method

.method private synthetic g(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Ljava/lang/String;II)V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    .line 19
    invoke-direct {v0, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    const/high16 p2, 0x40000000    # 2.0f

    .line 26
    .line 27
    invoke-static {p4, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-static {p5, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 36
    .line 37
    invoke-virtual {v1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 38
    .line 39
    .line 40
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    invoke-virtual {p2, v0, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 44
    .line 45
    .line 46
    new-instance p2, Le7/c;

    .line 47
    .line 48
    invoke-direct {p2, p0, p1, p3}, Le7/c;-><init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :goto_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    new-instance p3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string p4, "setInteractiveView error: "

    .line 65
    .line 66
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p3, "MediaView"

    .line 81
    .line 82
    invoke-virtual {p2, p3, p1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_2
    return-void
.end method

.method private synthetic h(Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "file://"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 15
    .line 16
    new-instance v1, Lcom/cloud/hisavana/sdk/api/view/MediaView$b;

    .line 17
    .line 18
    invoke-direct {v1, p0, p1}, Lcom/cloud/hisavana/sdk/api/view/MediaView$b;-><init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setAdMediaPlayerListener(Lcom/cloud/hisavana/sdk/j4;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setUseListMode(Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    if-gez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 38
    .line 39
    const/4 p2, -0x1

    .line 40
    const/4 v0, -0x2

    .line 41
    invoke-direct {p0, p2, v0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d(II)Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    instance-of p1, p1, Landroid/view/ViewGroup;

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/view/ViewGroup;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 69
    .line 70
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 75
    .line 76
    :cond_2
    return-void
.end method

.method static synthetic j(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->j:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->k:F

    .line 2
    .line 3
    return p1
.end method

.method private l()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 15
    .line 16
    sget v1, Lcom/cloud/sdk/commonutil/R$id;->native_mediaview_iv_id:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, -0x2

    .line 28
    if-gez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 31
    .line 32
    const/4 v2, -0x1

    .line 33
    invoke-direct {p0, v2, v1}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d(II)Landroid/widget/FrameLayout$LayoutParams;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->g:I

    .line 41
    .line 42
    const/4 v2, 0x2

    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 46
    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 62
    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->release()V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Landroid/view/ViewGroup;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 93
    .line 94
    :cond_3
    return-void
.end method

.method static synthetic m(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->k:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic n(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->l:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic o(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->l:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic p(Lcom/cloud/hisavana/sdk/api/view/MediaView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->m:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic q(Lcom/cloud/hisavana/sdk/api/view/MediaView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->m:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->i:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast v0, Landroid/view/ViewGroup;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    .line 55
    .line 56
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->d:Lcom/cloud/hisavana/sdk/common/widget/TAdWebView;

    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;->destroy()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 74
    .line 75
    :cond_2
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->release()V

    .line 80
    .line 81
    .line 82
    iput-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 83
    .line 84
    :cond_3
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/k;->a(Landroid/widget/ImageView;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->b:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->destroy()V

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public init(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->g:I

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->l()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public isAttached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->pause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->play()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setInteractiveView(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f(Lcom/cloud/hisavana/sdk/common/bean/TaNativeInfo;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->e:Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;

    .line 5
    .line 6
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->f:Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    if-eqz p3, :cond_0

    .line 11
    .line 12
    new-instance v0, Le7/b;

    .line 13
    .line 14
    invoke-direct {v0, p0, p3, p1, p2}, Le7/b;-><init>(Lcom/cloud/hisavana/sdk/api/view/MediaView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveWebView;Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout;->registerGlobalLayoutListener(Lcom/cloud/hisavana/sdk/common/widget/InteractiveFrameLayout$a;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public setMediaView(Lcom/cloud/hisavana/sdk/common/bean/AdImage;Landroid/widget/ImageView$ScaleType;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    if-eqz p3, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 18
    .line 19
    invoke-static {}, Lk7/c;->k()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setMaxWidth(I)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 27
    .line 28
    invoke-static {}, Lk7/c;->j()I

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 37
    .line 38
    .line 39
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 40
    .line 41
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iput-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->b:Lcom/cloud/hisavana/sdk/common/bean/AdImage;

    .line 47
    .line 48
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/cloud/hisavana/sdk/common/bean/AdImage;->attachView(Landroid/widget/ImageView;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    iput-boolean p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->h:Z

    .line 55
    .line 56
    :cond_2
    :goto_1
    return-void
.end method

.method public setRadius(FFFF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopLeftRadius(F)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 9
    .line 10
    invoke-virtual {v0, p2}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setTopRightRadius(F)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 14
    .line 15
    invoke-virtual {v0, p3}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomLeftRadius(F)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 19
    .line 20
    invoke-virtual {v0, p4}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setBottomRightRadius(F)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    cmpl-float p1, p1, v1

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    cmpl-float p1, p2, v1

    .line 31
    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    cmpl-float p1, p3, v1

    .line 35
    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    cmpl-float p1, p4, v1

    .line 39
    .line 40
    if-eqz p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 46
    :goto_1
    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;->setCircle(Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->a:Lcom/cloud/sdk/commonutil/widget/TranCircleImageView;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public setVideoView(Ljava/lang/String;ZLjava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V
    .locals 4

    .line 1
    invoke-direct {p0, p4, p5}, Lcom/cloud/hisavana/sdk/api/view/MediaView;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result p5

    .line 8
    const-string v0, "MediaView"

    .line 9
    .line 10
    if-nez p5, :cond_3

    .line 11
    .line 12
    iget-object p5, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 13
    .line 14
    if-eqz p5, :cond_3

    .line 15
    .line 16
    if-nez p4, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getImpBeanRequest()Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;

    .line 21
    .line 22
    .line 23
    move-result-object p5

    .line 24
    if-eqz p5, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "init impBean.isAutoPlayVideoAd "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-boolean v3, p5, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoPlayVideoAd:Z

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 53
    .line 54
    iget-boolean p5, p5, Lcom/cloud/hisavana/sdk/data/bean/request/AdxImpBean;->isAutoPlayVideoAd:Z

    .line 55
    .line 56
    invoke-virtual {v1, p5}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setPlayWhenReady(Z)V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 60
    .line 61
    .line 62
    move-result-object p5

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "isMaterialStyleValid---->"

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p2, "   materialStyle---->"

    .line 77
    .line 78
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-virtual {p5, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 92
    .line 93
    const/4 p3, 0x1

    .line 94
    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setShowComponents(Z)V

    .line 95
    .line 96
    .line 97
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 98
    .line 99
    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setAutoReset(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    if-eqz p2, :cond_2

    .line 107
    .line 108
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-virtual {p2}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    if-eqz p2, :cond_2

    .line 117
    .line 118
    iget-object p2, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 119
    .line 120
    invoke-virtual {p4}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getVideoInfo()Lcom/cloud/hisavana/sdk/common/bean/VastData;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VastData;->getVideoMask()Lcom/cloud/hisavana/sdk/common/bean/VideoMask;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-virtual {p3}, Lcom/cloud/hisavana/sdk/common/bean/VideoMask;->getResource()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p3

    .line 132
    invoke-virtual {p2, p3}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setCompanionSize(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_2
    const-string p2, "http"

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    iget-object p3, p0, Lcom/cloud/hisavana/sdk/api/view/MediaView;->c:Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;

    .line 142
    .line 143
    invoke-virtual {p3, p1, p4, p2}, Lcom/cloud/hisavana/sdk/common/widget/video/NativeAdVideoView;->setMediaData(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Z)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_3
    :goto_0
    invoke-static {}, Lcom/cloud/hisavana/sdk/b4;->b()Lcom/cloud/hisavana/sdk/b4;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const-string p2, "setVideoView filePath is null or adVideoView is null or adsDTO is null"

    .line 152
    .line 153
    invoke-virtual {p1, v0, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method
