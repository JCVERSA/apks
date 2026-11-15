.class public Lcom/transsion/tools/fragments/EmailVerifyFragment;
.super Lcom/transsion/playercommon/fragments/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public l:Ljava/lang/String;

.field public m:Landroid/widget/EditText;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/view/View;

.field public s:I

.field public final t:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/playercommon/fragments/BaseFragment;-><init>()V

    new-instance v0, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment$4;-><init>(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V

    iput-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->t:Ljava/lang/Runnable;

    return-void
.end method

.method public static bridge synthetic P(Lcom/transsion/tools/fragments/EmailVerifyFragment;)I
    .locals 0

    iget p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->s:I

    return p0
.end method

.method public static bridge synthetic Q(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->l:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic R(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->m:Landroid/widget/EditText;

    return-object p0
.end method

.method public static bridge synthetic S(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->p:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic T(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->o:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic U(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic V(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->t:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic W(Lcom/transsion/tools/fragments/EmailVerifyFragment;I)V
    .locals 0

    iput p1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->s:I

    return-void
.end method

.method public static bridge synthetic X(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->b0()V

    return-void
.end method

.method public static synthetic Y(Lcom/transsion/tools/fragments/EmailVerifyFragment;Landroid/widget/TextView;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->showSoftPanel(Landroid/widget/TextView;)V

    return-void
.end method

.method public static synthetic Z(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method public static synthetic a0(Lcom/transsion/tools/fragments/EmailVerifyFragment;)Lcom/transsion/playercommon/activities/BaseActivity;
    .locals 0

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    return-object p0
.end method

.method private c0(Landroid/view/View;)V
    .locals 3

    sget v0, Lcom/transsion/tools/R$id;->et_email:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->m:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/tools/fragments/EmailVerifyFragment$1;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment$1;-><init>(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->m:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/tools/fragments/EmailVerifyFragment$a;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment$a;-><init>(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->m:Landroid/widget/EditText;

    new-instance v0, Lcom/transsion/tools/fragments/EmailVerifyFragment$b;

    invoke-direct {v0, p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment$b;-><init>(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method

.method private d0(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/tools/R$id;->title_bar_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/transsion/tools/R$string;->privacy_password_retrieve_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    sget v0, Lcom/transsion/tools/R$id;->tv_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    sget v0, Lcom/transsion/tools/R$string;->privacy_verify_code_title:I

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object v1

    invoke-virtual {v1}, Ltg8;->c()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e0(Landroid/view/View;)V
    .locals 2

    sget v0, Lcom/transsion/tools/R$id;->tv_resend:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->n:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/tools/R$id;->btn_next:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->o:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->o:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/tools/R$id;->title_bar_back:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->r:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/transsion/tools/R$id;->tv_email_forget:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->q:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->q:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/transsion/tools/R$id;->tv_message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->p:Landroid/widget/TextView;

    return-void
.end method

.method public static f0(Ljava/lang/String;)Lcom/transsion/tools/fragments/EmailVerifyFragment;
    .locals 3

    new-instance v0, Lcom/transsion/tools/fragments/EmailVerifyFragment;

    invoke-direct {v0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "privacy_email"

    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final b0()V
    .locals 4

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const/16 v0, 0x3c

    iput v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->s:I

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/transsion/tools/R$string;->privacy_verify_code_resend_timer:I

    iget v3, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->s:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/ThreadUtils;->o()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->t:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/tools/R$id;->btn_next:I

    if-ne p1, v0, :cond_0

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->m:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/tools/fragments/EmailVerifyFragment$c;

    invoke-direct {v2, p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment$c;-><init>(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V

    invoke-virtual {p1, v0, v1, v2}, Ltg8;->n(Ljava/lang/String;Ljava/lang/String;Lsv4;)V

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/tools/R$id;->title_bar_back:I

    if-ne p1, v0, :cond_1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mContext:Landroid/content/Context;

    check-cast p0, Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-static {p0}, La64;->a(Lcom/transsion/playercommon/activities/BaseActivity;)Z

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/tools/R$id;->tv_resend:I

    if-ne p1, v0, :cond_2

    invoke-static {}, Ltg8;->d()Ltg8;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->l:Ljava/lang/String;

    new-instance v1, Lcom/transsion/tools/fragments/EmailVerifyFragment$d;

    invoke-direct {v1, p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment$d;-><init>(Lcom/transsion/tools/fragments/EmailVerifyFragment;)V

    invoke-virtual {p1, v0, v1}, Ltg8;->l(Ljava/lang/String;Lsv4;)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/transsion/tools/R$id;->tv_email_forget:I

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/transsion/tools/fragments/PrivacyHelpFragment;->V(Z)Lcom/transsion/tools/fragments/PrivacyHelpFragment;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/playercommon/fragments/BaseFragment;->mActivity:Lcom/transsion/playercommon/activities/BaseActivity;

    invoke-virtual {p1, p0}, Lcom/transsion/playercommon/fragments/BaseFragment;->setBaseActivity(Lcom/transsion/playercommon/activities/BaseActivity;)Lcom/transsion/playercommon/fragments/BaseFragment;

    move-result-object p0

    check-cast p0, Lcom/transsion/tools/fragments/PrivacyHelpFragment;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/playercommon/fragments/BaseFragment;->setNeedBg(Z)V

    invoke-static {p0, p1, p1}, La64;->n(Lcom/transsion/playercommon/fragments/BaseFragment;ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "privacy_email"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/tools/fragments/EmailVerifyFragment;->l:Ljava/lang/String;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/transsion/playercommon/fragments/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onLayoutId()I
    .locals 0

    sget p0, Lcom/transsion/tools/R$layout;->fragment_email_verify:I

    return p0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/transsion/playercommon/fragments/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->d0(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->e0(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->c0(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/EmailVerifyFragment;->b0()V

    const-string p0, "vd_more_hide_code_show"

    invoke-static {p0}, Lhb0;->markDirect(Ljava/lang/String;)V

    return-void
.end method
