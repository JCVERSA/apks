.class public final Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;
.super Lcom/cloud/tmc/kernel/model/BaseBean;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MiniPrefetchData"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0017\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J+\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0007H\u00d6\u0001R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;",
        "Lcom/cloud/tmc/kernel/model/BaseBean;",
        "expiredTime",
        "",
        "callback",
        "Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "callbackId",
        "",
        "(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V",
        "getCallback",
        "()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;",
        "setCallback",
        "(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V",
        "getCallbackId",
        "()Ljava/lang/String;",
        "setCallbackId",
        "(Ljava/lang/String;)V",
        "getExpiredTime",
        "()J",
        "setExpiredTime",
        "(J)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "com.cloud.tmc.integration"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

.field private callbackId:Ljava/lang/String;

.field private expiredTime:J


# direct methods
.method public constructor <init>(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/kernel/model/BaseBean;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;ILjava/lang/Object;)Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget-wide p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget-object p3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p5, p5, 0x4

    .line 14
    .line 15
    if-eqz p5, :cond_2

    .line 16
    .line 17
    iget-object p4, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    .line 18
    .line 19
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->copy(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;-><init>(JLcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 23
    .line 24
    iget-object v3, p1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 25
    .line 26
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_3

    .line 31
    .line 32
    return v2

    .line 33
    :cond_3
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_4

    .line 42
    .line 43
    return v2

    .line 44
    :cond_4
    return v0
.end method

.method public final getCallback()Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCallbackId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExpiredTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/collection/s;->a(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-object v1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :goto_1
    add-int/2addr v0, v2

    .line 33
    return v0
.end method

.method public final setCallback(Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 2
    .line 3
    return-void
.end method

.method public final setCallbackId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setExpiredTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->expiredTime:J

    .line 2
    .line 3
    iget-object v2, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callback:Lcom/cloud/tmc/kernel/bridge/extension/BridgeCallback;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/cloud/tmc/integration/bridge/PrefetchDataBridge$MiniPrefetchData;->callbackId:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v5, "MiniPrefetchData(expiredTime="

    .line 13
    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v0, ", callback="

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", callbackId="

    .line 29
    .line 30
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ")"

    .line 37
    .line 38
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
