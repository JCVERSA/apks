.class public final Lcom/transsion/member/history/PointsHistoryActivity;
.super Lcom/transsion/baseui/activity/BaseNewActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseNewActivity<",
        "Lgm/b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u000f\u0010\u0012\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0004R\u001b\u0010\u001a\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/transsion/member/history/PointsHistoryActivity;",
        "Lcom/transsion/baseui/activity/BaseNewActivity;",
        "Lgm/b;",
        "<init>",
        "()V",
        "",
        "f0",
        "()Ljava/lang/String;",
        "",
        "isTranslucent",
        "()Z",
        "o0",
        "",
        "l0",
        "m0",
        "k0",
        "p0",
        "retryLoadData",
        "F0",
        "()Lgm/b;",
        "q0",
        "Lcom/transsion/member/history/PointsHistoryViewModel;",
        "i",
        "Lkotlin/Lazy;",
        "E0",
        "()Lcom/transsion/member/history/PointsHistoryViewModel;",
        "mViewModel",
        "Member_psRelease"
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
.field private final i:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/member/history/PointsHistoryActivity$special$$inlined$viewModels$default$1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/transsion/member/history/PointsHistoryActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 10
    .line 11
    const-class v2, Lcom/transsion/member/history/PointsHistoryViewModel;

    .line 12
    .line 13
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    new-instance v3, Lcom/transsion/member/history/PointsHistoryActivity$special$$inlined$viewModels$default$2;

    .line 18
    .line 19
    invoke-direct {v3, p0}, Lcom/transsion/member/history/PointsHistoryActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 20
    .line 21
    .line 22
    new-instance v4, Lcom/transsion/member/history/PointsHistoryActivity$special$$inlined$viewModels$default$3;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-direct {v4, v5, p0}, Lcom/transsion/member/history/PointsHistoryActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/transsion/member/history/PointsHistoryActivity;->i:Lkotlin/Lazy;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic C0(Lcom/transsion/member/history/PointsHistoryActivity;Lcom/transsion/member/bean/PointsHistoryData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/history/PointsHistoryActivity;->H0(Lcom/transsion/member/history/PointsHistoryActivity;Lcom/transsion/member/bean/PointsHistoryData;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic D0(Lcom/transsion/member/history/PointsHistoryActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/member/history/PointsHistoryActivity;->G0(Lcom/transsion/member/history/PointsHistoryActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final E0()Lcom/transsion/member/history/PointsHistoryViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/member/history/PointsHistoryActivity;->i:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/member/history/PointsHistoryViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final G0(Lcom/transsion/member/history/PointsHistoryActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final H0(Lcom/transsion/member/history/PointsHistoryActivity;Lcom/transsion/member/bean/PointsHistoryData;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lgm/b;

    .line 6
    .line 7
    iget-object p0, p0, Lgm/b;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/transsion/member/bean/PointsHistoryData;->getCoinBalance()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string p1, "0"

    .line 19
    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method


# virtual methods
.method public F0()Lgm/b;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lgm/b;->c(Landroid/view/LayoutInflater;)Lgm/b;

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

.method public f0()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/member/history/PointsHistoryActivity;->F0()Lgm/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public k0()V
    .locals 0

    .line 1
    return-void
.end method

.method public l0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lgm/b;

    .line 6
    .line 7
    iget-object v0, v0, Lgm/b;->c:Lgm/j;

    .line 8
    .line 9
    iget-object v0, v0, Lgm/j;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 10
    .line 11
    sget v1, Lcom/transsion/member/R$string;->points_history_title:I

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lgm/b;

    .line 25
    .line 26
    iget-object v0, v0, Lgm/b;->c:Lgm/j;

    .line 27
    .line 28
    iget-object v0, v0, Lgm/j;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 29
    .line 30
    new-instance v1, Lcom/transsion/member/history/a;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/transsion/member/history/a;-><init>(Lcom/transsion/member/history/PointsHistoryActivity;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lgm/b;

    .line 43
    .line 44
    invoke-virtual {v0}, Lgm/b;->b()Landroidx/appcompat/widget/LinearLayoutCompat;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "getRoot(...)"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Luf/c;->e(Landroid/view/View;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->s0()V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroid/app/Activity;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v1, 0x0

    .line 64
    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/ImmersionBar;->statusBarDarkFont(Z)Lcom/gyf/immersionbar/ImmersionBar;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public m0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/member/history/PointsHistoryActivity;->E0()Lcom/transsion/member/history/PointsHistoryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/member/history/PointsHistoryViewModel;->e()Landroidx/lifecycle/b0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsion/member/history/b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/member/history/b;-><init>(Lcom/transsion/member/history/PointsHistoryActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsion/member/history/PointsHistoryActivity$a;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsion/member/history/PointsHistoryActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public o0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public p0()V
    .locals 0

    .line 1
    return-void
.end method

.method public q0()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseNewActivity;->q0()V

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
    sget-object v1, Lcom/transsion/member/history/PointsHistoryFragment;->e:Lcom/transsion/member/history/PointsHistoryFragment$a;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/transsion/member/history/PointsHistoryFragment$a;->a()Lcom/transsion/member/history/PointsHistoryFragment;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget v2, Lcom/transsion/member/R$id;->container:I

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/w;->s(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/w;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/fragment/app/w;->j()I

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public retryLoadData()V
    .locals 0

    .line 1
    return-void
.end method
