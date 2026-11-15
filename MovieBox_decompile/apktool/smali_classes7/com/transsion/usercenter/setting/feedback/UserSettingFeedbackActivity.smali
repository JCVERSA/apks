.class public final Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lxu/x0;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 92\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0019\u0010\u0008\u001a\u00020\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ)\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0004J\u000f\u0010\u0018\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u000f\u0010\u0019\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001cH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0018\u0010\"\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008/\u0010-R\u0018\u00104\u001a\u0004\u0018\u0001018\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0014\u00108\u001a\u0002058\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00086\u00107\u00a8\u0006:"
    }
    d2 = {
        "Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lxu/x0;",
        "<init>",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "",
        "isStatusDark",
        "()Z",
        "isTranslucent",
        "j0",
        "()Lxu/x0;",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(IILandroid/content/Intent;)V",
        "initView",
        "q0",
        "t0",
        "i0",
        "k0",
        "Ljo/b;",
        "operationMenu",
        "s0",
        "(Ljo/b;)V",
        "a",
        "Lxu/x0;",
        "mBinding",
        "Llv/c;",
        "b",
        "Llv/c;",
        "mUserFeedbackViewModel",
        "Lcom/transsion/publish/api/PhotoEntity;",
        "c",
        "Lcom/transsion/publish/api/PhotoEntity;",
        "photoEntity",
        "",
        "d",
        "Ljava/lang/String;",
        "feedbackFromPage",
        "e",
        "subjectId",
        "Lcom/transsnet/loginapi/bean/Country;",
        "f",
        "Lcom/transsnet/loginapi/bean/Country;",
        "mCountry",
        "Landroid/text/InputFilter$LengthFilter;",
        "g",
        "Landroid/text/InputFilter$LengthFilter;",
        "mLengthFilter",
        "h",
        "UserCenter_psRelease"
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
.field public static final h:Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$a;


# instance fields
.field private a:Lxu/x0;

.field private b:Llv/c;

.field private c:Lcom/transsion/publish/api/PhotoEntity;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/transsnet/loginapi/bean/Country;

.field private final g:Landroid/text/InputFilter$LengthFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->h:Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "SETTINGS"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->d:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$c;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$c;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->g:Landroid/text/InputFilter$LengthFilter;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Ljo/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->l0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Ljo/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->n0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->r0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->p0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->o0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->m0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)Lxu/x0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->a:Lxu/x0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final i0()V
    .locals 0

    .line 1
    return-void
.end method

