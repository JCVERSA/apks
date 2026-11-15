.class public final Lcom/transsion/fission/FissionInvitationCodeActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lhk/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00052\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0013R\u001d\u0010\u001a\u001a\u0004\u0018\u00010\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0017\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006 "
    }
    d2 = {
        "Lcom/transsion/fission/FissionInvitationCodeActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lhk/a;",
        "<init>",
        "()V",
        "",
        "k0",
        "",
        "code",
        "n0",
        "(Ljava/lang/String;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/os/Bundle;)V",
        "h0",
        "()Lhk/a;",
        "",
        "isStatusDark",
        "()Z",
        "isTranslucent",
        "Lkk/a;",
        "a",
        "Lkotlin/Lazy;",
        "g0",
        "()Lkk/a;",
        "mFissionProvider",
        "Lcom/transsion/fission/f;",
        "b",
        "f0",
        "()Lcom/transsion/fission/f;",
        "mFissionInvitationViewModel",
        "Fission_psRelease"
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
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsion/fission/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsion/fission/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/transsion/fission/FissionInvitationCodeActivity;->a:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/transsion/fission/FissionInvitationCodeActivity$special$$inlined$viewModels$default$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/transsion/fission/FissionInvitationCodeActivity$special$$inlined$viewModels$default$1;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Landroidx/lifecycle/ViewModelLazy;

    .line 21
    .line 22
    const-class v2, Lcom/transsion/fission/f;

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    new-instance v3, Lcom/transsion/fission/FissionInvitationCodeActivity$special$$inlined$viewModels$default$2;

    .line 29
    .line 30
    invoke-direct {v3, p0}, Lcom/transsion/fission/FissionInvitationCodeActivity$special$$inlined$viewModels$default$2;-><init>(Landroidx/activity/ComponentActivity;)V

    .line 31
    .line 32
    .line 33
    new-instance v4, Lcom/transsion/fission/FissionInvitationCodeActivity$special$$inlined$viewModels$default$3;

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    invoke-direct {v4, v5, p0}, Lcom/transsion/fission/FissionInvitationCodeActivity$special$$inlined$viewModels$default$3;-><init>(Lkotlin/jvm/functions/Function0;Landroidx/activity/ComponentActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/lifecycle/ViewModelLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/transsion/fission/FissionInvitationCodeActivity;->b:Lkotlin/Lazy;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/fission/FissionInvitationCodeActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/fission/FissionInvitationCodeActivity;->i0(Lcom/transsion/fission/FissionInvitationCodeActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/fission/FissionInvitationCodeActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/fission/FissionInvitationCodeActivity;->j0(Lcom/transsion/fission/FissionInvitationCodeActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/fission/FissionInvitationCodeActivity;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/fission/FissionInvitationCodeActivity;->l0(Lcom/transsion/fission/FissionInvitationCodeActivity;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0()Lkk/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/fission/FissionInvitationCodeActivity;->m0()Lkk/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final f0()Lcom/transsion/fission/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/FissionInvitationCodeActivity;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/fission/f;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g0()Lkk/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/fission/FissionInvitationCodeActivity;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lkk/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final i0(Lcom/transsion/fission/FissionInvitationCodeActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final j0(Lcom/transsion/fission/FissionInvitationCodeActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lhk/a;

    .line 6
    .line 7
    iget-object p1, p1, Lhk/a;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    if-ne v0, v1, :cond_1

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/transsion/fission/FissionInvitationCodeActivity;->n0(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method private final k0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsion/fission/FissionInvitationCodeActivity;->f0()Lcom/transsion/fission/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/transsion/fission/f;->e()Landroidx/lifecycle/LiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/transsion/fission/d;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/transsion/fission/d;-><init>(Lcom/transsion/fission/FissionInvitationCodeActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/transsion/fission/FissionInvitationCodeActivity$b;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/transsion/fission/FissionInvitationCodeActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final l0(Lcom/transsion/fission/FissionInvitationCodeActivity;Lcom/tn/lib/net/bean/BaseDto;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/tn/lib/net/bean/BaseDto;->getCode()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "0"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 19
    .line 20
    sget v0, Lcom/transsion/fission/R$string;->fission_invitation_success:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 23
    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget-object p0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 34
    .line 35
    sget p1, Lcom/transsion/fission/R$string;->fission_invitation_err:I

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 38
    .line 39
    .line 40
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    return-object p0
.end method

.method private static final m0()Lkk/a;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-class v1, Lkk/a;

    .line 5
    .line 6
    invoke-static {v1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lkk/a;

    .line 11
    .line 12
    return-object v0
.end method

.method private final n0(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lzg/g;->a:Lzg/g;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lzg/g;->a(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/fission/FissionInvitationCodeActivity;->f0()Lcom/transsion/fission/f;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/transsion/fission/f;->g(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 18
    .line 19
    sget v0, Lcom/transsion/baseui/R$string;->base_net_err:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/tn/lib/widget/toast/core/h;->k(I)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/fission/FissionInvitationCodeActivity;->h0()Lhk/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h0()Lhk/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lhk/a;->c(Landroid/view/LayoutInflater;)Lhk/a;

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

.method public initView(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->initView(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lhk/a;

    .line 9
    .line 10
    iget-object p1, p1, Lhk/a;->d:Lcom/tn/lib/view/TitleLayout;

    .line 11
    .line 12
    sget v0, Lcom/transsion/fission/R$string;->fission_invitation_code:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "getString(...)"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lhk/a;

    .line 31
    .line 32
    iget-object p1, p1, Lhk/a;->d:Lcom/tn/lib/view/TitleLayout;

    .line 33
    .line 34
    new-instance v0, Lcom/transsion/fission/b;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/transsion/fission/b;-><init>(Lcom/transsion/fission/FissionInvitationCodeActivity;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/tn/lib/view/TitleLayout;->setLeftOnclick(Landroid/view/View$OnClickListener;)Lcom/tn/lib/view/TitleLayout;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lhk/a;

    .line 47
    .line 48
    iget-object p1, p1, Lhk/a;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/transsion/fission/FissionInvitationCodeActivity;->g0()Lkk/a;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    invoke-interface {v0}, Lkk/a;->h()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 62
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lhk/a;

    .line 70
    .line 71
    iget-object p1, p1, Lhk/a;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 72
    .line 73
    const-string v0, "etInvitationCode"

    .line 74
    .line 75
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/high16 v1, 0x40800000    # 4.0f

    .line 79
    .line 80
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    int-to-float v1, v1

    .line 85
    invoke-static {p1, v1}, Ljk/a;->a(Landroid/view/View;F)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    check-cast p1, Lhk/a;

    .line 93
    .line 94
    iget-object p1, p1, Lhk/a;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 95
    .line 96
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/transsion/fission/FissionInvitationCodeActivity$a;

    .line 100
    .line 101
    invoke-direct {v0, p0}, Lcom/transsion/fission/FissionInvitationCodeActivity$a;-><init>(Lcom/transsion/fission/FissionInvitationCodeActivity;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Lhk/a;

    .line 112
    .line 113
    iget-object p1, p1, Lhk/a;->b:Landroidx/appcompat/widget/AppCompatButton;

    .line 114
    .line 115
    new-instance v0, Lcom/transsion/fission/c;

    .line 116
    .line 117
    invoke-direct {v0, p0}, Lcom/transsion/fission/c;-><init>(Lcom/transsion/fission/FissionInvitationCodeActivity;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .line 122
    .line 123
    invoke-direct {p0}, Lcom/transsion/fission/FissionInvitationCodeActivity;->k0()V

    .line 124
    .line 125
    .line 126
    return-void
.end method

.method public isStatusDark()Z
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "dark_mode_follow_sys"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lij/y;->a:Lij/y;

    .line 18
    .line 19
    invoke-virtual {v0}, Lij/y;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v2, v1

    .line 27
    :goto_0
    return v2
.end method

.method public isTranslucent()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
