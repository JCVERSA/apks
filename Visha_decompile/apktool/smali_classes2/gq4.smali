.class public final synthetic Lgq4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgq4;->b:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

    iput-boolean p2, p0, Lgq4;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lgq4;->b:Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;

    iget-boolean p0, p0, Lgq4;->c:Z

    invoke-static {v0, p0}, Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;->u(Lcom/cloud/hisavana/sdk/bridge/HisavanaTemplateJSBridge;Z)V

    return-void
.end method
