.class public interface abstract Lcom/transsion/apiinvoke/invoke/api/InvokeChannel;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract connectChannel()V
.end method

.method public abstract disconnectChannel()V
.end method

.method public abstract getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;
.end method

.method public abstract getApiPublisher(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;
.end method

.method public abstract invokeApi(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;)Lcom/transsion/apiinvoke/invoke/ApiResponse;
.end method

.method public abstract invokeApiAsync(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/InvokeChain;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
.end method

.method public abstract isInChannel(Ljava/lang/String;)Z
.end method
