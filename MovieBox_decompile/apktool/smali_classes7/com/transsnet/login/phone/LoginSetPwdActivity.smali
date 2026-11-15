.class public final Lcom/transsnet/login/phone/LoginSetPwdActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lmx/h;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u000f\u0010\u000b\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0019\u0010\u000f\u001a\u00020\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u0019\u0010\u0014\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0019\u0010\u0018\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0015J\u000f\u0010\u0019\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u0004J\u000f\u0010\u001a\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u000cJ\u000f\u0010\u001b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u000cJ\u000f\u0010\u001c\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0004J\u000f\u0010\"\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0004R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010\'8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008(\u0010)R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00106\u001a\u0004\u0018\u0001038\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0018\u00109\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008;\u0010<\u00a8\u0006>"
    }
    d2 = {
        "Lcom/transsnet/login/phone/LoginSetPwdActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lmx/h;",
        "<init>",
        "()V",
        "",
        "y0",
        "showLoading",
        "q0",
        "n0",
        "",
        "o0",
        "()Z",
        "",
        "msg",
        "E0",
        "(Ljava/lang/String;)V",
        "p0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "r0",
        "()Lmx/h;",
        "initView",
        "onDestroy",
        "isTranslucent",
        "isStatusDark",
        "getPageName",
        "()Ljava/lang/String;",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
        "onResume",
        "onPause",
        "Lcom/transsnet/login/phone/LoginPhoneViewModel;",
        "a",
        "Lcom/transsnet/login/phone/LoginPhoneViewModel;",
        "mLoginPhoneViewModel",
        "Lkj/h;",
        "b",
        "Lkj/h;",
        "mBaseLoadingDialog",
        "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;",
        "c",
        "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;",
        "requestBody",
        "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;",
        "d",
        "Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;",
        "checkPhoneExistResult",
        "Lmx/k;",
        "e",
        "Lmx/k;",
        "mLoginLayoutInvitationCodeBinding",
        "f",
        "Ljava/lang/String;",
        "source",
        "Ljava/lang/Runnable;",
        "g",
        "Ljava/lang/Runnable;",
        "mRunnable",
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
.field private a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

.field private b:Lkj/h;

.field private c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

.field private d:Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

.field private e:Lmx/k;

.field private f:Ljava/lang/String;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/activity/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 10
    .line 11
    new-instance v0, Lcom/transsnet/login/phone/w0;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/transsnet/login/phone/w0;-><init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->g:Ljava/lang/Runnable;

    .line 17
    .line 18
    return-void
.end method

.method private static final A0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->q0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->E0(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v1, "error_code"

    .line 17
    .line 18
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->f:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const-string v1, "source"

    .line 26
    .line 27
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->getPageName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    .line 38
    .line 39
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p0
.end method

.method private static final B0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->q0()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->d:Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->getReset()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    sget-object p1, Lcom/transsnet/login/b;->a:Lcom/transsnet/login/b$a;

    .line 18
    .line 19
    sget v0, Lcom/transsnet/login/R$string;->login_pwd_set_success:I

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/transsnet/login/b$a;->b(I)V

    .line 22
    .line 23
    .line 24
    new-instance p1, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v0, "is_success"

    .line 30
    .line 31
    const-string v1, "true"

    .line 32
    .line 33
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->f:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    const-string v1, "source"

    .line 41
    .line 42
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_0
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->getPageName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v1, p1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, Lcom/transsnet/login/b;->a:Lcom/transsnet/login/b$a;

    .line 56
    .line 57
    sget v1, Lcom/transsnet/login/R$string;->login_success:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/transsnet/login/b$a;->b(I)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserType()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/UserInfo;->getUserId()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, v1, p1}, Lqi/h;->l(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lcom/transsnet/flow/event/sync/event/HomeEvent;

    .line 76
    .line 77
    const/4 v0, 0x2

    .line 78
    invoke-direct {p1, v0}, Lcom/transsnet/flow/event/sync/event/HomeEvent;-><init>(I)V

    .line 79
    .line 80
    .line 81
    sget-object v0, Lcom/transsnet/flow/event/AppScopeVMlProvider;->INSTANCE:Lcom/transsnet/flow/event/AppScopeVMlProvider;

    .line 82
    .line 83
    const-class v1, Lcom/transsnet/flow/event/FlowEventBus;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/transsnet/flow/event/AppScopeVMlProvider;->getApplicationScopeViewModel(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/transsnet/flow/event/FlowEventBus;

    .line 90
    .line 91
    const-class v1, Lcom/transsnet/flow/event/sync/event/HomeEvent;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const-string v2, "getName(...)"

    .line 98
    .line 99
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-wide/16 v2, 0x0

    .line 103
    .line 104
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/transsnet/flow/event/FlowEventBus;->postEvent(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 105
    .line 106
    .line 107
    :goto_0
    const/4 p1, -0x1

    .line 108
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 112
    .line 113
    .line 114
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p0
.end method

.method private static final C0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->q0()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, -0x1

    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lcom/transsnet/login/b;->a:Lcom/transsnet/login/b$a;

    .line 14
    .line 15
    sget p1, Lcom/transsnet/login/R$string;->login_sign_up_success:I

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/transsnet/login/b$a;->b(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method private static final D0(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lmx/h;

    .line 6
    .line 7
    iget-object p0, p0, Lmx/h;->d:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 13
    .line 14
    .line 15
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->i(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private final E0(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x2

    .line 11
    const/4 v1, 0x0

    .line 12
    const-string v2, "invitation"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->e:Lmx/k;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, v0, Lmx/k;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->e:Lmx/k;

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    iget-object p1, p1, Lmx/k;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lmx/h;

    .line 49
    .line 50
    iget-object v0, v0, Lmx/h;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lmx/h;

    .line 60
    .line 61
    iget-object p1, p1, Lmx/h;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 62
    .line 63
    const-string v0, "tvTips"

    .line 64
    .line 65
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->p0()V

    .line 73
    .line 74
    .line 75
    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic b0(Lkk/a;Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->s0(Lkk/a;Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lmx/h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->x0(Lmx/h;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->z0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->v0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->C0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0(Lcom/transsnet/login/phone/LoginSetPwdActivity;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->w0(Lcom/transsnet/login/phone/LoginSetPwdActivity;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->B0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->A0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->t0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->D0(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->u0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m0(Lcom/transsnet/login/phone/LoginSetPwdActivity;)Lmx/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->e:Lmx/k;

    .line 2
    .line 3
    return-object p0
.end method

.method private final n0()V
    .locals 0

    .line 1
    return-void
.end method

.method private final o0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/h;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/h;->d:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x6

    .line 14
    if-lt v0, v1, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method private final p0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/h;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/h;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    const-string v1, ""

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lmx/h;

    .line 19
    .line 20
    iget-object v0, v0, Lmx/h;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 21
    .line 22
    const-string v1, "tvTips"

    .line 23
    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->b:Lkj/h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lkj/h;->dismiss()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private static final s0(Lkk/a;Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lkk/a;->e(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method private final showLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->b:Lkj/h;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lkj/h;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lkj/h;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->b:Lkj/h;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->b:Lkj/h;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lkj/h;->show()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method private static final t0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object p1, Lyg/l;->a:Lyg/l;

    .line 2
    .line 3
    invoke-virtual {p1}, Lyg/l;->e()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_a

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->o0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_9

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->showLoading()V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 19
    .line 20
    sget-object v0, Lwg/a;->a:Lwg/a$a;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lmx/h;

    .line 27
    .line 28
    iget-object v1, v1, Lmx/h;->d:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lwg/a$a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setPassword(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->d:Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    .line 46
    .line 47
    const/4 v0, 0x1

    .line 48
    if-eqz p1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->getReset()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-ne p1, v0, :cond_0

    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 57
    .line 58
    if-eqz p1, :cond_b

    .line 59
    .line 60
    iget-object p0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 61
    .line 62
    invoke-virtual {p1, p0, v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->L(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;Z)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_0

    .line 66
    .line 67
    :cond_0
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->d:Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    .line 68
    .line 69
    if-eqz p1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->getExists()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-ne p1, v0, :cond_1

    .line 76
    .line 77
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->d:Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    .line 78
    .line 79
    if-eqz p1, :cond_1

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->getHasPassword()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-nez p1, :cond_1

    .line 86
    .line 87
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 88
    .line 89
    if-eqz p1, :cond_b

    .line 90
    .line 91
    iget-object p0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 92
    .line 93
    const/4 v0, 0x0

    .line 94
    invoke-virtual {p1, p0, v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->L(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;Z)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_1
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->e:Lmx/k;

    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    iget-object p1, p1, Lmx/k;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 104
    .line 105
    if-eqz p1, :cond_2

    .line 106
    .line 107
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_2

    .line 118
    .line 119
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-nez p1, :cond_3

    .line 128
    .line 129
    :cond_2
    const-string p1, ""

    .line 130
    .line 131
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-lez v1, :cond_6

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    const/16 v2, 0x8

    .line 142
    .line 143
    if-eq v1, v2, :cond_6

    .line 144
    .line 145
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->e:Lmx/k;

    .line 146
    .line 147
    if-eqz p1, :cond_4

    .line 148
    .line 149
    iget-object p1, p1, Lmx/k;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 150
    .line 151
    if-eqz p1, :cond_4

    .line 152
    .line 153
    sget v0, Lcom/transsnet/login/R$string;->login_invitation_code_err:I

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 156
    .line 157
    .line 158
    :cond_4
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->e:Lmx/k;

    .line 159
    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    iget-object p1, p1, Lmx/k;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 163
    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 167
    .line 168
    .line 169
    :cond_5
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->q0()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_6
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->e:Lmx/k;

    .line 174
    .line 175
    if-eqz v1, :cond_7

    .line 176
    .line 177
    iget-object v1, v1, Lmx/k;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    .line 179
    if-eqz v1, :cond_7

    .line 180
    .line 181
    invoke-static {v1}, Luf/c;->g(Landroid/view/View;)V

    .line 182
    .line 183
    .line 184
    :cond_7
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 185
    .line 186
    invoke-virtual {v1, p1}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setInviteCode(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getAuthType()I

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-ne p1, v0, :cond_8

    .line 196
    .line 197
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 198
    .line 199
    if-eqz p1, :cond_b

    .line 200
    .line 201
    iget-object p0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 202
    .line 203
    invoke-virtual {p1, p0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->s(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V

    .line 204
    .line 205
    .line 206
    goto :goto_0

    .line 207
    :cond_8
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 208
    .line 209
    if-eqz p1, :cond_b

    .line 210
    .line 211
    iget-object p0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 212
    .line 213
    invoke-virtual {p1, p0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->K(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V

    .line 214
    .line 215
    .line 216
    goto :goto_0

    .line 217
    :cond_9
    sget p1, Lcom/transsnet/login/R$string;->login_pwd_err:I

    .line 218
    .line 219
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-direct {p0, p1}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->E0(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_a
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 228
    .line 229
    sget p1, Lcom/transsnet/login/R$string;->login_net_err:I

    .line 230
    .line 231
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 232
    .line 233
    .line 234
    :cond_b
    :goto_0
    return-void
.end method

.method private static final u0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final v0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final w0(Lcom/transsnet/login/phone/LoginSetPwdActivity;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->E0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->n0()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method private static final x0(Lmx/h;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmx/h;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lmx/h;->d:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 13
    .line 14
    iget-object v0, p0, Lmx/h;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->isSelected()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lox/a;

    .line 28
    .line 29
    invoke-direct {v0}, Lox/a;-><init>()V

    .line 30
    .line 31
    .line 32
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 33
    .line 34
    .line 35
    iget-object p0, p0, Lmx/h;->d:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    :goto_1
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private final y0()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/v0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/v0;-><init>(Landroidx/lifecycle/y0;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/v0;->a(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->u()Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/transsnet/login/phone/v0;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/transsnet/login/phone/v0;-><init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/transsnet/login/phone/LoginSetPwdActivity$b;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Lcom/transsnet/login/phone/LoginSetPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->A()Landroidx/lifecycle/LiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/transsnet/login/phone/x0;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/transsnet/login/phone/x0;-><init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lcom/transsnet/login/phone/LoginSetPwdActivity$b;

    .line 45
    .line 46
    invoke-direct {v3, v2}, Lcom/transsnet/login/phone/LoginSetPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->D()Landroidx/lifecycle/LiveData;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lcom/transsnet/login/phone/y0;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/transsnet/login/phone/y0;-><init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lcom/transsnet/login/phone/LoginSetPwdActivity$b;

    .line 62
    .line 63
    invoke-direct {v3, v2}, Lcom/transsnet/login/phone/LoginSetPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->B()Landroidx/lifecycle/LiveData;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Lcom/transsnet/login/phone/z0;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/z0;-><init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 76
    .line 77
    .line 78
    new-instance v2, Lcom/transsnet/login/phone/LoginSetPwdActivity$b;

    .line 79
    .line 80
    invoke-direct {v2, v1}, Lcom/transsnet/login/phone/LoginSetPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method

.method private static final z0(Lcom/transsnet/login/phone/LoginSetPwdActivity;Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)Lkotlin/Unit;
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {p1, p0, v2, v0, v1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->F(Lcom/transsnet/login/phone/LoginPhoneViewModel;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;IILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "set_password"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->r0()Lmx/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v1, "source"

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lqi/b;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v2}, Lqi/b;->g()Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object p1, v0

    .line 36
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->f:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v1, "requestData"

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 51
    .line 52
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.transsnet.login.phone.bean.LoginSmsCodeRequest"

    .line 53
    .line 54
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    check-cast p1, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string v1, "checkPhoneData"

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    check-cast p1, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    .line 72
    .line 73
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->d:Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lmx/h;

    .line 80
    .line 81
    iget-object v1, p1, Lmx/h;->c:Landroidx/appcompat/widget/AppCompatButton;

    .line 82
    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p1, Lmx/h;->c:Landroidx/appcompat/widget/AppCompatButton;

    .line 88
    .line 89
    new-instance v3, Lcom/transsnet/login/phone/a1;

    .line 90
    .line 91
    invoke-direct {v3, p0}, Lcom/transsnet/login/phone/a1;-><init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, p1, Lmx/h;->e:Lmx/l;

    .line 98
    .line 99
    iget-object v1, v1, Lmx/l;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 100
    .line 101
    new-instance v3, Lcom/transsnet/login/phone/b1;

    .line 102
    .line 103
    invoke-direct {v3, p0}, Lcom/transsnet/login/phone/b1;-><init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1}, Lmx/h;->b()Landroid/widget/LinearLayout;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v3, Lcom/transsnet/login/phone/c1;

    .line 114
    .line 115
    invoke-direct {v3, p0}, Lcom/transsnet/login/phone/c1;-><init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p1, Lmx/h;->d:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 122
    .line 123
    new-instance v3, Lcom/transsnet/login/phone/d1;

    .line 124
    .line 125
    invoke-direct {v3, p0}, Lcom/transsnet/login/phone/d1;-><init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, v3}, Lcom/transsnet/login/phone/widget/LoginPwdEditText;->setEnableStatusChangeListener(Lkotlin/jvm/functions/Function2;)V

    .line 129
    .line 130
    .line 131
    iget-object v1, p1, Lmx/h;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 132
    .line 133
    new-instance v3, Lcom/transsnet/login/phone/e1;

    .line 134
    .line 135
    invoke-direct {v3, p1}, Lcom/transsnet/login/phone/e1;-><init>(Lmx/h;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->d:Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    .line 142
    .line 143
    const-string v1, "tvProgress"

    .line 144
    .line 145
    const-string v3, "progress"

    .line 146
    .line 147
    if-eqz p1, :cond_3

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->getReset()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-ne p1, v2, :cond_3

    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lmx/h;

    .line 160
    .line 161
    iget-object p1, p1, Lmx/h;->d:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 162
    .line 163
    sget v0, Lcom/transsnet/login/R$string;->login_pwd_set_hint:I

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    check-cast p1, Lmx/h;

    .line 173
    .line 174
    iget-object p1, p1, Lmx/h;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 175
    .line 176
    sget v0, Lcom/transsnet/login/R$string;->login_pwd_set_new:I

    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    check-cast p1, Lmx/h;

    .line 186
    .line 187
    iget-object p1, p1, Lmx/h;->e:Lmx/l;

    .line 188
    .line 189
    iget-object p1, p1, Lmx/l;->c:Lcom/transsnet/login/widget/LoginProgressBar;

    .line 190
    .line 191
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    check-cast p1, Lmx/h;

    .line 202
    .line 203
    iget-object p1, p1, Lmx/h;->e:Lmx/l;

    .line 204
    .line 205
    iget-object p1, p1, Lmx/l;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    .line 207
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    check-cast p1, Lmx/h;

    .line 218
    .line 219
    iget-object p1, p1, Lmx/h;->e:Lmx/l;

    .line 220
    .line 221
    iget-object p1, p1, Lmx/l;->e:Landroidx/appcompat/widget/AppCompatTextView;

    .line 222
    .line 223
    sget v0, Lcom/transsnet/login/R$string;->login_pwd_find:I

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    check-cast p1, Lmx/h;

    .line 233
    .line 234
    iget-object p1, p1, Lmx/h;->c:Landroidx/appcompat/widget/AppCompatButton;

    .line 235
    .line 236
    sget v0, Lcom/transsnet/login/R$string;->login_pwd_done:I

    .line 237
    .line 238
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 239
    .line 240
    .line 241
    goto/16 :goto_3

    .line 242
    .line 243
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    check-cast p1, Lmx/h;

    .line 248
    .line 249
    iget-object p1, p1, Lmx/h;->e:Lmx/l;

    .line 250
    .line 251
    iget-object p1, p1, Lmx/l;->c:Lcom/transsnet/login/widget/LoginProgressBar;

    .line 252
    .line 253
    const/4 v4, 0x3

    .line 254
    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    check-cast p1, Lmx/h;

    .line 262
    .line 263
    iget-object p1, p1, Lmx/h;->e:Lmx/l;

    .line 264
    .line 265
    iget-object p1, p1, Lmx/l;->c:Lcom/transsnet/login/widget/LoginProgressBar;

    .line 266
    .line 267
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Lmx/h;

    .line 278
    .line 279
    iget-object p1, p1, Lmx/h;->e:Lmx/l;

    .line 280
    .line 281
    iget-object p1, p1, Lmx/l;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 282
    .line 283
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Lmx/h;

    .line 294
    .line 295
    iget-object p1, p1, Lmx/h;->e:Lmx/l;

    .line 296
    .line 297
    iget-object p1, p1, Lmx/l;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 298
    .line 299
    const-string v1, "3/3"

    .line 300
    .line 301
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 305
    .line 306
    .line 307
    move-result-object p1

    .line 308
    check-cast p1, Lmx/h;

    .line 309
    .line 310
    iget-object p1, p1, Lmx/h;->e:Lmx/l;

    .line 311
    .line 312
    iget-object p1, p1, Lmx/l;->c:Lcom/transsnet/login/widget/LoginProgressBar;

    .line 313
    .line 314
    const/16 v1, 0x258

    .line 315
    .line 316
    const/16 v3, 0x384

    .line 317
    .line 318
    invoke-virtual {p1, v1, v3}, Lcom/transsnet/login/widget/LoginProgressBar;->setProgress(II)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    check-cast p1, Lmx/h;

    .line 326
    .line 327
    iget-object p1, p1, Lmx/h;->c:Landroidx/appcompat/widget/AppCompatButton;

    .line 328
    .line 329
    sget v1, Lcom/transsnet/login/R$string;->login_sign_up_now:I

    .line 330
    .line 331
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    check-cast p1, Lmx/h;

    .line 339
    .line 340
    iget-object p1, p1, Lmx/h;->g:Landroidx/appcompat/widget/AppCompatTextView;

    .line 341
    .line 342
    sget v1, Lcom/transsnet/login/R$string;->login_pwd_set_now:I

    .line 343
    .line 344
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 345
    .line 346
    .line 347
    const-class p1, Lkk/a;

    .line 348
    .line 349
    const/4 v1, 0x0

    .line 350
    new-array v3, v1, [Ljava/lang/Object;

    .line 351
    .line 352
    invoke-static {p1, v3}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    check-cast p1, Lkk/a;

    .line 357
    .line 358
    if-eqz p1, :cond_4

    .line 359
    .line 360
    invoke-interface {p1}, Lkk/a;->d()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    :cond_4
    const-string v3, "true"

    .line 365
    .line 366
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_9

    .line 371
    .line 372
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    check-cast v0, Lmx/h;

    .line 377
    .line 378
    iget-object v0, v0, Lmx/h;->h:Landroid/view/ViewStub;

    .line 379
    .line 380
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    invoke-static {v0}, Lmx/k;->a(Landroid/view/View;)Lmx/k;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-interface {p1}, Lkk/a;->h()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v3

    .line 392
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lqi/b;

    .line 393
    .line 394
    .line 395
    move-result-object v4

    .line 396
    if-eqz v4, :cond_7

    .line 397
    .line 398
    invoke-virtual {v4}, Lqi/b;->g()Ljava/util/HashMap;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    if-eqz v4, :cond_7

    .line 403
    .line 404
    if-eqz v3, :cond_6

    .line 405
    .line 406
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 407
    .line 408
    .line 409
    move-result v5

    .line 410
    if-nez v5, :cond_5

    .line 411
    .line 412
    goto :goto_1

    .line 413
    :cond_5
    move v5, v1

    .line 414
    goto :goto_2

    .line 415
    :cond_6
    :goto_1
    move v5, v2

    .line 416
    :goto_2
    xor-int/2addr v2, v5

    .line 417
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    const-string v5, "hasInviteCode"

    .line 422
    .line 423
    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    check-cast v2, Ljava/lang/String;

    .line 428
    .line 429
    :cond_7
    iget-object v2, v0, Lmx/k;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 430
    .line 431
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    .line 433
    .line 434
    iget-object v2, v0, Lmx/k;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 435
    .line 436
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 437
    .line 438
    .line 439
    move-result-object v3

    .line 440
    if-eqz v3, :cond_8

    .line 441
    .line 442
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    :cond_8
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 447
    .line 448
    .line 449
    iget-object v1, v0, Lmx/k;->c:Landroidx/appcompat/widget/AppCompatImageView;

    .line 450
    .line 451
    new-instance v2, Lcom/transsnet/login/phone/f1;

    .line 452
    .line 453
    invoke-direct {v2, p1, p0}, Lcom/transsnet/login/phone/f1;-><init>(Lkk/a;Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 454
    .line 455
    .line 456
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 457
    .line 458
    .line 459
    iget-object p1, v0, Lmx/k;->b:Landroidx/appcompat/widget/AppCompatEditText;

    .line 460
    .line 461
    const-string v1, "etCode"

    .line 462
    .line 463
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    new-instance v1, Lcom/transsnet/login/phone/LoginSetPwdActivity$a;

    .line 467
    .line 468
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity$a;-><init>(Lcom/transsnet/login/phone/LoginSetPwdActivity;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 472
    .line 473
    .line 474
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->e:Lmx/k;

    .line 475
    .line 476
    :cond_9
    :goto_3
    return-void
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

.method public newLogViewConfig()Lqi/b;
    .locals 5

    .line 1
    new-instance v0, Lqi/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->getPageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v1, v4, v2, v3}, Lqi/b;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/transsion/baseui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->y0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginSetPwdActivity;->q0()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lmx/h;

    .line 9
    .line 10
    iget-object v0, v0, Lmx/h;->d:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->g:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lmx/h;

    .line 9
    .line 10
    iget-object v0, v0, Lmx/h;->d:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginSetPwdActivity;->g:Ljava/lang/Runnable;

    .line 13
    .line 14
    const-wide/16 v2, 0x1f4

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lmx/h;

    .line 24
    .line 25
    iget-object v0, v0, Lmx/h;->e:Lmx/l;

    .line 26
    .line 27
    iget-object v0, v0, Lmx/l;->c:Lcom/transsnet/login/widget/LoginProgressBar;

    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Luf/c;->i(Landroid/view/View;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0}, Lcom/transsnet/login/widget/LoginProgressBar;->getStartProgress()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-gt v1, v2, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/transsnet/login/widget/LoginProgressBar;->startProgressIncrease()V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public r0()Lmx/h;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmx/h;->c(Landroid/view/LayoutInflater;)Lmx/h;

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
