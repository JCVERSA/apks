.class public Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Llp7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;,
        Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$d;
    }
.end annotation


# static fields
.field public static final synthetic C:I


# instance fields
.field public final A:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;

.field public B:J

.field public e:I

.field public f:I

.field public g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

.field public h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

.field public i:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

.field public j:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

.field public k:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

.field public l:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

.field public m:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

.field public n:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

.field public o:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

.field public p:Ljn7;

.field public q:Lcom/transsion/xuanniao/account/center/view/p;

.field public r:Z

.field public s:Z

.field public t:Z

.field public u:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

.field public v:Landroid/widget/RelativeLayout;

.field public w:Landroid/widget/ImageView;

.field public x:Lep7;

.field public y:Landroid/widget/TextView;

.field public z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->e:I

    const/16 v0, 0x3eb

    iput v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->r:Z

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->s:Z

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->t:Z

    new-instance v0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;

    invoke-direct {v0, p0}, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;-><init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V

    iput-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->A:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->B:J

    return-void
.end method

.method public static synthetic B0(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->s:Z

    return p1
.end method

.method public static synthetic C0(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->r:Z

    return p1
.end method

.method public static synthetic D0(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->t:Z

    return p1
.end method


# virtual methods
.method public final E0()V
    .locals 3

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->t:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/transsion/widgetslib/dialog/d$a;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v0, p0, v1}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_give_up_edit:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_give_up:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$b;

    invoke-direct {v2, p0}, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$b;-><init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$a;-><init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->s(Landroid/content/DialogInterface$OnDismissListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->t:Z

    :cond_0
    return-void
.end method

.method public final F0()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget v1, v0, Ljn7;->h:I

    if-nez v1, :cond_0

    iget-object v0, v0, Ljn7;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$id;->defaultSwitch:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public M()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public O()Z
    .locals 1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->defaultSwitch:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Switch;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p0

    return p0
.end method

.method public R()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public V()V
    .locals 2

    sget v0, Lcom/transsion/xuanniao/account/R$id;->blankL:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->w:Landroid/widget/ImageView;

    sget v0, Lcom/transsion/xuanniao/account/R$drawable;->down_arrow_drawable:I

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public i0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {v1}, Ljn7;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public k0(I)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iput p1, v0, Ljn7;->h:I

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->y:Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_please_select:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->y:Landroid/widget/TextView;

    sget v0, Lcom/transsion/xuanniao/account/R$style;->font_black_15_t25:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    const-string p1, ""

    iput-object p1, p0, Ljn7;->i:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lep7;->d(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    aget-object p1, v1, p1

    iput-object p1, v0, Ljn7;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->y:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {v0}, Ljn7;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->y:Landroid/widget/TextView;

    sget p1, Lcom/transsion/xuanniao/account/R$style;->font_black_15:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {p0}, Ljn7;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    return-void
.end method

.method public m0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->e:I

    const/4 v1, -0x1

    const-string v2, "key_cc"

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Ljn7;->d:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    const-string v0, "key_name_en"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Ljn7;->e:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {v0}, Ljn7;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->f:I

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    const-string v0, "key_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Ljn7;->f:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Ljn7;->g:Ljava/lang/String;

    sget p2, Lcom/transsion/xuanniao/account/R$id;->region:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v0, v0, Ljn7;->f:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/xuanniao/account/R$style;->font_black_15:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->o:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p2

    invoke-virtual {p2}, Lxj;->T()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p2

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lxj;->y1(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->q:Lcom/transsion/xuanniao/account/center/view/p;

    invoke-virtual {p0, p1, p3}, Lcom/transsion/xuanniao/account/center/view/p;->b(ILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_edit_address:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Ljn7;

    invoke-direct {p1}, Ljn7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    new-instance v0, Lon7;

    invoke-direct {v0}, Lon7;-><init>()V

    invoke-virtual {p1}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v1

    new-instance v2, Lfn7;

    invoke-virtual {p1}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v3

    const-class v4, Lcom/transsion/xuanniao/account/model/data/CountryData;

    invoke-direct {v2, p1, v3, v4}, Lfn7;-><init>(Ljn7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v2}, Lon7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget-object v0, Lolb;->g:[I

    invoke-static {v0}, Lolb;->B([I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeAsUpIndicator(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "title"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    sget p1, Lcom/transsion/xuanniao/account/R$id;->region:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->z:Landroid/widget/TextView;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->contactInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->phoneInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->addressDetailInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->provinceInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->districtInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->postcodeInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->contactError:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->phoneError:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->regionError:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->o:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->down_arrow:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->w:Landroid/widget/ImageView;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->label:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->y:Landroid/widget/TextView;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->labelL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->v:Landroid/widget/RelativeLayout;

    sget v1, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    iput-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->u:Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {v1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_full_name_empty:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_phone_empty:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->o:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_region_empty:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/p;

    new-instance v2, Lcom/transsion/xuanniao/account/center/view/b;

    invoke-direct {v2, p0}, Lcom/transsion/xuanniao/account/center/view/b;-><init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V

    invoke-direct {v1, p0, v2}, Lcom/transsion/xuanniao/account/center/view/p;-><init>(Landroid/app/Activity;Lcom/transsion/xuanniao/account/center/view/p$b;)V

    iput-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->q:Lcom/transsion/xuanniao/account/center/view/p;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    new-instance v2, Lyn7;

    invoke-direct {v2, p0}, Lyn7;-><init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setInputListener(Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$d;)V

    new-instance v1, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$d;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$d;-><init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v2, v2, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    iget-object v2, v2, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    new-instance v2, Lto7;

    invoke-direct {v2, p0}, Lto7;-><init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->setClickContact(Lcom/transsion/xuanniao/account/comm/widget/ContactInput$a;)V

    sget v1, Lcom/transsion/xuanniao/account/R$id;->regionL:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->A:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->v:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->A:Lcom/transsion/xuanniao/account/center/view/EditAddressActivity$c;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    new-instance v2, Lbp7;

    invoke-direct {v2, p0}, Lbp7;-><init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setEditFocus(Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$b;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    new-instance v2, Lkp7;

    invoke-direct {v2, p0}, Lkp7;-><init>(Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;)V

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->setEditFocus(Lcom/transsion/xuanniao/account/comm/widget/ContactInput$c;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "address"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    instance-of v2, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    check-cast v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    iput-object v1, v2, Ljn7;->c:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    iget-object v3, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->countryCode:Ljava/lang/String;

    iput-object v3, v2, Ljn7;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    iget-object v3, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->userName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->setText(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->phone:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->phone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iput-object v4, v3, Ljn7;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v3}, Ljn7;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setText(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->country:Ljava/lang/String;

    iput-object v2, v0, Ljn7;->f:Ljava/lang/String;

    iget-object v3, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->countryCode:Ljava/lang/String;

    iput-object v3, v0, Ljn7;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->z:Landroid/widget/TextView;

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->country:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->z:Landroid/widget/TextView;

    sget v2, Lcom/transsion/xuanniao/account/R$style;->font_black_15:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_2
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->address:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->province:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->district:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->postalCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->setText(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->label:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v2, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->label:Ljava/lang/String;

    iput-object v2, v0, Ljn7;->i:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {v0}, Ljn7;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/transsion/xuanniao/account/R$style;->font_black_15:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_3
    sget p1, Lcom/transsion/xuanniao/account/R$id;->defaultSwitch:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Switch;

    iget-boolean p1, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->defaultFlag:Z

    invoke-virtual {p0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p0

    sget v0, Lcom/transsion/xuanniao/account/R$menu;->menu_save:I

    invoke-virtual {p0, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p0, 0x0

    invoke-interface {p1, p0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    return p1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->x:Lep7;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lep7;->d:Llp7;

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    if-eqz p0, :cond_1

    iput-object v1, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->F0()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->E0()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/transsion/xuanniao/account/R$id;->save:I

    if-ne v0, v1, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->B:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_0
    iput-wide v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->B:J

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->m:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v3}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    move v0, v2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v3}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object v3

    const-string v4, "^[0-9]{6,15}$"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_phone_not_exist:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v3, v3, Ljn7;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->o:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    :cond_4
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v3, v0, Ljn7;->c:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v2

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object v1, v0, Ljn7;->c:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljn7;->b(Ljava/lang/String;)Lcom/transsion/xuanniao/account/model/data/AddAddressReq;

    move-result-object v1

    :try_start_0
    iget-object v2, v0, Ljn7;->b:Lzl7;

    invoke-virtual {v0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v3

    new-instance v4, Luo7;

    invoke-virtual {v0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v5

    const-class v6, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;

    invoke-direct {v4, v0, v5, v6}, Luo7;-><init>(Ljn7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3, v1, v4}, Lzl7;->c(Landroid/content/Context;Lcom/transsion/xuanniao/account/model/data/AddAddressReq;LOppOOp0/OppO0O0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->A0()V

    invoke-virtual {v0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v1

    invoke-virtual {v0}, Ljn7;->c()Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    move-result-object v0

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_net_unavailable:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljn7;->d()V

    :cond_7
    :goto_4
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    const-string v1, "save"

    invoke-virtual {v0, v1}, Lxj;->j(Ljava/lang/String;)V

    :cond_8
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_9

    goto :goto_5

    :cond_9
    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object v0

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Lxj;->j(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->F0()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->E0()V

    :goto_5
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->q:Lcom/transsion/xuanniao/account/center/view/p;

    invoke-virtual {p0, p1, p3}, Lcom/transsion/xuanniao/account/center/view/p;->c(I[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    const-string v1, "contact"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setText(Ljava/lang/String;)V

    const-string v0, "region"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljn7;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->z:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v1, v1, Ljn7;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-string v0, "regionCode"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljn7;->g:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    const-string v1, "address"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    const-string v1, "province"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    const-string v1, "district"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    const-string v1, "postcode"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    const-string v1, "label"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Ljn7;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    const-string v1, "labelSelect"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Ljn7;->h:I

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    const-string v1, "countryCode"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Ljn7;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {v1}, Ljn7;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {v0}, Ljn7;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget v0, v0, Ljn7;->h:I

    invoke-virtual {p0, v0}, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->k0(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->y:Landroid/widget/TextView;

    sget v1, Lcom/transsion/xuanniao/account/R$style;->font_black_15:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {v1}, Ljn7;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "hasFocus"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string v2, "contactInput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_4
    const-string v2, "phoneInput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_5
    const-string v2, "addressDetailInput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_6
    const-string v2, "provinceInput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_7
    const-string v2, "districtInput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_8
    const-string v2, "postcodeInput"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p1, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_9
    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget v0, v0, Ljn7;->h:I

    const-string v1, "labelSelect"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {v0}, Ljn7;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "label"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v0, v0, Ljn7;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v0, v0, Ljn7;->f:Ljava/lang/String;

    const-string v1, "region"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v0, v0, Ljn7;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    iget-object v0, v0, Ljn7;->g:Ljava/lang/String;

    const-string v1, "regionCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "province"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "district"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postcode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->p:Ljn7;

    invoke-virtual {v0}, Ljn7;->g()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countryCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getEdit()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    const-string v1, "hasFocus"

    if-eqz v0, :cond_2

    const-string p0, "contactInput"

    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getEdit()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "phoneInput"

    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "addressDetailInput"

    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "provinceInput"

    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "districtInput"

    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "postcodeInput"

    invoke-virtual {p1, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public onSuccess()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public w0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->j:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->k:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->l:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->i:Lcom/transsion/xuanniao/account/comm/widget/NormalInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/NormalInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public x()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
