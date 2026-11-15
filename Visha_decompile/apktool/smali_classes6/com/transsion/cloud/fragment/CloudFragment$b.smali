.class public final Lcom/transsion/cloud/fragment/CloudFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/cloud/adapter/CloudDataAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/fragment/CloudFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/fragment/CloudFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/fragment/CloudFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;ILcom/transsion/dbdata/beans/VideoCloudData;ZLandroid/view/View;)V
    .locals 1

    iget-object p4, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p4}, Lcom/transsion/cloud/fragment/CloudFragment;->access$isInEditMode$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Z

    move-result p4

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_8

    iget-object p3, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p3}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p4

    invoke-static {p3, p4, p1, p2, p5}, Lcom/transsion/cloud/fragment/CloudFragment;->access$selectItem(Lcom/transsion/cloud/fragment/CloudFragment;Lcom/transsion/cloud/adapter/CloudDataAdapter;Landroid/view/View;IZ)V

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMEditModeListener$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMEditModeListener$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->k()Ljava/util/ArrayList;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iget-object p3, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p3}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p3

    const/4 p4, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->r()Z

    move-result p3

    goto :goto_1

    :cond_1
    move p3, p4

    :goto_1
    invoke-interface {p1, p2, p3, p4}, Lcom/transsion/playercommon/fragments/PlayBaseFragment$d;->b(Ljava/util/ArrayList;ZZ)V

    :cond_2
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$updateBottomOperationBar(Lcom/transsion/cloud/fragment/CloudFragment;)V

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-virtual {p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_2

    :cond_3
    move-object p2, v0

    :goto_2
    iget-object p3, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p3}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_3

    :cond_4
    move-object p3, v0

    :goto_3
    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_5
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMTvTitle$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMContext$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_7

    sget p3, Lcom/transsion/netdisk/R$string;->items:I

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_6
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_8
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1, p3, p5, p2, p5}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->v(Lcom/transsion/dbdata/beans/VideoCloudData;ZIZ)V

    :cond_9
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$isInEditMode$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-virtual {p1, p5}, Lcom/transsion/cloud/fragment/CloudFragment;->editMode(Z)V

    :cond_a
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-virtual {p1}, Lcom/transsion/cloud/fragment/CloudBaseFragment;->getMCheckBoxAll()Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p2

    if-eqz p2, :cond_b

    invoke-virtual {p2}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_4

    :cond_b
    move-object p2, v0

    :goto_4
    iget-object p3, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p3}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_c

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_5

    :cond_c
    move-object p3, v0

    :goto_5
    invoke-static {p2, p3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    :cond_d
    iget-object p1, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p1}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMTvTitle$p(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p2, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p2}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMContext$p$s1815039877(Lcom/transsion/cloud/fragment/CloudFragment;)Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_f

    sget p3, Lcom/transsion/netdisk/R$string;->items:I

    iget-object p0, p0, Lcom/transsion/cloud/fragment/CloudFragment$b;->a:Lcom/transsion/cloud/fragment/CloudFragment;

    invoke-static {p0}, Lcom/transsion/cloud/fragment/CloudFragment;->access$getMCloudDataAdapter$p(Lcom/transsion/cloud/fragment/CloudFragment;)Lcom/transsion/cloud/adapter/CloudDataAdapter;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lcom/transsion/cloud/adapter/CloudDataAdapter;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_e
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p3, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_f
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_6
    return-void
.end method
