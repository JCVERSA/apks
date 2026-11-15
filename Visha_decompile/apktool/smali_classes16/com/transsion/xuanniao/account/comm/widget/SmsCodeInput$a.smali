.class public Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$a;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$a;->a:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$a;->a:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;Z)Z

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$a;->a:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0p:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;->a()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$a;->a:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0Op:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "(%d)"

    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
