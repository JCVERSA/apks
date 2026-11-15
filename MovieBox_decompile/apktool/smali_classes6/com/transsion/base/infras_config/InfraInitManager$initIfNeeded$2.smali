.class final Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/base/infras_config/InfraInitManager;->f(Ljava/util/List;Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Lcom/transsion/base/infras_config/model/ConfigInitData;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0003\u0010\u0004"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "Lkotlin/Result;",
        "Lcom/transsion/base/infras_config/model/ConfigInitData;",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)Lkotlin/Result;"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsion.base.infras_config.InfraInitManager$initIfNeeded$2"
    f = "InfraInitManager.kt"
    l = {
        0x9a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $baseUrl:Ljava/lang/String;

.field final synthetic $minIntervalMs:J

.field final synthetic $sourceVersions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/base/infras_config/model/ConfigLocalState;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $version:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/transsion/base/infras_config/model/ConfigLocalState;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$minIntervalMs:J

    .line 2
    .line 3
    iput-object p3, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$sourceVersions:Ljava/util/List;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$version:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$baseUrl:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7
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
    new-instance p1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$minIntervalMs:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$sourceVersions:Ljava/util/List;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$version:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$baseUrl:Ljava/lang/String;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;-><init>(JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
            "Lkotlin/Result<",
            "Lcom/transsion/base/infras_config/model/ConfigInitData;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->label:I

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_1

    .line 11
    .line 12
    if-ne v2, v3, :cond_0

    .line 13
    .line 14
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    move-object/from16 v1, p1

    .line 18
    .line 19
    check-cast v1, Lkotlin/Result;

    .line 20
    .line 21
    invoke-virtual {v1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v1

    .line 35
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    sget-object v2, Lpi/b;->a:Lpi/b;

    .line 43
    .line 44
    invoke-virtual {v2}, Lpi/b;->d()J

    .line 45
    .line 46
    .line 47
    move-result-wide v6

    .line 48
    const-wide/16 v8, 0x0

    .line 49
    .line 50
    cmp-long v8, v6, v8

    .line 51
    .line 52
    if-lez v8, :cond_3

    .line 53
    .line 54
    sub-long/2addr v4, v6

    .line 55
    iget-wide v6, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$minIntervalMs:J

    .line 56
    .line 57
    cmp-long v4, v4, v6

    .line 58
    .line 59
    if-gez v4, :cond_3

    .line 60
    .line 61
    iget-object v4, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$sourceVersions:Ljava/util/List;

    .line 62
    .line 63
    invoke-virtual {v2, v4}, Lpi/b;->b(Ljava/util/List;)Lcom/transsion/base/infras_config/model/ConfigInitData;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 70
    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v3, "initIfNeeded() hit cache, sourceCount="

    .line 77
    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v3, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$sourceVersions:Ljava/util/List;

    .line 82
    .line 83
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v3, ", version="

    .line 91
    .line 92
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget-object v3, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$version:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const/4 v8, 0x4

    .line 105
    const/4 v9, 0x0

    .line 106
    const-string v5, "InfraInitManager"

    .line 107
    .line 108
    const/4 v7, 0x0

    .line 109
    invoke-static/range {v4 .. v9}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    invoke-static {v2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    return-object v1

    .line 121
    :cond_2
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 122
    .line 123
    const/4 v8, 0x4

    .line 124
    const/4 v9, 0x0

    .line 125
    const-string v5, "InfraInitManager"

    .line 126
    .line 127
    const-string v6, "initIfNeeded() cache miss, will request from network"

    .line 128
    .line 129
    const/4 v7, 0x0

    .line 130
    invoke-static/range {v4 .. v9}, Lwf/a$a;->z(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    sget-object v10, Lwf/a;->a:Lwf/a$a;

    .line 135
    .line 136
    const/4 v14, 0x4

    .line 137
    const/4 v15, 0x0

    .line 138
    const-string v11, "InfraInitManager"

    .line 139
    .line 140
    const-string v12, "initIfNeeded() expired or never initialized, will request from network"

    .line 141
    .line 142
    const/4 v13, 0x0

    .line 143
    invoke-static/range {v10 .. v15}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    :goto_0
    sget-object v2, Lcom/transsion/base/infras_config/InfraInitManager;->a:Lcom/transsion/base/infras_config/InfraInitManager;

    .line 147
    .line 148
    iget-object v4, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$sourceVersions:Ljava/util/List;

    .line 149
    .line 150
    iget-object v5, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$version:Ljava/lang/String;

    .line 151
    .line 152
    iget-object v6, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->$baseUrl:Ljava/lang/String;

    .line 153
    .line 154
    iput v3, v0, Lcom/transsion/base/infras_config/InfraInitManager$initIfNeeded$2;->label:I

    .line 155
    .line 156
    invoke-virtual {v2, v4, v5, v6, v0}, Lcom/transsion/base/infras_config/InfraInitManager;->e(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    if-ne v2, v1, :cond_4

    .line 161
    .line 162
    return-object v1

    .line 163
    :cond_4
    move-object v1, v2

    .line 164
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    return-object v1
.end method
