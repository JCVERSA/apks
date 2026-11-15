.class public Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lkq7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity$a;
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Lyr7;

.field public j:Z

.field public k:Landroid/text/BidiFormatter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x3ea

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->e:I

    const/16 v0, 0x3ec

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->f:I

    const/16 v0, 0x3ee

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->g:I

    const/16 v0, 0x3f0

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->j:Z

    return-void
.end method


# virtual methods
.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public T(Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;)V
    .locals 8

    sget v0, Lcom/transsion/xuanniao/account/R$id;->emergencyContact:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->phone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->k:Landroid/text/BidiFormatter;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->phone:Ljava/lang/String;

    invoke-static {p1}, Lfq7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p0, p1, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->k:Landroid/text/BidiFormatter;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->email:Ljava/lang/String;

    invoke-static {v2}, Lfq7;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_unbind:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->j:Z

    if-eqz v0, :cond_5

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object v1, v1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    if-eqz v1, :cond_4

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v5, Lcom/google/gson/Gson;

    invoke-direct {v5}, Lcom/google/gson/Gson;-><init>()V

    iget-object v6, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "PN"

    invoke-virtual {v4, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v6, "EM"

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v3, "EC"

    invoke-virtual {v4, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p1, v1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "PW"

    invoke-virtual {v4, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    const-string p1, ""

    :goto_2
    invoke-virtual {v0, p1}, Lxj;->b(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->j:Z

    :cond_5
    return-void
.end method

.method public f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V
    .locals 4

    if-eqz p1, :cond_3

    sget v0, Lcom/transsion/xuanniao/account/R$id;->phone:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_unbind:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->k:Landroid/text/BidiFormatter;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    invoke-static {v2}, Lfq7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget v0, Lcom/transsion/xuanniao/account/R$id;->email:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_unbind:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->k:Landroid/text/BidiFormatter;

    iget-object v2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    invoke-static {v2}, Lfq7;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    sget v0, Lcom/transsion/xuanniao/account/R$id;->pwdLabel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean p1, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_change:I

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    sget p1, Lcom/transsion/xuanniao/account/R$string;->xn_set_pwd:I

    goto :goto_2

    :goto_3
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/16 v0, 0x3e9

    const-string v1, "SC"

    const-string v2, "accountId"

    const-string v3, ""

    const/4 v4, -0x1

    if-ne p1, v0, :cond_2

    if-ne p2, v4, :cond_e

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p2, p2, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p2, :cond_0

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object p2, v3

    :goto_0
    invoke-static {p2}, Lsm7;->b(Ljava/lang/String;)I

    move-result p2

    const-string p3, "phone"

    invoke-virtual {p1, v1, p3, p2}, Lxj;->z(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/transsion/xuanniao/account/bind/phone/view/ManagePhoneActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p2, p2, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p2, :cond_1

    iget-object v3, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->phone:Ljava/lang/String;

    :cond_1
    invoke-virtual {p1, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p2}, Lyr7;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->e:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_2
    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->e:I

    const/4 v5, 0x0

    if-ne p1, v0, :cond_3

    if-ne p2, v4, :cond_e

    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, v5}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    sget-object p2, Lao7$a;->a:Lao7;

    invoke-virtual {p2, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object p2

    iput-object p2, p1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p1, p1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    goto/16 :goto_2

    :cond_3
    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->f:I

    if-ne p1, v0, :cond_4

    if-ne p2, v4, :cond_e

    invoke-static {}, Lwk7;->a()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, v5}, Lam7;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    sget-object p2, Lao7$a;->a:Lao7;

    invoke-virtual {p2, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object p2

    iput-object p2, p1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p1, p1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    goto/16 :goto_2

    :cond_4
    const/16 v0, 0x3eb

    if-ne p1, v0, :cond_7

    if-ne p2, v4, :cond_e

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p2, p2, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p2, :cond_5

    iget-object p2, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object p2, v3

    :goto_1
    invoke-static {p2}, Lsm7;->b(Ljava/lang/String;)I

    move-result p2

    const-string p3, "email"

    invoke-virtual {p1, v1, p3, p2}, Lxj;->z(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/transsion/xuanniao/account/bind/email/view/ManageEmailActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p2, p2, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p2, :cond_6

    iget-object v3, p2, Lcom/transsion/xuanniao/account/model/data/AccountRes;->email:Ljava/lang/String;

    :cond_6
    invoke-virtual {p1, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p2}, Lyr7;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->f:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_7
    const/16 v0, 0x3ed

    const-string v1, "emergency"

    if-ne p1, v0, :cond_8

    if-ne p2, v4, :cond_e

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p2, p2, Lyr7;->d:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p2}, Lyr7;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->g:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    :cond_8
    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->g:I

    if-ne p1, v0, :cond_9

    if-ne p2, v4, :cond_e

    if-eqz p3, :cond_e

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of p2, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    if-eqz p2, :cond_e

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    check-cast p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    iput-object p1, p2, Lyr7;->d:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->T(Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;)V

    goto :goto_2

    :cond_9
    const/16 p3, 0x3ef

    if-ne p1, p3, :cond_a

    if-ne p2, v4, :cond_e

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/transsion/xuanniao/account/bind/third/view/TripartiteListActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p2}, Lyr7;->f()Z

    move-result p2

    const-string p3, "havePhoneOrEmail"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p2}, Lyr7;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->h:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    :cond_a
    const/16 p3, 0x3f1

    if-ne p1, p3, :cond_b

    goto :goto_2

    :cond_b
    const/16 p3, 0x2329

    if-ne p1, p3, :cond_d

    if-ne p2, v4, :cond_e

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p1, p1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz p1, :cond_c

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/transsion/xuanniao/account/model/data/AccountRes;->existPassword:Z

    :cond_c
    sget-object p2, Lao7$a;->a:Lao7;

    invoke-virtual {p2, p0, p1}, Lao7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p1, p1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    goto :goto_2

    :cond_d
    iget p2, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->h:I

    if-ne p1, p2, :cond_e

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    sget-object p2, Lao7$a;->a:Lao7;

    invoke-virtual {p2, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object p2

    iput-object p2, p1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p1, p1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    :cond_e
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_safe_center:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Lyr7;

    invoke-direct {p1}, Lyr7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    sget-object v0, Lao7$a;->a:Lao7;

    invoke-virtual {v0, p0}, Lao7;->j(Landroid/content/Context;)Lcom/transsion/xuanniao/account/model/data/AccountRes;

    move-result-object v0

    iput-object v0, p1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_safe_center:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance p1, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity$a;

    invoke-direct {p1, p0}, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity$a;-><init>(Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->phoneL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->emailL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->emergencyContactL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->pwdL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->thirdL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p1, Lgo7$a;->a:Lgo7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/transsion/palmsdk/PalmID;->l(Landroid/content/Context;)Lcom/transsion/palmsdk/PalmID;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/palmsdk/PalmID;->g()Lcom/transsion/palmsdk/PalmAuthParam;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/transsion/palmsdk/PalmAuthParam;->isShowTPLogin()Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lcom/transsion/xuanniao/account/R$id;->loginML:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    sget p1, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->k:Landroid/text/BidiFormatter;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p1, p1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->f0(Lcom/transsion/xuanniao/account/model/data/AccountRes;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p0}, Lyr7;->d()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    :cond_0
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
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    if-eqz v0, :cond_1

    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/transsion/xuanniao/account/model/data/AccountRes;

    iput-object v0, v1, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    :cond_0
    const-string v0, "emergency"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    iput-object p1, p0, Lyr7;->d:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lyr7;->b:Lcom/transsion/xuanniao/account/model/data/AccountRes;

    if-eqz v0, :cond_0

    const-string v1, "account"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/SafeCenterActivity;->i:Lyr7;

    iget-object p0, p0, Lyr7;->d:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    const-string v0, "emergency"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_0
    return-void
.end method
