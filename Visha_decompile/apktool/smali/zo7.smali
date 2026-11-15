.class public Lzo7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput$c;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;)V
    .locals 0

    iput-object p1, p0, Lzo7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lzo7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_loading:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->u0(Ljava/lang/String;)V

    iget-object p0, p0, Lzo7;->a:Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/verify/view/VerifyEmailActivity;->h:Lfo7;

    invoke-virtual {p0}, Lfo7;->c()V

    return-void
.end method
