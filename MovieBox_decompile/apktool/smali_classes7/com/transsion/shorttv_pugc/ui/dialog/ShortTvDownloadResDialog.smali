.class public final Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;
.super Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 B2\u00020\u0001:\u0001CB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0003J\u0017\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u0003J\u0017\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0011\u001a\u00020\u00042\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00132\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0003J\u0017\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0012J\u0017\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ!\u0010#\u001a\u00020\u00042\u0006\u0010!\u001a\u00020 2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u0017\u0010\'\u001a\u00020\u00042\u0006\u0010&\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008\'\u0010(R\u0016\u0010+\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010-\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010*R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0016\u00103\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010*R\u0016\u00105\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u0010*R\u0018\u00107\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u0010*R\u0018\u00109\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u0010*R\u0016\u0010=\u001a\u00020:8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\u0018\u0010A\u001a\u0004\u0018\u00010>8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010@\u00a8\u0006D"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;",
        "Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "initViewModel",
        "",
        "fragmentTag",
        "o0",
        "(Ljava/lang/String;)V",
        "l0",
        "type",
        "Landroidx/fragment/app/Fragment;",
        "k0",
        "(Ljava/lang/String;)Landroidx/fragment/app/Fragment;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/app/Dialog;",
        "onCreateDialog",
        "(Landroid/os/Bundle;)Landroid/app/Dialog;",
        "onDestroy",
        "outState",
        "onSaveInstanceState",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "Landroidx/fragment/app/FragmentManager;",
        "manager",
        "tag",
        "show",
        "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "b",
        "Ljava/lang/String;",
        "basePageType",
        "c",
        "curPageType",
        "Lcom/transsion/shorttv_pugc/bean/Subject;",
        "d",
        "Lcom/transsion/shorttv_pugc/bean/Subject;",
        "subject",
        "e",
        "pageFrom",
        "f",
        "lastPageFrom",
        "g",
        "ops",
        "h",
        "moduleName",
        "",
        "i",
        "Z",
        "scroll2Download",
        "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;",
        "j",
        "Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;",
        "viewModel",
        "k",
        "a",
        "shortTvLib_release"
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


# static fields
.field public static final k:Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog$a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/transsion/shorttv_pugc/bean/Subject;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z

