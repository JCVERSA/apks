.class public Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;
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
    name = "DispatchEventDataJson"
.end annotation


# instance fields
.field private dataJson:Ljava/lang/String;

.field private eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->eventName:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->dataJson:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;

    .line 2
    .line 3
    const-string v1, "eventName"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "dataJson"

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    .line 19
    invoke-direct {v0, v1, p0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method


# virtual methods
.method public getDataJson()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->dataJson:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->eventName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDataJson(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->dataJson:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setEventName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$DispatchEventDataJson;->eventName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
