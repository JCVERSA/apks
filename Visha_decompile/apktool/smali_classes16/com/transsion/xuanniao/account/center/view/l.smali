.class public Lcom/transsion/xuanniao/account/center/view/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

.field public final synthetic c:Lcom/transsion/xuanniao/account/center/view/OppOOO0;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/OppOOO0;Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/xuanniao/account/center/view/l;->c:Lcom/transsion/xuanniao/account/center/view/OppOOO0;

    iput-object p2, p0, Lcom/transsion/xuanniao/account/center/view/l;->b:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    iget-object p1, p0, Lcom/transsion/xuanniao/account/center/view/l;->c:Lcom/transsion/xuanniao/account/center/view/OppOOO0;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/OppOOO0;->q:Lcom/transsion/xuanniao/account/center/view/OppOOO0$a;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/xuanniao/account/center/view/l;->b:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    check-cast p1, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$b;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity$b;->a:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    sget v0, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->k:I

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_edit_address_list_1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/transsion/xuanniao/account/R$string;->xn_edit_address_list_2:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/dialog/d$a;

    sget v2, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {v1, p1, v2}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/transsion/xuanniao/account/R$string;->xn_operating_address:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/d$a;->B(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object v1

    new-instance v2, Lds7;

    invoke-direct {v2, p1, p0}, Lds7;-><init>(Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;)V

    invoke-virtual {v1, v0, v2}, Lcom/transsion/widgetslib/dialog/d$a;->i([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
