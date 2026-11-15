.class public final Lcom/transsnet/downloader/activity/DownloadPanelActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lbx/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\u000c\u001a\u00020\u00072\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\tJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u0019\u0010\u001c\u001a\u00020\u00112\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u001e8\u0002X\u0082D\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R \u0010&\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070#0\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0016\u0010)\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010\u001e8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010 \u00a8\u0006.\u00b2\u0006\u000c\u0010-\u001a\u00020,8\nX\u008a\u0084\u0002"
    }
    d2 = {
        "Lcom/transsnet/downloader/activity/DownloadPanelActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lbx/b;",
        "<init>",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "",
        "b0",
        "(Landroid/content/Intent;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onNewIntent",
        "c0",
        "()Lbx/b;",
        "",
        "isTranslucent",
        "()Z",
        "isChangeStatusBar",
        "isStatusDark",
        "",
        "statusColor",
        "()I",
        "onDestroy",
        "Landroid/view/MotionEvent;",
        "event",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "",
        "a",
        "Ljava/lang/String;",
        "PAGE_NAME",
        "",
        "Lkotlin/Function0;",
        "b",
        "Ljava/util/List;",
        "touchListeners",
        "c",
        "I",
        "index",
        "d",
        "focusResourceId",
        "Lcom/transsnet/downloader/viewmodel/DownloadViewModel;",
        "downloadViewModel",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;

.field public c:I

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "download_panel_activity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsnet/downloader/activity/DownloadPanelActivity;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsnet/downloader/activity/DownloadPanelActivity;->b:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method

.method private final b0(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const-string v0, "from_page"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const-string v3, "download_status"

    .line 9
    .line 10
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-lez v2, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsnet/downloader/activity/DownloadPanelActivity;->a:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method private static final d0(Lkotlin/Lazy;)Lcom/transsnet/downloader/viewmodel/DownloadViewModel;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 6
    .line 7
    return-object p0
.end method


# virtual methods
.method public c0()Lbx/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lbx/b;->c(Landroid/view/LayoutInflater;)Lbx/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "inflate(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/transsnet/downloader/activity/DownloadPanelActivity;->b:Ljava/util/List;

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    return p1
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/downloader/activity/DownloadPanelActivity;->c0()Lbx/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isChangeStatusBar()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    sget-object v0, Lij/y;->a:Lij/y;

    .line 2
    .line 3
    invoke-virtual {v0}, Lij/y;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Lcom/transsnet/downloader/activity/DownloadPanelActivity$onCreate$$inlined$viewModels$default$1;

    .line 10
    .line 11
    invoke-direct {p1, p0}, Lcom/transsnet/downloader/activity/DownloadPanelActivity$onCreate$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Landroidx/lifecycle/ViewModelLazy;

    .line 15
    .line 16
    const-class v1, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/transsnet/downloader/activity/DownloadPanelActivity$onCreate$$inlined$viewModels$default$2;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/transsnet/downloader/activity/DownloadPanelActivity$onCreate$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/transsnet/downloader/activity/DownloadPanelActivity$onCreate$$inlined$viewModels$default$3;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-direct {v3, v4, p0}, Lcom/transsnet/downloader/activity/DownloadPanelActivity$onCreate$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v0, v1, v2, p1, v3}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lcom/transsnet/downloader/activity/DownloadPanelActivity;->d0(Lkotlin/Lazy;)Lcom/transsnet/downloader/viewmodel/DownloadViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/transsnet/downloader/viewmodel/DownloadViewModel;->R()Landroidx/lifecycle/b0;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/transsnet/downloader/activity/DownloadPanelActivity;->d:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/transsnet/downloader/fragment/DownloadMainFragment;->g:Lcom/transsnet/downloader/fragment/DownloadMainFragment$a;

    .line 50
    .line 51
    iget v0, p0, Lcom/transsnet/downloader/activity/DownloadPanelActivity;->c:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/fragment/DownloadMainFragment$a;->a(I)Lcom/transsnet/downloader/fragment/DownloadMainFragment;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sget v1, Lcom/transsnet/downloader/R$id;->container:I

    .line 66
    .line 67
    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroidx/fragment/app/w;->k()V

    .line 72
    .line 73
    .line 74
    :cond_0
    sget-object p1, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->h:Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager$a;->a()Lcom/transsnet/downloader/manager/DownloadStatusIconManager;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const/4 v0, 0x1

    .line 81
    invoke-virtual {p1, v0}, Lcom/transsnet/downloader/manager/DownloadStatusIconManager;->w(Z)V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lcom/transsion/baselib/report/k;->a:Lcom/transsion/baselib/report/k;

    .line 85
    .line 86
    invoke-virtual {p1, v0, p0}, Lcom/transsion/baselib/report/k;->w(ILandroid/app/Activity;)V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/downloader/activity/DownloadPanelActivity;->b:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/transsnet/downloader/activity/DownloadPanelActivity;->b0(Landroid/content/Intent;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public statusColor()I
    .locals 1

    .line 1
    sget v0, Lcom/tn/lib/widget/R$color;->text_01:I

    .line 2
    .line 3
    return v0
.end method
