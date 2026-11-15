.class public final Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;->c1(Lcom/transsnet/downloader/bean/DownloadUrlBean;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

.field final synthetic b:Lkotlin/jvm/functions/Function0;

.field final synthetic c:Lcom/transsnet/downloader/bean/DownloadUrlBean;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;Lkotlin/jvm/functions/Function0;Lcom/transsnet/downloader/bean/DownloadUrlBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->c:Lcom/transsnet/downloader/bean/DownloadUrlBean;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/transsion/baseui/fragment/PageStatusFragment;->getMViewBinding()Lf4/a;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lbx/y;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p1, Lbx/y;->b:Lcom/airbnb/lottie/LottieAnimationView;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->removeAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isStateSaved()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->b:Lkotlin/jvm/functions/Function0;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->c:Lcom/transsnet/downloader/bean/DownloadUrlBean;

    .line 47
    .line 48
    if-nez p1, :cond_3

    .line 49
    .line 50
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 51
    .line 52
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string p1, "<get-TAG>(...)"

    .line 59
    .line 60
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x4

    .line 64
    const/4 v5, 0x0

    .line 65
    const-string v2, "onAnalyzeSuccess ,  close 2"

    .line 66
    .line 67
    const/4 v3, 0x0

    .line 68
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->s0()Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-eqz p1, :cond_2

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadResourcesDetectorViewModel;->m()Landroidx/lifecycle/b0;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment$b;->a:Lcom/transsnet/downloader/fragment/DownloadReDetectorAnalysingFragment;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->m0()V

    .line 93
    .line 94
    .line 95
    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
