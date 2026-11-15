.class public final synthetic Lcom/cloud/tmc/component_api_ps/ipc/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/component_api_ps/ipc/c;->a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/c;->b:Landroid/os/Bundle;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/component_api_ps/ipc/c;->a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/component_api_ps/ipc/c;->b:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->c(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/os/Bundle;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
