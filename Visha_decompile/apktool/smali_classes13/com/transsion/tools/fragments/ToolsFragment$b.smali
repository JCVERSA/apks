.class public Lcom/transsion/tools/fragments/ToolsFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhhb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/ToolsFragment;->L1()V
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

    iput-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$b;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic c(Lcom/transsion/tools/fragments/ToolsFragment$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/tools/fragments/ToolsFragment$b;->d()V

    return-void
.end method

.method private synthetic d()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$b;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->N0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    return-void
.end method


# virtual methods
.method public a(Lehb;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkUpgradeTask onRequestSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ToolsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p1, Lehb;->a:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$b;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p1, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->u0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V

    new-instance p1, Lfqa;

    invoke-direct {p1, p0}, Lfqa;-><init>(Lcom/transsion/tools/fragments/ToolsFragment$b;)V

    invoke-static {p1}, Lcom/blankj/utilcode/util/ThreadUtils;->s(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$b;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->u0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$b;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p1, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->w0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$b;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->K0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkUpgradeTask onRequestFail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ToolsFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$b;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->u0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V

    iget-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$b;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/transsion/tools/fragments/ToolsFragment;->w0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$b;->a:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->K0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    return-void
.end method
