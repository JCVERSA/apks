.class public Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;
.super Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lqo7;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;,
        Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$b;
    }
.end annotation


# static fields
.field public static final synthetic o:I


# instance fields
.field public e:I

.field public f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

.field public g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

.field public h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

.field public i:Lvn7;

.field public j:Lcom/transsion/xuanniao/account/center/view/p;

.field public k:I

.field public l:I

.field public m:Landroid/widget/RelativeLayout;

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;-><init>()V

    const/16 v0, 0x3e9

    iput v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->k:I

    iput v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->l:I

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->n:Z

    return-void
.end method


# virtual methods
.method public J()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public W()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    invoke-virtual {p0}, Lvn7;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    invoke-virtual {v1}, Lvn7;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    iget v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->e:I

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    const-string v0, "key_cc"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lvn7;->b:Ljava/lang/String;

    iget-object p2, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    invoke-virtual {v0}, Lvn7;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    const-string v0, "key_name_en"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lvn7;->c:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->j:Lcom/transsion/xuanniao/account/center/view/p;

    invoke-virtual {p0, p1, p3}, Lcom/transsion/xuanniao/account/center/view/p;->b(ILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    sget p1, Lcom/transsion/xuanniao/account/R$layout;->xn_activity_binding_emergency_contact:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    new-instance p1, Lvn7;

    invoke-direct {p1}, Lvn7;-><init>()V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    iput-object p0, p1, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "emergency"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    const/4 v1, 0x0

    const-string v2, "-"

    const-string v3, ""

    if-eqz v0, :cond_2

    check-cast p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    iput-object p1, v0, Lvn7;->e:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->phone:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object p1, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, v0, Lvn7;->b:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_add_to_account:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->inputL:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->m:Landroid/widget/RelativeLayout;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->contactInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->phoneInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    sget p1, Lcom/transsion/xuanniao/account/R$id;->emailInput:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v4, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    invoke-virtual {v4}, Lvn7;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setCc(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {p1, v1}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->setStartLogoVisible(I)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->bindBtn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v1, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;

    invoke-direct {v1, p0}, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$a;-><init>(Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/transsion/xuanniao/account/center/view/p;

    new-instance v1, Ldl7;

    invoke-direct {v1, p0}, Ldl7;-><init>(Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;)V

    invoke-direct {p1, p0, v1}, Lcom/transsion/xuanniao/account/center/view/p;-><init>(Landroid/app/Activity;Lcom/transsion/xuanniao/account/center/view/p$b;)V

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->j:Lcom/transsion/xuanniao/account/center/view/p;

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    new-instance v1, Lhm7;

    invoke-direct {v1, p0}, Lhm7;-><init>(Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;)V

    invoke-virtual {p1, v1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setInputListener(Lcom/transsion/xuanniao/account/comm/widget/PhoneInput$d;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    new-instance v1, Lan7;

    invoke-direct {v1, p0}, Lan7;-><init>(Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;)V

    invoke-virtual {p1, v1}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->setClickContact(Lcom/transsion/xuanniao/account/comm/widget/ContactInput$a;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    new-instance v1, Lun7;

    invoke-direct {v1, p0}, Lun7;-><init>(Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;)V

    invoke-virtual {p1, v1}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->setAssociationListener(Lcom/transsion/xuanniao/account/comm/widget/EmailInput$b;)V

    new-instance p1, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$b;

    invoke-direct {p1, p0}, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity$b;-><init>(Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    iget-object v1, v1, Lvn7;->e:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->userName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    iget-object v4, v1, Lvn7;->e:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    if-eqz v4, :cond_4

    iget-object v4, v4, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->phone:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v1, Lvn7;->e:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    iget-object v4, v4, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->phone:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v1, v1, Lvn7;->e:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    iget-object v1, v1, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->phone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-le v2, v0, :cond_4

    aget-object v0, v1, v0

    goto :goto_2

    :cond_4
    move-object v0, v3

    :goto_2
    invoke-virtual {p1, v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setText(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    iget-object v0, v0, Lvn7;->e:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->email:Ljava/lang/String;

    :cond_5
    invoke-virtual {p1, v3}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->setText(Ljava/lang/String;)V

    sget p1, Lcom/transsion/xuanniao/account/R$id;->scrollView:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;

    invoke-virtual {p1}, Lcom/transsion/widgetslib/view/OverBoundNestedScrollView;->setUpOverScroll()Lcom/transsion/effectengine/bounceeffect/IOverScrollDecor;

    invoke-static {p0}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->g()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    new-instance p1, Lon7;

    invoke-direct {p1}, Lon7;-><init>()V

    invoke-virtual {p0}, Lvn7;->b()Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    move-result-object v0

    new-instance v1, Lel7;

    invoke-virtual {p0}, Lvn7;->b()Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    move-result-object v2

    const-class v3, Lcom/transsion/xuanniao/account/model/data/CountryData;

    invoke-direct {v1, p0, v2, v3}, Lel7;-><init>(Lvn7;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0, v1}, Lon7;->a(Landroid/content/Context;LOppOOp0/OppO0O0;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->onDestroy()V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

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

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->j:Lcom/transsion/xuanniao/account/center/view/p;

    invoke-virtual {p0, p1, p3}, Lcom/transsion/xuanniao/account/center/view/p;->c(I[I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    const-string v1, "contact"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->setText(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    const-string v0, "email"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v2}, Lfp7;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget v0, Lcom/transsion/xuanniao/account/R$id;->placeholder:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->z0()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->getEdit()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->n:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->n:Z

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0Op()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "contact"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->getText()Ljava/lang/String;

    move-result-object p0

    const-string v0, "email"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO0OO()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->n:Z

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p()V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    new-instance v0, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    invoke-direct {v0}, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;-><init>()V

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->i:Lvn7;

    invoke-virtual {v1}, Lvn7;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->email:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->k()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->phone:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {v1}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;->userName:Ljava/lang/String;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "emergency"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public q0()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public w0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/PhoneInput;->getEdit()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->t0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->h:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->getEdit()Landroid/widget/EditText;

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

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/comm/widget/ContactInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/ContactInput;->getText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
