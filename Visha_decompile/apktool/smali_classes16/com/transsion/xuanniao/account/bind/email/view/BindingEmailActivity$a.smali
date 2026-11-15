.class public Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity$a;->d:Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->bindBtn:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity$a;->d:Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;->i:Lbk7;

    invoke-virtual {p1}, Lbk7;->f()V

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity$a;->d:Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/email/view/BindingEmailActivity;->e:Lcom/transsion/xuanniao/account/comm/widget/EmailInput;

    invoke-virtual {p0}, Lcom/transsion/xuanniao/account/comm/widget/EmailInput;->OppO00p()V

    return-void
.end method
