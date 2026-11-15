.class public final synthetic Lcqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/tools/fragments/ToolsFragment;

.field public final synthetic c:Lcom/transsion/playercommon/data/CloudVersionControl;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/tools/fragments/ToolsFragment;Lcom/transsion/playercommon/data/CloudVersionControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcqa;->b:Lcom/transsion/tools/fragments/ToolsFragment;

    iput-object p2, p0, Lcqa;->c:Lcom/transsion/playercommon/data/CloudVersionControl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcqa;->b:Lcom/transsion/tools/fragments/ToolsFragment;

    iget-object p0, p0, Lcqa;->c:Lcom/transsion/playercommon/data/CloudVersionControl;

    invoke-static {v0, p0}, Lcom/transsion/tools/fragments/ToolsFragment;->i0(Lcom/transsion/tools/fragments/ToolsFragment;Lcom/transsion/playercommon/data/CloudVersionControl;)V

    return-void
.end method
