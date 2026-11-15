.class Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;
.super Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->invokeApiAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

.field final synthetic val$chain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

.field final synthetic val$invokeCallback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

.field final synthetic val$request:Lcom/transsion/apiinvoke/invoke/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->this$0:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->val$invokeCallback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    iput-object p3, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->val$request:Lcom/transsion/apiinvoke/invoke/ApiRequest;

    iput-object p4, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->val$chain:Lcom/transsion/apiinvoke/invoke/InvokeChain;

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-super {p0}, Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;->run()V

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->this$0:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    new-instance v1, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;

    iget-object v2, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;->val$invokeCallback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    invoke-direct {v1, p0, v2}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;-><init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    invoke-static {v0, v1}, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->access$200(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;Lcom/transsion/kolun/oxygenbus/common/RealRemoteConnection$OnConnectChangeListener;)V

    return-void
.end method
