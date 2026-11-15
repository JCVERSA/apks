.class public Lcom/transsion/tools/fragments/ToolsFragment$c;
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

    iput-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$c;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure: code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "message = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ToolsFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$c;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/ToolsFragment;->y0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$c;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    sget p1, Lcom/transsion/tools/R$string;->update_is_newest:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(ZZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment$c;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/ToolsFragment;->y0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment$c;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {v0}, Lcom/transsion/tools/fragments/ToolsFragment;->q0(Lcom/transsion/tools/fragments/ToolsFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment$c;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->v0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$c;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p1}, Lcom/transsion/tools/fragments/ToolsFragment;->Q0(Lcom/transsion/tools/fragments/ToolsFragment;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$c;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->R0(Lcom/transsion/tools/fragments/ToolsFragment;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/transsion/tools/R$string;->update_is_newest:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->w(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string p0, "ToolsFragment"

    if-eqz p2, :cond_2

    const-string p1, "\u6b64\u6b21\u66f4\u65b0\u4e3a\u5f3a\u5236\u5347\u7ea7"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u6b64\u6b21\u66f4\u65b0version = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
