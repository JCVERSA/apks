.class Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$2;
.super Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;->requestAsync(Lcom/transsion/apiinvoke/invoke/api/ApiInterface;Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

.field final synthetic val$callback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

.field final synthetic val$result:Lcom/transsion/apiinvoke/invoke/ApiResponse;


# direct methods
.method public constructor <init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$2;->this$0:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel;

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$2;->val$callback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    iput-object p3, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$2;->val$result:Lcom/transsion/apiinvoke/invoke/ApiResponse;

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$2;->val$callback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$2;->val$result:Lcom/transsion/apiinvoke/invoke/ApiResponse;

    invoke-interface {v0, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_0
    return-void
.end method
