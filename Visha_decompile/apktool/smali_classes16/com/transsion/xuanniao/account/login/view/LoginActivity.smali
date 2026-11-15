.class public Lcom/transsion/xuanniao/account/login/view/LoginActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lkn7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;,
        Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;,
        Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;
    }
.end annotation


# static fields
.field public static final synthetic K:I


# instance fields
.field public A:Landroid/widget/TextView;

.field public B:Landroid/widget/Button;

.field public C:Landroid/widget/Button;

.field public D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

.field public E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

.field public F:Landroid/view/ViewGroup;

.field public G:Landroid/view/ViewGroup;

.field public H:Landroid/widget/ScrollView;

.field public I:Z

.field public J:Landroid/app/AlertDialog;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Ldo7;

.field public k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

.field public l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

.field public m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

.field public n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

.field public o:Landroid/widget/CheckBox;

.field public p:Landroid/widget/CheckBox;

.field public q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

.field public r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

.field public s:Z

.field public t:Landroid/widget/TextView;

.field public u:Landroid/widget/TextView;

.field public v:Z

.field public w:Z

.field public x:I

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x44d

    iput v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->e:I

    const/16 v0, 0x44e

    iput v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->f:I

    const/16 v0, 0x44f

    iput v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->g:I

    const/16 v0, 0x450

    iput v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->h:I

    const/16 v0, 0x451

    iput v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->i:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->s:Z

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->v:Z

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->w:Z

    const/4 v1, 0x7

    iput v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->x:I

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->I:Z

    return-void
.end method

