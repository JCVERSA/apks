.class public abstract Lcom/cloud/tmc/offline/download/task/base/BaseTask;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/offline/download/task/base/ITask;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0013\u0008&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0011\u0010%\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u0001H\u0096\u0002J\u0008\u0010\'\u001a\u00020\u0003H\u0016R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u00038VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u0010R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR2\u0010\u0012\u001a\u001a\u0012\u0004\u0012\u00020\u0001\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u0014\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u0013X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R$\u0010\u001b\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR$\u0010 \u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008!\u0010\u001d\"\u0004\u0008\"\u0010\u001fR\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u0006("
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/task/base/BaseTask;",
        "Lcom/cloud/tmc/offline/download/task/base/ITask;",
        "name",
        "",
        "startTaskTime",
        "",
        "(Ljava/lang/String;J)V",
        "_id",
        "_priority",
        "",
        "_sequence",
        "id",
        "getId",
        "()Ljava/lang/String;",
        "isIdleRunTask",
        "",
        "()Z",
        "getName",
        "onResult",
        "Lkotlin/Function2;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "",
        "getOnResult",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnResult",
        "(Lkotlin/jvm/functions/Function2;)V",
        "value",
        "priority",
        "getPriority",
        "()I",
        "setPriority",
        "(I)V",
        "sequence",
        "getSequence",
        "setSequence",
        "getStartTaskTime",
        "()J",
        "compareTo",
        "other",
        "toString",
        "com.cloud.tmc.offline_download"
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
.field private _id:Ljava/lang/String;

.field private _priority:I

.field private _sequence:I

.field private final name:Ljava/lang/String;

.field private onResult:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final startTaskTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->name:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->startTaskTime:J

    const/4 p1, 0x5

    .line 4
    iput p1, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->_priority:I

    .line 5
    sget-object p1, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->INSTANCE:Lcom/cloud/tmc/offline/download/utils/OfflineUtils;

    invoke-virtual {p1}, Lcom/cloud/tmc/offline/download/utils/OfflineUtils;->generateUniqueId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->_id:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    .line 7
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/cloud/tmc/offline/download/task/base/ITask;)I
    .locals 2

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->getPriority()I

    move-result v0

    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->getPriority()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->getSequence()I

    move-result v0

    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->getSequence()I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->getPriority()I

    move-result v0

    invoke-interface {p1}, Lcom/cloud/tmc/offline/download/task/base/ITask;->getPriority()I

    move-result p1

    goto :goto_0

    :goto_1
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/cloud/tmc/offline/download/task/base/ITask;

    invoke-virtual {p0, p1}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->compareTo(Lcom/cloud/tmc/offline/download/task/base/ITask;)I

    move-result p1

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOnResult()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->onResult:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->_priority:I

    .line 2
    .line 3
    return v0
.end method

.method public getSequence()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->_sequence:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartTaskTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->startTaskTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isIdleRunTask()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public setOnResult(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/cloud/tmc/offline/download/task/base/ITask;",
            "-",
            "Lcom/cloud/tmc/offline/download/model/TaskResult<",
            "*>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->onResult:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->_priority:I

    .line 2
    .line 3
    return-void
.end method

.method public setSequence(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->_sequence:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/gson/JsonObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "name"

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->getName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "id"

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->getId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->getSequence()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "sequence"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->getPriority()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "priority"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/cloud/tmc/offline/download/task/base/BaseTask;->isIdleRunTask()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v2, "isIdleRunTask"

    .line 59
    .line 60
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v1, "JsonObject().apply {\n   \u2026ask)\n        }.toString()"

    .line 68
    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method
