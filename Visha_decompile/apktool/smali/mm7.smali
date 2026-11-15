.class public Lmm7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmm7$d;
    }
.end annotation


# instance fields
.field public a:Lcom/transsion/widgetslib/dialog/d;

.field public b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

.field public c:Lmm7$d;

.field public d:J


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;Lmm7$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    iput-object p2, p0, Lmm7;->c:Lmm7$d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    iget-object v0, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    iget-object v1, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v1}, Lcom/transsion/xuanniao/account/model/data/CloudConfigRes;->privacyVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lxj;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lmm7;->a:Lcom/transsion/widgetslib/dialog/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    iget-object v1, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$layout;->xn_privacy_update_dialog:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->D(I)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v1, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_update_title:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v1, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_accept:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmm7$b;

    invoke-direct {v2, p0}, Lmm7$b;-><init>(Lmm7;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    iget-object v1, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_refuse:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmm7$a;

    invoke-direct {v2, p0}, Lmm7$a;-><init>(Lmm7;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->e(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->f(Z)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    iput-object v0, p0, Lmm7;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->updateDetail:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_user_agreement:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_policy:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_update_detail:I

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/text/SpannableString;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    sget v9, Lcom/transsion/xuanniao/account/R$color;->os_platform_basic_color_selector:I

    invoke-virtual {v1, v9}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-direct {v8, v10}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v6

    const/16 v11, 0x21

    invoke-virtual {v5, v8, v6, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v8, Ler7;

    new-instance v10, Lmn7;

    invoke-direct {v10, p0, v1}, Lmn7;-><init>(Lmm7;Landroid/content/Context;)V

    invoke-direct {v8, v1, v10}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v6

    invoke-virtual {v5, v8, v6, v2, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-direct {v4, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v5, v4, v2, v6, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v4, Ler7;

    new-instance v6, Lko7;

    invoke-direct {v6, p0, v1}, Lko7;-><init>(Lmm7;Landroid/content/Context;)V

    invoke-direct {v4, v1, v6}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v5, v4, v2, v1, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lir7;->a()Landroid/text/method/LinkMovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lmm7;->a:Lcom/transsion/widgetslib/dialog/d;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->tips:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_help:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_privacy_update_tips:I

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljr7;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {v1, v9}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v5, v3, v6, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Ler7;

    new-instance v6, Lgp7;

    invoke-direct {v6, p0, v1}, Lgp7;-><init>(Lmm7;Landroid/content/Context;)V

    invoke-direct {v5, v1, v6}, Ler7;-><init>(Landroid/content/Context;Ler7$a;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, v3

    invoke-virtual {v4, v5, v3, p0, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lir7;->a()Landroid/text/method/LinkMovementMethod;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lmm7;->a:Lcom/transsion/widgetslib/dialog/d;

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object v0, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-static {v0}, Lsq7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tech.palm.id"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "palmId"

    goto :goto_0

    :cond_0
    const-string v2, "sdk"

    :goto_0
    new-instance v9, Lmm7$c;

    iget-object v5, p0, Lmm7;->b:Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;

    const-class v7, Lcom/transsion/xuanniao/account/model/data/PolicyRes;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lmm7$c;-><init>(Lmm7;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "type"

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "\\+"

    const-string v2, "-"

    invoke-virtual {v1, p1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "language"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Ljr7;->h()Ljava/lang/String;

    move-result-object p1

    const-string v1, "brand"

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcr7$b;->a:Lcr7;

    invoke-virtual {p1, v0}, Lcr7;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lzn7;

    invoke-direct {p1}, Lzn7;-><init>()V

    const-string v1, "/app/policy/get"

    invoke-static {v1}, Ldp7;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p0, v9}, Lzn7;->d(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lokhttp3/Callback;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Lcr7;->b(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void
.end method
