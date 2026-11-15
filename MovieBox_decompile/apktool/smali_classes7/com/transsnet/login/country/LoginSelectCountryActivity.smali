.class public final Lcom/transsnet/login/country/LoginSelectCountryActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/transsnet/login/country/widget/SideBar$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lmx/i;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/transsnet/login/country/widget/SideBar$a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00072\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u001d\u0010\u0014\u001a\u00020\u00072\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0019\u001a\u00020\u00072\u000e\u0010\u0018\u001a\n\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0016H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001c\u001a\u00020\u00072\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0017H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u001d\u0010\u001f\u001a\u00020\u00072\u000c\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0011H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0015J\u0019\u0010 \u001a\u00020\u00072\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0014\u00a2\u0006\u0004\u0008 \u0010\u000cJ\u000f\u0010!\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010$\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008&\u0010%J\u000f\u0010\'\u001a\u00020#H\u0016\u00a2\u0006\u0004\u0008\'\u0010%J\u0019\u0010)\u001a\u00020\u00072\u0008\u0010\u001c\u001a\u0004\u0018\u00010(H\u0016\u00a2\u0006\u0004\u0008)\u0010*J\u0019\u0010,\u001a\u00020\u00072\u0008\u0010+\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008,\u0010-R\u0018\u00101\u001a\u0004\u0018\u00010.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u00100R\u0018\u00105\u001a\u0004\u0018\u0001028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104\u00a8\u00066"
    }
    d2 = {
        "Lcom/transsnet/login/country/LoginSelectCountryActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lmx/i;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/transsnet/login/country/widget/SideBar$a;",
        "<init>",
        "()V",
        "",
        "initView",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "h0",
        "(Landroid/os/Bundle;)V",
        "",
        "position",
        "n0",
        "(Ljava/lang/Integer;)V",
        "",
        "",
        "strings",
        "r0",
        "(Ljava/util/List;)V",
        "Lkx/a;",
        "Lcom/transsnet/loginapi/bean/Country;",
        "countryEvent",
        "o0",
        "(Lkx/a;)V",
        "country",
        "p0",
        "(Lcom/transsnet/loginapi/bean/Country;)V",
        "countries",
        "q0",
        "onCreate",
        "g0",
        "()Lmx/i;",
        "",
        "isTranslucent",
        "()Z",
        "isStatusDark",
        "isChangeStatusBar",
        "Landroid/view/View;",
        "onClick",
        "(Landroid/view/View;)V",
        "index",
        "f",
        "(Ljava/lang/String;)V",
        "Ljx/a;",
        "a",
        "Ljx/a;",
        "adapter",
        "Lcom/transsnet/login/country/SelectCountryViewModel;",
        "b",
        "Lcom/transsnet/login/country/SelectCountryViewModel;",
        "viewModel",
        "Login_psRelease"
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
.field private a:Ljx/a;

.field private b:Lcom/transsnet/login/country/SelectCountryViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/transsnet/login/country/LoginSelectCountryActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->m0(Lcom/transsnet/login/country/LoginSelectCountryActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->l0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Ljava/lang/Integer;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Lkx/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->k0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Lkx/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->i0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->j0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Ljava/util/List;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final h0(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    new-instance p1, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 4
    .line 5
    .line 6
    const-class v0, Lcom/transsnet/login/country/SelectCountryViewModel;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/transsnet/login/country/SelectCountryViewModel;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/transsnet/login/country/LoginSelectCountryActivity;->b:Lcom/transsnet/login/country/SelectCountryViewModel;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsnet/login/country/SelectCountryViewModel;->f()Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/transsnet/login/country/b;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/transsnet/login/country/b;-><init>(Lcom/transsnet/login/country/LoginSelectCountryActivity;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Lcom/transsnet/login/country/LoginSelectCountryActivity$a;

    .line 28
    .line 29
    invoke-direct {v2, v1}, Lcom/transsnet/login/country/LoginSelectCountryActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/transsnet/login/country/SelectCountryViewModel;->k()Landroidx/lifecycle/LiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/transsnet/login/country/c;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/transsnet/login/country/c;-><init>(Lcom/transsnet/login/country/LoginSelectCountryActivity;)V

    .line 42
    .line 43
    .line 44
    new-instance v2, Lcom/transsnet/login/country/LoginSelectCountryActivity$a;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Lcom/transsnet/login/country/LoginSelectCountryActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsnet/login/country/SelectCountryViewModel;->j()Landroidx/lifecycle/LiveData;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    new-instance v1, Lcom/transsnet/login/country/d;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/transsnet/login/country/d;-><init>(Lcom/transsnet/login/country/LoginSelectCountryActivity;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lcom/transsnet/login/country/LoginSelectCountryActivity$a;

    .line 62
    .line 63
    invoke-direct {v2, v1}, Lcom/transsnet/login/country/LoginSelectCountryActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsnet/login/country/SelectCountryViewModel;->i()Landroidx/lifecycle/LiveData;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    new-instance v0, Lcom/transsnet/login/country/e;

    .line 74
    .line 75
    invoke-direct {v0, p0}, Lcom/transsnet/login/country/e;-><init>(Lcom/transsnet/login/country/LoginSelectCountryActivity;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/transsnet/login/country/LoginSelectCountryActivity$a;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Lcom/transsnet/login/country/LoginSelectCountryActivity$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, p0, v1}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method

.method private static final i0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->q0(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final initView()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/i;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/i;->e:Lcom/transsnet/login/country/widget/SideBar;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/transsnet/login/country/widget/SideBar;->setScrollerListener(Lcom/transsnet/login/country/widget/SideBar$a;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lmx/i;

    .line 17
    .line 18
    iget-object v0, v0, Lmx/i;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final j0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->r0(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private static final k0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Lkx/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->o0(Lkx/a;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final l0(Lcom/transsnet/login/country/LoginSelectCountryActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->n0(Ljava/lang/Integer;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final m0(Lcom/transsnet/login/country/LoginSelectCountryActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lmx/i;

    .line 6
    .line 7
    iget-object p0, p0, Lmx/i;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->e(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final n0(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lmx/i;

    .line 8
    .line 9
    iget-object v0, v0, Lmx/i;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lmx/i;

    .line 23
    .line 24
    iget-object v0, v0, Lmx/i;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    instance-of v1, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private final o0(Lkx/a;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lkx/a;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/transsnet/loginapi/bean/Country;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->p0(Lcom/transsnet/loginapi/bean/Country;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final p0(Lcom/transsnet/loginapi/bean/Country;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Landroid/content/Intent;

    .line 4
    .line 5
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "countryCode"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const/4 p1, -0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private final q0(Ljava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/country/LoginSelectCountryActivity;->a:Ljx/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljx/a;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/transsnet/login/country/LoginSelectCountryActivity;->b:Lcom/transsnet/login/country/SelectCountryViewModel;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2, p1}, Ljx/a;-><init>(Landroid/content/Context;Lcom/transsnet/login/country/SelectCountryViewModel;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsnet/login/country/LoginSelectCountryActivity;->a:Ljx/a;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lmx/i;

    .line 23
    .line 24
    iget-object p1, p1, Lmx/i;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    .line 26
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lmx/i;

    .line 43
    .line 44
    iget-object p1, p1, Lmx/i;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    iget-object v0, p0, Lcom/transsnet/login/country/LoginSelectCountryActivity;->a:Ljx/a;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Ljx/a;->i(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method private final r0(Ljava/util/List;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/i;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/i;->e:Lcom/transsnet/login/country/widget/SideBar;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/transsnet/login/country/widget/SideBar;->setIndexs(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public f(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/login/country/LoginSelectCountryActivity;->b:Lcom/transsnet/login/country/SelectCountryViewModel;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/transsnet/login/country/SelectCountryViewModel;->q(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public g0()Lmx/i;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmx/i;->c(Landroid/view/LayoutInflater;)Lmx/i;

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

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->g0()Lmx/i;

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
    const/4 v0, 0x1

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

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->initView()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/transsnet/login/country/LoginSelectCountryActivity;->h0(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lmx/i;

    .line 18
    .line 19
    iget-object p1, p1, Lmx/i;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    new-instance v0, Lcom/transsnet/login/country/a;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/transsnet/login/country/a;-><init>(Lcom/transsnet/login/country/LoginSelectCountryActivity;)V

    .line 24
    .line 25
    .line 26
    const-wide/16 v1, 0xc8

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method
