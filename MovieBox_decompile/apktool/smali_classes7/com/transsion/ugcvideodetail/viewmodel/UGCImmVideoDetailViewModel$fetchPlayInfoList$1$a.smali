.class final Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkotlinx/coroutines/flow/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

.field final synthetic e:Z

.field final synthetic f:Lcom/transsion/moviedetailapi/bean/Pager;


# direct methods
.method constructor <init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;IZLcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;ZLcom/transsion/moviedetailapi/bean/Pager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    .line 2
    .line 3
    iput p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->b:I

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->c:Z

    .line 6
    .line 7
    iput-object p4, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->e:Z

    .line 10
    .line 11
    iput-object p6, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->f:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;->getItems()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, p2

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->a:Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoList;->getItems()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move-object v0, p2

    .line 20
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, Ljava/util/Collection;

    .line 27
    .line 28
    if-eqz v2, :cond_6

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    goto/16 :goto_5

    .line 37
    .line 38
    :cond_2
    move-object v2, p1

    .line 39
    check-cast v2, Ljava/util/Collection;

    .line 40
    .line 41
    if-eqz v2, :cond_6

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_3

    .line 48
    .line 49
    goto/16 :goto_5

    .line 50
    .line 51
    :cond_3
    check-cast p1, Ljava/lang/Iterable;

    .line 52
    .line 53
    const/16 v2, 0xa

    .line 54
    .line 55
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v2}, Lkotlin/collections/MapsKt;->e(I)I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    const/16 v3, 0x10

    .line 64
    .line 65
    invoke-static {v2, v3}, Lkotlin/ranges/RangesKt;->e(II)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 70
    .line 71
    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-eqz v2, :cond_4

    .line 83
    .line 84
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    move-object v4, v2

    .line 89
    check-cast v4, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getUgcVideoId()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    iget p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->b:I

    .line 100
    .line 101
    sget-object v4, Lwf/a;->a:Lwf/a$a;

    .line 102
    .line 103
    iget-boolean v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->c:Z

    .line 104
    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    add-int/2addr v5, p1

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v7, "fetchPlayInfoList,isCollectionList:"

    .line 116
    .line 117
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v2, ", startPos:"

    .line 124
    .line 125
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p1, ", endPos:"

    .line 132
    .line 133
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string p1, " "

    .line 140
    .line 141
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    const/4 v8, 0x4

    .line 149
    const/4 v9, 0x0

    .line 150
    const-string v5, "UGCImmVideoDetailViewModel"

    .line 151
    .line 152
    const/4 v7, 0x0

    .line 153
    invoke-static/range {v4 .. v9}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    check-cast v0, Ljava/lang/Iterable;

    .line 157
    .line 158
    iget-boolean p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->c:Z

    .line 159
    .line 160
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_6

    .line 169
    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    check-cast v2, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 175
    .line 176
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 185
    .line 186
    new-instance v5, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 187
    .line 188
    invoke-direct {v5, v2, v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;-><init>(Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;)V

    .line 189
    .line 190
    .line 191
    if-eqz v4, :cond_5

    .line 192
    .line 193
    invoke-virtual {v4}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getDownloadStatus()I

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    goto :goto_4

    .line 198
    :cond_5
    const/4 v2, 0x0

    .line 199
    :goto_4
    invoke-virtual {v5, v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setDownloadStatus(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v5, p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->setCollectionList(Z)V

    .line 203
    .line 204
    .line 205
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_6
    :goto_5
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 210
    .line 211
    invoke-static {p1}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->y0(Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;)Landroidx/lifecycle/b0;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_7

    .line 220
    .line 221
    goto :goto_6

    .line 222
    :cond_7
    new-instance p2, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;

    .line 223
    .line 224
    iget-boolean v0, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->e:Z

    .line 225
    .line 226
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->f:Lcom/transsion/moviedetailapi/bean/Pager;

    .line 227
    .line 228
    invoke-direct {p2, v1, v0, v2}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideoContent;-><init>(Ljava/util/List;ZLcom/transsion/moviedetailapi/bean/Pager;)V

    .line 229
    .line 230
    .line 231
    :goto_6
    invoke-virtual {p1, p2}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    iget-boolean p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->c:Z

    .line 235
    .line 236
    if-eqz p1, :cond_8

    .line 237
    .line 238
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-nez p1, :cond_8

    .line 243
    .line 244
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->d:Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 245
    .line 246
    iget-boolean p2, p0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->e:Z

    .line 247
    .line 248
    invoke-virtual {p1, v1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->E0(Ljava/util/List;Z)V

    .line 249
    .line 250
    .line 251
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 252
    .line 253
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel$fetchPlayInfoList$1$a;->a(Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfoList;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
