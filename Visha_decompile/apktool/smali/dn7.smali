.class public Ldn7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/xuanniao/account/comm/widget/SmsCodeInput$e;


# instance fields
.field public final synthetic a:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Ldn7;->a:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    iget-object p0, p0, Ldn7;->a:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    invoke-static {p0}, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->B0(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Ldn7;->a:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    sget v1, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->k:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Leq9;->a(Landroid/app/Activity;)Lfq9;

    move-result-object v1

    invoke-virtual {v1}, Lfq9;->v()Lxda;

    move-result-object v1

    new-instance v2, Lwn7;

    invoke-direct {v2, v0}, Lwn7;-><init>(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V

    invoke-virtual {v1, v2}, Lxda;->f(Llf7;)Lxda;

    new-instance v2, Lro7;

    invoke-direct {v2, v0}, Lro7;-><init>(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V

    invoke-virtual {v1, v2}, Lxda;->d(Lre7;)Lxda;

    iget-object p0, p0, Ldn7;->a:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    invoke-virtual {p0}, Lpl7;->d()V

    return-void
.end method
