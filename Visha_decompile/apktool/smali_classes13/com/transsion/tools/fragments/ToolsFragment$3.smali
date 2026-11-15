.class Lcom/transsion/tools/fragments/ToolsFragment$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/tools/fragments/ToolsFragment;->W0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/tools/fragments/ToolsFragment;


# direct methods
.method public constructor <init>(Lcom/transsion/tools/fragments/ToolsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/tools/fragments/ToolsFragment$3;->this$0:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment$3;->this$0:Lcom/transsion/tools/fragments/ToolsFragment;

    sget-object v1, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    invoke-static {v0, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->M0(Lcom/transsion/tools/fragments/ToolsFragment;Lcom/transsion/playercommon/data/CloudVersionControl;)V

    sget-object v0, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment$3;->this$0:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {v2, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->t0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V

    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment$3;->this$0:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {v2}, Lcom/transsion/tools/fragments/ToolsFragment;->J0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    :cond_1
    iget-object v2, p0, Lcom/transsion/tools/fragments/ToolsFragment$3;->this$0:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {v2, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->s0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/tools/fragments/ToolsFragment$3;->this$0:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {v0, v1}, Lcom/transsion/tools/fragments/ToolsFragment;->w0(Lcom/transsion/tools/fragments/ToolsFragment;Z)V

    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$3;->this$0:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->K0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/transsion/tools/fragments/ToolsFragment$3;->this$0:Lcom/transsion/tools/fragments/ToolsFragment;

    invoke-static {p0}, Lcom/transsion/tools/fragments/ToolsFragment;->O0(Lcom/transsion/tools/fragments/ToolsFragment;)V

    :goto_1
    return-void
.end method
