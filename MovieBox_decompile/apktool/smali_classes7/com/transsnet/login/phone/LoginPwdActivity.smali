.class public final Lcom/transsnet/login/phone/LoginPwdActivity;
.super Lcom/transsion/baseui/activity/BaseActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/activity/BaseActivity<",
        "Lmx/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u000f\u0010\u0008\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\t\u0010\u0004J\u0019\u0010\u000c\u001a\u00020\u00052\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0019\u0010\u0010\u001a\u00020\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0004J\u000f\u0010\u0013\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0004J\u000f\u0010\u0014\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0004J\u000f\u0010\u0015\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0004J\u000f\u0010\u0017\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u0018J\u000f\u0010\u001a\u001a\u00020\u0016H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0018J\u0019\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u0011J\u000f\u0010\u001d\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u001d\u0010\u0004J\u0019\u0010 \u001a\u00020\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0014\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0019\u0010$\u001a\u00020\u00052\u0008\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016\u00a2\u0006\u0004\u0008$\u0010!J\u000f\u0010%\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008%\u0010\u0004J\u000f\u0010&\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008&\u0010\u0004J\u000f\u0010\'\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008(\u0010\u0018J\u000f\u0010)\u001a\u00020\u0016H\u0016\u00a2\u0006\u0004\u0008)\u0010\u0018J\u000f\u0010*\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u000f\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008-\u0010.R\u0018\u00102\u001a\u0004\u0018\u00010/8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u00101R\u0018\u00105\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00083\u00104R\u0016\u00108\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0018\u0010<\u001a\u0004\u0018\u0001098\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010@\u001a\u00020=8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008>\u0010?R&\u0010E\u001a\u0012\u0012\u0004\u0012\u00020\u000e0Aj\u0008\u0012\u0004\u0012\u00020\u000e`B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0018\u0010H\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR\u001e\u0010M\u001a\n\u0012\u0004\u0012\u00020J\u0018\u00010I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008K\u0010LR\u001e\u0010P\u001a\n\u0012\u0004\u0012\u00020N\u0018\u00010I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010LR\u001e\u0010R\u001a\n\u0012\u0004\u0012\u00020N\u0018\u00010I8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010LR\u0014\u0010V\u001a\u00020S8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008T\u0010UR\u0016\u0010X\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008W\u00107\u00a8\u0006Y"
    }
    d2 = {
        "Lcom/transsnet/login/phone/LoginPwdActivity;",
        "Lcom/transsion/baseui/activity/BaseActivity;",
        "Lmx/g;",
        "<init>",
        "()V",
        "",
        "initData",
        "E0",
        "T0",
        "G0",
        "Lcom/transsnet/loginapi/bean/Country;",
        "country",
        "d1",
        "(Lcom/transsnet/loginapi/bean/Country;)V",
        "",
        "phoneNum",
        "e1",
        "(Ljava/lang/String;)V",
        "y0",
        "showLoading",
        "D0",
        "z0",
        "",
        "x0",
        "()Z",
        "A0",
        "B0",
        "msg",
        "c1",
        "C0",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "F0",
        "()Lmx/g;",
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
        "b",
        "Lcom/transsnet/loginapi/bean/Country;",
        "mCountry",
        "c",
        "Z",
        "mCheckPhoneNumFinished",
        "Lkj/h;",
        "d",
        "Lkj/h;",
        "mBaseLoadingDialog",
        "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;",
        "e",
        "Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;",
        "requestBody",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "f",
        "Ljava/util/ArrayList;",
        "existPhoneNumList",
        "g",
        "Ljava/lang/String;",
        "source",
        "Landroidx/activity/result/b;",
        "Landroidx/activity/result/IntentSenderRequest;",
        "h",
        "Landroidx/activity/result/b;",
        "requestPhoneLaunch",
        "Landroid/content/Intent;",
        "i",
        "requestCountryLaunch",
        "j",
        "loginLaunch",
        "Ljava/lang/Runnable;",
        "k",
        "Ljava/lang/Runnable;",
        "mRunnable",
        "l",
        "isLoginEnable",
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

.field private b:Lcom/transsnet/loginapi/bean/Country;

.field private c:Z

.field private d:Lkj/h;

.field private e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

.field private f:Ljava/util/ArrayList;

.field private g:Ljava/lang/String;

.field private h:Landroidx/activity/result/b;

.field private i:Landroidx/activity/result/b;

.field private j:Landroidx/activity/result/b;

.field private final k:Ljava/lang/Runnable;

.field private l:Z


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
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->f:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Lcom/transsnet/login/phone/l0;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/transsnet/login/phone/l0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->k:Ljava/lang/Runnable;

    .line 24
    .line 25
    return-void
.end method

.method private final A0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/g;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    if-lez v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    :cond_1
    return v1
.end method

.method private final B0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/g;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/g;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsnet/login/phone/widget/LoginPwdEditText;->isCanClickNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final C0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/g;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

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

.method private final D0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->d:Lkj/h;

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

.method private final E0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->showLoading()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lmx/g;

    .line 9
    .line 10
    iget-object v0, v0, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

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
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setPhone(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->b:Lcom/transsnet/loginapi/bean/Country;

    .line 28
    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/transsnet/loginapi/bean/Country;->getCode()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setCc(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->f:Ljava/util/ArrayList;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getCc()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getPhone()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 80
    .line 81
    const/4 v2, 0x2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->E(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;I)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 87
    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->q(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_1
    return-void
.end method

.method private final G0()V
    .locals 2

    .line 1
    new-instance v0, Lf/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lf/j;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/transsnet/login/phone/s0;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/s0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->i:Landroidx/activity/result/b;

    .line 16
    .line 17
    new-instance v0, Lf/k;

    .line 18
    .line 19
    invoke-direct {v0}, Lf/k;-><init>()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/transsnet/login/phone/t0;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/t0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->h:Landroidx/activity/result/b;

    .line 32
    .line 33
    new-instance v0, Lf/j;

    .line 34
    .line 35
    invoke-direct {v0}, Lf/j;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/transsnet/login/phone/u0;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/u0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->registerForActivityResult(Lf/a;Landroidx/activity/result/a;)Landroidx/activity/result/b;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->j:Landroidx/activity/result/b;

    .line 48
    .line 49
    return-void
.end method

.method private static final H0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 2

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
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    const-string v0, "countryCode"

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    instance-of v0, p1, Lcom/transsnet/loginapi/bean/Country;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    check-cast p1, Lcom/transsnet/loginapi/bean/Country;

    .line 30
    .line 31
    invoke-direct {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->d1(Lcom/transsnet/loginapi/bean/Country;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private static final I0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 2

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
    move-result v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    const-string v0, "com.google.android.gms.credentials.Credential"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/gms/auth/api/credentials/Credential;

    .line 27
    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->getId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-eqz p1, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->r(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->c:Z

    .line 47
    .line 48
    return-void
.end method

.method private static final J0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroidx/activity/result/ActivityResult;)V
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

.method private static final K0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 2

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
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->x0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget p1, Lcom/transsnet/login/R$string;->login_select_country_code_tips:I

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->c1(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->A0()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    sget p1, Lcom/transsnet/login/R$string;->login_phone_err:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->c1(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->B0()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    sget p1, Lcom/transsnet/login/R$string;->login_account_err:I

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->c1(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->showLoading()V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lmx/g;

    .line 68
    .line 69
    iget-object v0, v0, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    :cond_3
    const-string v0, ""

    .line 84
    .line 85
    :cond_4
    invoke-virtual {p1, v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setPhone(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->b:Lcom/transsnet/loginapi/bean/Country;

    .line 91
    .line 92
    if-eqz v0, :cond_5

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/transsnet/loginapi/bean/Country;->getCode()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    goto :goto_0

    .line 99
    :cond_5
    const/4 v0, 0x0

    .line 100
    :goto_0
    invoke-virtual {p1, v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setCc(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 104
    .line 105
    sget-object v0, Lwg/a;->a:Lwg/a$a;

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Lmx/g;

    .line 112
    .line 113
    iget-object v1, v1, Lmx/g;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lwg/a$a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1, v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setPassword(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 131
    .line 132
    if-eqz p1, :cond_7

    .line 133
    .line 134
    iget-object p0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 135
    .line 136
    invoke-virtual {p1, p0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->J(Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_6
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 141
    .line 142
    sget p1, Lcom/transsnet/login/R$string;->login_net_err:I

    .line 143
    .line 144
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 145
    .line 146
    .line 147
    :cond_7
    :goto_1
    return-void
.end method

.method private static final L0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
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
    const-string v1, "EMAIL"

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

.method private static final M0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final N0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/KeyboardUtils;->d(Landroid/app/Activity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final O0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lmx/g;

    .line 6
    .line 7
    iget-object p1, p1, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->i:Landroidx/activity/result/b;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-class v1, Lcom/transsnet/login/country/LoginSelectCountryActivity;

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method private static final P0(Lcom/transsnet/login/phone/LoginPwdActivity;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/transsnet/login/phone/LoginPwdActivity;->c1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->z0()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method

.method private static final Q0(Lmx/g;Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    .line 6
    .line 7
    iget-object p0, p1, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setPhone(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private static final R0(Lmx/g;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lmx/g;->e:Landroidx/appcompat/widget/AppCompatImageView;

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
    iget-object p1, p0, Lmx/g;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 13
    .line 14
    iget-object v0, p0, Lmx/g;->e:Landroidx/appcompat/widget/AppCompatImageView;

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
    iget-object p0, p0, Lmx/g;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

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

.method private static final S0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->x0()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 8
    .line 9
    sget p1, Lcom/transsnet/login/R$string;->login_select_country_code_tips:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->A0()Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    sget-object p0, Lfh/b;->a:Lfh/b$a;

    .line 22
    .line 23
    sget p1, Lcom/transsnet/login/R$string;->login_phone_err:I

    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lfh/b$a;->d(I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->E0()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method private final T0()V
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
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->y()Landroidx/lifecycle/LiveData;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Lcom/transsnet/login/phone/b0;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/transsnet/login/phone/b0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 25
    .line 26
    .line 27
    new-instance v3, Lcom/transsnet/login/phone/LoginPwdActivity$b;

    .line 28
    .line 29
    invoke-direct {v3, v2}, Lcom/transsnet/login/phone/LoginPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->C()Landroidx/lifecycle/LiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v2, Lcom/transsnet/login/phone/m0;

    .line 40
    .line 41
    invoke-direct {v2, p0}, Lcom/transsnet/login/phone/m0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Lcom/transsnet/login/phone/LoginPwdActivity$b;

    .line 45
    .line 46
    invoke-direct {v3, v2}, Lcom/transsnet/login/phone/LoginPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->B()Landroidx/lifecycle/LiveData;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v2, Lcom/transsnet/login/phone/n0;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/transsnet/login/phone/n0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 59
    .line 60
    .line 61
    new-instance v3, Lcom/transsnet/login/phone/LoginPwdActivity$b;

    .line 62
    .line 63
    invoke-direct {v3, v2}, Lcom/transsnet/login/phone/LoginPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->A()Landroidx/lifecycle/LiveData;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    new-instance v2, Lcom/transsnet/login/phone/o0;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Lcom/transsnet/login/phone/o0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 76
    .line 77
    .line 78
    new-instance v3, Lcom/transsnet/login/phone/LoginPwdActivity$b;

    .line 79
    .line 80
    invoke-direct {v3, v2}, Lcom/transsnet/login/phone/LoginPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->G()Landroidx/lifecycle/LiveData;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v2, Lcom/transsnet/login/phone/p0;

    .line 91
    .line 92
    invoke-direct {v2, p0}, Lcom/transsnet/login/phone/p0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lcom/transsnet/login/phone/LoginPwdActivity$b;

    .line 96
    .line 97
    invoke-direct {v3, v2}, Lcom/transsnet/login/phone/LoginPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->u()Landroidx/lifecycle/LiveData;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    new-instance v2, Lcom/transsnet/login/phone/q0;

    .line 108
    .line 109
    invoke-direct {v2, p0}, Lcom/transsnet/login/phone/q0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 110
    .line 111
    .line 112
    new-instance v3, Lcom/transsnet/login/phone/LoginPwdActivity$b;

    .line 113
    .line 114
    invoke-direct {v3, v2}, Lcom/transsnet/login/phone/LoginPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->t()Landroidx/lifecycle/LiveData;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    new-instance v1, Lcom/transsnet/login/phone/r0;

    .line 125
    .line 126
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/r0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 127
    .line 128
    .line 129
    new-instance v2, Lcom/transsnet/login/phone/LoginPwdActivity$b;

    .line 130
    .line 131
    invoke-direct {v2, v1}, Lcom/transsnet/login/phone/LoginPwdActivity$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->j(Landroidx/lifecycle/u;Landroidx/lifecycle/c0;)V

    .line 135
    .line 136
    .line 137
    :cond_0
    return-void
.end method

.method private static final U0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/loginapi/bean/Country;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->d1(Lcom/transsnet/loginapi/bean/Country;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final V0(Lcom/transsnet/login/phone/LoginPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->e1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final W0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->D0()V

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
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->g:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->getPageName()Ljava/lang/String;

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

.method private static final X0(Lcom/transsnet/login/phone/LoginPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->c1(Ljava/lang/String;)V

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
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->g:Ljava/lang/String;

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
    invoke-virtual {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->getPageName()Ljava/lang/String;

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

.method private static final Y0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->D0()V

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
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

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
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->g:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    iget-object p0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->j:Landroidx/activity/result/b;

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

.method private static final Z0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)Lkotlin/Unit;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->D0()V

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
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->f:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getCc()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

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
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 46
    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    iget-object p0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

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
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->D0()V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lfh/b;->a:Lfh/b$a;

    .line 60
    .line 61
    sget v0, Lcom/transsnet/login/R$string;->login_phone_not_exist:I

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p1, p0}, Lfh/b$a;->e(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0
.end method

.method private static final a1(Lcom/transsnet/login/phone/LoginPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->c1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static synthetic b0(Lcom/transsnet/login/phone/LoginPwdActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->b1(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b1(Lcom/transsnet/login/phone/LoginPwdActivity;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getPhone()Ljava/lang/String;

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
    check-cast p0, Lmx/g;

    .line 21
    .line 22
    iget-object p0, p0, Lmx/g;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

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
    check-cast p0, Lmx/g;

    .line 30
    .line 31
    iget-object p0, p0, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

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

.method public static synthetic c0(Lcom/transsnet/login/phone/LoginPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->a1(Lcom/transsnet/login/phone/LoginPwdActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final c1(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->C0()V

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
    check-cast v0, Lmx/g;

    .line 12
    .line 13
    iget-object v0, v0, Lmx/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

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
    check-cast p1, Lmx/g;

    .line 23
    .line 24
    iget-object p1, p1, Lmx/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

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

.method public static synthetic d0(Lcom/transsnet/login/phone/LoginPwdActivity;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/login/phone/LoginPwdActivity;->P0(Lcom/transsnet/login/phone/LoginPwdActivity;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d1(Lcom/transsnet/loginapi/bean/Country;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->b:Lcom/transsnet/loginapi/bean/Country;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getCountry_s()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lcom/transsnet/loginapi/bean/Country;->getCode()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " + "

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lmx/g;

    .line 38
    .line 39
    iget-object v0, v0, Lmx/g;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lmx/g;

    .line 49
    .line 50
    iget-object p1, p1, Lmx/g;->n:Landroidx/appcompat/widget/AppCompatTextView;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const/4 p1, 0x0

    .line 64
    :goto_0
    sget v0, Lcom/transsnet/login/R$string;->login_select_country_code_tips:I

    .line 65
    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->C0()V

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->z0()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method public static synthetic e0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->W0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/loginapi/bean/UserInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e1(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lmx/g;

    .line 6
    .line 7
    iget-object v0, v0, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic f0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->O0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->M0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->J0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->S0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final initData()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "source"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseActivity;->getLogViewConfig()Lqi/b;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v2}, Lqi/b;->g()Ljava/util/HashMap;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->g:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->b:Lcom/transsnet/loginapi/bean/Country;

    .line 38
    .line 39
    if-nez v0, :cond_3

    .line 40
    .line 41
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->a:Lcom/transsnet/login/phone/LoginPhoneViewModel;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/transsnet/login/phone/LoginPhoneViewModel;->w()V

    .line 46
    .line 47
    .line 48
    :cond_2
    sget v0, Lcom/transsnet/login/R$string;->login_select_country_code_tips:I

    .line 49
    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Lcom/transsnet/login/phone/LoginPwdActivity;->c1(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-direct {p0, v0}, Lcom/transsnet/login/phone/LoginPwdActivity;->d1(Lcom/transsnet/loginapi/bean/Country;)V

    .line 59
    .line 60
    .line 61
    :goto_1
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getPhone()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-nez v0, :cond_4

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->y0()V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    const/4 v1, 0x1

    .line 74
    iput-boolean v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->c:Z

    .line 75
    .line 76
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Lmx/g;

    .line 81
    .line 82
    iget-object v1, v1, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lmx/g;

    .line 92
    .line 93
    iget-object v1, v1, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 94
    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    goto :goto_3

    .line 102
    :cond_5
    const/4 v0, 0x0

    .line 103
    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->f:Ljava/util/ArrayList;

    .line 107
    .line 108
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 109
    .line 110
    invoke-virtual {v1}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getCc()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iget-object v2, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->getPhone()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    new-instance v3, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method public static synthetic j0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->Y0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->I0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic l0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->L0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic m0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->N0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/loginapi/bean/Country;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->U0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/loginapi/bean/Country;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->Z0(Lcom/transsnet/login/phone/LoginPwdActivity;Lcom/transsnet/login/phone/bean/LoginCheckPhoneExistResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lcom/transsnet/login/phone/LoginPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->V0(Lcom/transsnet/login/phone/LoginPwdActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic q0(Lmx/g;Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsnet/login/phone/LoginPwdActivity;->Q0(Lmx/g;Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r0(Lmx/g;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->R0(Lmx/g;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s0(Lcom/transsnet/login/phone/LoginPwdActivity;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->X0(Lcom/transsnet/login/phone/LoginPwdActivity;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final showLoading()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->d:Lkj/h;

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
    iput-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->d:Lkj/h;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->d:Lkj/h;

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

.method public static synthetic t0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->H0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic u0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity;->K0(Lcom/transsnet/login/phone/LoginPwdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v0(Lcom/transsnet/login/phone/LoginPwdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->z0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic w0(Lcom/transsnet/login/phone/LoginPwdActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->C0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->b:Lcom/transsnet/loginapi/bean/Country;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method private final y0()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-instance v1, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    .line 3
    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->setPhoneNumberIdentifierSupported(Z)Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->build()Lcom/google/android/gms/auth/api/credentials/HintRequest;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "build(...)"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0}, Lcom/google/android/gms/auth/api/credentials/Credentials;->getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;->getHintPickerIntent(Lcom/google/android/gms/auth/api/credentials/HintRequest;)Landroid/app/PendingIntent;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v2, "getHintPickerIntent(...)"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Landroidx/activity/result/IntentSenderRequest$a;

    .line 34
    .line 35
    invoke-direct {v2, v1}, Landroidx/activity/result/IntentSenderRequest$a;-><init>(Landroid/app/PendingIntent;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest$a;->a()Landroidx/activity/result/IntentSenderRequest;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->h:Landroidx/activity/result/b;

    .line 43
    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroidx/activity/result/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    iput-boolean v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->c:Z

    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Lmx/g;

    .line 57
    .line 58
    iget-object v0, v0, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/blankj/utilcode/util/KeyboardUtils;->i(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    :goto_0
    return-void
.end method

.method private final z0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->x0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->A0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->B0()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    iput-boolean v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->l:Z

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public F0()Lmx/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lmx/g;->c(Landroid/view/LayoutInflater;)Lmx/g;

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

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "password_login"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic getViewBinding()Lf4/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->F0()Lmx/g;

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
    const-string v0, "requestData"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    iget-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 14
    .line 15
    :cond_0
    const-string v0, "null cannot be cast to non-null type com.transsnet.login.phone.bean.LoginSmsCodeRequest"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast p1, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->e:Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lcom/transsnet/login/phone/bean/LoginSmsCodeRequest;->setAuthType(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "country"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/transsnet/loginapi/bean/Country;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->b:Lcom/transsnet/loginapi/bean/Country;

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Lmx/g;

    .line 47
    .line 48
    iget-object v0, p1, Lmx/g;->f:Landroidx/appcompat/widget/AppCompatButton;

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p1, Lmx/g;->f:Landroidx/appcompat/widget/AppCompatButton;

    .line 55
    .line 56
    new-instance v1, Lcom/transsnet/login/phone/c0;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/c0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p1, Lmx/g;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 65
    .line 66
    new-instance v1, Lcom/transsnet/login/phone/d0;

    .line 67
    .line 68
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/d0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lmx/g;->b()Landroid/widget/LinearLayout;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Lcom/transsnet/login/phone/e0;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/e0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p1, Lmx/g;->l:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    new-instance v1, Lcom/transsnet/login/phone/f0;

    .line 89
    .line 90
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/f0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p1, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 97
    .line 98
    const-string v1, "etPhone"

    .line 99
    .line 100
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v1, Lcom/transsnet/login/phone/LoginPwdActivity$a;

    .line 104
    .line 105
    invoke-direct {v1, p0, p1}, Lcom/transsnet/login/phone/LoginPwdActivity$a;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;Lmx/g;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p1, Lmx/g;->h:Lcom/transsnet/login/phone/widget/LoginPwdEditText;

    .line 112
    .line 113
    new-instance v1, Lcom/transsnet/login/phone/g0;

    .line 114
    .line 115
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/g0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Lcom/transsnet/login/phone/widget/LoginPwdEditText;->setEnableStatusChangeListener(Lkotlin/jvm/functions/Function2;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p1, Lmx/g;->c:Landroidx/appcompat/widget/AppCompatImageButton;

    .line 122
    .line 123
    new-instance v1, Lcom/transsnet/login/phone/h0;

    .line 124
    .line 125
    invoke-direct {v1, p1, p0}, Lcom/transsnet/login/phone/h0;-><init>(Lmx/g;Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p1, Lmx/g;->e:Landroidx/appcompat/widget/AppCompatImageView;

    .line 132
    .line 133
    new-instance v1, Lcom/transsnet/login/phone/i0;

    .line 134
    .line 135
    invoke-direct {v1, p1}, Lcom/transsnet/login/phone/i0;-><init>(Lmx/g;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p1, Lmx/g;->k:Landroidx/appcompat/widget/AppCompatTextView;

    .line 142
    .line 143
    new-instance v1, Lcom/transsnet/login/phone/j0;

    .line 144
    .line 145
    invoke-direct {v1, p0}, Lcom/transsnet/login/phone/j0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p1, Lmx/g;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    const-string v1, "btnEmail"

    .line 154
    .line 155
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    const/high16 v1, 0x41000000    # 8.0f

    .line 159
    .line 160
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    int-to-float v1, v1

    .line 165
    invoke-static {v0, v1}, Lcom/transsion/baseui/util/q;->c(Landroid/view/View;F)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p1, Lmx/g;->d:Landroidx/appcompat/widget/AppCompatTextView;

    .line 169
    .line 170
    new-instance v0, Lcom/transsnet/login/phone/k0;

    .line 171
    .line 172
    invoke-direct {v0, p0}, Lcom/transsnet/login/phone/k0;-><init>(Lcom/transsnet/login/phone/LoginPwdActivity;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    .line 177
    .line 178
    sget-object p1, Lcom/transsnet/login/t;->a:Lcom/transsnet/login/t;

    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, Lmx/g;

    .line 185
    .line 186
    iget-object v0, v0, Lmx/g;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    const-string v1, "tvPrivacy"

    .line 189
    .line 190
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {p1, p0, v0}, Lcom/transsnet/login/t;->a(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatTextView;)V

    .line 194
    .line 195
    .line 196
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
    invoke-virtual {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->getPageName()Ljava/lang/String;

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
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->G0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->T0()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->initData()V

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
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->h:Landroidx/activity/result/b;

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
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->i:Landroidx/activity/result/b;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/activity/result/b;->c()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->j:Landroidx/activity/result/b;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/activity/result/b;->c()V

    .line 23
    .line 24
    .line 25
    :cond_2
    invoke-direct {p0}, Lcom/transsnet/login/phone/LoginPwdActivity;->D0()V

    .line 26
    .line 27
    .line 28
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
    check-cast v0, Lmx/g;

    .line 9
    .line 10
    iget-object v0, v0, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->k:Ljava/lang/Runnable;

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
    iget-boolean v0, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/transsion/baseui/activity/BaseCommonActivity;->getMViewBinding()Lf4/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lmx/g;

    .line 13
    .line 14
    iget-object v0, v0, Lmx/g;->g:Landroidx/appcompat/widget/AppCompatEditText;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/transsnet/login/phone/LoginPwdActivity;->k:Ljava/lang/Runnable;

    .line 17
    .line 18
    const-wide/16 v2, 0x1f4

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
