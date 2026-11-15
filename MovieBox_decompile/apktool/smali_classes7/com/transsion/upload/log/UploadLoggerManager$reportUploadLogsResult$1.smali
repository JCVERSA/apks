.class final Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/upload/log/UploadLoggerManager;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Luu/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u008a@\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.upload.log.UploadLoggerManager$reportUploadLogsResult$1"
    f = "UploadLoggerManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $bucket:Ljava/lang/String;

.field final synthetic $callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $sourcePath:Ljava/lang/String;

.field final synthetic $uploadCallback:Luu/a;

.field final synthetic $url:Ljava/lang/String;

.field final synthetic $zipFileName:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Luu/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Luu/a;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$url:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$bucket:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$uploadCallback:Luu/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$sourcePath:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$zipFileName:Ljava/lang/String;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$url:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$bucket:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$uploadCallback:Luu/a;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$sourcePath:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$zipFileName:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;-><init>(Ljava/lang/String;Ljava/lang/String;Luu/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 18
    .line 19
    .line 20
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/n0;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance p1, Lcom/google/gson/JsonObject;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "logsZipUrl"

    .line 17
    .line 18
    iget-object v1, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$url:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "tempBucket"

    .line 24
    .line 25
    iget-object v1, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$bucket:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$url:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "reportUploadLogs url="

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    sget-object v0, Luu/c;->a:Luu/c;

    .line 46
    .line 47
    invoke-virtual {v0}, Luu/c;->c()Luu/b;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_0

    .line 52
    .line 53
    new-instance v1, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;

    .line 54
    .line 55
    iget-object v2, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$uploadCallback:Luu/a;

    .line 56
    .line 57
    iget-object v3, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$sourcePath:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v4, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$callback:Lkotlin/jvm/functions/Function1;

    .line 60
    .line 61
    iget-object v5, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$zipFileName:Ljava/lang/String;

    .line 62
    .line 63
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1$1;-><init>(Luu/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p1, v1}, Luu/b;->h(Lcom/google/gson/JsonObject;Lkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/transsion/upload/log/UploadLoggerManager$reportUploadLogsResult$1;->$uploadCallback:Luu/a;

    .line 78
    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    invoke-virtual {p1}, Lkotlin/Unit;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const/16 v5, 0x8

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    const-string v1, ""

    .line 94
    .line 95
    const-string v3, ""

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    invoke-static/range {v0 .. v6}, Luu/a$a;->a(Luu/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/transsion/upload/bean/UploadTstTokenStorageType;ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p1

    .line 104
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 105
    .line 106
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method
