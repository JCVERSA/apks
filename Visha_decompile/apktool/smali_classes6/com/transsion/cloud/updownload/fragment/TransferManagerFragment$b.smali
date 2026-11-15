.class public Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-virtual {p0, p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->m0(Z)V

    return-void
.end method

.method public b(Ljava/util/ArrayList;ZZ)V
    .locals 0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object p3, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    iget-object p3, p3, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->y:Landroid/widget/CheckBox;

    invoke-virtual {p3, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-static {p1}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->V(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    sget p2, Lcom/transsion/playercommon/R$string;->none_select:I

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    invoke-static {p2}, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;->V(Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;)Landroid/widget/TextView;

    move-result-object p2

    iget-object p0, p0, Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment$b;->a:Lcom/transsion/cloud/updownload/fragment/TransferManagerFragment;

    const/4 p3, 0x1

    if-le p1, p3, :cond_1

    sget p3, Lcom/transsion/playercommon/R$string;->items:I

    goto :goto_0

    :cond_1
    sget p3, Lcom/transsion/playercommon/R$string;->item:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public d(ZIZ)V
    .locals 0

    return-void
.end method
