.class public Lcom/transsion/tools/fragments/PasswordSettingFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public l:Landroid/widget/TextView;

.field public m:Landroid/widget/TextView;

.field public n:I

.field public o:Landroid/view/View;

.field public p:Landroid/view/View;

.field public q:Landroid/view/View;

.field public r:Ljava/lang/String;

.field public s:Landroid/widget/EditText;

.field public t:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    return-void
.end method

.method public static bridge synthetic P(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->t:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic Q(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->m:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic R(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->l:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic S(Lcom/transsion/tools/fragments/PasswordSettingFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->s:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic T(Lcom/transsion/tools/fragments/PasswordSettingFragment;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->r:Ljava/lang/String;

    return-void
.end method

.method public static synthetic U(Lcom/transsion/tools/fragments/PasswordSettingFragment;Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSoftPanel(Landroid/widget/TextView;)V

    return-void
.end method

.method private X(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/tools/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->n:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget p0, Lcom/transsion/tools/R$string;->privacy_set_password:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/transsion/tools/R$string;->privacy_reset_password:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private Y(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/transsion/tools/R$id;->btn_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->l:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/tools/R$id;->title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->q:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static Z(I)Lcom/transsion/tools/fragments/PasswordSettingFragment;
    .locals 3

    new-instance v0, Lcom/transsion/tools/fragments/PasswordSettingFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/PasswordSettingFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "privacy_setting_mode"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public V()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->t:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->s:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->s:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/transsion/tools/fragments/EmailSettingFragment;->b0(ILjava/lang/String;)Lcom/transsion/tools/fragments/EmailSettingFragment;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/EmailSettingFragment;

    invoke-virtual {p0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {p0, v1, v1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->s:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ltg8;->k(Ljava/lang/String;)V

    iget v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->n:I

    invoke-static {v0}, Lcom/transsion/tools/fragments/PasswordSuccessFragment;->P(I)Lcom/transsion/tools/fragments/PasswordSuccessFragment;

    move-result-object v0

    iget-object v2, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object v0

    check-cast v0, Lcom/transsion/tools/fragments/PasswordSuccessFragment;

    invoke-virtual {v0, v1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {v0, v1, v1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->t:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/transsion/playercommon/fragments/BaseFragment;->hideSoftPanel(Landroid/widget/TextView;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->l:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->m:Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$string;->privacy_password_error_3:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method

.method public final W(Landroid/view/View;)V
    .locals 8

    sget v0, Lcom/transsion/tools/R$id;->password_enter:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->o:Landroid/view/View;

    sget v1, Lcom/transsion/tools/R$id;->et_password:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->s:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->o:Landroid/view/View;

    sget v2, Lcom/transsion/tools/R$id;->iv_hide_password:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->o:Landroid/view/View;

    sget v4, Lcom/transsion/tools/R$id;->tv_message:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v5, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;

    invoke-direct {v5, p0, v0}, Lcom/transsion/tools/fragments/PasswordSettingFragment$a;-><init>(Lcom/transsion/tools/fragments/PasswordSettingFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->s:Landroid/widget/EditText;

    new-instance v5, Lcom/transsion/tools/fragments/PasswordSettingFragment$2;

    invoke-direct {v5, p0}, Lcom/transsion/tools/fragments/PasswordSettingFragment$2;-><init>(Lcom/transsion/tools/fragments/PasswordSettingFragment;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->s:Landroid/widget/EditText;

    new-instance v5, Lcom/transsion/tools/fragments/PasswordSettingFragment$b;

    invoke-direct {v5, p0, v3}, Lcom/transsion/tools/fragments/PasswordSettingFragment$b;-><init>(Lcom/transsion/tools/fragments/PasswordSettingFragment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->s:Landroid/widget/EditText;

    new-instance v5, Lcom/transsion/tools/fragments/PasswordSettingFragment$c;

    invoke-direct {v5, p0, v3}, Lcom/transsion/tools/fragments/PasswordSettingFragment$c;-><init>(Lcom/transsion/tools/fragments/PasswordSettingFragment;Landroid/widget/TextView;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    sget v0, Lcom/transsion/tools/R$id;->password_confirm:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->p:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->t:Landroid/widget/EditText;

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->p:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    new-instance v0, Lcom/transsion/tools/fragments/PasswordSettingFragment$d;

    invoke-direct {v0, p0, p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment$d;-><init>(Lcom/transsion/tools/fragments/PasswordSettingFragment;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->p:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->m:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->t:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/tools/fragments/PasswordSettingFragment$e;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/PasswordSettingFragment$e;-><init>(Lcom/transsion/tools/fragments/PasswordSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->t:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/tools/fragments/PasswordSettingFragment$f;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/PasswordSettingFragment$f;-><init>(Lcom/transsion/tools/fragments/PasswordSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->t:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/tools/fragments/PasswordSettingFragment$g;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/PasswordSettingFragment$g;-><init>(Lcom/transsion/tools/fragments/PasswordSettingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->o:Landroid/view/View;

    sget v0, Lcom/transsion/tools/R$id;->tv_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget v1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->n:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget v1, Lcom/transsion/tools/R$string;->privacy_enter_password:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/transsion/tools/R$string;->privacy_enter_new_password:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->p:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->n:I

    if-ne p0, v2, :cond_1

    sget p0, Lcom/transsion/tools/R$string;->privacy_confirm_password:I

    goto :goto_1

    :cond_1
    sget p0, Lcom/transsion/tools/R$string;->privacy_confirm_new_password:I

    :goto_1
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->btn_next:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->V()V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$id;->title_bar_back:I

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->n:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    :cond_2
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

    move-result v0

    iput v0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->n:I

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/tools/R$layout;->fragment_password_setting:I

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->Y(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->X(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/PasswordSettingFragment;->W(Landroid/view/View;)V

    iget p0, p0, Lcom/transsion/tools/fragments/PasswordSettingFragment;->n:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "vd_more_hide_pwset_show"

    const-string p2, "type"

    invoke-static {p1, p2, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
