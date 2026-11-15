.class public final Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity;
.super Lcom/transsion/shorttv/base/activity/BaseNewActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/shorttv/base/activity/BaseNewActivity<",
        "Lqr/l;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0008\u0005*\u0001\u001c\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0019\u0010\r\u001a\u00020\u000c2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0016\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0004R\u0018\u0010\u001b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001f\u001a\u00020\u001c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity;",
        "Lcom/transsion/shorttv/base/activity/BaseNewActivity;",
        "Lqr/l;",
        "<init>",
        "()V",
        "l0",
        "()Lqr/l;",
        "",
        "V",
        "()Ljava/lang/String;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "b0",
        "g0",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "c0",
        "a0",
        "f0",
        "retryLoadData",
        "j",
        "Ljava/lang/String;",
        "ops",
        "com/transsion/shorttv/ui/activity/ShortTVFavoriteActivity$a",
        "k",
        "Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity$a;",
        "onBackPress",
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
.field public j:Ljava/lang/String;

.field private final k:Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv/base/activity/BaseNewActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity$a;-><init>(Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity;->k:Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity$a;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public V()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public a0()V
    .locals 0

    .line 1
    return-void
.end method

.method public b0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lqr/l;

    .line 6
    .line 7
    invoke-virtual {v0}, Lqr/l;->b()Landroid/widget/FrameLayout;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "getRoot(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcr/b;->a(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/shorttv/base/activity/BaseNewActivity;->i0()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public c0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity;->k:Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity$a;

    .line 6
    .line 7
    invoke-virtual {v0, p0, v1}, Landroidx/activity/OnBackPressedDispatcher;->i(Landroidx/lifecycle/u;Landroidx/activity/u;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public f0()V
    .locals 0

    .line 1
    return-void
.end method

.method public g0()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/transsion/shorttv/base/activity/BaseNewActivity;->g0()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "getSupportFragmentManager(...)"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->p()Landroidx/fragment/app/w;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "beginTransaction()"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;->t:Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment$a;->a()Lcom/transsion/shorttv/ui/fragment/ShortTVFavoriteFragment;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "ops"

    .line 29
    .line 30
    iget-object v3, p0, Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity;->j:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x1

    .line 37
    new-array v3, v3, [Lkotlin/Pair;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    aput-object v2, v3, v4

    .line 41
    .line 42
    invoke-static {v3}, Landroidx/core/os/d;->b([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    sget v2, Lcom/transsion/shorttv/R$id;->flContent:I

    .line 50
    .line 51
    const-string v3, "ShortTVFavoriteFragment"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1, v3}, Landroidx/fragment/app/w;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv/ui/activity/ShortTVFavoriteActivity;->l0()Lqr/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isStatusDark()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public l0()Lqr/l;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lqr/l;->c(Landroid/view/LayoutInflater;)Lqr/l;

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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/therouter/TheRouter;->l(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/transsion/shorttv/base/activity/BaseNewActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method
