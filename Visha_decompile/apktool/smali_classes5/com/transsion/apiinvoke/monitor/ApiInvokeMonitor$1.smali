.class Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/transsion/apiinvoke/monitor/RecordItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xfd7dad33545316dL


# instance fields
.field final synthetic this$0:Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;


# direct methods
.method public constructor <init>(Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor$1;->this$0:Lcom/transsion/apiinvoke/monitor/ApiInvokeMonitor;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/apiinvoke/monitor/RecordItem;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    const/16 p1, 0x1e

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
