.class public abstract Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;
.super Lcom/transsion/shorttv/base/fragment/PageStatusFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lf4/a;",
        ">",
        "Lcom/transsion/shorttv/base/fragment/PageStatusFragment<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0008\u0012\u0004\u0012\u00028\u00000\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0005R\"\u0010\u0014\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R$\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0004@\u0004X\u0084\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\"\u001a\u00020\u001d8DX\u0084\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u0016\u0010$\u001a\u00020\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010\u0011\u00a8\u0006%"
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;",
        "Lf4/a;",
        "T",
        "Lcom/transsion/shorttv/base/fragment/PageStatusFragment;",
        "<init>",
        "()V",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "f0",
        "",
        "kotlin.jvm.PlatformType",
        "i",
        "Ljava/lang/String;",
        "getTAG",
        "()Ljava/lang/String;",
        "TAG",
        "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;",
        "j",
        "Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;",
        "h0",
        "()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;",
        "setViewModel",
        "(Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;)V",
        "viewModel",
        "Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "k",
        "Lkotlin/Lazy;",
        "g0",
        "()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;",
        "shortTvViewModel",
        "l",
        "curSDRootPath",
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


# instance fields
.field private final i:Ljava/lang/String;

.field private j:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

.field private final k:Lkotlin/Lazy;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->i:Ljava/lang/String;

    .line 13
    .line 14
    const-class v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment$special$$inlined$activityViewModels$default$1;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment$special$$inlined$activityViewModels$default$2;

    .line 26
    .line 27
    invoke-direct {v2, p0}, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 28
    .line 29
    .line 30
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->k:Lkotlin/Lazy;

    .line 35
    .line 36
    const-string v0, ""

    .line 37
    .line 38
    iput-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->l:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public f0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/transsion/shorttv/ui/dialog/ShortTvDownloadResDialog;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/transsion/shorttv/ui/dialog/ShortTvDownloadResDialog;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method protected final g0()Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->k:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method protected final getTAG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final h0()Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->j:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 2
    .line 3
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lcom/transsion/shorttv/ui/dialog/ShortTvDownloadResDialog;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v0, Lcom/transsion/shorttv/ui/dialog/ShortTvDownloadResDialog;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    .line 20
    new-instance v1, Landroidx/lifecycle/v0;

    .line 21
    .line 22
    invoke-direct {v1, v0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 23
    .line 24
    .line 25
    const-class v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/transsion/shorttv/ui/fragment/download/ShortTvDownloadReBaseFragment;->j:Lcom/transsion/shorttv/viewmodel/ShortTvDownloadViewModel;

    .line 34
    .line 35
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/transsion/shorttv/base/fragment/PageStatusFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
