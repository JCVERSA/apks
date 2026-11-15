.class public abstract Lcom/cloud/tmc/offline/download/model/TaskResult;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;,
        Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;,
        Lcom/cloud/tmc/offline/download/model/TaskResult$Success;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00086\u0018\u0000*\u0006\u0008\u0000\u0010\u0001 \u00012\u00020\u0002:\u0003\u0018\u0019\u001aB=\u0008\u0004\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0008\u0010\u0017\u001a\u00020\tH\u0016R\u0015\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0016\u0082\u0001\u0003\u001b\u001c\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/cloud/tmc/offline/download/model/TaskResult;",
        "T",
        "",
        "data",
        "delay",
        "",
        "errorCode",
        "",
        "errorMsg",
        "",
        "isTrace",
        "",
        "(Ljava/lang/Object;JILjava/lang/String;Z)V",
        "getData",
        "()Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "getDelay",
        "()J",
        "getErrorCode",
        "()I",
        "getErrorMsg",
        "()Ljava/lang/String;",
        "()Z",
        "toString",
        "Failure",
        "Retry",
        "Success",
        "Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;",
        "Lcom/cloud/tmc/offline/download/model/TaskResult$Success;",
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
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final delay:J

.field private final errorCode:I

.field private final errorMsg:Ljava/lang/String;

.field private final isTrace:Z


# direct methods
.method private constructor <init>(Ljava/lang/Object;JILjava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JI",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->data:Ljava/lang/Object;

    .line 4
    iput-wide p2, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->delay:J

    .line 5
    iput p4, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorCode:I

    .line 6
    iput-object p5, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorMsg:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->isTrace:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JILjava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x64

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p7, 0x4

    if-eqz v4, :cond_2

    const/16 v4, 0xc8

    goto :goto_2

    :cond_2
    move v4, p4

    :goto_2
    and-int/lit8 v5, p7, 0x8

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move-object v1, p5

    :goto_3
    and-int/lit8 v5, p7, 0x10

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    move v5, p6

    :goto_4
    const/4 v6, 0x0

    move-object p1, p0

    move-object p2, v0

    move-wide p3, v2

    move p5, v4

    move-object p6, v1

    move p7, v5

    move-object p8, v6

    .line 8
    invoke-direct/range {p1 .. p8}, Lcom/cloud/tmc/offline/download/model/TaskResult;-><init>(Ljava/lang/Object;JILjava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;JILjava/lang/String;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/cloud/tmc/offline/download/model/TaskResult;-><init>(Ljava/lang/Object;JILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->delay:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorMsg:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isTrace()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->isTrace:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    instance-of v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult$Success;

    .line 2
    .line 3
    const-string v1, "]"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->data:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "Success[data="

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    instance-of v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult$Failure;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorCode:I

    .line 35
    .line 36
    iget-object v2, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->errorMsg:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v4, "Failure[errorCode="

    .line 44
    .line 45
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", errorMsg="

    .line 52
    .line 53
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    instance-of v0, p0, Lcom/cloud/tmc/offline/download/model/TaskResult$Retry;

    .line 68
    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-wide v2, p0, Lcom/cloud/tmc/offline/download/model/TaskResult;->delay:J

    .line 72
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "Retry[delay="

    .line 79
    .line 80
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 94
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 95
    .line 96
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 97
    .line 98
    .line 99
    throw v0
.end method
