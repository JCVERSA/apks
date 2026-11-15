.class public final Lcom/transsnet/downloader/adapter/t0;
.super Lcom/chad/library/adapter/base/BaseQuickAdapter;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u001f\u0010\r\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000bJ#\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u001f\u0010\u0015\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/transsnet/downloader/adapter/t0;",
        "Lcom/chad/library/adapter/base/BaseQuickAdapter;",
        "Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;",
        "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;",
        "<init>",
        "()V",
        "Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;",
        "it",
        "holder",
        "",
        "E1",
        "(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V",
        "D1",
        "C1",
        "",
        "pr",
        "total",
        "",
        "F1",
        "(Ljava/lang/Long;Ljava/lang/Long;)I",
        "item",
        "B1",
        "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget v0, Lcom/transsnet/downloader/R$layout;->adapter_historical_play_record_layout:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {p0, v0, v1, v2, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;-><init>(ILjava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final C1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 6

    .line 1
    sget-object v0, Lni/f;->a:Lni/f$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lni/f$a;->m(Landroid/content/Context;)Lni/f$b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, ""

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getCover()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    :cond_0
    move-object v1, v2

    .line 26
    :cond_1
    invoke-virtual {v0, v1}, Lni/f$b;->g(Ljava/lang/String;)Lni/f$b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget v1, Lcom/transsnet/downloader/R$id;->ivCore:I

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lni/f$b;->d(Landroid/widget/ImageView;)V

    .line 39
    .line 40
    .line 41
    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    .line 42
    .line 43
    sget v1, Lcom/transsnet/downloader/R$mipmap;->ic_audio_download_historical:I

    .line 44
    .line 45
    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-wide/16 v3, 0x0

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-wide v0, v3

    .line 68
    :goto_0
    cmp-long v0, v0, v3

    .line 69
    .line 70
    if-lez v0, :cond_4

    .line 71
    .line 72
    sget v0, Lcom/transsnet/downloader/R$id;->tvTime:I

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v3

    .line 90
    :cond_3
    invoke-static {v3, v4}, Lcom/transsion/baseui/util/TimeUtilKt;->o(J)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 95
    .line 96
    .line 97
    :cond_4
    sget v0, Lcom/transsnet/downloader/R$id;->progressBar:I

    .line 98
    .line 99
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/widget/ProgressBar;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const/4 v3, 0x0

    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    invoke-virtual {v1}, Lcom/transsion/baselib/db/audio/AudioBean;->getReadProcess()Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    goto :goto_1

    .line 117
    :cond_5
    move-object v1, v3

    .line 118
    :goto_1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    if-eqz v4, :cond_6

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getDuration()Ljava/lang/Long;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    goto :goto_2

    .line 129
    :cond_6
    move-object v4, v3

    .line 130
    :goto_2
    invoke-direct {p0, v1, v4}, Lcom/transsnet/downloader/adapter/t0;->F1(Ljava/lang/Long;Ljava/lang/Long;)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const/4 v1, 0x0

    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getSe()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    goto :goto_3

    .line 149
    :cond_7
    move v0, v1

    .line 150
    :goto_3
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    if-eqz v4, :cond_8

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/transsion/baselib/db/audio/AudioBean;->getEp()I

    .line 157
    .line 158
    .line 159
    move-result v4

    .line 160
    goto :goto_4

    .line 161
    :cond_8
    move v4, v1

    .line 162
    :goto_4
    if-nez v0, :cond_9

    .line 163
    .line 164
    if-nez v4, :cond_9

    .line 165
    .line 166
    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    .line 167
    .line 168
    const/4 v1, 0x1

    .line 169
    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 170
    .line 171
    .line 172
    goto :goto_5

    .line 173
    :cond_9
    sget v5, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    .line 174
    .line 175
    invoke-virtual {p2, v5, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 176
    .line 177
    .line 178
    sget v1, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    .line 179
    .line 180
    sget-object v5, Lcom/transsion/moviedetailapi/SubjectType;->AUDIO:Lcom/transsion/moviedetailapi/SubjectType;

    .line 181
    .line 182
    invoke-virtual {v5}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-static {v4, v0, v5}, Lij/i;->b(IILjava/lang/Integer;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p2, v1, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 195
    .line 196
    .line 197
    :goto_5
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    if-eqz v0, :cond_a

    .line 202
    .line 203
    invoke-virtual {v0}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectTitle()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    :cond_a
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_d

    .line 212
    .line 213
    sget v0, Lcom/transsnet/downloader/R$id;->tvTitle:I

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    if-eqz p1, :cond_c

    .line 220
    .line 221
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getSubjectTitle()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    if-nez p1, :cond_b

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_b
    move-object v2, p1

    .line 229
    :cond_c
    :goto_6
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 230
    .line 231
    .line 232
    goto :goto_8

    .line 233
    :cond_d
    sget v0, Lcom/transsnet/downloader/R$id;->tvTitle:I

    .line 234
    .line 235
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getAudio()Lcom/transsion/baselib/db/audio/AudioBean;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    if-eqz p1, :cond_f

    .line 240
    .line 241
    invoke-virtual {p1}, Lcom/transsion/baselib/db/audio/AudioBean;->getTitle()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    if-nez p1, :cond_e

    .line 246
    .line 247
    goto :goto_7

    .line 248
    :cond_e
    move-object v2, p1

    .line 249
    :cond_f
    :goto_7
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 250
    .line 251
    .line 252
    :goto_8
    return-void
.end method

.method private final D1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v1

    .line 14
    :goto_0
    const-string v2, ""

    .line 15
    .line 16
    if-eqz v0, :cond_5

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sget v3, Lcom/transsnet/downloader/R$id;->ivCore:I

    .line 30
    .line 31
    invoke-virtual {p2, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-eqz v4, :cond_3

    .line 42
    .line 43
    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-nez v4, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move-object v2, v4

    .line 51
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    if-eqz v4, :cond_4

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getThumbnail()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    goto :goto_2

    .line 62
    :cond_4
    move-object v4, v1

    .line 63
    :goto_2
    invoke-static {v0, v3, v2, v4}, Lcom/transsnet/downloader/adapter/DownloadedHolderKt;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_5

    .line 67
    :cond_5
    :goto_3
    sget v0, Lcom/transsnet/downloader/R$id;->ivCore:I

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 74
    .line 75
    sget-object v3, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_7

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getCoverUrl()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    if-nez v4, :cond_6

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :cond_6
    move-object v2, v4

    .line 91
    :cond_7
    :goto_4
    invoke-virtual {v3, v2}, Lcom/transsnet/downloader/viewmodel/a0;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    .line 97
    .line 98
    :goto_5
    sget v0, Lcom/transsnet/downloader/R$id;->tvTitle:I

    .line 99
    .line 100
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_9

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    sget-object v3, Lcom/transsion/moviedetailapi/SubjectType;->TV:Lcom/transsion/moviedetailapi/SubjectType;

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/transsion/moviedetailapi/SubjectType;->getValue()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-nez v0, :cond_8

    .line 127
    .line 128
    goto :goto_6

    .line 129
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-ne v0, v3, :cond_9

    .line 134
    .line 135
    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    .line 136
    .line 137
    sget v3, Lcom/transsion/baseui/R$mipmap;->home_ic_tv_white:I

    .line 138
    .line 139
    invoke-virtual {p2, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 140
    .line 141
    .line 142
    goto :goto_7

    .line 143
    :cond_9
    :goto_6
    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    .line 144
    .line 145
    sget v3, Lcom/transsion/baseui/R$mipmap;->home_ic_movie_white:I

    .line 146
    .line 147
    invoke-virtual {p2, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 148
    .line 149
    .line 150
    :goto_7
    sget v0, Lcom/transsnet/downloader/R$id;->tvTitle:I

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    if-eqz v3, :cond_a

    .line 157
    .line 158
    invoke-virtual {v3}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTitle()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    goto :goto_8

    .line 163
    :cond_a
    move-object v3, v1

    .line 164
    :goto_8
    invoke-virtual {p2, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const/4 v3, 0x0

    .line 172
    if-eqz v0, :cond_b

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getEp()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    goto :goto_9

    .line 179
    :cond_b
    move v0, v3

    .line 180
    :goto_9
    if-lez v0, :cond_f

    .line 181
    .line 182
    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    .line 183
    .line 184
    invoke-virtual {p2, v0, v3}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 185
    .line 186
    .line 187
    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    if-eqz v2, :cond_c

    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getEp()I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    goto :goto_a

    .line 200
    :cond_c
    move v2, v3

    .line 201
    :goto_a
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    if-eqz v4, :cond_d

    .line 206
    .line 207
    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSe()I

    .line 208
    .line 209
    .line 210
    move-result v3

    .line 211
    :cond_d
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    if-eqz v4, :cond_e

    .line 216
    .line 217
    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getSubjectType()Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    goto :goto_b

    .line 222
    :cond_e
    move-object v4, v1

    .line 223
    :goto_b
    invoke-static {v2, v3, v4}, Lij/i;->b(IILjava/lang/Integer;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 228
    .line 229
    .line 230
    goto :goto_c

    .line 231
    :cond_f
    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    .line 232
    .line 233
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 234
    .line 235
    .line 236
    :goto_c
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    const-wide/16 v2, 0x0

    .line 241
    .line 242
    if-eqz v0, :cond_10

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    if-eqz v0, :cond_10

    .line 249
    .line 250
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 251
    .line 252
    .line 253
    move-result-wide v4

    .line 254
    goto :goto_d

    .line 255
    :cond_10
    move-wide v4, v2

    .line 256
    :goto_d
    cmp-long v0, v4, v2

    .line 257
    .line 258
    if-lez v0, :cond_12

    .line 259
    .line 260
    sget v0, Lcom/transsnet/downloader/R$id;->tvTime:I

    .line 261
    .line 262
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 263
    .line 264
    .line 265
    move-result-object v4

    .line 266
    if-eqz v4, :cond_11

    .line 267
    .line 268
    invoke-virtual {v4}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    .line 269
    .line 270
    .line 271
    move-result-object v4

    .line 272
    if-eqz v4, :cond_11

    .line 273
    .line 274
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 275
    .line 276
    .line 277
    move-result-wide v2

    .line 278
    :cond_11
    invoke-static {v2, v3}, Lcom/transsion/baseui/util/TimeUtilKt;->o(J)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 283
    .line 284
    .line 285
    :cond_12
    sget v0, Lcom/transsnet/downloader/R$id;->progressBar:I

    .line 286
    .line 287
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    check-cast v0, Landroid/widget/ProgressBar;

    .line 292
    .line 293
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    if-eqz v2, :cond_13

    .line 298
    .line 299
    invoke-virtual {v2}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getProgress()J

    .line 300
    .line 301
    .line 302
    move-result-wide v2

    .line 303
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    goto :goto_e

    .line 308
    :cond_13
    move-object v2, v1

    .line 309
    :goto_e
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    if-eqz p1, :cond_14

    .line 314
    .line 315
    invoke-virtual {p1}, Lcom/transsion/baselib/db/video/VideoDetailPlayBean;->getTotalDuration()Ljava/lang/Long;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    :cond_14
    invoke-direct {p0, v2, v1}, Lcom/transsnet/downloader/adapter/t0;->F1(Ljava/lang/Long;Ljava/lang/Long;)I

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 324
    .line 325
    .line 326
    sget p1, Lcom/transsnet/downloader/R$id;->viewStub:I

    .line 327
    .line 328
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    check-cast p1, Landroid/view/ViewStub;

    .line 333
    .line 334
    const/16 p2, 0x8

    .line 335
    .line 336
    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 337
    .line 338
    .line 339
    return-void
.end method

.method private final E1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getFileType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v2, :cond_2

    .line 16
    .line 17
    sget v0, Lcom/transsnet/downloader/R$id;->ivCore:I

    .line 18
    .line 19
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/google/android/material/imageview/ShapeableImageView;

    .line 24
    .line 25
    sget-object v4, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-nez v5, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move-object v1, v5

    .line 41
    :cond_1
    :goto_0
    invoke-virtual {v4, v1}, Lcom/transsnet/downloader/viewmodel/a0;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 46
    .line 47
    .line 48
    goto :goto_3

    .line 49
    :cond_2
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sget v4, Lcom/transsnet/downloader/R$id;->ivCore:I

    .line 54
    .line 55
    invoke-virtual {p2, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Landroid/widget/ImageView;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    if-eqz v5, :cond_4

    .line 66
    .line 67
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getCover()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    if-nez v5, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move-object v1, v5

    .line 75
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getThumbnail()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    goto :goto_2

    .line 86
    :cond_5
    move-object v5, v3

    .line 87
    :goto_2
    invoke-static {v0, v4, v1, v5}, Lcom/transsnet/downloader/adapter/DownloadedHolderKt;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_3
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const/4 v1, 0x1

    .line 95
    const/4 v4, 0x0

    .line 96
    if-eqz v0, :cond_7

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-ne v0, v1, :cond_7

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_7

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-lez v0, :cond_7

    .line 121
    .line 122
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    goto/16 :goto_9

    .line 133
    .line 134
    :cond_6
    move-object v0, v3

    .line 135
    goto/16 :goto_9

    .line 136
    .line 137
    :cond_7
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    goto :goto_4

    .line 148
    :cond_8
    move v0, v4

    .line 149
    :goto_4
    if-lez v0, :cond_d

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    if-eqz v0, :cond_a

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_a

    .line 162
    .line 163
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-lez v0, :cond_9

    .line 168
    .line 169
    move v0, v1

    .line 170
    goto :goto_5

    .line 171
    :cond_9
    move v0, v4

    .line 172
    :goto_5
    if-ne v0, v1, :cond_a

    .line 173
    .line 174
    move v0, v1

    .line 175
    goto :goto_6

    .line 176
    :cond_a
    move v0, v4

    .line 177
    :goto_6
    if-eqz v0, :cond_d

    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-eqz v0, :cond_b

    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResolution()I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    goto :goto_7

    .line 194
    :cond_b
    move-object v0, v3

    .line 195
    :goto_7
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 196
    .line 197
    .line 198
    move-result-object v5

    .line 199
    if-eqz v5, :cond_c

    .line 200
    .line 201
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getSubjectName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    goto :goto_8

    .line 206
    :cond_c
    move-object v5, v3

    .line 207
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v0, "P "

    .line 216
    .line 217
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    goto :goto_9

    .line 228
    :cond_d
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    if-eqz v0, :cond_6

    .line 233
    .line 234
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    :goto_9
    sget v5, Lcom/transsnet/downloader/R$id;->tvTitle:I

    .line 239
    .line 240
    invoke-virtual {p2, v5, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    if-eqz v0, :cond_e

    .line 248
    .line 249
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->isSeries()Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-ne v0, v1, :cond_e

    .line 254
    .line 255
    move v0, v1

    .line 256
    goto :goto_a

    .line 257
    :cond_e
    move v0, v4

    .line 258
    :goto_a
    if-eqz v0, :cond_15

    .line 259
    .line 260
    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    .line 261
    .line 262
    invoke-virtual {p2, v0, v4}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    if-eqz v0, :cond_f

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    goto :goto_b

    .line 276
    :cond_f
    move v0, v4

    .line 277
    :goto_b
    if-lez v0, :cond_13

    .line 278
    .line 279
    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    .line 280
    .line 281
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 282
    .line 283
    .line 284
    move-result-object v5

    .line 285
    if-eqz v5, :cond_10

    .line 286
    .line 287
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getEp()I

    .line 288
    .line 289
    .line 290
    move-result v5

    .line 291
    goto :goto_c

    .line 292
    :cond_10
    move v5, v4

    .line 293
    :goto_c
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    if-eqz v6, :cond_11

    .line 298
    .line 299
    invoke-virtual {v6}, Lcom/transsion/baselib/db/download/DownloadBean;->getSe()I

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    goto :goto_d

    .line 304
    :cond_11
    move v6, v4

    .line 305
    :goto_d
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 306
    .line 307
    .line 308
    move-result-object v7

    .line 309
    if-eqz v7, :cond_12

    .line 310
    .line 311
    invoke-virtual {v7}, Lcom/transsion/baselib/db/download/DownloadBean;->getType()I

    .line 312
    .line 313
    .line 314
    move-result v7

    .line 315
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 316
    .line 317
    .line 318
    move-result-object v7

    .line 319
    goto :goto_e

    .line 320
    :cond_12
    move-object v7, v3

    .line 321
    :goto_e
    invoke-static {v5, v6, v7}, Lij/i;->b(IILjava/lang/Integer;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    invoke-virtual {p2, v0, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 326
    .line 327
    .line 328
    goto :goto_10

    .line 329
    :cond_13
    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    .line 330
    .line 331
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    if-eqz v5, :cond_14

    .line 336
    .line 337
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getEpse()I

    .line 338
    .line 339
    .line 340
    move-result v5

    .line 341
    goto :goto_f

    .line 342
    :cond_14
    move v5, v4

    .line 343
    :goto_f
    invoke-static {v5, v1}, Lij/i;->c(IZ)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v5

    .line 347
    invoke-virtual {p2, v0, v5}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 348
    .line 349
    .line 350
    goto :goto_10

    .line 351
    :cond_15
    sget v0, Lcom/transsnet/downloader/R$id;->tvEpisode:I

    .line 352
    .line 353
    invoke-virtual {p2, v0, v1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setGone(IZ)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 354
    .line 355
    .line 356
    :goto_10
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getType()I

    .line 357
    .line 358
    .line 359
    move-result v0

    .line 360
    if-eq v0, v2, :cond_19

    .line 361
    .line 362
    const/4 v2, 0x3

    .line 363
    if-eq v0, v2, :cond_16

    .line 364
    .line 365
    const/4 v2, 0x5

    .line 366
    if-eq v0, v2, :cond_19

    .line 367
    .line 368
    const/4 v2, 0x6

    .line 369
    if-eq v0, v2, :cond_19

    .line 370
    .line 371
    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    .line 372
    .line 373
    sget v2, Lcom/transsion/baseui/R$mipmap;->home_ic_audio_white:I

    .line 374
    .line 375
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 376
    .line 377
    .line 378
    goto :goto_13

    .line 379
    :cond_16
    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    .line 380
    .line 381
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 382
    .line 383
    .line 384
    move-result-object v2

    .line 385
    if-eqz v2, :cond_17

    .line 386
    .line 387
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->isShotTV()Z

    .line 388
    .line 389
    .line 390
    move-result v2

    .line 391
    if-ne v2, v1, :cond_17

    .line 392
    .line 393
    move v2, v1

    .line 394
    goto :goto_11

    .line 395
    :cond_17
    move v2, v4

    .line 396
    :goto_11
    if-eqz v2, :cond_18

    .line 397
    .line 398
    sget v2, Lcom/transsion/baseui/R$mipmap;->home_ic_short_tv_white:I

    .line 399
    .line 400
    goto :goto_12

    .line 401
    :cond_18
    sget v2, Lcom/transsion/baseui/R$mipmap;->home_ic_tv_white:I

    .line 402
    .line 403
    :goto_12
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 404
    .line 405
    .line 406
    goto :goto_13

    .line 407
    :cond_19
    sget v0, Lcom/transsnet/downloader/R$id;->ivCornerMark:I

    .line 408
    .line 409
    sget v2, Lcom/transsion/baseui/R$mipmap;->home_ic_movie_white:I

    .line 410
    .line 411
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setImageResource(II)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 412
    .line 413
    .line 414
    :goto_13
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    const-wide/16 v5, 0x0

    .line 419
    .line 420
    if-eqz v0, :cond_1a

    .line 421
    .line 422
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    if-eqz v0, :cond_1a

    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 429
    .line 430
    .line 431
    move-result-wide v7

    .line 432
    goto :goto_14

    .line 433
    :cond_1a
    move-wide v7, v5

    .line 434
    :goto_14
    cmp-long v0, v7, v5

    .line 435
    .line 436
    if-lez v0, :cond_1c

    .line 437
    .line 438
    sget v0, Lcom/transsnet/downloader/R$id;->tvTime:I

    .line 439
    .line 440
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    if-eqz v2, :cond_1b

    .line 445
    .line 446
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 447
    .line 448
    .line 449
    move-result-object v2

    .line 450
    if-eqz v2, :cond_1b

    .line 451
    .line 452
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 453
    .line 454
    .line 455
    move-result-wide v5

    .line 456
    :cond_1b
    invoke-static {v5, v6}, Lcom/transsion/baseui/util/TimeUtilKt;->o(J)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    invoke-virtual {p2, v0, v2}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->setText(ILjava/lang/CharSequence;)Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;

    .line 461
    .line 462
    .line 463
    :cond_1c
    sget v0, Lcom/transsnet/downloader/R$id;->progressBar:I

    .line 464
    .line 465
    invoke-virtual {p2, v0}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    check-cast v0, Landroid/widget/ProgressBar;

    .line 470
    .line 471
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 472
    .line 473
    .line 474
    move-result-object v2

    .line 475
    if-eqz v2, :cond_1d

    .line 476
    .line 477
    invoke-virtual {v2}, Lcom/transsion/baselib/db/download/DownloadBean;->getReadProgress()J

    .line 478
    .line 479
    .line 480
    move-result-wide v5

    .line 481
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 482
    .line 483
    .line 484
    move-result-object v2

    .line 485
    goto :goto_15

    .line 486
    :cond_1d
    move-object v2, v3

    .line 487
    :goto_15
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 488
    .line 489
    .line 490
    move-result-object v5

    .line 491
    if-eqz v5, :cond_1e

    .line 492
    .line 493
    invoke-virtual {v5}, Lcom/transsion/baselib/db/download/DownloadBean;->getDuration()Ljava/lang/Long;

    .line 494
    .line 495
    .line 496
    move-result-object v3

    .line 497
    :cond_1e
    invoke-direct {p0, v2, v3}, Lcom/transsnet/downloader/adapter/t0;->F1(Ljava/lang/Long;Ljava/lang/Long;)I

    .line 498
    .line 499
    .line 500
    move-result v2

    .line 501
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->isLocalFileDelete()Ljava/lang/Boolean;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 509
    .line 510
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    if-nez v0, :cond_21

    .line 515
    .line 516
    invoke-virtual {p1}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getVideo()Lcom/transsion/baselib/db/download/DownloadBean;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    if-eqz p1, :cond_1f

    .line 521
    .line 522
    invoke-virtual {p1}, Lcom/transsion/baselib/db/download/DownloadBean;->isFileExist()Z

    .line 523
    .line 524
    .line 525
    move-result p1

    .line 526
    if-nez p1, :cond_1f

    .line 527
    .line 528
    goto :goto_16

    .line 529
    :cond_1f
    move v1, v4

    .line 530
    :goto_16
    if-eqz v1, :cond_20

    .line 531
    .line 532
    goto :goto_17

    .line 533
    :cond_20
    sget p1, Lcom/transsnet/downloader/R$id;->viewStub:I

    .line 534
    .line 535
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    check-cast p1, Landroid/view/ViewStub;

    .line 540
    .line 541
    const/16 p2, 0x8

    .line 542
    .line 543
    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 544
    .line 545
    .line 546
    goto :goto_18

    .line 547
    :cond_21
    :goto_17
    sget p1, Lcom/transsnet/downloader/R$id;->viewStub:I

    .line 548
    .line 549
    invoke-virtual {p2, p1}, Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;->getView(I)Landroid/view/View;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    check-cast p1, Landroid/view/ViewStub;

    .line 554
    .line 555
    invoke-virtual {p1, v4}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 556
    .line 557
    .line 558
    :goto_18
    return-void
.end method

.method private final F1(Ljava/lang/Long;Ljava/lang/Long;)I
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    const/16 p1, 0x64

    .line 12
    .line 13
    int-to-long v2, p1

    .line 14
    mul-long/2addr v0, v2

    .line 15
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    div-long/2addr v0, p1

    .line 20
    long-to-int p1, v0

    .line 21
    return p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :goto_0
    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :goto_1
    const/4 p1, 0x0

    .line 40
    return p1
.end method


# virtual methods
.method protected B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V
    .locals 2

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;->getHistorical()Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getType()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/adapter/t0;->C1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;->getStreamVideo()Lcom/transsion/baselib/db/video/VideoDetailPlayBean;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-direct {p0, p2, p1}, Lcom/transsnet/downloader/adapter/t0;->D1(Lcom/transsnet/downloader/bean/HistoricalPlayRecordBean;Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic F(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/transsnet/downloader/adapter/t0;->B1(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsnet/downloader/bean/HistoricalPlayRecordMultipleEntity;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
