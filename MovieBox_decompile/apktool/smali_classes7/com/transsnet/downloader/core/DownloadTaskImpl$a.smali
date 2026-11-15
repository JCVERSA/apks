.class public final Lcom/transsnet/downloader/core/DownloadTaskImpl$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/transsnet/downloader/proxy/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsnet/downloader/core/DownloadTaskImpl;-><init>(Lcom/transsnet/downloader/core/c;Lcom/transsnet/downloader/proxy/b;Lcom/transsion/baselib/db/download/DownloadBean;Lax/b;Lcom/transsnet/downloader/core/task/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/baselib/db/download/DownloadBean;

.field final synthetic b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

.field final synthetic c:Lax/b;


# direct methods
.method constructor <init>(Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lax/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->c:Lax/b;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic b(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILax/b;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p6}, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->c(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILax/b;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILax/b;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)Lkotlin/Unit;
    .locals 13

    .line 1
    invoke-interface {p0}, Lcom/transsnet/downloader/core/thread/f;->removeBreakCallback()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    move-object v1, p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 15
    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x0

    .line 18
    const-string v2, "DownloadThread"

    .line 19
    .line 20
    const-string v3, "beak success, start new thread"

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    move-object v1, v0

    .line 24
    invoke-static/range {v1 .. v6}, Lwf/a$a;->v(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    move-object v10, p2

    .line 29
    invoke-virtual {p2, v1}, Lcom/transsion/baselib/db/download/DownloadRange;->setDownloading(Z)V

    .line 30
    .line 31
    .line 32
    new-instance v11, Lcom/transsnet/downloader/core/thread/DownloadRunnable;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->m(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Lcom/transsnet/downloader/proxy/b;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->k(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Lcom/transsnet/downloader/core/c;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    move-object v2, v11

    .line 43
    move-object v3, p2

    .line 44
    move/from16 v5, p3

    .line 45
    .line 46
    move-object/from16 v7, p4

    .line 47
    .line 48
    move-object/from16 v8, p5

    .line 49
    .line 50
    move-object v9, p1

    .line 51
    invoke-direct/range {v2 .. v9}, Lcom/transsnet/downloader/core/thread/DownloadRunnable;-><init>(Lcom/transsion/baselib/db/download/DownloadRange;Lcom/transsnet/downloader/proxy/b;ILcom/transsnet/downloader/core/c;Lax/b;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsnet/downloader/core/thread/d;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    if-eqz p6, :cond_0

    .line 65
    .line 66
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    move-object v3, v2

    .line 76
    :goto_0
    if-eqz p6, :cond_1

    .line 77
    .line 78
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    move-object v4, v2

    .line 88
    :goto_1
    if-eqz p6, :cond_2

    .line 89
    .line 90
    invoke-virtual/range {p6 .. p6}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    :cond_2
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getRangeId()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getStart()J

    .line 103
    .line 104
    .line 105
    move-result-wide v6

    .line 106
    invoke-virtual {p2}, Lcom/transsion/baselib/db/download/DownloadRange;->getEnd()J

    .line 107
    .line 108
    .line 109
    move-result-wide v8

    .line 110
    new-instance v10, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v12, "download&play start new thread,oldRangeId:"

    .line 116
    .line 117
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v3, ",start:"

    .line 124
    .line 125
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v3, ",end:"

    .line 132
    .line 133
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v2, ", rangeId: "

    .line 140
    .line 141
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v2, ", start:"

    .line 148
    .line 149
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const-string v3, "download"

    .line 166
    .line 167
    invoke-virtual {v0, v3, v2, v1}, Lwf/a$a;->u(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 168
    .line 169
    .line 170
    sget-object v0, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->a:Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;

    .line 171
    .line 172
    invoke-virtual {v0}, Lcom/transsnet/downloader/core/thread/DownloadExecutor$b;->b()Lcom/transsnet/downloader/core/thread/DownloadExecutor;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0, v11}, Lcom/transsnet/downloader/core/thread/DownloadExecutor;->e(Ljava/lang/Runnable;)V

    .line 177
    .line 178
    .line 179
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 180
    .line 181
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/transsion/baselib/db/download/DownloadRange;Lcom/transsion/baselib/db/download/DownloadRange;)V
    .locals 9

    .line 1
    const-string v0, "range"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/transsion/baselib/db/download/DownloadBean;->getResourceId()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p4}, Lcom/transsion/baselib/db/download/DownloadRange;->isRangeDownloadSuccess()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/util/ArrayList;

    .line 48
    .line 49
    iget-object v0, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/transsnet/downloader/core/DownloadTaskImpl;->l(Lcom/transsnet/downloader/core/DownloadTaskImpl;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/lit8 v0, v0, -0x1

    .line 62
    .line 63
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "get(...)"

    .line 68
    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast p1, Lcom/transsnet/downloader/core/thread/f;

    .line 73
    .line 74
    iget-object v3, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->b:Lcom/transsnet/downloader/core/DownloadTaskImpl;

    .line 75
    .line 76
    iget-object v6, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->c:Lax/b;

    .line 77
    .line 78
    iget-object v7, p0, Lcom/transsnet/downloader/core/DownloadTaskImpl$a;->a:Lcom/transsion/baselib/db/download/DownloadBean;

    .line 79
    .line 80
    new-instance v0, Lcom/transsnet/downloader/core/f;

    .line 81
    .line 82
    move-object v1, v0

    .line 83
    move-object v2, p1

    .line 84
    move-object v4, p4

    .line 85
    move v5, p2

    .line 86
    move-object v8, p3

    .line 87
    invoke-direct/range {v1 .. v8}, Lcom/transsnet/downloader/core/f;-><init>(Lcom/transsnet/downloader/core/thread/f;Lcom/transsnet/downloader/core/DownloadTaskImpl;Lcom/transsion/baselib/db/download/DownloadRange;ILax/b;Lcom/transsion/baselib/db/download/DownloadBean;Lcom/transsion/baselib/db/download/DownloadRange;)V

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0}, Lcom/transsnet/downloader/core/thread/f;->pause(Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
