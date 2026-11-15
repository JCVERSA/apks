.class public final Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/cloud/adapter/CloudDataAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/transsion/dbdata/beans/VideoCloudData;ZLandroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->I0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p1

    const/4 p4, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p3, p4, p2, p4}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->v(Lcom/transsion/dbdata/beans/VideoCloudData;ZIZ)V

    :cond_0
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->K0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-virtual {p1, p4}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->editMode(Z)V

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-virtual {p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    iget-object p3, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-static {p3}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->I0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_0

    :cond_2
    move-object p3, p2

    :goto_0
    iget-object p4, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-static {p4}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->I0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    goto :goto_1

    :cond_3
    move-object p4, p2

    :goto_1
    invoke-static {p3, p4}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_4
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->H0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/transsion/netdisk/databinding/LayoutCloudRecentlyViewBinding;->i:Landroid/widget/TextView;

    if-eqz p1, :cond_7

    iget-object p3, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-static {p3}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->J0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_6

    sget p4, Lcom/transsion/netdisk/R$string;->items:I

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudRecentlyFragment$b;->a:Lcom/transsion/cloud/fragment/CloudRecentlyFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudRecentlyFragment;->I0(Lcom/transsion/cloud/fragment/CloudRecentlyFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :cond_5
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p3, p4, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_6
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method
