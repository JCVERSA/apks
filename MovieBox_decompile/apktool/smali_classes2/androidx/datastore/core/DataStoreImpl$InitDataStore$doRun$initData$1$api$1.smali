.class public final Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/datastore/core/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/sync/a;

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic d:Landroidx/datastore/core/DataStoreImpl;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/sync/a;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/datastore/core/DataStoreImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;->a:Lkotlinx/coroutines/sync/a;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;->d:Landroidx/datastore/core/DataStoreImpl;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    instance-of v0, p2, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;-><init>(Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$2:Ljava/lang/Object;

    .line 46
    .line 47
    iget-object v1, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 50
    .line 51
    iget-object v0, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$0:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v0, Lkotlinx/coroutines/sync/a;

    .line 54
    .line 55
    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto/16 :goto_5

    .line 62
    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_2
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$2:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Landroidx/datastore/core/DataStoreImpl;

    .line 74
    .line 75
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 78
    .line 79
    iget-object v4, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, Lkotlinx/coroutines/sync/a;

    .line 82
    .line 83
    :try_start_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :catchall_1
    move-exception p1

    .line 88
    move-object v0, v4

    .line 89
    goto/16 :goto_5

    .line 90
    .line 91
    :cond_3
    iget-object p1, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$4:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast p1, Landroidx/datastore/core/DataStoreImpl;

    .line 94
    .line 95
    iget-object v2, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$3:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 98
    .line 99
    iget-object v5, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$2:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 102
    .line 103
    iget-object v7, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$1:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v7, Lkotlinx/coroutines/sync/a;

    .line 106
    .line 107
    iget-object v8, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$0:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v8, Lkotlin/jvm/functions/Function2;

    .line 110
    .line 111
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    move-object p2, v7

    .line 115
    move-object v9, v8

    .line 116
    move-object v8, p1

    .line 117
    move-object p1, v9

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;->a:Lkotlinx/coroutines/sync/a;

    .line 123
    .line 124
    iget-object v2, p0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 125
    .line 126
    iget-object v7, p0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 127
    .line 128
    iget-object v8, p0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1;->d:Landroidx/datastore/core/DataStoreImpl;

    .line 129
    .line 130
    iput-object p1, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$0:Ljava/lang/Object;

    .line 131
    .line 132
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$1:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$2:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object v7, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$3:Ljava/lang/Object;

    .line 137
    .line 138
    iput-object v8, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$4:Ljava/lang/Object;

    .line 139
    .line 140
    iput v5, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->label:I

    .line 141
    .line 142
    invoke-interface {p2, v6, v0}, Lkotlinx/coroutines/sync/a;->f(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    if-ne v5, v1, :cond_5

    .line 147
    .line 148
    return-object v1

    .line 149
    :cond_5
    move-object v5, v2

    .line 150
    move-object v2, v7

    .line 151
    :goto_1
    :try_start_2
    iget-boolean v5, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 152
    .line 153
    if-nez v5, :cond_9

    .line 154
    .line 155
    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 156
    .line 157
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$0:Ljava/lang/Object;

    .line 158
    .line 159
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$1:Ljava/lang/Object;

    .line 160
    .line 161
    iput-object v8, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$2:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v6, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$3:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v6, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$4:Ljava/lang/Object;

    .line 166
    .line 167
    iput v4, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->label:I

    .line 168
    .line 169
    invoke-interface {p1, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 173
    if-ne p1, v1, :cond_6

    .line 174
    .line 175
    return-object v1

    .line 176
    :cond_6
    move-object v4, p2

    .line 177
    move-object p2, p1

    .line 178
    move-object p1, v8

    .line 179
    :goto_2
    :try_start_3
    iget-object v5, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 180
    .line 181
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    if-nez v5, :cond_8

    .line 186
    .line 187
    iput-object v4, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$0:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object v2, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$1:Ljava/lang/Object;

    .line 190
    .line 191
    iput-object p2, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->L$2:Ljava/lang/Object;

    .line 192
    .line 193
    iput v3, v0, Landroidx/datastore/core/DataStoreImpl$InitDataStore$doRun$initData$1$api$1$updateData$1;->label:I

    .line 194
    .line 195
    const/4 v3, 0x0

    .line 196
    invoke-virtual {p1, p2, v3, v0}, Landroidx/datastore/core/DataStoreImpl;->B(Ljava/lang/Object;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 200
    if-ne p1, v1, :cond_7

    .line 201
    .line 202
    return-object v1

    .line 203
    :cond_7
    move-object p1, p2

    .line 204
    move-object v1, v2

    .line 205
    move-object v0, v4

    .line 206
    :goto_3
    :try_start_4
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 207
    .line 208
    move-object v2, v1

    .line 209
    goto :goto_4

    .line 210
    :cond_8
    move-object v0, v4

    .line 211
    :goto_4
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 212
    .line 213
    invoke-interface {v0, v6}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    return-object p1

    .line 217
    :catchall_2
    move-exception p1

    .line 218
    move-object v0, p2

    .line 219
    goto :goto_5

    .line 220
    :cond_9
    :try_start_5
    const-string p1, "InitializerApi.updateData should not be called after initialization is complete."

    .line 221
    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 223
    .line 224
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 228
    :goto_5
    invoke-interface {v0, v6}, Lkotlinx/coroutines/sync/a;->unlock(Ljava/lang/Object;)V

    .line 229
    .line 230
    .line 231
    throw p1
.end method
