.class Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/kolun/oxygenbus/OxygenBusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryCacheBean"
.end annotation


# instance fields
.field callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/apiinvoke/invoke/api/ApiCallback;",
            ">;"
        }
    .end annotation
.end field

.field request:Lcom/transsion/apiinvoke/monitor/RecordItem;


# direct methods
.method private constructor <init>(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;->request:Lcom/transsion/apiinvoke/monitor/RecordItem;

    if-eqz p2, :cond_0

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;->callback:Ljava/lang/ref/WeakReference;

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;Lcom/transsion/kolun/oxygenbus/OxygenBusService$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;-><init>(Lcom/transsion/apiinvoke/monitor/RecordItem;Lcom/transsion/apiinvoke/invoke/api/ApiCallback;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;)Lcom/transsion/apiinvoke/invoke/api/ApiCallback;
    .locals 0

    invoke-direct {p0}, Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;->callback()Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    move-result-object p0

    return-object p0
.end method

.method private callback()Lcom/transsion/apiinvoke/invoke/api/ApiCallback;
    .locals 0

    iget-object p0, p0, Lcom/transsion/kolun/oxygenbus/OxygenBusService$RetryCacheBean;->callback:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/apiinvoke/invoke/api/ApiCallback;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
