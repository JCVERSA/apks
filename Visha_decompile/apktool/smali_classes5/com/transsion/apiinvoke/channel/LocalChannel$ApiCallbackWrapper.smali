.class Lcom/transsion/apiinvoke/channel/LocalChannel$ApiCallbackWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/ApiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/channel/LocalChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApiCallbackWrapper"
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

.field private mRequest:Lcom/transsion/apiinvoke/invoke/ApiRequest;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/invoke/ApiRequest;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/apiinvoke/channel/LocalChannel$ApiCallbackWrapper;->mRequest:Lcom/transsion/apiinvoke/invoke/ApiRequest;

    iput-object p2, p0, Lcom/transsion/apiinvoke/channel/LocalChannel$ApiCallbackWrapper;->mCallback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    return-void
.end method


# virtual methods
.method public response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel$ApiCallbackWrapper;->mCallback:Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;->response(Lcom/transsion/apiinvoke/invoke/ApiResponse;)V

    :cond_0
    return-void
.end method
