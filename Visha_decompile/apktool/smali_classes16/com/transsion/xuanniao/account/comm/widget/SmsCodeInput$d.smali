.class public Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->smsLine:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$color;->xn_line_s:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/xuanniao/account/R$color;->xn_line:I

    :goto_0
    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->smsLogo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_1

    sget v1, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color_s:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color:I

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$d;->b:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->OppOO0O:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$c;

    if-eqz p0, :cond_3

    check-cast p0, Lnn7;

    if-nez p2, :cond_3

    iget-object p1, p0, Lnn7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->n:Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;

    invoke-virtual {p1}, Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lnn7;->a:Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/login/view/LoginActivity;->j:Ldo7;

    invoke-virtual {p0}, Ldo7;->k()Lcom/transsion/xuanniao/account/login/view/LoginActivity;

    move-result-object p1

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/xuanniao/account/comm/mvpbase/BasePresenter;->a:Ljk7;

    check-cast p2, Lkn7;

    invoke-interface {p2}, Lkn7;->t()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    const-string p2, "Phone"

    goto :goto_2

    :cond_2
    const-string p2, "Mail"

    :goto_2
    iget p0, p0, Ldo7;->o:I

    invoke-virtual {p1, p2, p0}, Lxj;->D1(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method
