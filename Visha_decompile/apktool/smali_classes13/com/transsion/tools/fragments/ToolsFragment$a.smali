.class public Lcom/transsion/tools/fragments/ToolsFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv4;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/tools/fragments/ToolsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/tools/fragments/ToolsFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$a;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/tools/fragments/ToolsFragment$a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/transsion/tools/fragments/ToolsFragment$a;->e()V

    return-void
.end method

.method public static synthetic d(Lcom/transsion/tools/fragments/ToolsFragment$a;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/transsion/tools/fragments/ToolsFragment$a;->f(Z)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    const-string p1, "ToolsFragment"

    const-string p2, "onFailure: code = $code, message = $message"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$a;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$a;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Ldqa;

    invoke-direct {p2, p0}, Ldqa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment$a;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public b(ZZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccess: isUpdate ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isForce = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " s = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ToolsFragment"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/transsion/tools/fragments/ToolsFragment$a;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/transsion/tools/fragments/ToolsFragment$a;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    new-instance p3, Leqa;

    invoke-direct {p3, p0, p1}, Leqa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment$a;Z)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final synthetic e()V
    .locals 1

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$a;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->r0(Lcom/transsion/tools/fragments/ToolsFragment;)Landroid/widget/TextView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final synthetic f(Z)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lydc;->e()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$a;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/ToolsFragment;->P0(Lcom/transsion/tools/fragments/ToolsFragment;)Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/transsion/tools/R$drawable;->update_point:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, Lcom/transsion/tools/fragments/ToolsFragment$a;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {v1}, Lcom/transsion/tools/fragments/ToolsFragment;->r0(Lcom/transsion/tools/fragments/ToolsFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$a;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->r0(Lcom/transsion/tools/fragments/ToolsFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$a;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->r0(Lcom/transsion/tools/fragments/ToolsFragment;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
