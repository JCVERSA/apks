.class public Lkm7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput$c;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;)V
    .locals 0

    iput-object p1, p0, Lkm7;->a:Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lkm7;->a:Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object p0, p0, Lkm7;->a:Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;->i:Lbk7;

    invoke-virtual {p0}, Lbk7;->c()V

    return-void
.end method
