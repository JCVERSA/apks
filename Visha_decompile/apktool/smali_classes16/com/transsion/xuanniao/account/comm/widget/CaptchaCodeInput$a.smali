.class public Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput$a;->d:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->captcha:I

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput$a;->d:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput;->OppO0OO:Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput$c;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/transsion/xuanniao/account/comm/widget/CaptchaCodeInput$c;->a()V

    :cond_0
    return-void
.end method
