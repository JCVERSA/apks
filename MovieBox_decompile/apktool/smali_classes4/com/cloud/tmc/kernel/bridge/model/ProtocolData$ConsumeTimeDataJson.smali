.class public Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/kernel/bridge/model/ProtocolData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsumeTimeDataJson"
.end annotation


# instance fields
.field private dataJson:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;->dataJson:Ljava/util/HashMap;

    .line 5
    .line 6
    return-void
.end method

.method public static parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;

    .line 2
    .line 3
    new-instance v1, Lcom/google/gson/Gson;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "dataJson"

    .line 9
    .line 10
    invoke-virtual {p0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    const-class v2, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-virtual {v1, p0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;-><init>(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :catch_0
    new-instance p0, Ljava/util/HashMap;

    .line 31
    .line 32
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [J

    .line 37
    .line 38
    const-string v1, "time"

    .line 39
    .line 40
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;-><init>(Ljava/util/HashMap;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method


# virtual methods
.method public getDataJson()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;->dataJson:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDataJson(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$ConsumeTimeDataJson;->dataJson:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method
