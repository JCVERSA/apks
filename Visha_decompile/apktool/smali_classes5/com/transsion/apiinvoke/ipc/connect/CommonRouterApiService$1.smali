.class Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService$1;
.super Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService$1;->this$0:Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;

    invoke-direct {p0}, Lcom/transsion/apiinvoke/ipc/connect/CommonServiceInterfaceStub;-><init>()V

    return-void
.end method


# virtual methods
.method public doInvokeApi(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService$1;->this$0:Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/apiinvoke/ipc/connect/CommonRouterApiService;->onInvokeApiASync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    return-void
.end method
