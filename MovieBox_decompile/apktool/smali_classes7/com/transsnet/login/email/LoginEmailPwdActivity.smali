.class public final Lcom/transsnet/login/email/LoginEmailPwdActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lmx/c;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u0019\u0010\u000c\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0019\u0010\u0015\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\rJ\u000f\u0010\u0016\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0004J\u0019\u0010\u0019\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0014\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001aJ\u000f\u0010\u001e\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u0004J\u000f\u0010\u001f\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0004J\u000f\u0010 \u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008 \u0010\u0004J\u000f\u0010!\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0012J\u000f\u0010\"\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008\"\u0010\u0012J\u000f\u0010#\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008#\u0010$J\u000f\u0010&\u001a\u00020%H\u0016\u00a2\u0006\u0004\u0008&\u0010\'R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008-\u0010.R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00081\u00102R&\u00108\u001a\u0012\u0012\u0004\u0012\u00020\n04j\u0008\u0012\u0004\u0012\u00020\n`58\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0018\u0010;\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:R\u001e\u0010@\u001a\n\u0012\u0004\u0012\u00020=\u0018\u00010<8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R\u0014\u0010D\u001a\u00020A8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008B\u0010C\u00a8\u0006E"
    }
    d2 = {
        "Lcom/transsnet/login/email/LoginEmailPwdActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lmx/c;",
        "<init>",
        "()V",
        "",
        "initData",
        "x0",
        "J0",
        "z0",
        "",
        "phoneNum",
        "S0",
        "(Ljava/lang/String;)V",
        "showLoading",
        "w0",
        "",
        "t0",
        "()Z",
        "u0",
        "msg",
        "R0",
        "v0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "y0",
        "()Lmx/c;",
        "initView",
        "onResume",
        "onPause",
        "onDestroy",
        "isTranslucent",
        "isStatusDark",
        "getPageName",
        "()Ljava/lang/String;",
        "Lqi/b;",
        "newLogViewConfig",
        "()Lqi/b;",
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
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "d",
        "Ljava/util/ArrayList;",
        "existEmailNumList",
        "e",
        "Ljava/lang/String;",
        "source",
        "Landroidx/activity/result/b;",
        "Landroid/content/Intent;",
        "f",
        "Landroidx/activity/result/b;",
        "loginLaunch",
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

.field private d:Ljava/util/ArrayList;

.field private e:Ljava/lang/String;

.field private f:Landroidx/activity/result/b;

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
    iput-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->d:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/transsnet/login/email/j;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/transsnet/login/email/j;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->g:Ljava/lang/Runnable;

    .line 24
    .line 25
    return-void
.end method

.method private static final A0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v0, -0x1

    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private static final B0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "KEY_LOGIN_TYPE"

    .line 7
    .line 8
    const-string v1, "PHONE"

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    const/16 v0, 0x2766

    .line 16
    .line 17
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final C0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
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
    if-eqz p1, :cond_6

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->t0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget p1, Lcom/transsnet/login/R$string;->login_email_err:I

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->R0(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->u0()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    sget p1, Lcom/transsnet/login/R$string;->login_account_err:I

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->R0(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->showLoading()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lmx/c;

    .line 49
    .line 50
    iget-object p1, p1, Lmx/c;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, ""

    .line 57
    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    :cond_2
    move-object p1, v0

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lmx/c;

    .line 74
    .line 75
    iget-object v2, v2, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    move-object v0, v2

    .line 91
    :cond_5
    :goto_0
    invoke-virtual {v1, v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setMail(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 95
    .line 96
    sget-object v1, Lwg/a;->a:Lwg/a$a;

    .line 97
    .line 98
    invoke-virtual {v1, p1}, Lwg/a$a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v0, p1}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setPassword(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 106
    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    iget-object p0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 110
    .line 111
    invoke-virtual {p1, p0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->J(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_6
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 116
    .line 117
    sget p1, Lcom/transsnet/login/R$string;->login_net_err:I

    .line 118
    .line 119
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 120
    .line 121
    .line 122
    :cond_7
    :goto_1
    return-void
.end method

.method private static final D0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final E0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final F0(Lcom/transsnet/login/email/LoginEmailPwdActivity;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->R0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final G0(Lmx/c;Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p1, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setPhone(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static final H0(Lmx/c;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmx/c;->d:Landroidx/appcompat/widget/AppCompatImageView;

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
    iget-object p1, p0, Lmx/c;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 13
    .line 14
    iget-object v0, p0, Lmx/c;->d:Landroidx/appcompat/widget/AppCompatImageView;

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
    iget-object p0, p0, Lmx/c;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

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

.method private static final I0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->t0()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->x0()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 12
    .line 13
    sget p1, Lcom/transsnet/login/R$string;->login_email_err:I

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method private final J0()V
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
    iput-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->C()Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/transsnet/login/email/k;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/transsnet/login/email/k;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->B()Landroidx/lifecycle/LiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/transsnet/login/email/l;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/transsnet/login/email/l;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;

    .line 45
    .line 46
    invoke-direct {v3, v2}, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->A()Landroidx/lifecycle/LiveData;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lcom/transsnet/login/email/m;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/transsnet/login/email/m;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;

    .line 62
    .line 63
    invoke-direct {v3, v2}, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->G()Landroidx/lifecycle/LiveData;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lcom/transsnet/login/email/n;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Lcom/transsnet/login/email/n;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;

    .line 79
    .line 80
    invoke-direct {v3, v2}, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->u()Landroidx/lifecycle/LiveData;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Lcom/transsnet/login/email/o;

    .line 91
    .line 92
    invoke-direct {v2, p0}, Lcom/transsnet/login/email/o;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;

    .line 96
    .line 97
    invoke-direct {v3, v2}, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->t()Landroidx/lifecycle/LiveData;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v1, Lcom/transsnet/login/email/p;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/transsnet/login/email/p;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 110
    .line 111
    .line 112
    new-instance v2, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;

    .line 113
    .line 114
    invoke-direct {v2, v1}, Lcom/transsnet/login/email/LoginEmailPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 118
    .line 119
    .line 120
    :cond_0
    return-void
.end method

.method private static final K0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->S0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final L0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->w0()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, -0x1

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->finish()V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v0, "is_login"

    .line 22
    .line 23
    const-string v1, "true"

    .line 24
    .line 25
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->e:Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-string v1, "source"

    .line 33
    .line 34
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object v0, Lqi/h;->a:Lqi/h;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->getPageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {v0, p0, p1}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0
.end method

.method private static final M0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->R0(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v1, "error_code"

    .line 16
    .line 17
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->e:Ljava/lang/String;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    const-string v1, "source"

    .line 25
    .line 26
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    :cond_1
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->getPageName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {p1, p0, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private static final N0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->w0()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    new-instance p1, Landroid/content/Intent;

    .line 7
    .line 8
    const-class v0, Lcom/transsnet/login/phone/LoginPhoneCodeActivity;

    .line 9
    .line 10
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "requestData"

    .line 14
    .line 15
    iget-object v1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 16
    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x1

    .line 26
    invoke-virtual {v0, v1}, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->setReset(Z)V

    .line 27
    .line 28
    .line 29
    const-string v1, "checkPhoneData"

    .line 30
    .line 31
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    const-string v0, "source"

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->e:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->f:Landroidx/activity/result/b;

    .line 42
    .line 43
    if-eqz p0, :cond_0

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method private static final O0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->w0()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;->getExists()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->d:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getCc()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getPhone()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 50
    .line 51
    const/4 v0, 0x2

    .line 52
    invoke-virtual {p1, p0, v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->E(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->w0()V

    .line 57
    .line 58
    .line 59
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 60
    .line 61
    sget p1, Lcom/transsnet/login/R$string;->login_email_not_exist:I

    .line 62
    .line 63
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    return-object p0
.end method

.method private static final P0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->R0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final Q0(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getMail()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lmx/c;

    .line 21
    .line 22
    iget-object p0, p0, Lmx/c;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Lmx/c;

    .line 30
    .line 31
    iget-object p0, p0, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 32
    .line 33
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->clearFocus()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    .line 37
    .line 38
    .line 39
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->i(Landroid/view/View;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final R0(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->v0()V

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmx/c;

    .line 12
    .line 13
    iget-object v0, v0, Lmx/c;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lmx/c;

    .line 23
    .line 24
    iget-object p1, p1, Lmx/c;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private final S0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/c;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic b0(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->Q0(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->B0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->M0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->C0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->I0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->L0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h0(Lcom/transsnet/login/email/LoginEmailPwdActivity;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->F0(Lcom/transsnet/login/email/LoginEmailPwdActivity;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->E0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getMail()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Lmx/c;

    .line 14
    .line 15
    iget-object v1, v1, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lmx/c;

    .line 25
    .line 26
    iget-object v1, v1, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->d:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public static synthetic j0(Lmx/c;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->H0(Lmx/c;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic k0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->P0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->O0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->A0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lmx/c;Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->G0(Lmx/c;Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->N0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->K0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->D0(Lcom/transsnet/login/email/LoginEmailPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r0(Lcom/transsnet/login/email/LoginEmailPwdActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->t0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic s0(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->v0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final showLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->b:Lkj/h;

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
    iput-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->b:Lkj/h;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->b:Lkj/h;

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

.method private final t0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/c;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v0}, Lcom/blankj/utilcode/util/u;->b(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method private final u0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/c;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/c;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

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

.method private final v0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/c;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/c;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final w0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->b:Lkj/h;

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

.method private final x0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->showLoading()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lmx/c;

    .line 9
    .line 10
    iget-object v0, v0, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setMail(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->d:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    iget-object v1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 38
    .line 39
    const/4 v2, 0x2

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->E(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->q(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method private final z0()V
    .locals 2

    .line 1
    new-instance v0, Lf/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lf/j;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsnet/login/email/y;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/transsnet/login/email/y;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->f:Landroidx/activity/result/b;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "email_password_login"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->y0()Lmx/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string v0, "source"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lqi/b;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {v1}, Lqi/b;->g()Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->e:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "requestData"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 50
    .line 51
    :cond_2
    check-cast p1, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iput-object p1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 56
    .line 57
    :cond_3
    iget-object p1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 58
    .line 59
    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setAuthType(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    check-cast p1, Lmx/c;

    .line 68
    .line 69
    iget-object v1, p1, Lmx/c;->e:Landroidx/appcompat/widget/AppCompatButton;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p1, Lmx/c;->e:Landroidx/appcompat/widget/AppCompatButton;

    .line 75
    .line 76
    new-instance v1, Lcom/transsnet/login/email/q;

    .line 77
    .line 78
    invoke-direct {v1, p0}, Lcom/transsnet/login/email/q;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p1, Lmx/c;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 85
    .line 86
    new-instance v1, Lcom/transsnet/login/email/r;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/transsnet/login/email/r;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lmx/c;->b()Landroid/widget/LinearLayout;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v1, Lcom/transsnet/login/email/s;

    .line 99
    .line 100
    invoke-direct {v1, p0}, Lcom/transsnet/login/email/s;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->c:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getMail()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-nez v0, :cond_4

    .line 113
    .line 114
    const-string v0, ""

    .line 115
    .line 116
    :cond_4
    iget-object v1, p1, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 117
    .line 118
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    iget-object v1, p1, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p1, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 131
    .line 132
    const-string v1, "etMail"

    .line 133
    .line 134
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v1, Lcom/transsnet/login/email/LoginEmailPwdActivity$a;

    .line 138
    .line 139
    invoke-direct {v1, p0, p1}, Lcom/transsnet/login/email/LoginEmailPwdActivity$a;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;Lmx/c;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p1, Lmx/c;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 146
    .line 147
    new-instance v1, Lcom/transsnet/login/email/t;

    .line 148
    .line 149
    invoke-direct {v1, p0}, Lcom/transsnet/login/email/t;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0, v1}, Lcom/transsnet/login/phone/widget/LoginPwdEditText;->setEnableStatusChangeListener(Lkotlin/jvm/functions/Function2;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p1, Lmx/c;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 156
    .line 157
    new-instance v1, Lcom/transsnet/login/email/u;

    .line 158
    .line 159
    invoke-direct {v1, p1, p0}, Lcom/transsnet/login/email/u;-><init>(Lmx/c;Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p1, Lmx/c;->d:Landroidx/appcompat/widget/AppCompatImageView;

    .line 166
    .line 167
    new-instance v1, Lcom/transsnet/login/email/v;

    .line 168
    .line 169
    invoke-direct {v1, p1}, Lcom/transsnet/login/email/v;-><init>(Lmx/c;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p1, Lmx/c;->j:Landroidx/appcompat/widget/AppCompatTextView;

    .line 176
    .line 177
    new-instance v1, Lcom/transsnet/login/email/w;

    .line 178
    .line 179
    invoke-direct {v1, p0}, Lcom/transsnet/login/email/w;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    iget-object v0, p1, Lmx/c;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 186
    .line 187
    const-string v1, "btnPhoneLogin"

    .line 188
    .line 189
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const/high16 v1, 0x41000000    # 8.0f

    .line 193
    .line 194
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    int-to-float v1, v1

    .line 199
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/q;->c(Landroid/view/View;F)V

    .line 200
    .line 201
    .line 202
    iget-object p1, p1, Lmx/c;->f:Landroidx/appcompat/widget/AppCompatTextView;

    .line 203
    .line 204
    new-instance v0, Lcom/transsnet/login/email/x;

    .line 205
    .line 206
    invoke-direct {v0, p0}, Lcom/transsnet/login/email/x;-><init>(Lcom/transsnet/login/email/LoginEmailPwdActivity;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .line 211
    .line 212
    sget-object p1, Lcom/transsnet/login/t;->a:Lcom/transsnet/login/t;

    .line 213
    .line 214
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Lmx/c;

    .line 219
    .line 220
    iget-object v0, v0, Lmx/c;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 221
    .line 222
    const-string v1, "tvPrivacy"

    .line 223
    .line 224
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p1, p0, v0}, Lcom/transsnet/login/t;->a(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 228
    .line 229
    .line 230
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
    invoke-virtual {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->getPageName()Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->z0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->J0()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->initData()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/transsion/baseui/activity/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->f:Landroidx/activity/result/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/activity/result/b;->c()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/login/email/LoginEmailPwdActivity;->w0()V

    .line 12
    .line 13
    .line 14
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
    check-cast v0, Lmx/c;

    .line 9
    .line 10
    iget-object v0, v0, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->g:Ljava/lang/Runnable;

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
    check-cast v0, Lmx/c;

    .line 9
    .line 10
    iget-object v0, v0, Lmx/c;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsnet/login/email/LoginEmailPwdActivity;->g:Ljava/lang/Runnable;

    .line 13
    .line 14
    const-wide/16 v2, 0x1f4

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public y0()Lmx/c;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmx/c;->c(Landroid/view/LayoutInflater;)Lmx/c;

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
