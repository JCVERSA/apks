.class public Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$LifeCycleDataJson;
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
    name = "LifeCycleDataJson"
.end annotation


# instance fields
.field private lifecycleName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$LifeCycleDataJson;->lifecycleName:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static parse(Lcom/google/gson/internal/LinkedTreeMap;)Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$LifeCycleDataJson;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/internal/LinkedTreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$LifeCycleDataJson;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$LifeCycleDataJson;

    .line 2
    .line 3
    const-string v1, "lifecycleName"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$LifeCycleDataJson;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public getLifecycleName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$LifeCycleDataJson;->lifecycleName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setLifecycleName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/kernel/bridge/model/ProtocolData$LifeCycleDataJson;->lifecycleName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
