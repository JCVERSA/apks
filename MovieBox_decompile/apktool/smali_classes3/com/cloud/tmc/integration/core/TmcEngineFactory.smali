.class public Lcom/cloud/tmc/integration/core/TmcEngineFactory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/proxy/core/IEngineFactory;


# static fields
.field public static final ENGINE_TYPE_DEFAULT:Ljava/lang/String; = "default"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createEngine(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;Ljava/lang/String;)Lcom/cloud/tmc/kernel/engine/IEngine;
    .locals 0

    .line 1
    new-instance p1, Lcom/cloud/tmc/integration/core/TmcEngineImpl;

    .line 2
    .line 3
    invoke-direct {p1, p3, p2}, Lcom/cloud/tmc/integration/core/TmcEngineImpl;-><init>(Ljava/lang/String;Lcom/cloud/tmc/kernel/node/Node;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public getEngineType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, "default"

    .line 2
    .line 3
    return-object p1
.end method
