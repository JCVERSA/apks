.class public Lcom/transsion/xuanniao/account/center/view/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/center/view/OppOOO0;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/OppOOO0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/k;->b:Lcom/transsion/xuanniao/account/center/view/OppOOO0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/k;->b:Lcom/transsion/xuanniao/account/center/view/OppOOO0;

    iget-object v0, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->q:Lcom/transsion/xuanniao/account/center/view/OppOOO0$a;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->o:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast v0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$b;

    iget-object p1, v0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$b;->a:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lxj;->U(Landroid/content/Context;)Lxj;

    move-result-object p1

    invoke-virtual {p1}, Lxj;->k()V

    new-instance p1, Landroid/content/Intent;

    iget-object v1, v0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$b;->a:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    const-class v2, Lcom/transsion/xuanniao/account/center/view/EditAddressActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_address_edit:I

    const-string v2, "title"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "address"

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p0, v0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$b;->a:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    iget v0, p0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->e:I

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method
