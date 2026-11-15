.class public Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p2, :cond_0

    sget v0, Lcom/transsion/xuanniao/account/R$color;->xn_line_s:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/transsion/xuanniao/account/R$color;->xn_line:I

    :goto_0
    iget-object v1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0p0:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$b;

    if-eqz p1, :cond_2

    check-cast p1, Lyk7;

    iget-object v0, p1, Lyk7;->a:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    iget-boolean v1, v0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->m:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->D0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lyk7;->a:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p1, Lyk7;->a:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    iget-object v2, v0, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    sget v3, Lcom/transsion/xuanniao/account/R$string;->xn_pwd_not_same:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/transsion/xuanniao/account/comm/widget/ErrorView;->setErrorText(Ljava/lang/String;)V

    iget-object p1, p1, Lyk7;->a:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    sget v0, Lcom/transsion/xuanniao/account/R$id;->savePwdBtn:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lyk7;->a:Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/pwd/view/SetPwdActivity;->g:Lcom/transsion/xuanniao/account/comm/widget/ErrorView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO0Op:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_3

    sget v1, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color_s:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color:I

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;->OppO00p:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/PasswordInput$c;->b:Lcom/transsion/xuanniao/account/comm/widget/PasswordInput;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p2, :cond_4

    sget p2, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color_s:I

    goto :goto_3

    :cond_4
    sget p2, Lcom/transsion/xuanniao/account/R$color;->xn_input_logo_color:I

    :goto_3
    invoke-virtual {p0, p2, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method
