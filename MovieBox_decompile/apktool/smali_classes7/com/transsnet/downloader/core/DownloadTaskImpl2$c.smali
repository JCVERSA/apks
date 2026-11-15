.class public final Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsnet/downloader/proxy/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadTaskImpl2;-><init>(Lcom/transsnet/downloader/core/c;Lcom/transsnet/downloader/proxy/b;Lcom/transsion/baselib/db/download/DownloadBean;Lax/b;Lcom/transsnet/downloader/core/task/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;


# direct methods
.method constructor <init>(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->c(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)Lkotlin/Unit;
    .locals 16

    .line 1
    invoke-interface/range {p0 .. p0}, Lcom/transsnet/downloader/core/thread/f;->removeBreakCallback()V

    .line 2
    .line 3
    .line 4
    invoke-static/range {p1 .. p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    move-object/from16 v1, p0

    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v2, "DownloadThread"

    .line 18
    .line 19
    const-string v3, "beak success, start new thread"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v1, v0

    .line 23
    invoke-static/range {v1 .. v6}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static/range {p1 .. p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/transsion/baselib/db/download/DownloadBean;->getProgress()J

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    move-object v4, v3

    .line 47
    :goto_0
    if-eqz p2, :cond_1

    .line 48
    .line 49
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 50
    .line 51
    .line 52
    move-result-wide v5

    .line 53
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    move-object v5, v3

    .line 59
    :goto_1
    if-eqz p2, :cond_2

    .line 60
    .line 61
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    goto :goto_2

    .line 70
    :cond_2
    move-object v6, v3

    .line 71
    :goto_2
    if-eqz p2, :cond_3

    .line 72
    .line 73
    invoke-virtual/range {p2 .. p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    .line 74
    .line 75
    .line 76
    move-result-wide v7

    .line 77
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 86
    .line 87
    .line 88
    move-result-wide v8

    .line 89
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 90
    .line 91
    .line 92
    move-result-wide v10

    .line 93
    invoke-virtual/range {p3 .. p3}, Lcom/transsion/baselib/db/download/DownloadRange;->getProgress()J

    .line 94
    .line 95
    .line 96
    move-result-wide v12

    .line 97
    new-instance v14, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v15, "download&play start new thread, totalProgress = "

    .line 103
    .line 104
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v14, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v1, "\n                        oldRangeId:"

    .line 111
    .line 112
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, ", start:"

    .line 119
    .line 120
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v2, ", end:"

    .line 127
    .line 128
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v4, ", progress:"

    .line 135
    .line 136
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v3, " \n                        newRangeId:"

    .line 143
    .line 144
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v1, " \n                    "

    .line 169
    .line 170
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-static {v1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const/4 v2, 0x1

    .line 182
    const-string v3, "download"

    .line 183
    .line 184
    invoke-virtual {v0, v3, v1, v2}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    .line 186
    .line 187
    move-object/from16 v0, p1

    .line 188
    .line 189
    move-object/from16 v1, p3

    .line 190
    .line 191
    move/from16 v2, p4

    .line 192
    .line 193
    invoke-static {v0, v1, v2}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->p(Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;I)V

    .line 194
    .line 195
    .line 196
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 197
    .line 198
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 7

    .line 1
    const-string v0, "range"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->i(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Lcom/transsion/baselib/db/download/DownloadBean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    const/4 v0, 0x1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    sget-object p1, Lwf/a;->a:Lwf/a$a;

    .line 31
    .line 32
    const-string p2, "download"

    .line 33
    .line 34
    const-string p3, "download&play, range download success\uff0c do nothing"

    .line 35
    .line 36
    invoke-virtual {p1, p2, p3, v0}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 41
    .line 42
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 53
    .line 54
    const/4 v5, 0x4

    .line 55
    const/4 v6, 0x0

    .line 56
    const-string v2, "DownloadThread"

    .line 57
    .line 58
    const-string v3, "download&play, thread null"

    .line 59
    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static/range {v1 .. v6}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object v1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 72
    .line 73
    invoke-static {v1}, Lcom/transsnet/downloader/core/DownloadTaskImpl2;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl2;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    sub-int/2addr v1, v0

    .line 82
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/transsnet/downloader/core/thread/f;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl2$c;->a:Lcom/transsnet/downloader/core/DownloadTaskImpl2;

    .line 89
    .line 90
    new-instance v6, Lcom/transsnet/downloader/core/h;

    .line 91
    .line 92
    move-object v0, v6

    .line 93
    move-object v1, p1

    .line 94
    move-object v3, p3

    .line 95
    move-object v4, p4

    .line 96
    move v5, p2

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/transsnet/downloader/core/h;-><init>(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl2;Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;I)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p1, v6}, Lcom/transsnet/downloader/core/thread/f;->pause(Lkotlin/jvm/functions/Function0;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method
