.class final Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "Lkotlinx/coroutines/n0;",
        "",
        "<anonymous>",
        "(Lkotlinx/coroutines/n0;)V"
    }
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.transsnet.downloader.fragment.DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2"
    f = "DownloadReDetectorGroupFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isSelected:Z

.field final synthetic $totalSize:Lkotlin/jvm/internal/Ref$LongRef;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;ZLkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;",
            "Z",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->$isSelected:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->$totalSize:Lkotlin/jvm/internal/Ref$LongRef;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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
    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->$isSelected:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->$totalSize:Lkotlin/jvm/internal/Ref$LongRef;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;-><init>(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;ZLkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_9

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_8

    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_8

    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    goto/16 :goto_3

    .line 36
    .line 37
    :cond_0
    iget-boolean p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->$isSelected:Z

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    const/4 v1, 0x0

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->$totalSize:Lkotlin/jvm/internal/Ref$LongRef;

    .line 46
    .line 47
    iget-wide v2, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 48
    .line 49
    invoke-static {v2, v3, v0}, Lzg/b;->a(JI)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-static {p1, v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->V0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->Q0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)Lkotlin/jvm/functions/Function1;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_2

    .line 63
    .line 64
    iget-object v2, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 65
    .line 66
    invoke-static {v2}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->P0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->Q0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)Lkotlin/jvm/functions/Function1;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_2

    .line 81
    .line 82
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->S0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)Lkotlin/jvm/functions/Function1;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const/4 v2, 0x0

    .line 92
    if-eqz p1, :cond_3

    .line 93
    .line 94
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)Lcom/transsnet/downloader/adapter/g;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_7

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_7

    .line 114
    .line 115
    iget-object v3, p0, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;

    .line 116
    .line 117
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 118
    .line 119
    invoke-virtual {v3}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const-string v6, "<get-TAG>(...)"

    .line 124
    .line 125
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)Lcom/transsnet/downloader/adapter/g;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    if-eqz v6, :cond_4

    .line 133
    .line 134
    invoke-virtual {v6}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    if-eqz v6, :cond_4

    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    goto :goto_1

    .line 149
    :cond_4
    move-object v6, v1

    .line 150
    :goto_1
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->T0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)I

    .line 151
    .line 152
    .line 153
    move-result v7

    .line 154
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)Lcom/transsnet/downloader/adapter/g;

    .line 155
    .line 156
    .line 157
    move-result-object v8

    .line 158
    if-eqz v8, :cond_5

    .line 159
    .line 160
    invoke-virtual {v8}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    if-eqz v8, :cond_5

    .line 165
    .line 166
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    .line 175
    .line 176
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v9, "selectAllWithSizeGreaterThan30,checkedSize = "

    .line 180
    .line 181
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    const-string v6, ",unableSize = "

    .line 188
    .line 189
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v6, ", dataSize = "

    .line 196
    .line 197
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v6

    .line 207
    const/4 v8, 0x4

    .line 208
    const/4 v9, 0x0

    .line 209
    const/4 v7, 0x0

    .line 210
    invoke-static/range {v4 .. v9}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->U0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)V

    .line 214
    .line 215
    .line 216
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->O0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)Lkotlin/jvm/functions/Function2;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-eqz v1, :cond_7

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 223
    .line 224
    .line 225
    move-result v4

    .line 226
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->T0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    add-int/2addr v4, v5

    .line 231
    invoke-static {v3}, Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadReDetectorGroupFragment;)Lcom/transsnet/downloader/adapter/g;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    if-ne v4, v3, :cond_6

    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_6
    move v0, v2

    .line 250
    :goto_2
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-interface {v1, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 258
    .line 259
    return-object p1

    .line 260
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 261
    .line 262
    return-object p1

    .line 263
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 264
    .line 265
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 266
    .line 267
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    throw p1
.end method
