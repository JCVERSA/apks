.class public Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

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

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity$a;->d:Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/phone/view/BindingPhoneActivity;->f:Lpl7;

    invoke-virtual {p0}, Lpl7;->g()V

    :cond_0
    return-void
.end method
