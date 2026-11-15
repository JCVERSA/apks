.class public Les7;
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

    iput-object p1, p0, Les7;->c:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    iput-object p2, p0, Les7;->b:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Les7;->c:Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;

    iget-object p1, p1, Lcom/transsion/xuanniao/account/center/view/MyAddressActivity;->f:Lqr7;

    iget-object p0, p0, Les7;->b:Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/AddressesListRes$Address;->id:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lqr7;->b(Ljava/lang/String;)V

    return-void
.end method
