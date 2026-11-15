.class Lcom/transsion/apiinvoke/channel/LocalChannel$APIServiceImplProxy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/apiinvoke/invoke/api/IApiServiceImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/apiinvoke/channel/LocalChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APIServiceImplProxy"
.end annotation


# instance fields
.field private mApiService:Lcom/transsion/apiinvoke/IApiService;

.field private mInterface:Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;


# direct methods
.method private constructor <init>(Lcom/transsion/apiinvoke/IApiService;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/apiinvoke/channel/LocalChannel$APIServiceImplProxy;->mApiService:Lcom/transsion/apiinvoke/IApiService;

    .line 4
    new-instance v0, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;

    invoke-direct {v0, p1}, Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;-><init>(Lcom/transsion/apiinvoke/IApiService;)V

    iput-object v0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel$APIServiceImplProxy;->mInterface:Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/IApiService;Lcom/transsion/apiinvoke/channel/LocalChannel$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/apiinvoke/channel/LocalChannel$APIServiceImplProxy;-><init>(Lcom/transsion/apiinvoke/IApiService;)V

    return-void
.end method


# virtual methods
.method public getApiInterface()Lcom/transsion/apiinvoke/invoke/api/ApiInterface;
    .locals 0

    iget-object p0, p0, Lcom/transsion/apiinvoke/channel/LocalChannel$APIServiceImplProxy;->mInterface:Lcom/transsion/apiinvoke/invoke/SimpleApiInterface;

    return-object p0
.end method

.method public getApiPublisher(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;
    .locals 0

    invoke-static {p1}, Lcom/transsion/apiinvoke/channel/LocalChannel;->access$200(Lcom/transsion/apiinvoke/subscribe/Publisher$Host;)Lcom/transsion/apiinvoke/invoke/api/ApiPublisher;

    move-result-object p0

    return-object p0
.end method
