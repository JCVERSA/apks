.class public Lcom/transsion/tools/fragments/EmailSettingFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/view/View;

.field public q:Landroid/widget/EditText;

.field public r:I

.field public s:Ljava/lang/String;

.field public t:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic P(Lcom/transsion/tools/fragments/EmailSettingFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic Q(Lcom/transsion/tools/fragments/EmailSettingFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic R(Lcom/transsion/tools/fragments/EmailSettingFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic S(Lcom/transsion/tools/fragments/EmailSettingFragment;Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSoftPanel(Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic T(Lcom/transsion/tools/fragments/EmailSettingFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static W(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const-string v2, "*"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method private Y(Landroid/view/View;)V
    .locals 4

    sget v0, Lcom/transsion/tools/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->r:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/tools/R$string;->privacy_password_retrieve_title:I

    goto :goto_1

    :cond_1
    :goto_0
    sget v1, Lcom/transsion/playercommon/R$string;->privacy_add_new_email_title:I

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/transsion/tools/R$id;->tv_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->m:Landroid/widget/TextView;

    iget v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->r:I

    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_2

    goto :goto_2

    :cond_2
    sget v0, Lcom/transsion/tools/R$string;->privacy_email_retrieve_hint:I

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v1

    invoke-virtual {v1}, Ltg8;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/transsion/tools/fragments/EmailSettingFragment;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    :goto_2
    sget v0, Lcom/transsion/tools/R$string;->privacy_email_add_hint:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private Z(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/tools/R$id;->btn_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/tools/R$id;->title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->p:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/tools/R$id;->tv_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->n:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$id;->tv_email_forget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->o:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->o:Landroid/widget/TextView;

    iget p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->r:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 p0, 0x8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static a0(I)Lcom/transsion/tools/fragments/EmailSettingFragment;
    .locals 3

    new-instance v0, Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/EmailSettingFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "privacy_setting_mode"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static b0(ILjava/lang/String;)Lcom/transsion/tools/fragments/EmailSettingFragment;
    .locals 3

    new-instance v0, Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/EmailSettingFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "privacy_setting_mode"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "privacy_password"

    invoke-virtual {v1, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public U()V
    .locals 4

    iget v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->r:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ltg8;->k(Ljava/lang/String;)V

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltg8;->j(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->r:I

    invoke-static {v0}, Lcom/transsion/tools/fragments/PasswordSuccessFragment;->P(I)Lcom/transsion/tools/fragments/PasswordSuccessFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/fragments/PasswordSuccessFragment;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {v0, v2, v2}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideSoftPanel(Landroid/widget/TextView;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->n:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$string;->privacy_email_format_error:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x5

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->V(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ltg8;->j(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->r:I

    invoke-static {v0}, Lcom/transsion/tools/fragments/PasswordSuccessFragment;->P(I)Lcom/transsion/tools/fragments/PasswordSuccessFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/fragments/PasswordSuccessFragment;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {v0, v2, v2}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideSoftPanel(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->n:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$string;->privacy_email_format_error:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_3
    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v0

    invoke-virtual {v0}, Ltg8;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/transsion/widgetslib/dialog/b;

    iget-object v1, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/b;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/transsion/tools/R$string;->privacy_verifying:I

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/b;->c(I)Lcom/transsion/widgetslib/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/b;->e()Lcom/transsion/widgetslib/dialog/d;

    move-result-object v0

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/transsion/tools/fragments/EmailSettingFragment$c;

    invoke-direct {v3, p0, v0}, Lcom/transsion/tools/fragments/EmailSettingFragment$c;-><init>(Lcom/transsion/tools/fragments/EmailSettingFragment;Lcom/transsion/widgetslib/dialog/d;)V

    invoke-virtual {v1, v2, v3}, Ltg8;->l(Ljava/lang/String;Lsv4;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->n:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$string;->privacy_email_error_2:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public final V(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final X(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/transsion/tools/R$id;->et_email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/tools/fragments/EmailSettingFragment$1;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/EmailSettingFragment$1;-><init>(Lcom/transsion/tools/fragments/EmailSettingFragment;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    iget v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->r:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v0

    invoke-virtual {v0}, Ltg8;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->W(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$string;->privacy_email_format_hint:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/tools/fragments/EmailSettingFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/EmailSettingFragment$a;-><init>(Lcom/transsion/tools/fragments/EmailSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->q:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/tools/fragments/EmailSettingFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/EmailSettingFragment$b;-><init>(Lcom/transsion/tools/fragments/EmailSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-wide v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->t:J

    invoke-static {v0, v1}, Ljf;->j(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->t:J

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->btn_next:I

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/EmailSettingFragment;->U()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/tools/R$id;->title_bar_back:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    iget p1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->r:I

    if-eq p1, v1, :cond_2

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    goto :goto_0

    :cond_3
    sget v0, Lcom/transsion/tools/R$id;->tv_email_forget:I

    if-ne p1, v0, :cond_5

    invoke-static {v1}, Lcom/transsion/tools/fragments/PrivacyHelpFragment;->V(Z)Lcom/transsion/tools/fragments/PrivacyHelpFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p1

    check-cast p1, Lcom/transsion/tools/fragments/PrivacyHelpFragment;

    invoke-virtual {p1, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    iget-object v0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {v0}, Lbg5;->g(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, Lbg5;->d(Landroid/app/Activity;)V

    :cond_4
    invoke-static {p1, v1, v1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "privacy_setting_mode"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->r:I

    const-string v1, "privacy_password"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->s:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/tools/R$layout;->fragment_email_setting:I

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    sget p2, Lcom/transsion/tools/R$id;->btn_next:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->l:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/EmailSettingFragment;->Z(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/EmailSettingFragment;->Y(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/EmailSettingFragment;->X(Landroid/view/View;)V

    iget p2, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->r:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "vd_more_hide_emadd_show"

    const-string v1, "type"

    invoke-static {v0, v1, p2}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget p2, p0, Lcom/transsion/tools/fragments/EmailSettingFragment;->r:I

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const-string p2, "vd_more_hide_retrieve_show"

    invoke-static {p2}, Lhb0;->markDirect(Ljava/lang/String;)V

    :cond_1
    iget-boolean p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->needBg:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/transsion/tools/R$dimen;->video_main_activity_fragment_top_padding:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->backgroundFollowBaseWindowByPx(Landroid/view/View;I)V

    :cond_2
    return-void
.end method
