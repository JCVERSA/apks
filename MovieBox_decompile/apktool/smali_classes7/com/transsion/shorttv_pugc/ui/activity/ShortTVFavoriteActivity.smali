.class public final Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;
.super Lcom/transsion/shorttv_pugc/base/activity/BaseNewActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/shorttv_pugc/base/activity/BaseNewActivity<",
        "Lqr/l;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000/\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0008\u0005*\u0001\u0015\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\u000f\u0010\u000c\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00158\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;",
        "Lcom/transsion/shorttv_pugc/base/activity/BaseNewActivity;",
        "Lqr/l;",
        "<init>",
        "()V",
        "l0",
        "()Lqr/l;",
        "",
        "V",
        "()Ljava/lang/String;",
        "",
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
        "com/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a",
        "j",
        "Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;",
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
.field private final j:Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/shorttv_pugc/base/activity/BaseNewActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;-><init>(Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;->j:Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;

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
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

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
    invoke-static {v0}, Lgs/b;->a(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/base/activity/BaseNewActivity;->i0()V

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
    iget-object v1, p0, Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;->j:Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity$a;

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
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/transsion/shorttv_pugc/base/activity/BaseNewActivity;->g0()V

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
    sget-object v1, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVFavoriteFragment;->s:Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVFavoriteFragment$a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVFavoriteFragment$a;->a()Lcom/transsion/shorttv_pugc/ui/fragment/ShortTVFavoriteFragment;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget v2, Lcom/transsion/shorttv/R$id;->flContent:I

    .line 29
    .line 30
    const-string v3, "ShortTVFavoriteFragment"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1, v3}, Landroidx/fragment/app/w;->t(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/w;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/shorttv_pugc/ui/activity/ShortTVFavoriteActivity;->l0()Lqr/l;

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

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method
