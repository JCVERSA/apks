.class final Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.transsnet.downloader.fragment.DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2"
    f = "DownloadMultiListFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $totalSize:Lkotlin/jvm/internal/Ref$LongRef;

.field label:I

.field final synthetic this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;",
            "Lkotlin/jvm/internal/Ref$LongRef;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->$totalSize:Lkotlin/jvm/internal/Ref$LongRef;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
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
    new-instance p1, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->$totalSize:Lkotlin/jvm/internal/Ref$LongRef;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;-><init>(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;Lkotlin/jvm/internal/Ref$LongRef;Lkotlin/coroutines/Continuation;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/n0;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->label:I

    .line 5
    .line 6
    if-nez v0, :cond_8

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_7

    .line 18
    .line 19
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_7

    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

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
    goto/16 :goto_1

    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->Q0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Lzw/c;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->P0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->$totalSize:Lkotlin/jvm/internal/Ref$LongRef;

    .line 52
    .line 53
    iget-wide v1, v1, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 54
    .line 55
    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/Boxing;->e(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {p1, v0, v1}, Lzw/c;->y(ILjava/lang/Long;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->Q0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Lzw/c;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const/4 v0, 0x0

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    invoke-interface {p1, v0}, Lzw/c;->U(Z)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->O0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Lcom/transsnet/downloader/adapter/g;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_6

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    if-eqz p1, :cond_6

    .line 87
    .line 88
    iget-object v1, p0, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment$selectAllWithSizeGreaterThan30$1$2;->this$0:Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;

    .line 89
    .line 90
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 91
    .line 92
    invoke-virtual {v1}, Lcom/transsnet/downloader/fragment/DownloadReDetectorBaseFragment;->getTAG()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    const-string v4, "<get-TAG>(...)"

    .line 97
    .line 98
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->O0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Lcom/transsnet/downloader/adapter/g;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const/4 v5, 0x0

    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/transsnet/downloader/adapter/g;->G1()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    if-eqz v4, :cond_3

    .line 113
    .line 114
    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    goto :goto_0

    .line 123
    :cond_3
    move-object v4, v5

    .line 124
    :goto_0
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->O0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Lcom/transsnet/downloader/adapter/g;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    if-eqz v7, :cond_4

    .line 133
    .line 134
    invoke-virtual {v7}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    if-eqz v7, :cond_4

    .line 139
    .line 140
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v8, "selectAllWithSizeGreaterThan30,checkedSize = "

    .line 154
    .line 155
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string v4, ",unableSize = "

    .line 162
    .line 163
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v4, ", dataSize = "

    .line 170
    .line 171
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    const/4 v6, 0x4

    .line 182
    const/4 v7, 0x0

    .line 183
    const/4 v5, 0x0

    .line 184
    invoke-static/range {v2 .. v7}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->S0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->Q0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Lzw/c;

    .line 191
    .line 192
    .line 193
    move-result-object v2

    .line 194
    if-eqz v2, :cond_6

    .line 195
    .line 196
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->P0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->R0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)I

    .line 205
    .line 206
    .line 207
    move-result v5

    .line 208
    add-int/2addr v4, v5

    .line 209
    invoke-static {v1}, Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;->O0(Lcom/transsnet/downloader/fragment/DownloadMultiListFragment;)Lcom/transsnet/downloader/adapter/g;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-ne v4, v1, :cond_5

    .line 225
    .line 226
    const/4 v0, 0x1

    .line 227
    :cond_5
    invoke-interface {v2, v3, p1, v0}, Lzw/c;->m(ILjava/util/List;Z)V

    .line 228
    .line 229
    .line 230
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 231
    .line 232
    return-object p1

    .line 233
    :cond_7
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 234
    .line 235
    return-object p1

    .line 236
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 237
    .line 238
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 239
    .line 240
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p1
.end method
