.class public Lup7$a;
.super LOppOOp0/OppO0O0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lup7;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lup7;


# direct methods
.method public constructor <init>(Lup7;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lup7$a;->k:Lup7;

    invoke-direct {p0, p2, p3}, LOppOOp0/OppO0O0;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(ILjava/lang/Object;Ljava/lang/String;)V
    .locals 0

    check-cast p2, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;

    iget-object p1, p0, Lup7$a;->k:Lup7;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lup7$a;->k:Lup7;

    invoke-virtual {p1}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget-object p1, p0, Lup7$a;->k:Lup7;

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;->getCaptchaTicket()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lup7;->c:Ljava/lang/String;

    iget-object p0, p0, Lup7$a;->k:Lup7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lwm7;

    invoke-virtual {p2}, Lcom/transsion/xuanniao/account/model/data/CaptchaRes;->getCaptchaBase64()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, LOppOp00/a;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p0, p1}, Lwm7;->i(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lup7$a;->k:Lup7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lup7$a;->k:Lup7;

    invoke-virtual {v0}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    iget v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->code:I

    const v1, 0x61c17

    if-ne v0, v1, :cond_1

    iget-object p2, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lup7$a;->k:Lup7;

    invoke-virtual {p2}, Lup7;->e()Lcom/transsion/xuanniao/account/verify/view/VerifyPhoneActivity;

    move-result-object p2

    invoke-static {p2}, Ltl7;->c(Landroid/content/Context;)Ltl7;

    move-result-object p2

    iget-object v0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/model/data/ErrorExtend;->getEndTime()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2}, Lkk7;->a()V

    iget-object v2, p2, Lkk7;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "key_captcha_limit_reset_pwd"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p2}, Lkk7;->b()V

    iget-object p2, p0, Lup7$a;->k:Lup7;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;->errorExtend:Lcom/transsion/xuanniao/account/model/data/ErrorExtend;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/model/data/ErrorExtend;->getEndTime()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lup7;->b(J)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, LOppOOp0/OppO0O0;->d(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseData;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lup7$a;->k:Lup7;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p0, Lwm7;

    invoke-interface {p0}, Lwm7;->g()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lup7$a;->k:Lup7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lup7$a;->k:Lup7;

    invoke-virtual {p0}, Lup7;->c()V

    return-void
.end method
