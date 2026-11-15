.class public Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$c;
.super Lrm7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic d:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    invoke-direct {p0}, Lrm7;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/transsion/xuanniao/account/R$id;->addAddress:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->i()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    const-class v1, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_address_add:I

    const-string v1, "title"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$c;->d:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->e:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
