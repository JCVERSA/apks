.class public final Lcom/transsion/home/fragment/film/UGCFilmListFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lrk/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/home/fragment/film/UGCFilmListFragment;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;


# direct methods
.method constructor <init>(Lcom/transsion/home/fragment/film/UGCFilmListFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/home/fragment/film/UGCFilmListFragment$b;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IJLandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/transsion/home/fragment/film/UGCFilmListFragment$b;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    .line 2
    .line 3
    invoke-static {p4}, Lcom/transsion/home/fragment/film/UGCFilmListFragment;->s0(Lcom/transsion/home/fragment/film/UGCFilmListFragment;)Lcom/transsion/home/adapter/e;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-eqz p4, :cond_0

    .line 8
    .line 9
    invoke-virtual {p4}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getData()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    if-eqz p4, :cond_0

    .line 14
    .line 15
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p4

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p4, 0x0

    .line 21
    :goto_0
    if-lt p1, p4, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object p4, p0, Lcom/transsion/home/fragment/film/UGCFilmListFragment$b;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    .line 25
    .line 26
    invoke-static {p4}, Lcom/transsion/home/fragment/film/UGCFilmListFragment;->s0(Lcom/transsion/home/fragment/film/UGCFilmListFragment;)Lcom/transsion/home/adapter/e;

    .line 27
    .line 28
    .line 29
    move-result-object p4

    .line 30
    if-eqz p4, :cond_2

    .line 31
    .line 32
    invoke-virtual {p4, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    const/4 p1, 0x0

    .line 40
    :goto_1
    new-instance p4, Ljava/util/HashMap;

    .line 41
    .line 42
    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v0, "browse_duration"

    .line 46
    .line 47
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-interface {p4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    const-string p2, "module_name"

    .line 55
    .line 56
    const-string p3, "item"

    .line 57
    .line 58
    invoke-interface {p4, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object p2, p0, Lcom/transsion/home/fragment/film/UGCFilmListFragment$b;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    .line 62
    .line 63
    invoke-static {p2}, Lcom/transsion/home/fragment/film/UGCFilmListFragment;->v0(Lcom/transsion/home/fragment/film/UGCFilmListFragment;)Z

    .line 64
    .line 65
    .line 66
    move-result p2

    .line 67
    if-eqz p2, :cond_3

    .line 68
    .line 69
    iget-object p2, p0, Lcom/transsion/home/fragment/film/UGCFilmListFragment$b;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    .line 70
    .line 71
    invoke-static {p2}, Lcom/transsion/home/fragment/film/UGCFilmListFragment;->u0(Lcom/transsion/home/fragment/film/UGCFilmListFragment;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    const-string p3, "rank_category"

    .line 76
    .line 77
    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_3
    const-string p2, ""

    .line 81
    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    if-eqz p3, :cond_4

    .line 89
    .line 90
    invoke-virtual {p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getBelongToCollection()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    if-eqz p3, :cond_4

    .line 95
    .line 96
    invoke-virtual {p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoBelongToCollection;->getCollectionId()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    if-nez p3, :cond_5

    .line 101
    .line 102
    :cond_4
    move-object p3, p2

    .line 103
    :cond_5
    const-string v0, "belong_to_collection_id"

    .line 104
    .line 105
    invoke-interface {p4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    if-eqz p1, :cond_6

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    if-eqz p3, :cond_6

    .line 115
    .line 116
    invoke-virtual {p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getUgcVideoId()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    if-nez p3, :cond_7

    .line 121
    .line 122
    :cond_6
    move-object p3, p2

    .line 123
    :cond_7
    const-string v0, "content_id"

    .line 124
    .line 125
    invoke-interface {p4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    if-eqz p1, :cond_8

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    if-eqz p3, :cond_8

    .line 135
    .line 136
    invoke-virtual {p3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getSubjectId()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p3

    .line 140
    if-nez p3, :cond_9

    .line 141
    .line 142
    :cond_8
    move-object p3, p2

    .line 143
    :cond_9
    const-string v0, "refer_subject_id"

    .line 144
    .line 145
    invoke-interface {p4, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    const-string p3, "content_type"

    .line 149
    .line 150
    const-string v0, "ugc_video"

    .line 151
    .line 152
    invoke-interface {p4, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    if-eqz p1, :cond_b

    .line 156
    .line 157
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCContent;->getVideo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-eqz p1, :cond_b

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideo;->getOps()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-nez p1, :cond_a

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_a
    move-object p2, p1

    .line 171
    :cond_b
    :goto_2
    const-string p1, "ops"

    .line 172
    .line 173
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/transsion/home/fragment/film/UGCFilmListFragment$b;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    .line 177
    .line 178
    invoke-static {p1}, Lcom/transsion/home/fragment/film/UGCFilmListFragment;->v0(Lcom/transsion/home/fragment/film/UGCFilmListFragment;)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-eqz p1, :cond_c

    .line 183
    .line 184
    iget-object p1, p0, Lcom/transsion/home/fragment/film/UGCFilmListFragment$b;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    .line 185
    .line 186
    invoke-static {p1}, Lcom/transsion/home/fragment/film/UGCFilmListFragment;->u0(Lcom/transsion/home/fragment/film/UGCFilmListFragment;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    goto :goto_3

    .line 191
    :cond_c
    iget-object p1, p0, Lcom/transsion/home/fragment/film/UGCFilmListFragment$b;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    .line 192
    .line 193
    invoke-static {p1}, Lcom/transsion/home/fragment/film/UGCFilmListFragment;->t0(Lcom/transsion/home/fragment/film/UGCFilmListFragment;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    :goto_3
    const-string p2, "title"

    .line 198
    .line 199
    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    sget-object p1, Lcom/transsion/baselib/helper/a;->a:Lcom/transsion/baselib/helper/a;

    .line 203
    .line 204
    iget-object p2, p0, Lcom/transsion/home/fragment/film/UGCFilmListFragment$b;->a:Lcom/transsion/home/fragment/film/UGCFilmListFragment;

    .line 205
    .line 206
    invoke-virtual {p2}, Lcom/transsion/home/fragment/film/UGCFilmListFragment;->getPageName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p1, p2, p4}, Lcom/transsion/baselib/helper/a;->e(Ljava/lang/String;Ljava/util/Map;)V

    .line 211
    .line 212
    .line 213
    return-void
.end method
