.class public Lds7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

.field public final synthetic c:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;)V
    .locals 0

    iput-object p1, p0, Lds7;->c:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    iput-object p2, p0, Lds7;->b:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p1, p0, Lds7;->c:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    iget-object p0, p0, Lds7;->b:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    sget p2, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->k:I

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ClipboardManager;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->address:Ljava/lang/String;

    const-string v0, "address"

    invoke-static {v0, p0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    sget p0, Lcom/transsion/xuanniao/account/R$string;->xn_address_copy:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/transsion/xuanniao/account/comm/mvpbase/BaseActivity;->y0(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lds7;->c:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    iget-object p0, p0, Lds7;->b:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    sget p2, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->k:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lcom/transsion/widgetslib/dialog/d$a;

    sget v0, Lcom/transsion/xuanniao/account/R$style;->dialog_soft_input:I

    invoke-direct {p2, p1, v0}, Lcom/transsion/widgetslib/dialog/d$a;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_address_delete:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->k(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p2

    sget v0, Lcom/transsion/xuanniao/account/R$string;->xn_delete:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Les7;

    invoke-direct {v1, p1, p0}, Les7;-><init>(Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;)V

    invoke-virtual {p2, v0, v1}, Lcom/transsion/widgetslib/dialog/d$a;->w(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    sget p2, Lcom/transsion/xuanniao/account/R$string;->xn_cancel:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/transsion/widgetslib/dialog/d$a;->n(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/d$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/d$a;->F()Lcom/transsion/widgetslib/dialog/d;

    move-result-object p0

    const/4 p2, -0x1

    invoke-virtual {p0, p2}, Lcom/transsion/widgetslib/dialog/d;->e(I)Landroid/widget/Button;

    move-result-object p0

    sget p2, Lcom/transsion/xuanniao/account/R$color;->xn_error_text:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method
