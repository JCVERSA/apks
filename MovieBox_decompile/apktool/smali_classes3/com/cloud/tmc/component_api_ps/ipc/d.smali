.class public final synthetic Lcom/cloud/tmc/component_api_ps/ipc/d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/component_api_ps/ipc/d;->a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/component_api_ps/ipc/d;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/cloud/tmc/component_api_ps/ipc/d;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/cloud/tmc/component_api_ps/ipc/d;->d:Landroid/os/Bundle;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/cloud/tmc/component_api_ps/ipc/d;->e:Lkotlin/jvm/functions/Function2;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/component_api_ps/ipc/d;->a:Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/component_api_ps/ipc/d;->b:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/cloud/tmc/component_api_ps/ipc/d;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/cloud/tmc/component_api_ps/ipc/d;->d:Landroid/os/Bundle;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/cloud/tmc/component_api_ps/ipc/d;->e:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/cloud/tmc/component_api_ps/ipc/MiniAppProtocolIpcProcessor;->a(Lcom/cloud/tmc/component_api_ps/ipc/callbcak/MiniAppProtocolInvokeCallback;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lkotlin/jvm/functions/Function2;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
