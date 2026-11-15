.class public Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity$a;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->bindBtn:I

    if-ne p1, v0, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;

    const-class v1, Lcom/transsion/xuanniao/account/bind/contact/view/BindingEmergencyContactActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;

    iget-object v0, v0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->f:Lcom/transsion/xuanniao/account/model/data/EmergencyListRes$Emergency;

    if-eqz v0, :cond_0

    const-string v1, "emergency"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity$a;->d:Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;

    iget v0, p0, Lcom/transsion/xuanniao/account/bind/contact/view/ManageEmergencyContactActivity;->e:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method