.method private final initView()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lxu/x0;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->a:Lxu/x0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lxu/x0;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 12
    .line 13
    const-string v2, "etDesc"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v2, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$b;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$b;-><init>(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lxu/x0;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/widget/TextView;->getFilters()[Landroid/text/InputFilter;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "getFilters(...)"

    .line 33
    .line 34
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1}, Lkotlin/collections/ArraysKt;->J0([Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->g:Landroid/text/InputFilter$LengthFilter;

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lxu/x0;->c:Landroidx/appcompat/widget/AppCompatEditText;

    .line 48
    .line 49
    check-cast v1, Ljava/util/Collection;

    .line 50
    .line 51
    new-array v3, v3, [Landroid/text/InputFilter;

    .line 52
    .line 53
    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, [Landroid/text/InputFilter;

    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lxu/x0;->h:Lcom/tn/lib/view/TitleLayout;

    .line 63
    .line 64
    sget v2, Lcom/transsion/usercenter/R$string;->user_setting_feedback:I

    .line 65
    .line 66
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v3, "getString(...)"

    .line 71
    .line 72
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/tn/lib/view/TitleLayout;->setTitleText(Ljava/lang/String;)Lcom/tn/lib/view/TitleLayout;

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lxu/x0;->b:Landroidx/appcompat/widget/AppCompatButton;

    .line 79
    .line 80
    new-instance v2, Llv/f;

    .line 81
    .line 82
    invoke-direct {v2, p0}, Llv/f;-><init>(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Lxu/x0;->b()Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    new-instance v2, Llv/g;

    .line 93
    .line 94
    invoke-direct {v2, p0}, Llv/g;-><init>(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lxu/x0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 101
    .line 102
    new-instance v2, Llv/h;

    .line 103
    .line 104
    invoke-direct {v2, p0}, Llv/h;-><init>(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, v0, Lxu/x0;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 111
    .line 112
    new-instance v1, Llv/i;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Llv/i;-><init>(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    :cond_0
    return-void
.end method

.method private final k0()V
    .locals 7

    .line 1
    new-instance v6, Llv/e;

    .line 2
    .line 3
    invoke-direct {v6, p0}, Llv/e;-><init>(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 7
    .line 8
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 15
    .line 16
    const-class v1, Ljo/b;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v1, "getName(...)"

    .line 23
    .line 24
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    .line 28
    .line 29
    invoke-static {}, Lkotlinx/coroutines/y0;->c()Lkotlinx/coroutines/a2;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lkotlinx/coroutines/a2;->p()Lkotlinx/coroutines/a2;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    const/4 v5, 0x0

    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v0 .. v6}, Lcom/transsnet/flow/event/FlowEventBus;->observeEvent(Landroidx/lifecycle/u;Ljava/lang/String;Landroidx/lifecycle/Lifecycle$State;Lkotlinx/coroutines/i0;ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/t1;

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static final l0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Ljo/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljo/b;->e()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->s0(Ljo/b;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p0
.end method

.method private static final m0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    const-string p1, "/profile/user_center_labels_feedback"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "feedback_from_page"

    .line 8
    .line 9
    const-string v1, "SETTINGS"

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/therouter/router/Navigator;->K(Ljava/lang/String;Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    new-instance v0, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;

    .line 16
    .line 17
    const-string v1, "1"

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-direct {v0, v1, v2, v2}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbTvData;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    const-string v1, "TV_DATA"

    .line 24
    .line 25
    invoke-virtual {p1, v1, v0}, Lcom/therouter/router/Navigator;->I(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/therouter/router/Navigator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-static {p1, p0, v0, v1, v0}, Lcom/therouter/router/Navigator;->x(Lcom/therouter/router/Navigator;Landroid/content/Context;Lmf/c;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private static final n0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final o0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/transsion/publish/ui/SelectImageActivity;->q:Lcom/transsion/publish/ui/SelectImageActivity$a;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, p0, v2, v0, v1}, Lcom/transsion/publish/ui/SelectImageActivity$a;->a(Landroid/content/Context;IILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final p0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Landroid/view/View;)V
    .locals 6

    .line 1
    const-string p1, "/loginapi/select_country"

    .line 2
    .line 3
    invoke-static {p1}, Lcom/therouter/TheRouter;->c(Ljava/lang/String;)Lcom/therouter/router/Navigator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v4, 0x4

    .line 8
    const/4 v5, 0x0

    .line 9
    const/16 v2, 0x64

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    move-object v1, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/therouter/router/Navigator;->w(Lcom/therouter/router/Navigator;Landroid/content/Context;ILmf/c;ILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final q0()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Llv/c;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Llv/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Llv/c;->f()Landroidx/lifecycle/LiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Llv/d;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Llv/d;-><init>(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$d;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity$d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->b:Llv/c;

    .line 32
    .line 33
    return-void
.end method

.method private static final r0(Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->t0()V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 17
    .line 18
    sget v0, Lcom/transsion/usercenter/R$string;->upload_success:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lfh/b$a;->d(I)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->i0()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 27
    .line 28
    .line 29
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p0
.end method

.method private final s0(Ljo/b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljo/b;->h()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    move-object v0, p1

    .line 8
    check-cast v0, Ljava/util/Collection;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/transsion/publish/api/PhotoEntity;

    .line 22
    .line 23
    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->c:Lcom/transsion/publish/api/PhotoEntity;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lxu/x0;

    .line 30
    .line 31
    iget-object v0, p1, Lxu/x0;->f:Landroidx/appcompat/widget/AppCompatImageView;

    .line 32
    .line 33
    const-string v1, "ivAddImage"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->c:Lcom/transsion/publish/api/PhotoEntity;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/transsion/publish/api/PhotoEntity;->getLocalPath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Ljava/io/File;

    .line 56
    .line 57
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/io/File;)Lcom/bumptech/glide/RequestBuilder;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object p1, p1, Lxu/x0;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method private final t0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->i0()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lfh/b;->a:Lfh/b$a;

    .line 5
    .line 6
    sget v1, Lcom/transsion/usercenter/R$string;->upload_failed:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lfh/b$a;->d(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->j0()Lxu/x0;

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

.method public j0()Lxu/x0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lxu/x0;->c(Landroid/view/LayoutInflater;)Lxu/x0;

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

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x64

    .line 5
    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const-string p1, "countryCode"

    .line 14
    .line 15
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    instance-of p2, p1, Lcom/transsnet/loginapi/bean/Country;

    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    check-cast p1, Lcom/transsnet/loginapi/bean/Country;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->f:Lcom/transsnet/loginapi/bean/Country;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getCountry_s()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getCode()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p2, " + "

    .line 46
    .line 47
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Lxu/x0;

    .line 62
    .line 63
    iget-object p2, p2, Lxu/x0;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "feedback_from_page"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "SETTINGS"

    .line 17
    .line 18
    :cond_0
    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "subject_id"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->e:Ljava/lang/String;

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->initView()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->q0()V

    .line 36
    .line 37
    .line 38
    invoke-direct {p0}, Lcom/transsion/usercenter/setting/feedback/UserSettingFeedbackActivity;->k0()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
