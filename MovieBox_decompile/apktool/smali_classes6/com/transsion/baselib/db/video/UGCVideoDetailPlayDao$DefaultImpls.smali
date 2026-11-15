.class public abstract Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static a(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->label:I

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
    iput v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    if-eq v2, v4, :cond_2

    .line 39
    .line 40
    if-ne v2, v3, :cond_1

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->L$1:Ljava/lang/Object;

    .line 55
    .line 56
    move-object p1, p0

    .line 57
    check-cast p1, Ljava/lang/String;

    .line 58
    .line 59
    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->L$0:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 62
    .line 63
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "SINGLE_"

    .line 76
    .line 77
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    iput-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    iput-object p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->L$1:Ljava/lang/Object;

    .line 90
    .line 91
    iput v4, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->label:I

    .line 92
    .line 93
    invoke-interface {p0, p2, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->g(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    if-ne p2, v1, :cond_4

    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_4
    :goto_1
    check-cast p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 101
    .line 102
    if-eqz p2, :cond_5

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->toBusinessBean()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0

    .line 109
    :cond_5
    iput-object v5, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->L$0:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object v5, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->L$1:Ljava/lang/Object;

    .line 112
    .line 113
    iput v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getDataByUGCVideoId$1;->label:I

    .line 114
    .line 115
    invoke-interface {p0, p1, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->m(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    if-ne p2, v1, :cond_6

    .line 120
    .line 121
    return-object v1

    .line 122
    :cond_6
    :goto_2
    check-cast p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 123
    .line 124
    if-eqz p2, :cond_7

    .line 125
    .line 126
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->toBusinessBean()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 127
    .line 128
    .line 129
    move-result-object v5

    .line 130
    :cond_7
    return-object v5
.end method

.method public static b(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->label:I

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
    iput v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    packed-switch v2, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 38
    .line 39
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 40
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p0

    .line 45
    :pswitch_0
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_9

    .line 49
    .line 50
    :pswitch_1
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto/16 :goto_8

    .line 54
    .line 55
    :pswitch_2
    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 58
    .line 59
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_6

    .line 63
    .line 64
    :pswitch_3
    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 67
    .line 68
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :pswitch_4
    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$2:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p0, Ljava/lang/String;

    .line 76
    .line 77
    iget-object p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p1, Ljava/lang/String;

    .line 80
    .line 81
    iget-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 84
    .line 85
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    goto :goto_3

    .line 89
    :pswitch_5
    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$2:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast p0, Ljava/lang/String;

    .line 92
    .line 93
    iget-object p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast p1, Ljava/lang/String;

    .line 96
    .line 97
    iget-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 100
    .line 101
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :pswitch_6
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    sget-object p2, Lij/o;->a:Lij/o;

    .line 109
    .line 110
    invoke-virtual {p2}, Lij/o;->d()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    if-eqz p2, :cond_2

    .line 115
    .line 116
    iput-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$2:Ljava/lang/Object;

    .line 121
    .line 122
    const/4 v2, 0x1

    .line 123
    iput v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->label:I

    .line 124
    .line 125
    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->l(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-ne v2, v1, :cond_1

    .line 130
    .line 131
    return-object v1

    .line 132
    :cond_1
    move-object v5, v2

    .line 133
    move-object v2, p0

    .line 134
    move-object p0, p2

    .line 135
    move-object p2, v5

    .line 136
    :goto_1
    check-cast p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 137
    .line 138
    :goto_2
    move-object v5, p1

    .line 139
    move-object p1, p0

    .line 140
    move-object p0, p2

    .line 141
    move-object p2, v5

    .line 142
    goto :goto_4

    .line 143
    :cond_2
    iput-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 146
    .line 147
    iput-object p2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$2:Ljava/lang/Object;

    .line 148
    .line 149
    const/4 v2, 0x2

    .line 150
    iput v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->label:I

    .line 151
    .line 152
    invoke-interface {p0, p1, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->u(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    if-ne v2, v1, :cond_3

    .line 157
    .line 158
    return-object v1

    .line 159
    :cond_3
    move-object v5, v2

    .line 160
    move-object v2, p0

    .line 161
    move-object p0, p2

    .line 162
    move-object p2, v5

    .line 163
    :goto_3
    check-cast p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 164
    .line 165
    goto :goto_2

    .line 166
    :goto_4
    if-eqz p0, :cond_9

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCollectionId()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    if-eqz v4, :cond_4

    .line 177
    .line 178
    invoke-virtual {p0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->toBusinessBean()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    goto :goto_a

    .line 183
    :cond_4
    if-eqz p1, :cond_6

    .line 184
    .line 185
    iput-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 186
    .line 187
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$2:Ljava/lang/Object;

    .line 190
    .line 191
    const/4 v4, 0x3

    .line 192
    iput v4, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->label:I

    .line 193
    .line 194
    invoke-interface {v2, p2, p1, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->l(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p2

    .line 198
    if-ne p2, v1, :cond_5

    .line 199
    .line 200
    return-object v1

    .line 201
    :cond_5
    :goto_5
    check-cast p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 202
    .line 203
    goto :goto_7

    .line 204
    :cond_6
    iput-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 205
    .line 206
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 207
    .line 208
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$2:Ljava/lang/Object;

    .line 209
    .line 210
    const/4 p1, 0x4

    .line 211
    iput p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->label:I

    .line 212
    .line 213
    invoke-interface {v2, p2, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->u(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object p2

    .line 217
    if-ne p2, v1, :cond_7

    .line 218
    .line 219
    return-object v1

    .line 220
    :cond_7
    :goto_6
    check-cast p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 221
    .line 222
    :goto_7
    if-nez p2, :cond_8

    .line 223
    .line 224
    goto :goto_a

    .line 225
    :cond_8
    invoke-virtual {p0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getProgress()J

    .line 226
    .line 227
    .line 228
    move-result-wide p0

    .line 229
    invoke-virtual {p2, p0, p1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->setProgress(J)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->toBusinessBean()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    goto :goto_a

    .line 237
    :cond_9
    if-eqz p1, :cond_b

    .line 238
    .line 239
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 240
    .line 241
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 242
    .line 243
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$2:Ljava/lang/Object;

    .line 244
    .line 245
    const/4 p0, 0x5

    .line 246
    iput p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->label:I

    .line 247
    .line 248
    invoke-interface {v2, p2, p1, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->l(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    if-ne p2, v1, :cond_a

    .line 253
    .line 254
    return-object v1

    .line 255
    :cond_a
    :goto_8
    check-cast p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 256
    .line 257
    if-eqz p2, :cond_d

    .line 258
    .line 259
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->toBusinessBean()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    goto :goto_a

    .line 264
    :cond_b
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$0:Ljava/lang/Object;

    .line 265
    .line 266
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$1:Ljava/lang/Object;

    .line 267
    .line 268
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->L$2:Ljava/lang/Object;

    .line 269
    .line 270
    const/4 p0, 0x6

    .line 271
    iput p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistory$1;->label:I

    .line 272
    .line 273
    invoke-interface {v2, p2, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->u(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    if-ne p2, v1, :cond_c

    .line 278
    .line 279
    return-object v1

    .line 280
    :cond_c
    :goto_9
    check-cast p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 281
    .line 282
    if-eqz p2, :cond_d

    .line 283
    .line 284
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->toBusinessBean()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 285
    .line 286
    .line 287
    move-result-object v3

    .line 288
    :cond_d
    :goto_a
    return-object v3

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;IILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p3, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->label:I

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
    iput v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    const/4 v4, 0x3

    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    if-eqz v2, :cond_5

    .line 38
    .line 39
    if-eq v2, v6, :cond_4

    .line 40
    .line 41
    if-eq v2, v5, :cond_3

    .line 42
    .line 43
    if-eq v2, v4, :cond_2

    .line 44
    .line 45
    if-ne v2, v3, :cond_1

    .line 46
    .line 47
    iget p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$0:I

    .line 48
    .line 49
    iget-object p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->L$0:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast p1, Ljava/util/List;

    .line 52
    .line 53
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    .line 60
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 61
    .line 62
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw p0

    .line 66
    :cond_2
    iget p2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$1:I

    .line 67
    .line 68
    iget p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$0:I

    .line 69
    .line 70
    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->L$0:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 73
    .line 74
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_3
    iget p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$0:I

    .line 79
    .line 80
    iget-object p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->L$0:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast p1, Ljava/util/List;

    .line 83
    .line 84
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_4
    iget p2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$1:I

    .line 89
    .line 90
    iget p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$0:I

    .line 91
    .line 92
    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->L$1:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Ljava/lang/String;

    .line 95
    .line 96
    iget-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->L$0:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 99
    .line 100
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    move-object v7, p3

    .line 104
    move-object p3, p0

    .line 105
    move-object p0, v2

    .line 106
    move-object v2, v7

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    invoke-static {p3}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    sget-object p3, Lij/o;->a:Lij/o;

    .line 112
    .line 113
    invoke-virtual {p3}, Lij/o;->d()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    if-eqz p3, :cond_8

    .line 118
    .line 119
    iput-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->L$0:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object p3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->L$1:Ljava/lang/Object;

    .line 122
    .line 123
    iput p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$0:I

    .line 124
    .line 125
    iput p2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$1:I

    .line 126
    .line 127
    iput v6, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->label:I

    .line 128
    .line 129
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->w(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    if-ne v2, v1, :cond_6

    .line 134
    .line 135
    return-object v1

    .line 136
    :cond_6
    :goto_1
    check-cast v2, Ljava/util/List;

    .line 137
    .line 138
    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->L$0:Ljava/lang/Object;

    .line 139
    .line 140
    const/4 v3, 0x0

    .line 141
    iput-object v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->L$1:Ljava/lang/Object;

    .line 142
    .line 143
    iput p2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$0:I

    .line 144
    .line 145
    iput v5, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->label:I

    .line 146
    .line 147
    invoke-interface {p0, p1, p2, p3, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->i(IILjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    if-ne p3, v1, :cond_7

    .line 152
    .line 153
    return-object v1

    .line 154
    :cond_7
    move p0, p2

    .line 155
    move-object p1, v2

    .line 156
    :goto_2
    check-cast p3, Ljava/util/List;

    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_8
    iput-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->L$0:Ljava/lang/Object;

    .line 160
    .line 161
    iput p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$0:I

    .line 162
    .line 163
    iput p2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$1:I

    .line 164
    .line 165
    iput v4, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->label:I

    .line 166
    .line 167
    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->f(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    if-ne p3, v1, :cond_9

    .line 172
    .line 173
    return-object v1

    .line 174
    :cond_9
    :goto_3
    check-cast p3, Ljava/util/List;

    .line 175
    .line 176
    iput-object p3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->L$0:Ljava/lang/Object;

    .line 177
    .line 178
    iput p2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->I$0:I

    .line 179
    .line 180
    iput v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$getHistoryDataOffset$1;->label:I

    .line 181
    .line 182
    invoke-interface {p0, p1, p2, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->o(IILkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    if-ne p0, v1, :cond_a

    .line 187
    .line 188
    return-object v1

    .line 189
    :cond_a
    move-object p1, p3

    .line 190
    move-object p3, p0

    .line 191
    move p0, p2

    .line 192
    :goto_4
    check-cast p3, Ljava/util/List;

    .line 193
    .line 194
    :goto_5
    if-nez p1, :cond_b

    .line 195
    .line 196
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    :cond_b
    check-cast p1, Ljava/util/Collection;

    .line 201
    .line 202
    if-eqz p3, :cond_c

    .line 203
    .line 204
    check-cast p3, Ljava/lang/Iterable;

    .line 205
    .line 206
    goto :goto_6

    .line 207
    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 208
    .line 209
    .line 210
    move-result-object p2

    .line 211
    move-object p3, p2

    .line 212
    check-cast p3, Ljava/lang/Iterable;

    .line 213
    .line 214
    :goto_6
    invoke-static {p1, p3}, Lkotlin/collections/CollectionsKt;->B0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Ljava/lang/Iterable;

    .line 219
    .line 220
    new-instance p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls$getHistoryDataOffset$$inlined$sortedByDescending$1;

    .line 221
    .line 222
    invoke-direct {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$DefaultImpls$getHistoryDataOffset$$inlined$sortedByDescending$1;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->I0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Ljava/lang/Iterable;

    .line 230
    .line 231
    invoke-static {p1, p0}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    check-cast p0, Ljava/lang/Iterable;

    .line 236
    .line 237
    new-instance p1, Ljava/util/ArrayList;

    .line 238
    .line 239
    const/16 p2, 0xa

    .line 240
    .line 241
    invoke-static {p0, p2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 242
    .line 243
    .line 244
    move-result p2

    .line 245
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 246
    .line 247
    .line 248
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 253
    .line 254
    .line 255
    move-result p2

    .line 256
    if-eqz p2, :cond_d

    .line 257
    .line 258
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    check-cast p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 263
    .line 264
    invoke-virtual {p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->toBusinessBean()Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_d
    return-object p1
.end method

.method public static d(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    .line 1
    instance-of v0, p2, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->label:I

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
    iput v1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    .line 61
    .line 62
    move-object p1, p0

    .line 63
    check-cast p1, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 64
    .line 65
    iget-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast p0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 68
    .line 69
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getCollectionId()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->getUgcVideoId()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object p0, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    .line 85
    .line 86
    iput-object p1, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    .line 87
    .line 88
    iput v5, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->label:I

    .line 89
    .line 90
    invoke-interface {p0, p2, v2, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->s(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    if-ne p2, v1, :cond_5

    .line 95
    .line 96
    return-object v1

    .line 97
    :cond_5
    :goto_1
    const/4 v2, 0x0

    .line 98
    if-nez p2, :cond_7

    .line 99
    .line 100
    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    .line 101
    .line 102
    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    .line 103
    .line 104
    iput v4, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->label:I

    .line 105
    .line 106
    invoke-interface {p0, p1, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->p(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    if-ne p0, v1, :cond_6

    .line 111
    .line 112
    return-object v1

    .line 113
    :cond_6
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p0

    .line 116
    :cond_7
    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->L$0:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object v2, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->L$1:Ljava/lang/Object;

    .line 119
    .line 120
    iput v3, v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdate$1;->label:I

    .line 121
    .line 122
    invoke-interface {p0, p1, v0}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->v(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    if-ne p0, v1, :cond_8

    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_8
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    return-object p0
.end method

.method public static e(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;Ljava/lang/String;Ljava/lang/String;JJLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 59

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-wide/from16 v3, p3

    .line 8
    .line 9
    move-wide/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    instance-of v8, v7, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;

    .line 14
    .line 15
    if-eqz v8, :cond_0

    .line 16
    .line 17
    move-object v8, v7

    .line 18
    check-cast v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;

    .line 19
    .line 20
    iget v9, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 21
    .line 22
    const/high16 v10, -0x80000000

    .line 23
    .line 24
    and-int v11, v9, v10

    .line 25
    .line 26
    if-eqz v11, :cond_0

    .line 27
    .line 28
    sub-int/2addr v9, v10

    .line 29
    iput v9, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;

    .line 33
    .line 34
    invoke-direct {v8, v7}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object v7, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->result:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v9

    .line 43
    iget v10, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 44
    .line 45
    const/4 v11, 0x4

    .line 46
    const/4 v12, 0x3

    .line 47
    const/4 v13, 0x2

    .line 48
    const/4 v14, 0x1

    .line 49
    if-eqz v10, :cond_5

    .line 50
    .line 51
    if-eq v10, v14, :cond_4

    .line 52
    .line 53
    if-eq v10, v13, :cond_3

    .line 54
    .line 55
    if-eq v10, v12, :cond_2

    .line 56
    .line 57
    if-ne v10, v11, :cond_1

    .line 58
    .line 59
    invoke-static {v7}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_8

    .line 63
    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_2
    invoke-static {v7}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_7

    .line 76
    .line 77
    :cond_3
    iget-wide v0, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    .line 78
    .line 79
    iget-wide v2, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    .line 80
    .line 81
    iget-object v4, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$3:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v4, Ljava/lang/String;

    .line 84
    .line 85
    iget-object v5, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$2:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v5, Ljava/lang/String;

    .line 88
    .line 89
    iget-object v6, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v6, Ljava/lang/String;

    .line 92
    .line 93
    iget-object v10, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v10, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 96
    .line 97
    invoke-static {v7}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    move-object/from16 v56, v7

    .line 101
    .line 102
    move-object v7, v4

    .line 103
    move-wide v3, v2

    .line 104
    move-object v2, v5

    .line 105
    move-wide/from16 v57, v0

    .line 106
    .line 107
    move-object v1, v6

    .line 108
    move-wide/from16 v5, v57

    .line 109
    .line 110
    :goto_1
    move-object/from16 v0, v56

    .line 111
    .line 112
    goto/16 :goto_5

    .line 113
    .line 114
    :cond_4
    iget-wide v0, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    .line 115
    .line 116
    iget-wide v2, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    .line 117
    .line 118
    iget-object v4, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$3:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v4, Ljava/lang/String;

    .line 121
    .line 122
    iget-object v5, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$2:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v5, Ljava/lang/String;

    .line 125
    .line 126
    iget-object v6, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v6, Ljava/lang/String;

    .line 129
    .line 130
    iget-object v10, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v10, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;

    .line 133
    .line 134
    invoke-static {v7}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    move-object/from16 v56, v7

    .line 138
    .line 139
    move-object v7, v4

    .line 140
    move-wide v3, v2

    .line 141
    move-object v2, v5

    .line 142
    move-wide/from16 v57, v0

    .line 143
    .line 144
    move-object v1, v6

    .line 145
    move-wide/from16 v5, v57

    .line 146
    .line 147
    :goto_2
    move-object/from16 v0, v56

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    invoke-static {v7}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    sget-object v7, Lij/o;->a:Lij/o;

    .line 154
    .line 155
    invoke-virtual {v7}, Lij/o;->d()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    if-eqz v7, :cond_7

    .line 160
    .line 161
    iput-object v0, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 162
    .line 163
    iput-object v1, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v2, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$2:Ljava/lang/Object;

    .line 166
    .line 167
    iput-object v7, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$3:Ljava/lang/Object;

    .line 168
    .line 169
    iput-wide v3, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    .line 170
    .line 171
    iput-wide v5, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    .line 172
    .line 173
    iput v14, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 174
    .line 175
    invoke-interface {v0, v1, v2, v7, v8}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v10

    .line 179
    if-ne v10, v9, :cond_6

    .line 180
    .line 181
    return-object v9

    .line 182
    :cond_6
    move-object/from16 v56, v10

    .line 183
    .line 184
    move-object v10, v0

    .line 185
    goto :goto_2

    .line 186
    :goto_3
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 187
    .line 188
    :goto_4
    move-object v14, v1

    .line 189
    move-object v15, v2

    .line 190
    move-wide/from16 v27, v3

    .line 191
    .line 192
    move-object/from16 v52, v7

    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_7
    iput-object v0, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 196
    .line 197
    iput-object v1, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 198
    .line 199
    iput-object v2, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$2:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object v7, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$3:Ljava/lang/Object;

    .line 202
    .line 203
    iput-wide v3, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->J$0:J

    .line 204
    .line 205
    iput-wide v5, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->J$1:J

    .line 206
    .line 207
    iput v13, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 208
    .line 209
    invoke-interface {v0, v1, v2, v8}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->q(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    if-ne v10, v9, :cond_8

    .line 214
    .line 215
    return-object v9

    .line 216
    :cond_8
    move-object/from16 v56, v10

    .line 217
    .line 218
    move-object v10, v0

    .line 219
    goto :goto_1

    .line 220
    :goto_5
    check-cast v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 221
    .line 222
    goto :goto_4

    .line 223
    :goto_6
    const/4 v1, 0x0

    .line 224
    if-nez v0, :cond_a

    .line 225
    .line 226
    new-instance v0, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;

    .line 227
    .line 228
    move-object v13, v0

    .line 229
    const/16 v54, 0x7

    .line 230
    .line 231
    const/16 v55, 0x0

    .line 232
    .line 233
    const/16 v18, 0x0

    .line 234
    .line 235
    const/16 v19, 0x0

    .line 236
    .line 237
    const/16 v20, 0x0

    .line 238
    .line 239
    const/16 v21, 0x0

    .line 240
    .line 241
    const/16 v22, 0x0

    .line 242
    .line 243
    const/16 v23, 0x0

    .line 244
    .line 245
    const/16 v24, 0x0

    .line 246
    .line 247
    const/16 v25, 0x0

    .line 248
    .line 249
    const/16 v26, 0x0

    .line 250
    .line 251
    const/16 v29, 0x0

    .line 252
    .line 253
    const/16 v30, 0x0

    .line 254
    .line 255
    const/16 v31, 0x0

    .line 256
    .line 257
    const/16 v32, 0x0

    .line 258
    .line 259
    const/16 v33, 0x0

    .line 260
    .line 261
    const/16 v34, 0x0

    .line 262
    .line 263
    const/16 v35, 0x0

    .line 264
    .line 265
    const/16 v36, 0x0

    .line 266
    .line 267
    const/16 v37, 0x0

    .line 268
    .line 269
    const/16 v38, 0x0

    .line 270
    .line 271
    const-wide/16 v39, 0x0

    .line 272
    .line 273
    const/16 v41, 0x0

    .line 274
    .line 275
    const/16 v42, 0x0

    .line 276
    .line 277
    const/16 v43, 0x0

    .line 278
    .line 279
    const/16 v44, 0x0

    .line 280
    .line 281
    const/16 v45, 0x0

    .line 282
    .line 283
    const/16 v46, 0x0

    .line 284
    .line 285
    const/16 v47, 0x0

    .line 286
    .line 287
    const/16 v48, 0x0

    .line 288
    .line 289
    const/16 v49, 0x0

    .line 290
    .line 291
    const/16 v50, 0x0

    .line 292
    .line 293
    const/16 v51, 0x0

    .line 294
    .line 295
    const/16 v53, -0x1008

    .line 296
    .line 297
    move-wide/from16 v16, v5

    .line 298
    .line 299
    invoke-direct/range {v13 .. v55}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;JLjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Long;Ljava/lang/Long;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 300
    .line 301
    .line 302
    iput-object v1, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 303
    .line 304
    iput-object v1, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 305
    .line 306
    iput-object v1, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$2:Ljava/lang/Object;

    .line 307
    .line 308
    iput-object v1, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$3:Ljava/lang/Object;

    .line 309
    .line 310
    iput v12, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 311
    .line 312
    invoke-interface {v10, v0, v8}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->p(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    if-ne v0, v9, :cond_9

    .line 317
    .line 318
    return-object v9

    .line 319
    :cond_9
    :goto_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 320
    .line 321
    return-object v0

    .line 322
    :cond_a
    invoke-virtual {v0, v5, v6}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;->setProgress(J)V

    .line 323
    .line 324
    .line 325
    iput-object v1, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$0:Ljava/lang/Object;

    .line 326
    .line 327
    iput-object v1, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$1:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v1, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$2:Ljava/lang/Object;

    .line 330
    .line 331
    iput-object v1, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->L$3:Ljava/lang/Object;

    .line 332
    .line 333
    iput v11, v8, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao$insertOrUpdateProgress$1;->label:I

    .line 334
    .line 335
    invoke-interface {v10, v0, v8}, Lcom/transsion/baselib/db/video/UGCVideoDetailPlayDao;->v(Lcom/transsion/baselib/db/video/UGCVideoDetailPlayBean;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    if-ne v0, v9, :cond_b

    .line 340
    .line 341
    return-object v9

    .line 342
    :cond_b
    :goto_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 343
    .line 344
    return-object v0
.end method