.method public static D0(Lcom/transsion/xuanniao/account/login/view/LoginActivity;I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_vk_app_title:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_line_app_title:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_google_title:I

    goto :goto_0

    :cond_3
    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_facebook_title:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/widgetslib/dialog/d$a;

    sget v3, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v2, p0, v3}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_login_note:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v2

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_need_open:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfr7;

    invoke-direct {v3, p0, v1, p1}, Lfr7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lzq7;

    invoke-direct {v2, p0, v1}, Lzq7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static E0(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)Z
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_read_agreement:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public A0()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget v0, v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->d:I

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final B0(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "com.palm.id.log"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v2, "palmid"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->y:Ljava/lang/String;

    if-eqz p1, :cond_1

    :try_start_0
    const-string p1, "status"

    invoke-virtual {v1, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->z:I

    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->y:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ldo7;->d(ILjava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public C(J)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const-wide/16 v2, 0x3c

    div-long v4, p1, v2

    long-to-int v0, v4

    rem-long/2addr p1, v2

    long-to-int p1, p1

    goto :goto_0

    :cond_0
    move p1, v1

    move v0, p1

    :goto_0
    new-instance p2, Lcom/transsion/widgetslib/dialog/d$a;

    sget v2, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {p2, p0, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_frozen_tips:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->v:Z

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->C0(Landroid/widget/TextView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->v:Z

    :cond_1
    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->t:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public final C0(Landroid/widget/TextView;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_login_help:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_view_help:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :try_start_0
    new-instance v3, Ler7;

    new-instance v4, Lcom/transsion/xuanniao/account/login/view/LoginActivity$b;

    invoke-direct {v4, p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$b;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-direct {v3, p0, v4}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v0

    const/16 v1, 0x21

    invoke-virtual {v2, v3, v0, p0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.palm.id.log"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lir7;->a()Landroid/text/method/LinkMovementMethod;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public D(ILjava/lang/String;)V
    .locals 3

    const-string v0, "com.android.chrome"

    iput p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->z:I

    iput-object p2, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->y:Ljava/lang/String;

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lvl7;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lyib;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/auth-page/authBind?actionType=0&authType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "&authToken="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&clientId="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lgo7$a;->a:Lgo7;

    iget-object p1, p1, Lgo7;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&pkgName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_browser_unavailable:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public E(Lcom/transsion/xuanniao/account/model/data/PolicyRes;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "usage"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_user_agreement:I

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/PolicyRes;->usageUrl:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->B0(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_policy:I

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/PolicyRes;->privacyUrl:Ljava/lang/String;

    invoke-static {p0, p2, p1}, Lcom/transsion/xuanniao/account/help/view/WebViewActivity;->B0(Landroid/content/Context;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public F0(Z)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->onCancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public final G0(Z)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, v0, Ldo7;->n:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_0

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->k1()V

    :cond_0
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->g0()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->K0()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setOnlyPhoneNum()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p1, v2}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setSupportUserName(Z)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_email_phone_hint:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setHint(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->B:Landroid/widget/Button;

    if-eqz p1, :cond_3

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_login_or_register:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->C:Landroid/widget/Button;

    if-eqz p1, :cond_4

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_login_by_pwd:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    invoke-static {p0, v2}, Lvl7;->c(Landroid/app/Activity;Z)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->j1()V

    :cond_6
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->f0()V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setSupportUserName(Z)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_account_hint:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setHint(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->B:Landroid/widget/Button;

    if-eqz p1, :cond_8

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_login:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_8
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->C:Landroid/widget/Button;

    if-eqz p1, :cond_9

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_login_by_code:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p1}, Ldo7;->b()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-object p1, p1, Ldo7;->g:Ljava/lang/String;

    if-nez p1, :cond_a

    const-string p1, "com.palm.id.log"

    const-string v1, "pwd x acquireCaptcha"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ldo7;->g(Ljava/lang/String;)V

    :cond_a
    invoke-static {p0, v0}, Lvl7;->c(Landroid/app/Activity;Z)V

    :goto_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p1, v2}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setLogoColor(Z)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->L0()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->M0()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->H0()V

    return-void
.end method

.method public final H0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iget-boolean v0, v0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pO:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmq7;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v2, "^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {v2}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_3

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0, v1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setGetCodeEnable(Z)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0, v1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setGetCodeEnable(Z)V

    :goto_3
    return-void
.end method

.method public final I0()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->p()Z

    const-string v0, "source"

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->x0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ExternalCall"

    :cond_0
    return-object p0
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public final J0()V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->s:Z

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, v0, Ldo7;->i:Z

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz v0, :cond_5

    sget-object v0, Lgo7$a;->a:Lgo7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {v0, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    const-string v4, "user_info"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "nickName"

    iget-object v7, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "userName"

    iget-object v7, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "avatarUrl"

    iget-object v7, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "linked_id"

    iget-object v5, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->xuanniaoId:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "linked_pkg"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "linked_bd"

    invoke-static {}, Ljr7;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    const-string v4, "token_info"

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "access_token"

    invoke-virtual {v0, p0}, Lao7;->n(Landroid/content/Context;)V

    invoke-virtual {v0}, Lao7;->f()Lcom/transsion/xuanniao/account/model/data/Config;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, ""

    if-eqz v7, :cond_1

    :try_start_1
    iget-object v7, v7, Lcom/transsion/xuanniao/account/model/data/Config;->token:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v7, v8

    :goto_1
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "refresh_token"

    invoke-virtual {v0, p0}, Lao7;->n(Landroid/content/Context;)V

    invoke-virtual {v0}, Lao7;->f()Lcom/transsion/xuanniao/account/model/data/Config;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v8, v0, Lcom/transsion/xuanniao/account/model/data/Config;->refreshToken:Ljava/lang/String;

    :cond_2
    invoke-virtual {v5, v6, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v5, "open_id"

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->openId:Ljava/lang/String;

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    const-string v4, "version"

    const-string v5, "2.0.1.03"

    const-string v6, "appid"

    invoke-static {v1, v0, v6, v4, v5}, Lok7;->a(Lcom/transsion/palmsdk/data/PalmAuthRequest;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ti_s_result"

    const-string v4, "success"

    invoke-virtual {v0, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lwj;

    const-string v4, "sdk_auth_result"

    const/16 v5, 0x1e1e

    invoke-direct {v1, v4, v5}, Lwj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0, v3}, Lwj;->c(Landroid/os/Bundle;Landroid/os/Bundle;)Lwj;

    move-result-object v0

    invoke-virtual {v0}, Lwj;->b()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v0, v2}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->setResult(Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    goto :goto_5

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/transsion/xuanniao/account/center/view/UserCenterActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "source"

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->x0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->B1()V

    :cond_5
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public K(Ljava/lang/String;Lcom/transsion/xuanniao/account/model/data/LoginRes;)V
    .locals 9

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object p1

    const-string v1, ""

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->nickname:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p1}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-virtual {v0, p1}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    :goto_1
    invoke-virtual {v0, p0}, Lao7;->n(Landroid/content/Context;)V

    invoke-virtual {v0}, Lao7;->f()Lcom/transsion/xuanniao/account/model/data/Config;

    sget p1, Lam7;->a:I

    sget-object p1, Lgo7$a;->a:Lgo7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p1}, Ldo7;->p()Z

    iget-object p1, p2, Lcom/transsion/xuanniao/account/model/data/LoginRes;->loginedThird:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-nez p1, :cond_2

    sget-object p1, Lgo7$a;->a:Lgo7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J0()V

    goto :goto_2

    :cond_3
    sget-object p1, Lgo7$a;->a:Lgo7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J0()V

    :goto_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "notify"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "is_login"

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "AccountPrefs"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "sms_req_count"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-boolean v5, Ljr7;->a:Z

    if-nez v5, :cond_4

    const-string v5, "have_agree_brand"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v2

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/LoginRes;->account:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->xuanniaoId:Ljava/lang/String;

    invoke-virtual {v2, p2}, Lxj;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v2, "ext_privacy_policy_version"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "ext_user_agreement_version"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "ext_developer_policy_version"

    invoke-interface {p2, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v3

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_version:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "privacy_version"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_user_agreement_version:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "user_agreement_version"

    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v3 .. v8}, Lxj;->n0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :try_start_0
    invoke-static {}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->i()Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-static {p1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->j(Landroid/content/Context;)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_3
    invoke-static {}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->i()Lcom/hoffnung/tpms_sdk/TPMSDelegator;

    move-result-object p2

    const-string v0, "host_palm_app"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lnq7;

    invoke-direct {v1, p0}, Lnq7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    const/4 p0, 0x2

    invoke-virtual {p2, p0, v0, p1, v1}, Lcom/hoffnung/tpms_sdk/TPMSDelegator;->k(ILjava/lang/String;Ljava/lang/String;Lcom/hoffnung/tpms_sdk/TPMSDelegator$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :goto_4
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.palm.id.log"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public final K0()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->isOnlyPhoneNum()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lgo7$a;->a:Lgo7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/transsion/palmsdk/PalmID;->l(Landroid/content/Context;)Lcom/transsion/palmsdk/PalmID;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/palmsdk/PalmID;->g()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/palmsdk/PalmAuthParam;->isOnlyPhoneNum()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public L()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v1, v1, Ldo7;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_captcha_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->captchaInput:I

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final L0()V
    .locals 7

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, v0, Ldo7;->b:Z

    const/4 v1, 0x1

    const-string v2, "^([A-Za-z0-9_\\-.])+@([A-Za-z0-9_\\-])+\\.(([A-Za-z])+\\.)?([A-Za-z]{2,6})$"

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getType()I

    move-result v0

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmq7;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getType()I

    move-result v0

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmq7;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->s()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getType()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->s()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_5

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->s()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v5

    :goto_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    move v1, v5

    :cond_6
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v3, :cond_7

    goto :goto_3

    :cond_7
    move v5, v1

    :goto_3
    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->B:Landroid/widget/Button;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v5}, Landroid/view/View;->setEnabled(Z)V

    :cond_8
    return-void
.end method

.method public final M0()V
    .locals 6

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, v0, Ldo7;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v0, :cond_3

    sget v0, Lcom/transsion/xuanniao/account/R$id;->captchaInput:I

    iget-object v4, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {v4}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {v5, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->codeInput:I

    iget-object v4, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v4}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {v5, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->w:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->t:Landroid/widget/TextView;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    :cond_7
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v0, :cond_b

    sget v0, Lcom/transsion/xuanniao/account/R$id;->captchaInput:I

    iget-object v4, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {v4}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {v5, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    sget v0, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v5}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v5}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {v5, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->s()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_4

    :cond_a
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->t:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    iget-boolean v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->v:Z

    if-eqz v1, :cond_c

    goto :goto_5

    :cond_c
    move v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_d
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v0, :cond_e

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u:Landroid/widget/TextView;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_f
    :goto_6
    return-void
.end method

.method public N()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final N0()V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, " "

    sget v0, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_login:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(I)V

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->s:Z

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget-boolean v0, v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->e:Z

    const/4 v4, 0x4

    if-nez v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v5, 0x10

    const/16 v6, 0x1a

    invoke-virtual {v0, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    sget v5, Lcom/transsion/xuanniao/account/R$layout;->xn_action_bar:I

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setCustomView(I)V

    iget-object v5, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v5}, Ldo7;->p()Z

    iget-object v5, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget-boolean v5, v5, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->a:Z

    if-eqz v5, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    sget v6, Lcom/transsion/xuanniao/account/R$id;->title:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v6, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget v6, v6, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->c:I

    if-eqz v6, :cond_1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    sget v6, Lcom/transsion/xuanniao/account/R$string;->xn_app_name:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    sget v5, Lcom/transsion/xuanniao/account/R$id;->questionImage:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v5, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget-boolean v5, v5, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->b:Z

    if-eqz v5, :cond_2

    new-instance v5, Lsr7;

    invoke-direct {v5, v1}, Lsr7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_1
    sget v0, Lcom/transsion/xuanniao/account/R$id;->noteTitle:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v5, Lcom/transsion/xuanniao/account/R$string;->xn_login_app:I

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, v0, Ldo7;->n:Z

    sget v0, Lcom/transsion/xuanniao/account/R$id;->rlAuthorize:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v5, "com.palm.id.log"

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    iget-object v7, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    const/16 v8, 0x80

    if-eqz v7, :cond_5

    sget v7, Lcom/transsion/xuanniao/account/R$id;->rlLogin:I

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    invoke-virtual {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->getPkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    :try_start_0
    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sget v8, Lcom/transsion/xuanniao/account/R$id;->tvAppName:I

    invoke-virtual {v1, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    sget v9, Lcom/transsion/xuanniao/account/R$string;->sdk_text_login:I

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v8, Lcom/transsion/xuanniao/account/R$id;->ivAppIcon:I

    invoke-virtual {v1, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lvl7;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    sget v7, Lcom/transsion/xuanniao/account/R$id;->rlLogin:I

    invoke-virtual {v1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lgo7$a;->a:Lgo7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    sget v8, Lcom/transsion/xuanniao/account/R$id;->logo:I

    invoke-virtual {v1, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-static {v1, v7}, Lvl7;->a(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    :goto_3
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    sget v0, Lcom/transsion/xuanniao/account/R$id;->ivClose:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v7, Lur7;

    invoke-direct {v7, v1}, Lur7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_8
    sget v0, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->H:Landroid/widget/ScrollView;

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->p()Z

    sget v0, Lcom/transsion/xuanniao/account/R$id;->loginOrRegister:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->B:Landroid/widget/Button;

    if-eqz v0, :cond_9

    new-instance v7, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;

    invoke-direct {v7, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    sget v0, Lcom/transsion/xuanniao/account/R$id;->switchLoginMode:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->C:Landroid/widget/Button;

    if-eqz v0, :cond_a

    new-instance v7, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;

    invoke-direct {v7, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    sget v0, Lcom/transsion/xuanniao/account/R$id;->googleLogin:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_b

    new-instance v7, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;

    invoke-direct {v7, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    sget v0, Lcom/transsion/xuanniao/account/R$id;->facebookLogin:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lpa1;->g(Landroid/content/Context;)Z

    move-result v7

    const/16 v8, 0x8

    if-eqz v7, :cond_c

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    if-eqz v0, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/transsion/xuanniao/account/model/data/LoginThird;->isFbSupport(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    new-instance v7, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;

    invoke-direct {v7, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_e
    :goto_5
    sget-object v0, Lgo7$a;->a:Lgo7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthParam()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->isShowTPLogin()Z

    move-result v0

    goto :goto_6

    :cond_f
    sget-object v0, Lgo7$a;->a:Lgo7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/transsion/palmsdk/PalmID;->l(Landroid/content/Context;)Lcom/transsion/palmsdk/PalmID;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmID;->g()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/transsion/palmsdk/PalmAuthParam;->isShowTPLogin()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_6

    :cond_10
    move v0, v6

    :goto_6
    if-nez v0, :cond_12

    sget v0, Lcom/transsion/xuanniao/account/R$id;->partyLoginDivision:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    sget v0, Lcom/transsion/xuanniao/account/R$id;->partyLoginL:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    invoke-static/range {p0 .. p0}, Lcom/transsion/xuanniao/account/model/data/LoginThird;->isVKSupport(Landroid/content/Context;)Z

    move-result v0

    const/4 v7, 0x7

    if-eqz v0, :cond_13

    iput v8, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->x:I

    goto :goto_7

    :cond_13
    iput v7, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->x:I

    :goto_7
    sget v0, Lcom/transsion/xuanniao/account/R$id;->otherLogin:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_15

    new-instance v9, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;

    invoke-direct {v9, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v9, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->x:I

    if-ne v9, v7, :cond_14

    sget v7, Lcom/transsion/xuanniao/account/R$drawable;->xn_line_bg:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_8

    :cond_14
    if-ne v9, v8, :cond_15

    sget v7, Lcom/transsion/xuanniao/account/R$drawable;->xn_vk_bg:I

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_15
    :goto_8
    sget v0, Lcom/transsion/xuanniao/account/R$id;->forgotPwd:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->K0()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->C:Landroid/widget/Button;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_9

    :cond_16
    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->A:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    new-instance v7, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;

    invoke-direct {v7, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$c;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_17
    :goto_9
    sget v0, Lcom/transsion/xuanniao/account/R$id;->pwdHelpTips:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->t:Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->codeHelpTips:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u:Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->agreementCheck:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->o:Landroid/widget/CheckBox;

    new-instance v7, Lwr7;

    invoke-direct {v7, v1}, Lwr7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->agreementCheck2:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->p:Landroid/widget/CheckBox;

    if-eqz v0, :cond_18

    new-instance v7, Lzr7;

    invoke-direct {v7, v1}, Lzr7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v7}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_18
    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->p()Z

    sget v0, Lcom/transsion/xuanniao/account/R$id;->privacyL:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->F:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->privacyL2:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->G:Landroid/view/ViewGroup;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->agreement:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->agreement2:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_user_agreement:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_policy:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_and:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v11, Lcom/transsion/xuanniao/account/R$string;->xn_agreement_privacy:I

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    :try_start_2
    iget-object v13, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget v14, v13, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->f:I

    if-eqz v14, :cond_1a

    iget v15, v13, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->g:I

    if-eqz v15, :cond_1a

    iget v15, v13, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->h:I

    if-eqz v15, :cond_1a

    iget v13, v13, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->i:I

    if-eqz v13, :cond_1a

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :try_start_3
    iget-object v14, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget v14, v14, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->h:I

    invoke-virtual {v1, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v12, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget v12, v12, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->j:I

    if-eqz v12, :cond_19

    invoke-virtual {v1, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_c

    :catch_2
    move-exception v0

    goto :goto_b

    :catch_3
    move-exception v0

    const/4 v12, 0x0

    goto :goto_b

    :cond_19
    const/4 v12, 0x0

    goto :goto_c

    :catch_4
    move-exception v0

    const/4 v12, 0x0

    :goto_a
    const/4 v14, 0x0

    goto :goto_b

    :catch_5
    move-exception v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    goto :goto_a

    :cond_1a
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_c

    :goto_b
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    invoke-static {v11}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v15, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x21

    :try_start_6
    new-instance v4, Ler7;

    new-instance v3, Lcs7;

    invoke-direct {v3, v1}, Lcs7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-direct {v4, v1, v3}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v15, v4, v0, v3, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ler7;

    new-instance v4, Lyl7;

    invoke-direct {v4, v1}, Lyl7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-direct {v3, v1, v4}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v15, v3, v0, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_d

    :catch_6
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    if-eqz v13, :cond_1b

    if-eqz v14, :cond_1b

    :try_start_7
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ler7;

    new-instance v4, Lcom/transsion/xuanniao/account/login/view/d;

    invoke-direct {v4, v1}, Lcom/transsion/xuanniao/account/login/view/d;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-direct {v3, v1, v4}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v15, v3, v0, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ler7;

    new-instance v4, Lcom/transsion/xuanniao/account/login/view/e;

    invoke-direct {v4, v1}, Lcom/transsion/xuanniao/account/login/view/e;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-direct {v3, v1, v4}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v15, v3, v0, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e
    if-eqz v12, :cond_1b

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v3, Ler7;

    new-instance v4, Lcom/transsion/xuanniao/account/login/view/f;

    invoke-direct {v4, v1}, Lcom/transsion/xuanniao/account/login/view/f;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-direct {v3, v1, v4}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v15, v3, v0, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1b
    if-eqz v7, :cond_1c

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lir7;->a()Landroid/text/method/LinkMovementMethod;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1c
    if-eqz v8, :cond_1d

    invoke-virtual {v8, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lir7;->a()Landroid/text/method/LinkMovementMethod;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1d
    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->H:Landroid/widget/ScrollView;

    invoke-static {v0}, Lcom/transsion/effectengine/bounceeffect/OverScrollDecorHelper;->setUpOverScroll(Landroid/widget/ScrollView;)Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->accountInput:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->captchaInput:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->codeInput:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->loginByCodeError:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->loginByPwdError:I

    invoke-virtual {v1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->K0()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setOnlyPhoneNum()V

    :cond_1e
    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    new-instance v2, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;

    invoke-direct {v2, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    new-instance v2, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;

    invoke-direct {v2, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    new-instance v2, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;

    invoke-direct {v2, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    new-instance v2, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;

    invoke-direct {v2, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$d;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    new-instance v2, Ltm7;

    invoke-direct {v2, v1}, Ltm7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setSmsCodeListener(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    new-instance v2, Lnn7;

    invoke-direct {v2, v1}, Lnn7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setEditFocus(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$c;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    new-instance v2, Llo7;

    invoke-direct {v2, v1}, Llo7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setInputListener(Lcom/transsion/xuanniao/account/comm/widget/AccountInput$d;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    new-instance v2, Lhp7;

    invoke-direct {v2, v1}, Lhp7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setCaptchaListener(Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput$c;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    new-instance v2, Lrp7;

    invoke-direct {v2, v1}, Lrp7;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setEditFocus(Lcom/transsion/xuanniao/account/comm/widget/AccountInput$b;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "AccountPrefs"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "key_login_count"

    const-wide/16 v7, 0x0

    invoke-interface {v2, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p(J)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-object v0, v0, Ldo7;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x3

    const-string v4, "connectivity"

    if-eqz v0, :cond_22

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1f

    goto :goto_11

    :cond_1f
    :try_start_8
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    if-eqz v5, :cond_21

    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_21

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v9

    if-nez v9, :cond_20

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_20

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v9

    if-nez v9, :cond_20

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    if-eqz v0, :cond_21

    goto :goto_f

    :catch_8
    move-exception v0

    goto :goto_10

    :cond_20
    :goto_f
    const/4 v5, 0x1

    goto :goto_12

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_21
    :goto_11
    move v5, v6

    :goto_12
    if-eqz v5, :cond_22

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ldo7;->g(Ljava/lang/String;)V

    :cond_22
    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {v0, v1}, Lao7;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-nez v0, :cond_23

    goto :goto_13

    :cond_23
    :try_start_9
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v0, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_25

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    if-eqz v0, :cond_24

    goto :goto_14

    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_24
    :goto_13
    move v4, v6

    :cond_25
    :goto_14
    if-eqz v4, :cond_26

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ldo7;->j(Ljava/lang/String;)V

    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "key_login_pwd_limit"

    invoke-interface {v0, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v7

    if-lez v0, :cond_27

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0, v4, v5}, Ldo7;->i(J)V

    :cond_27
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "key_captcha_limit_login"

    invoke-interface {v0, v2, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v7

    if-lez v0, :cond_28

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0, v2, v3}, Ldo7;->e(J)V

    :cond_28
    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, v0, Ldo7;->n:Z

    if-eqz v0, :cond_29

    const-string v0, "notification"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_29
    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    new-instance v1, Lon7;

    invoke-direct {v1}, Lon7;-><init>()V

    invoke-virtual {v0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v2

    new-instance v3, Lnp7;

    invoke-virtual {v0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v4

    const-class v5, Lcom/transsion/xuanniao/account/model/data/CountryData;

    invoke-direct {v3, v0, v4, v5}, Lnp7;-><init>(Ldo7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Lon7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public Q()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->H0()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->L0()V

    return-void
.end method

.method public X(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V
    .locals 6

    if-eqz p1, :cond_2

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {v0, p0, p1}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->avatarUrl:Ljava/lang/String;

    new-instance v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$a;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$a;-><init>(Lcom/transsion/xuanniao/account/login/view/LoginActivity;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lhk7;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/OriPicture/avatar"

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/Thread;

    new-instance v3, LOppOp00/OppO0Op;

    invoke-direct {v3, v2, p1, p0, v0}, LOppOp00/OppO0Op;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;LOppOp00/a$a;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, LOppOp00/a$a;->F(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public Z(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {v0, p2}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p1}, Ldo7;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->f1()V

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->H0()V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->L0()V

    return-void
.end method

.method public a()V
    .locals 4

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_sent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0OO()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setGetCodeEnable(Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "AccountPrefs"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getType()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const-string p0, "sms_req_count"

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    :cond_1
    const-string p0, "key_login_count"

    invoke-interface {v1, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_frequent_operation:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_limit_month:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public c(ZJ)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, p1, Ldo7;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ldo7;->q()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_3

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_frequent_count:I

    invoke-static {p2, p3}, Lfq7;->b(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ldo7;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_3

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_frequent_count:I

    invoke-static {p2, p3}, Lfq7;->b(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/16 p2, 0x8

    const-string p3, ""

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p3}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->H0()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v1, v1, Ldo7;->b:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_code_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->q:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->codeInput:I

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_frequent_operation:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_limit_day:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_confirm:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    sget v0, Lcom/transsion/xuanniao/account/R$drawable;->xn_reduction:I

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setImageResource(I)V

    return-void
.end method

.method public h0()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->w:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->C0(Landroid/widget/TextView;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->w:Z

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->u:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, v0, Ldo7;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_account_pwd_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v3}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public n0()V
    .locals 8

    const-string v0, ""

    iget-object v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v2}, Ldo7;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setCc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "AccountPrefs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "last_login_req"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "lt"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "ac"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "ct"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v4

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->I0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v0, v2}, Lsm7;->d(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lxj;->l0(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->I0()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lxj;->l0(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, -0x1

    move v2, v3

    :goto_1
    const/4 v4, 0x1

    if-lez v1, :cond_8

    sget v5, Lcom/transsion/xuanniao/account/R$id;->googleH:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x4

    if-eqz v5, :cond_3

    const/4 v7, 0x2

    if-ne v1, v7, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v6

    :goto_2
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    sget v5, Lcom/transsion/xuanniao/account/R$id;->facebookH:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-static {p0}, Lcom/transsion/xuanniao/account/model/data/LoginThird;->isFbSupport(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    if-ne v1, v4, :cond_4

    move v7, v3

    goto :goto_3

    :cond_4
    move v7, v6

    :goto_3
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_5
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_4
    sget v5, Lcom/transsion/xuanniao/account/R$id;->otherH:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_8

    iget v7, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->x:I

    if-ne v1, v7, :cond_7

    move v6, v3

    :cond_7
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-nez v1, :cond_b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_b

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "@"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    aget-object v3, v0, v3

    iput-object v3, v1, Ldo7;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v1}, Ldo7;->n()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setCc(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setText(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->K0()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v1, v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setText(Ljava/lang/String;)V

    :cond_a
    :goto_5
    if-ne v2, v4, :cond_b

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->K0()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v1, v0, Ldo7;->b:Z

    xor-int/2addr v1, v4

    iput-boolean v1, v0, Ldo7;->b:Z

    invoke-virtual {p0, v1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->G0(Z)V

    :catch_0
    :cond_b
    return-void
.end method

.method public o0()V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, v0, Ldo7;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_captcha_error:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->captchaInput:I

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult requestCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->e:I

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_8

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    const-string p2, "key_cc"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Ldo7;->c:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-object p2, p1, Ldo7;->t:Lcom/transsion/xuanniao/account/model/data/CountryData;

    if-eqz p2, :cond_0

    const-string p2, "key_name"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-object p3, p3, Ldo7;->t:Lcom/transsion/xuanniao/account/model/data/CountryData;

    iget-object p3, p3, Lcom/transsion/xuanniao/account/model/data/CountryData;->countries:Ljava/util/ArrayList;

    invoke-static {p0, p2, p3}, Lcom/transsion/xuanniao/account/model/data/CountryData;->getEnName(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Ldo7;->d:Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p2}, Ldo7;->o()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lxj;->A1(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p2}, Ldo7;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setCc(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "AccountPrefs"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p2}, Ldo7;->o()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p3, "country_code"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-object p0, p0, Ldo7;->d:Ljava/lang/String;

    const-string p2, "country_name"

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_1
    const/16 v0, 0x2329

    if-ne p1, v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->f:I

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J0()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->h:I

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->i:I

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->N0()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->g:I

    if-ne v0, p1, :cond_7

    if-ne p2, v1, :cond_8

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_find_pwd_success:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    if-eqz p3, :cond_8

    const-string p1, "phone"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "email"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    iget-object p3, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p3, p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setText(Ljava/lang/String;)V

    :cond_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p0, p2}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setText(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const p3, 0xea61

    if-ne p1, p3, :cond_8

    if-ne p2, v1, :cond_8

    sget p1, Lcom/transsion/xuanniao/account/R$id;->noteTitle:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_login_app:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean p0, p0, Ldo7;->n:Z

    :cond_8
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->p()Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->F0(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    sget v5, Lcom/transsion/xuanniao/account/R$attr;->actionbar_show_back:I

    sget v6, Lcom/transsion/xuanniao/account/R$attr;->actionbar_show_faq:I

    sget v7, Lcom/transsion/xuanniao/account/R$attr;->actionbar_title_res:I

    sget v8, Lcom/transsion/xuanniao/account/R$attr;->loading_res:I

    sget v9, Lcom/transsion/xuanniao/account/R$attr;->show_dialog_style:I

    sget v10, Lcom/transsion/xuanniao/account/R$attr;->ext_agreement_res:I

    sget v11, Lcom/transsion/xuanniao/account/R$attr;->ext_agreement_url:I

    sget v12, Lcom/transsion/xuanniao/account/R$attr;->ext_privacy_res:I

    sget v13, Lcom/transsion/xuanniao/account/R$attr;->ext_privacy_url:I

    sget v14, Lcom/transsion/xuanniao/account/R$attr;->ext_developer_res:I

    sget v15, Lcom/transsion/xuanniao/account/R$attr;->ext_developer_url:I

    filled-new-array/range {v5 .. v15}, [I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    sget v5, Lcom/transsion/xuanniao/account/R$style;->XNLoginUI:I

    invoke-virtual {v1, v5, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v15, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    sget v5, Lcom/transsion/xuanniao/account/R$styleable;->LoginUI_actionbar_show_back:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    sget v5, Lcom/transsion/xuanniao/account/R$styleable;->LoginUI_actionbar_show_faq:I

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    sget v5, Lcom/transsion/xuanniao/account/R$styleable;->LoginUI_actionbar_title_res:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    sget v5, Lcom/transsion/xuanniao/account/R$styleable;->LoginUI_loading_res:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    sget v5, Lcom/transsion/xuanniao/account/R$styleable;->LoginUI_show_dialog_style:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    sget v5, Lcom/transsion/xuanniao/account/R$styleable;->LoginUI_ext_agreement_res:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    sget v5, Lcom/transsion/xuanniao/account/R$styleable;->LoginUI_ext_agreement_url:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    sget v5, Lcom/transsion/xuanniao/account/R$styleable;->LoginUI_ext_privacy_res:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    sget v5, Lcom/transsion/xuanniao/account/R$styleable;->LoginUI_ext_privacy_url:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    sget v5, Lcom/transsion/xuanniao/account/R$styleable;->LoginUI_ext_developer_res:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    sget v5, Lcom/transsion/xuanniao/account/R$styleable;->LoginUI_ext_developer_url:I

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    move-object v5, v15

    move-object v3, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-direct/range {v5 .. v16}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;-><init>(ZZIIZIIIIII)V

    iput-object v3, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.palm.id.log"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;-><init>(ZZIIZIIIIII)V

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    :goto_0
    invoke-super/range {p0 .. p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ldo7;

    invoke-direct {v0}, Ldo7;-><init>()V

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iput-object v1, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    const-string v3, "isFinish"

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move v3, v4

    :goto_1
    iput-boolean v3, v0, Ldo7;->i:Z

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "AccountPrefs"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "is_login_time_out"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Ldo7;->n:Z

    invoke-static/range {p0 .. p0}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->needRefresh(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {v0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    goto :goto_4

    :cond_1
    :try_start_2
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v3, :cond_4

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v3, v0, Ldo7;->m:Lum7;

    if-nez v3, :cond_3

    new-instance v3, Lum7;

    invoke-direct {v3}, Lum7;-><init>()V

    iput-object v3, v0, Ldo7;->m:Lum7;

    :cond_3
    iget-object v3, v0, Ldo7;->m:Lum7;

    invoke-virtual {v0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v6

    new-instance v7, Lwp7;

    invoke-virtual {v0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object v8

    const-class v9, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;

    invoke-direct {v7, v0, v8, v9}, Lwp7;-><init>(Ldo7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v6, v7}, Lum7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    goto :goto_4

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "auth_request"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-static/range {p0 .. p0}, Law7;->c(Landroid/content/Context;)Law7;

    move-result-object v2

    invoke-virtual {v2, v0}, Law7;->b(Ljava/lang/String;)Lcom/transsion/palmsdk/data/PalmAuthRequest;

    move-result-object v0

    iput-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    iget-object v0, v1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ldo7;->p()Z

    invoke-static/range {p0 .. p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->I0()Ljava/lang/String;

    move-result-object v2

    invoke-static/range {p0 .. p0}, Lsm7;->a(Landroid/content/Context;)I

    move-result v3

    invoke-static/range {p0 .. p0}, Lsm7;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v3, v6}, Lxj;->Y0(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "is_logged_in"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J0()V

    goto :goto_5

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->N0()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->B0(Landroid/content/Intent;)V

    :goto_5
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ldo7;->m()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO00p()V

    :cond_1
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->B0(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->F0(Z)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->s:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    const-string v1, "verificationCode"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    const-string v1, "pwd"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "lp_ticket"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldo7;->g:Ljava/lang/String;

    :cond_0
    const-string v1, "lp_captcha_code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ldo7;->h:Ljava/lang/String;

    :cond_1
    const-string v1, "lp_login_code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Ldo7;->b:Z

    :cond_2
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    const-string v1, "imageCaptcha"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->o:Landroid/widget/CheckBox;

    const-string v1, "isChecked"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean v0, v0, Ldo7;->b:Z

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->G0(Z)V

    const-string v0, "tpThirdType"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->z:I

    const-string v0, "tpThirdToken"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->y:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->s:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AccountPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_logged_in"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J0()V

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getEdit()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->I:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->I:Z

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0OO()V

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->s:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "account"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verificationCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pwd"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-object v1, v0, Ldo7;->g:Ljava/lang/String;

    const-string v2, "lp_ticket"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Ldo7;->h:Ljava/lang/String;

    const-string v2, "lp_captcha_code"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v0, Ldo7;->b:Z

    const-string v1, "lp_login_code"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "imageCaptcha"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const-string v1, "isChecked"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->E:Lcom/transsion/palmsdk/data/PalmAuthRequest;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/palmsdk/data/PalmAuthRequest;->getAuthRequestId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auth_request"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->z:I

    const-string v1, "tpThirdType"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->y:Ljava/lang/String;

    const-string v0, "tpThirdToken"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSmsCodeReceived(Lcom/transsion/xuanniao/account/model/data/SmsCodeEvent;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const-string v0, "onSmsCodeReceived LoginActivity"

    const-string v1, "com.palm.id.log"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Ldo7;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppO0pO:Z

    if-eqz v1, :cond_0

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/SmsCodeEvent;->code:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->setText(Ljava/lang/String;)V

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string v0, "LoginActivity"

    invoke-virtual {p1, v0}, Lxj;->q(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p0}, Ldo7;->t()V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onStart()V

    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 5

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-double v1, v2

    int-to-double v3, v0

    div-double/2addr v1, v3

    const-wide v3, 0x3fe6666666666666L    # 0.7

    cmpg-double v0, v1, v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->H:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO0pO:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->I:Z

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->OppO00p()V

    :cond_3
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->setCanShowPopView(Z)V

    :cond_0
    return-void
.end method

.method public p(ZJ)V
    .locals 1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    iget-boolean p1, p1, Ldo7;->b:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->t:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->v:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->C0(Landroid/widget/TextView;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->v:Z

    :cond_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_5

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_limit:I

    invoke-static {p2, p3}, Lfq7;->b(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    if-eqz p1, :cond_4

    sget p2, Lcom/transsion/xuanniao/account/R$id;->passwordInput:I

    const-string p3, "-1"

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->r:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->L0()V

    :cond_5
    :goto_0
    return-void
.end method

.method public t()I
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getType()I

    move-result p0

    return p0
.end method

.method public u0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget v0, v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->d:I

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J:Landroid/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J:Landroid/app/AlertDialog;

    if-nez p1, :cond_2

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->D:Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;

    iget v0, v0, Lcom/transsion/xuanniao/account/login/view/LoginActivity$e;->d:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J:Landroid/app/AlertDialog;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_2
    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->J:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->o:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->p:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_0
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/AccountInput;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/AccountInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_2
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->F:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->G:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