.field private j:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->k:Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/shorttv/R$layout;->short_tv_dialog_download_res_main:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const-string v0, "download_short_tv"

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->b:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->c:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->e:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->f:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic i0(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->m0(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final initViewModel()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;->e()Landroidx/lifecycle/b0;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/transsion/shorttv_pugc/ui/dialog/b;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/transsion/shorttv_pugc/ui/dialog/b;-><init>(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog$b;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->j:Lcom/transsion/shorttv_pugc/viewmodel/ShortTvDownloadViewModel;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->n0(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 7

    .line 1
    const-string v0, "download_short_tv_ad"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReWatchADFragment;->p:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReWatchADFragment$a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReWatchADFragment$a;->a()Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReWatchADFragment;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v0, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;->L:Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$a;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->e:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->f:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->d:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 23
    .line 24
    iget-object v4, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->g:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v5, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->h:Ljava/lang/String;

    .line 27
    .line 28
    iget-boolean v6, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->i:Z

    .line 29
    .line 30
    invoke-virtual/range {v0 .. v6}, Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/transsion/shorttv_pugc/bean/Subject;Ljava/lang/String;Ljava/lang/String;Z)Lcom/transsion/shorttv_pugc/ui/fragment/download/ShortTVDownloadReFragment;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    return-object p1
.end method

.method private final l0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->y0()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "getFragments(...)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2, v1}, Landroidx/fragment/app/w;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroidx/fragment/app/w;->l()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method private static final m0(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->o0(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method private static final n0(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    const/4 p1, 0x4

    .line 2
    if-ne p2, p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x1

    .line 9
    if-ne p1, p2, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p3, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->b:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 22
    .line 23
    const/4 v4, 0x4

    .line 24
    const/4 v5, 0x0

    .line 25
    const-string v1, "DownloadReDetectorMainDialog"

    .line 26
    .line 27
    const-string v2, "back click~ show base"

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->o0(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 40
    .line 41
    const/4 v4, 0x4

    .line 42
    const/4 v5, 0x0

    .line 43
    const-string v1, "DownloadReDetectorMainDialog"

    .line 44
    .line 45
    const-string v2, "back click~ dismiss"

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 52
    .line 53
    .line 54
    :goto_0
    return p2

    .line 55
    :cond_1
    const/4 p0, 0x0

    .line 56
    return p0
.end method

.method private final o0(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "showFragment tag = "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v4, 0x4

    .line 21
    const/4 v5, 0x0

    .line 22
    const-string v1, "DownloadReDetectorMainDialog"

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->c:Ljava/lang/String;

    .line 29
    .line 30
    const-string v0, "download_short_tv_ad"

    .line 31
    .line 32
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    xor-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->l0()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->k0(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p1, v0}, Landroidx/fragment/app/w;->y(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Landroidx/fragment/app/w;->l()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    sget v2, Lcom/transsion/shorttv/R$id;->fl_container:I

    .line 89
    .line 90
    invoke-virtual {v1, v2, v0, p1}, Landroidx/fragment/app/w;->c(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Landroidx/fragment/app/w;->l()V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void
.end method


# virtual methods
.method public newLogViewConfig()Lqi/b;
    .locals 3

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    const-string v1, "download_main_dialog"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lqi/b;-><init>(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    const-string v0, "newConfig"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v1, "key_download_save_instance"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v0

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    sget p1, Lcom/transsion/shorttv/R$style;->ShortTvBottomDialogTheme:I

    .line 22
    .line 23
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    const-string v1, "download_page_type"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    :cond_2
    const-string p1, "download_short_tv"

    .line 41
    .line 42
    :cond_3
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->b:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v1, ""

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    const-string v2, "page_from"

    .line 53
    .line 54
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-nez p1, :cond_5

    .line 59
    .line 60
    :cond_4
    move-object p1, v1

    .line 61
    :cond_5
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->e:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_6

    .line 68
    .line 69
    const-string v2, "last_page_from"

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    if-nez p1, :cond_7

    .line 76
    .line 77
    :cond_6
    move-object p1, v1

    .line 78
    :cond_7
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->f:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const/4 v2, 0x0

    .line 85
    if-eqz p1, :cond_8

    .line 86
    .line 87
    const-string v3, "subject"

    .line 88
    .line 89
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    goto :goto_1

    .line 94
    :cond_8
    move-object p1, v2

    .line 95
    :goto_1
    instance-of v3, p1, Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 96
    .line 97
    if-eqz v3, :cond_9

    .line 98
    .line 99
    move-object v2, p1

    .line 100
    check-cast v2, Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 101
    .line 102
    :cond_9
    iput-object v2, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->d:Lcom/transsion/shorttv_pugc/bean/Subject;

    .line 103
    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_a

    .line 109
    .line 110
    const-string v2, "ops"

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-nez p1, :cond_b

    .line 117
    .line 118
    :cond_a
    move-object p1, v1

    .line 119
    :cond_b
    iput-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->g:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_d

    .line 126
    .line 127
    const-string v2, "module_name"

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    if-nez p1, :cond_c

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_c
    move-object v1, p1

    .line 137
    :cond_d
    :goto_2
    iput-object v1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->h:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    if-eqz p1, :cond_e

    .line 144
    .line 145
    const-string v1, "download_scroll_to_download"

    .line 146
    .line 147
    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    :cond_e
    iput-boolean v0, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->i:Z

    .line 152
    .line 153
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->initViewModel()V

    .line 154
    .line 155
    .line 156
    iget-object p1, p0, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->b:Ljava/lang/String;

    .line 157
    .line 158
    invoke-direct {p0, p1}, Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;->o0(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "onCreateDialog(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget v1, Lcom/transsion/shorttv/R$style;->ShortTvBottomDialogAnimation:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x50

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 24
    .line 25
    .line 26
    const/high16 v1, 0x3f000000    # 0.5f

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    .line 46
    .line 47
    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 48
    .line 49
    .line 50
    :cond_0
    const/4 v2, -0x1

    .line 51
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 52
    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    new-instance v0, Lcom/transsion/shorttv_pugc/ui/dialog/a;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/ui/dialog/a;-><init>(Lcom/transsion/shorttv_pugc/ui/dialog/ShortTvDownloadResDialog;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 66
    .line 67
    .line 68
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0}, Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 16
    .line 17
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 24
    .line 25
    const-class v1, Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "getName(...)"

    .line 32
    .line 33
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "outState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "key_download_save_instance"

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/transsion/shorttv_pugc/base/dialog/BaseDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;

    .line 10
    .line 11
    const/4 p2, 0x1

    .line 12
    invoke-direct {p1, p2}, Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    sget-object p2, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 16
    .line 17
    const-class v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/transsnet/flow/event/FlowEventBus;

    .line 24
    .line 25
    const-class v0, Lcom/transsnet/flow/event/sync/event/DownloadDialogShowEvent;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "getName(...)"

    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v1, 0x0

    .line 37
    .line 38
    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
