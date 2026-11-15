.class public Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lek7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;
    }
.end annotation


# instance fields
.field public e:Ljl7;

.field public f:Ljava/lang/String;

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    return-void
.end method

.method public static C0(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;I)V
    .locals 3

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_facebook_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eq p1, v2, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_vk_app_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_line_app_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_google_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v2, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_binding_authorization:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_binding_third_tips:I

    filled-new-array {v1, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_open:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lql7;

    invoke-direct {v2, p0, p1}, Lql7;-><init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;I)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public static D0(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-boolean v0, v0, Ljl7;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_unbound_title:I

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_unbound_msg:I

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p2

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_unbound_go:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lfk7;

    invoke-direct {v1, p0, p1}, Lfk7;-><init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;I)V

    invoke-virtual {p2, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_unbound_not_now:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    const-string p2, "ULT"

    invoke-virtual {p1, p2}, Lxj;->x(Ljava/lang/String;)V

    new-instance p1, Lcom/transsion/widgetslib/dialog/d$a;

    sget p2, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {p1, p0, p2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_safe_note:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget p2, Lcom/transsion/xuanniao/account/R$layout;->xn_unbundling_dialog:I

    invoke-virtual {p1, p2}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p1

    sget p2, Lcom/transsion/xuanniao/account/R$id;->bindingPhone:I

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Len7;

    invoke-direct {v0, p0, p1}, Len7;-><init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/xuanniao/account/R$id;->bindingEmail:I

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lxn7;

    invoke-direct {v0, p0, p1}, Lxn7;-><init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget p2, Lcom/transsion/xuanniao/account/R$id;->unboundNow:I

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p2

    new-instance v0, Lso7;

    invoke-direct {v0, p0, p1}, Lso7;-><init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final B0(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "com.palm.id.log"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v2, "palmid"

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->f:Ljava/lang/String;

    if-eqz p1, :cond_7

    :try_start_0
    const-string p1, "status"

    invoke-virtual {v1, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    invoke-virtual {p1}, Ljl7;->e()V

    goto/16 :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string p1, "errCode"

    invoke-virtual {v1, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "errMessage"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleThirdH5Bind errCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string v3, "400010"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, ""

    iget v1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->g:I

    if-eq v1, v2, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x7

    if-eq v1, v2, :cond_3

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "VK"

    goto :goto_0

    :cond_3
    const-string p1, "LINE"

    goto :goto_0

    :cond_4
    const-string p1, "Google"

    goto :goto_0

    :cond_5
    const-string p1, "Facebook"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->E0(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-object p1, p1, Ljl7;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_8
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/transsion/xuanniao/account/pwd/view/VerifyPwdActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "source"

    const-string v1, "BT"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-boolean v0, v0, Ljl7;->b:Z

    const-string v1, "havePhoneOrEmail"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_bind_third:I

    const-string v1, "operation"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-object v0, v0, Ljl7;->f:Ljava/lang/String;

    const-string v1, "accountId"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x3ef

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_9
    :goto_2
    return-void
.end method

.method public D(ILjava/lang/String;)V
    .locals 3

    const-string v0, "com.android.chrome"

    iput p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->g:I

    iput-object p2, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->f:Ljava/lang/String;

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

    const-string v2, "/auth-page/authBind?actionType=1&authType="

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

.method public E0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_cannot_bind:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_bound_note:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_got_it:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    return-void
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public U()V
    .locals 3

    sget v0, Lcom/transsion/xuanniao/account/R$id;->facebookStatus:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    invoke-virtual {v1}, Ljl7;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_bound_to:I

    iget-object v2, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-object v2, v2, Ljl7;->f:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_unbind:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget v0, Lcom/transsion/xuanniao/account/R$id;->googleStatus:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    invoke-virtual {v1}, Ljl7;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_bound_to:I

    iget-object v2, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-object v2, v2, Ljl7;->f:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_unbind:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    sget v0, Lcom/transsion/xuanniao/account/R$id;->vkStatus:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    invoke-virtual {v1}, Ljl7;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_bound_to:I

    iget-object v2, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-object v2, v2, Ljl7;->f:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_unbind:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget v0, Lcom/transsion/xuanniao/account/R$id;->lineStatus:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    invoke-virtual {v1}, Ljl7;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_bound_to:I

    iget-object v2, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-object v2, v2, Ljl7;->f:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->r0(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_unbind:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/16 p3, 0x2329

    if-ne p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p3, 0x3e9

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, p3, :cond_1

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iput-boolean v1, p0, Ljl7;->b:Z

    iput-boolean v1, p0, Ljl7;->g:Z

    goto :goto_0

    :cond_1
    const/16 p3, 0x3ea

    if-ne p1, p3, :cond_2

    if-ne p2, v0, :cond_3

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iput-boolean v1, p0, Ljl7;->b:Z

    iput-boolean v1, p0, Ljl7;->g:Z

    goto :goto_0

    :cond_2
    const/16 p3, 0x3ef

    if-ne p1, p3, :cond_3

    if-eq p2, v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-boolean v0, v0, Ljl7;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_tripartite_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Ljl7;

    invoke-direct {p1}, Ljl7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "accountId"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljl7;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    const-string v1, "havePhoneOrEmail"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Ljl7;->b:Z

    goto :goto_0

    :cond_0
    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {v0, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-object v4, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->username:Ljava/lang/String;

    iput-object v4, v1, Ljl7;->f:Ljava/lang/String;

    iget-object v4, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v0, v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v3, v2

    :cond_2
    iput-boolean v3, v1, Ljl7;->b:Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    invoke-virtual {v0}, Ljl7;->e()V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_bind_third:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-static {p0}, Lcom/transsion/xuanniao/account/model/data/LoginThird;->isFbSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lpa1;->g(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    sget v0, Lcom/transsion/xuanniao/account/R$id;->facebookL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_5
    :goto_1
    sget v0, Lcom/transsion/xuanniao/account/R$id;->facebookL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;-><init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    sget v0, Lcom/transsion/xuanniao/account/R$id;->googleL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;-><init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->vkL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;-><init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->lineL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity$a;-><init>(Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v0}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    invoke-virtual {v0}, Lxj;->F1()V

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->B0(Landroid/content/Intent;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->B0(Landroid/content/Intent;)V

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
    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->e:Ljl7;

    iget-boolean v0, v0, Ljl7;->g:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "tpThirdType"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->g:I

    const-string v0, "tpThirdToken"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->f:Ljava/lang/String;

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->g:I

    const-string v1, "tpThirdType"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;->f:Ljava/lang/String;

    const-string v0, "tpThirdToken"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
