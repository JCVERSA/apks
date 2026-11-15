.class final Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->N0()V
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
    c = "com.transsion.shorttv.ui.dialog.ShortTvEpisodeListDialog$showAllEpisodes$1$5"
    f = "ShortTvEpisodeListDialog.kt"
    l = {
        0xd5
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $selectEp:I

.field final synthetic $subjectId:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;


# direct methods
.method constructor <init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->$subjectId:Ljava/lang/String;

    .line 4
    .line 5
    iput p3, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->$selectEp:I

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
    new-instance p1, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->$subjectId:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->$selectEp:I

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;-><init>(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;Ljava/lang/String;ILkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->y0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->s0()Lur/d;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object v1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->$subjectId:Ljava/lang/String;

    .line 40
    .line 41
    iput v2, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->label:I

    .line 42
    .line 43
    invoke-interface {p1, v1, p0}, Lur/d;->b(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 51
    .line 52
    if-nez p1, :cond_4

    .line 53
    .line 54
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    :cond_4
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->y0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->F0()Landroidx/lifecycle/LiveData;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Ljava/util/List;

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    check-cast v0, Ljava/lang/Iterable;

    .line 78
    .line 79
    new-instance v1, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v3

    .line 92
    if-eqz v3, :cond_7

    .line 93
    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    instance-of v4, v3, Lnr/e;

    .line 99
    .line 100
    if-eqz v4, :cond_5

    .line 101
    .line 102
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_6
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    :cond_8
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_b

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 125
    .line 126
    move-object v3, v1

    .line 127
    check-cast v3, Ljava/lang/Iterable;

    .line 128
    .line 129
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-eqz v4, :cond_a

    .line 138
    .line 139
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    move-object v5, v4

    .line 144
    check-cast v5, Lnr/e;

    .line 145
    .line 146
    invoke-virtual {v5}, Lnr/e;->c()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    invoke-virtual {v0}, Lcom/transsion/shorttv/bean/ShortTVItem;->getEp()I

    .line 151
    .line 152
    .line 153
    move-result v6

    .line 154
    if-ne v5, v6, :cond_9

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_a
    const/4 v4, 0x0

    .line 158
    :goto_3
    check-cast v4, Lnr/e;

    .line 159
    .line 160
    if-eqz v4, :cond_8

    .line 161
    .line 162
    invoke-virtual {v4}, Lnr/e;->d()Lcom/transsion/shorttv/bean/ShortTVItem;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    if-nez v3, :cond_8

    .line 167
    .line 168
    invoke-virtual {v4, v0}, Lnr/e;->h(Lcom/transsion/shorttv/bean/ShortTVItem;)V

    .line 169
    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_b
    iget-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->t0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lqr/s;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    if-eqz p1, :cond_c

    .line 179
    .line 180
    iget-object p1, p1, Lqr/s;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 181
    .line 182
    if-eqz p1, :cond_c

    .line 183
    .line 184
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 185
    .line 186
    invoke-static {v0}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->s0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/ui/adapter/r;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    iget-object v3, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 191
    .line 192
    iget v4, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->$selectEp:I

    .line 193
    .line 194
    check-cast v1, Ljava/util/Collection;

    .line 195
    .line 196
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->q1(Ljava/util/List;)V

    .line 201
    .line 202
    .line 203
    invoke-static {v3}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->w0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lr6/d;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v4}, Lcom/transsion/shorttv/ui/adapter/r;->D1(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 214
    .line 215
    .line 216
    :cond_c
    iget-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 217
    .line 218
    invoke-static {p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->t0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lqr/s;

    .line 219
    .line 220
    .line 221
    move-result-object p1

    .line 222
    if-eqz p1, :cond_d

    .line 223
    .line 224
    iget-object p1, p1, Lqr/s;->c:Landroid/widget/ProgressBar;

    .line 225
    .line 226
    if-eqz p1, :cond_d

    .line 227
    .line 228
    invoke-static {p1}, Lcr/b;->b(Landroid/view/View;)V

    .line 229
    .line 230
    .line 231
    :cond_d
    iget-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 232
    .line 233
    invoke-static {p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->y0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->$subjectId:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {p1, v0, v2}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    .line 240
    .line 241
    .line 242
    iget-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 243
    .line 244
    invoke-static {p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->z0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)I

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    const/16 v0, 0x14

    .line 249
    .line 250
    if-le p1, v0, :cond_e

    .line 251
    .line 252
    iget-object p1, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->this$0:Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;

    .line 253
    .line 254
    invoke-static {p1}, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;->y0(Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog;)Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/transsion/shorttv/ui/dialog/ShortTvEpisodeListDialog$showAllEpisodes$1$5;->$subjectId:Ljava/lang/String;

    .line 259
    .line 260
    const/16 v1, 0x15

    .line 261
    .line 262
    invoke-virtual {p1, v0, v1}, Lcom/transsion/shorttv/viewmodel/ShortTvViewModel;->w0(Ljava/lang/String;I)V

    .line 263
    .line 264
    .line 265
    :cond_e
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 266
    .line 267
    return-object p1
.end method
