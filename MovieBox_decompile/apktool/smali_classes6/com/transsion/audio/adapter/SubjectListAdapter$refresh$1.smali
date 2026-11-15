.class final Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/adapter/SubjectListAdapter;->I1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/moviedetailapi/DownloadItem;)V
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
    c = "com.transsion.audio.adapter.SubjectListAdapter$refresh$1"
    f = "SubjectListAdapter.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field final synthetic $download:Lcom/transsion/moviedetailapi/DownloadItem;

.field final synthetic $holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

.field label:I

.field final synthetic this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/audio/adapter/SubjectListAdapter;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/transsion/moviedetailapi/DownloadItem;",
            "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
            "Lcom/transsion/audio/adapter/SubjectListAdapter;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;

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

.method public static synthetic a(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->d(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/transsion/moviedetailapi/DownloadItem;->getStatus()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    const/4 v0, 0x3

    .line 13
    if-ne p3, v0, :cond_1

    .line 14
    .line 15
    sget p3, Lcom/transsion/audio/R$drawable;->play_progress_bg:I

    .line 16
    .line 17
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    sget p3, Lcom/transsion/audio/R$drawable;->playing_progress_bg:I

    .line 22
    .line 23
    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 24
    .line 25
    .line 26
    :goto_1
    invoke-virtual {p2}, Lcom/transsion/audio/adapter/SubjectListAdapter;->H1()Lcom/transsion/audio/adapter/SubjectListAdapter$a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-interface {p1, p0}, Lcom/transsion/audio/adapter/SubjectListAdapter$a;->a(Lcom/transsion/moviedetailapi/DownloadItem;)V

    .line 33
    .line 34
    .line 35
    :cond_2
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
    new-instance p1, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;-><init>(Lcom/transsion/moviedetailapi/DownloadItem;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/audio/adapter/SubjectListAdapter;Lkotlin/coroutines/Continuation;)V

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

    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->invoke(Lkotlinx/coroutines/n0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    if-ne v1, v3, :cond_0

    .line 12
    .line 13
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/transsion/moviedetailapi/DownloadItem;->getUrl()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    .line 36
    iget-object v1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/transsion/audio/adapter/SubjectListAdapter;->C1(Lcom/transsion/audio/adapter/SubjectListAdapter;)Lsi/a;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    iput v3, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->label:I

    .line 45
    .line 46
    invoke-interface {v1, p1, p0}, Lsi/a;->c(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    :goto_0
    check-cast p1, Lcom/transsion/baselib/db/audio/AudioBean;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    move-object p1, v2

    .line 57
    :goto_1
    iget-object v0, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 58
    .line 59
    sget v1, Lcom/transsion/audio/R$id;->tv_process:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/widget/TextView;

    .line 66
    .line 67
    const-wide/16 v4, 0x0

    .line 68
    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v6

    .line 81
    goto :goto_2

    .line 82
    :cond_4
    move-wide v6, v4

    .line 83
    :goto_2
    const-wide/16 v8, 0x1

    .line 84
    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    if-eqz v1, :cond_5

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 94
    .line 95
    .line 96
    move-result-wide v10

    .line 97
    goto :goto_3

    .line 98
    :cond_5
    move-wide v10, v8

    .line 99
    :goto_3
    cmp-long v1, v10, v4

    .line 100
    .line 101
    if-gtz v1, :cond_6

    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_6
    move-wide v8, v10

    .line 105
    :goto_4
    long-to-float v1, v6

    .line 106
    const/high16 v4, 0x3f800000    # 1.0f

    .line 107
    .line 108
    mul-float/2addr v1, v4

    .line 109
    long-to-float v4, v8

    .line 110
    div-float/2addr v1, v4

    .line 111
    const/16 v4, 0x64

    .line 112
    .line 113
    int-to-float v4, v4

    .line 114
    mul-float/2addr v1, v4

    .line 115
    float-to-int v1, v1

    .line 116
    if-ltz v1, :cond_7

    .line 117
    .line 118
    const/16 v4, 0x65

    .line 119
    .line 120
    if-ge v1, v4, :cond_7

    .line 121
    .line 122
    iget-object v4, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    sget v5, Lcom/transsion/audio/R$string;->listened:I

    .line 129
    .line 130
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    new-instance v5, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    .line 151
    .line 152
    :cond_7
    iget-object v4, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 153
    .line 154
    sget v5, Lcom/transsion/audio/R$id;->pb_subject:I

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    check-cast v4, Landroid/widget/ProgressBar;

    .line 161
    .line 162
    iget-object v5, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$holder:Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 163
    .line 164
    sget v6, Lcom/transsion/audio/R$id;->iv_subject:I

    .line 165
    .line 166
    invoke-virtual {v5, v6}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    check-cast v5, Landroid/widget/ImageView;

    .line 171
    .line 172
    const/4 v6, 0x0

    .line 173
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    .line 175
    .line 176
    const/16 v7, 0x8

    .line 177
    .line 178
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    sget v8, Lcom/transsion/audio/R$drawable;->play_progress_bg:I

    .line 182
    .line 183
    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 184
    .line 185
    .line 186
    iget-object v8, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 187
    .line 188
    invoke-virtual {v8}, Lcom/transsion/moviedetailapi/DownloadItem;->getStatus()Ljava/lang/Integer;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    if-nez v8, :cond_8

    .line 193
    .line 194
    if-eqz p1, :cond_9

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getStatus()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->d(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    goto :goto_5

    .line 205
    :cond_8
    move-object v2, v8

    .line 206
    :cond_9
    :goto_5
    if-nez v2, :cond_a

    .line 207
    .line 208
    goto :goto_6

    .line 209
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-ne p1, v3, :cond_b

    .line 214
    .line 215
    const-string p1, "Not open"

    .line 216
    .line 217
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    goto :goto_b

    .line 227
    :cond_b
    :goto_6
    if-nez v2, :cond_c

    .line 228
    .line 229
    goto :goto_7

    .line 230
    :cond_c
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    const/4 v3, 0x6

    .line 235
    if-ne p1, v3, :cond_d

    .line 236
    .line 237
    const-string p1, "Finished"

    .line 238
    .line 239
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_b

    .line 249
    :cond_d
    :goto_7
    if-nez v2, :cond_e

    .line 250
    .line 251
    goto :goto_8

    .line 252
    :cond_e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 253
    .line 254
    .line 255
    move-result p1

    .line 256
    const/4 v3, 0x7

    .line 257
    if-ne p1, v3, :cond_f

    .line 258
    .line 259
    const-string p1, "ERROR"

    .line 260
    .line 261
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 268
    .line 269
    .line 270
    goto :goto_b

    .line 271
    :cond_f
    :goto_8
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 272
    .line 273
    .line 274
    if-nez v2, :cond_10

    .line 275
    .line 276
    goto :goto_9

    .line 277
    :cond_10
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    const/4 v0, 0x3

    .line 282
    if-ne p1, v0, :cond_11

    .line 283
    .line 284
    sget p1, Lcom/transsion/audio/R$drawable;->playing_progress_bg:I

    .line 285
    .line 286
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 287
    .line 288
    .line 289
    goto :goto_a

    .line 290
    :cond_11
    :goto_9
    sget p1, Lcom/transsion/audio/R$drawable;->play_progress_bg:I

    .line 291
    .line 292
    invoke-virtual {v5, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    .line 294
    .line 295
    :goto_a
    invoke-virtual {v4, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 296
    .line 297
    .line 298
    :goto_b
    iget-object p1, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->$download:Lcom/transsion/moviedetailapi/DownloadItem;

    .line 299
    .line 300
    iget-object v0, p0, Lcom/transsion/audio/adapter/SubjectListAdapter$refresh$1;->this$0:Lcom/transsion/audio/adapter/SubjectListAdapter;

    .line 301
    .line 302
    new-instance v1, Lcom/transsion/audio/adapter/e;

    .line 303
    .line 304
    invoke-direct {v1, p1, v5, v0}, Lcom/transsion/audio/adapter/e;-><init>(Lcom/transsion/moviedetailapi/DownloadItem;Landroid/widget/ImageView;Lcom/transsion/audio/adapter/SubjectListAdapter;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v5, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    .line 309
    .line 310
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 311
    .line 312
    return-object p1
.end method
