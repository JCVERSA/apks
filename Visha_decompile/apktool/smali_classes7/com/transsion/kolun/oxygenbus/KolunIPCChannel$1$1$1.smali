.class Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1$1;
.super Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;->onDisconnected(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;

.field final synthetic val$callback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

.field final synthetic val$channelName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1$1;->this$2:Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1;

    iput-object p2, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1$1;->val$callback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    iput-object p3, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1$1;->val$channelName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/common/ApiAyncRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1$1;->val$callback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/KolunIPCChannel$1$1$1;->val$channelName:Ljava/lang/String;

    invoke-static {p0}, Lcom/transsion/apiinvoke/invoke/ApiResponse;->channelConnectFault(Ljava/lang/String;)Lcom/transsion/apiinvoke/invoke/ApiResponse;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_0
    return-void
.end method
