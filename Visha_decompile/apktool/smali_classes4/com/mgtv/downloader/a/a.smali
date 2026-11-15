.class public Lcom/mgtv/downloader/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/downloader/a/a$a;
    }
.end annotation


# static fields
.field private static k:I = -0x1


# instance fields
.field protected a:Lcom/mgtv/downloader/net/entity/a;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private l:Ljava/util/concurrent/locks/ReentrantLock;

.field private m:Lcom/mgtv/downloader/a/a$a;

.field private n:I

.field private o:Z

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/mgtv/downloader/statistics/a/a;

.field private s:Lcom/mgtv/task/h;

.field private t:Lcom/mgtv/task/m;

.field private u:Landroid/content/Context;

.field private v:Lcom/mgtv/downloader/a/b;

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mgtv/downloader/net/entity/a;IILjava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/mgtv/downloader/a/a;->b:I

    iput v0, p0, Lcom/mgtv/downloader/a/a;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mgtv/downloader/a/a;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput v1, p0, Lcom/mgtv/downloader/a/a;->e:I

    iput v1, p0, Lcom/mgtv/downloader/a/a;->f:I

    iput v1, p0, Lcom/mgtv/downloader/a/a;->g:I

    iput-object v0, p0, Lcom/mgtv/downloader/a/a;->h:Ljava/lang/String;

    const/16 v3, 0xa

    iput v3, p0, Lcom/mgtv/downloader/a/a;->i:I

    iput v1, p0, Lcom/mgtv/downloader/a/a;->j:I

    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/mgtv/downloader/a/a;->l:Ljava/util/concurrent/locks/ReentrantLock;

    sget v3, Lcom/mgtv/downloader/b;->b:I

    iput v3, p0, Lcom/mgtv/downloader/a/a;->n:I

    iput-boolean v1, p0, Lcom/mgtv/downloader/a/a;->o:Z

    iput-boolean v1, p0, Lcom/mgtv/downloader/a/a;->q:Z

    iput v1, p0, Lcom/mgtv/downloader/a/a;->w:I

    iput-object p1, p0, Lcom/mgtv/downloader/a/a;->u:Landroid/content/Context;

    iput p3, p0, Lcom/mgtv/downloader/a/a;->b:I

    iput p4, p0, Lcom/mgtv/downloader/a/a;->c:I

    iput-object p5, p0, Lcom/mgtv/downloader/a/a;->d:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/mgtv/downloader/a/a;->c(Ljava/lang/String;)V

    new-instance p1, Lcom/mgtv/downloader/net/entity/a;

    invoke-direct {p1, p2}, Lcom/mgtv/downloader/net/entity/a;-><init>(Lcom/mgtv/downloader/net/entity/a;)V

    iput-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1, v0}, Lcom/mgtv/downloader/net/entity/a;->q(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1, v2}, Lcom/mgtv/downloader/net/entity/a;->b(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1, v2}, Lcom/mgtv/downloader/net/entity/a;->c(Ljava/lang/Integer;)V

    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->d()Ljava/lang/Long;

    move-result-object p1

    const-wide/16 p2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1, p2}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Long;)V

    :cond_0
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->e()Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1, p2}, Lcom/mgtv/downloader/net/entity/a;->b(Ljava/lang/Long;)V

    :cond_1
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->u:Landroid/content/Context;

    invoke-static {p1}, Lcom/mgtv/downloader/statistics/a/a;->a(Landroid/content/Context;)Lcom/mgtv/downloader/statistics/a/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/downloader/a/a;->r:Lcom/mgtv/downloader/statistics/a/a;

    new-instance p1, Lcom/mgtv/task/h;

    invoke-static {}, Lcom/hunantv/imgo/util/ThreadManager;->getNetWorkExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lcom/mgtv/task/h;-><init>(Ljava/util/concurrent/Executor;Z)V

    iput-object p1, p0, Lcom/mgtv/downloader/a/a;->s:Lcom/mgtv/task/h;

    new-instance p1, Lcom/mgtv/task/m;

    iget-object p2, p0, Lcom/mgtv/downloader/a/a;->u:Landroid/content/Context;

    iget-object p3, p0, Lcom/mgtv/downloader/a/a;->s:Lcom/mgtv/task/h;

    const/4 p4, 0x0

    invoke-direct {p1, p2, p3, p4}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;Lcom/mgtv/task/h;Lcom/mgtv/task/k;)V

    iput-object p1, p0, Lcom/mgtv/downloader/a/a;->t:Lcom/mgtv/task/m;

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/downloader/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/downloader/a/a;->b:I

    return p0
.end method

.method public static synthetic a(Lcom/mgtv/downloader/a/a;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/mgtv/downloader/a/a;->w:I

    return p1
.end method

.method public static synthetic a(Lcom/mgtv/downloader/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgtv/downloader/a/a;->h:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/mgtv/downloader/a/a;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/a/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p1, :cond_0

    .line 182
    new-instance p0, Ljava/io/StringWriter;

    invoke-direct {p0}, Ljava/io/StringWriter;-><init>()V

    .line 183
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, p0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 186
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p8

    .line 167
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p9

    .line 169
    const-string v5, "tid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v0, Lcom/mgtv/downloader/a/a;->p:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&sid=4&uuid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&hc="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, "&du="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v3, 0x2aa

    if-ne v1, v3, :cond_0

    .line 171
    const-string v1, "&ua="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/mgtv/downloader/util/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 172
    :cond_0
    :goto_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    const-string v1, "&errorMsg="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v1, p4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    :cond_1
    const-string v1, "&foreground="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/mgtv/downloader/util/d;->f()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 175
    iget-object v3, v0, Lcom/mgtv/downloader/a/a;->r:Lcom/mgtv/downloader/statistics/a/a;

    const-string v10, ""

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    move/from16 v1, p5

    int-to-long v12, v1

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x0

    const/4 v4, 0x2

    move/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v7, p6

    move-object/from16 v8, p2

    move/from16 v9, p7

    move-object/from16 v16, p11

    invoke-virtual/range {v3 .. v16}, Lcom/mgtv/downloader/statistics/a/a;->a(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 176
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V
    .locals 5

    move-object v0, p0

    .line 177
    :try_start_0
    iget-boolean v1, v0, Lcom/mgtv/downloader/a/a;->o:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 178
    iput-boolean v1, v0, Lcom/mgtv/downloader/a/a;->o:Z

    .line 179
    const-string v1, "DownloadSDK_1.8.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[sendCdn3]error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", errormsg: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct/range {p0 .. p13}, Lcom/mgtv/downloader/a/a;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p7

    .line 156
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p8

    .line 158
    const-string v5, "tid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v0, Lcom/mgtv/downloader/a/a;->p:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&sid=2&uuid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&hc="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, "&du="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v3, 0x2aa

    if-ne v1, v3, :cond_0

    .line 160
    const-string v1, "&ua="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/mgtv/downloader/util/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 161
    :cond_0
    :goto_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const-string v1, "&errorMsg="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v1, p5

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    :cond_1
    const-string v1, "&foreground="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/mgtv/downloader/util/d;->f()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 164
    const-string v1, "me_setting_download_resolution"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/hunantv/imgo/util/PreferencesUtil;->a(Ljava/lang/String;I)I

    move-result v15

    .line 165
    iget-object v4, v0, Lcom/mgtv/downloader/a/a;->r:Lcom/mgtv/downloader/statistics/a/a;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v17, ""

    const/4 v5, 0x1

    const/4 v10, 0x0

    const-wide/16 v13, -0x1

    const/16 v16, 0x0

    move/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v8, p6

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    invoke-virtual/range {v4 .. v17}, Lcom/mgtv/downloader/statistics/a/a;->a(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 166
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;IIJLjava/lang/String;)V
    .locals 13

    if-nez p5, :cond_0

    const/4 v0, -0x1

    :goto_0
    move v6, v0

    goto :goto_1

    .line 152
    :cond_0
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    goto :goto_0

    :goto_1
    const/16 v9, 0xc8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    .line 153
    invoke-direct/range {v1 .. v12}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJLjava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p0

    iget v1, v1, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getDownloadRealUrl - errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 155
    const-string v1, "DownloadSDK_1.8.0"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/hunantv/imgo/util/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static synthetic a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct/range {p0 .. p13}, Lcom/mgtv/downloader/a/a;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 0

    .line 6
    invoke-direct/range {p0 .. p9}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V

    return-void
.end method

.method public static synthetic a(Lcom/mgtv/downloader/a/a;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/mgtv/downloader/a/a;->q:Z

    return p1
.end method

.method public static synthetic b(Lcom/mgtv/downloader/a/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/downloader/a/a;->g:I

    return p1
.end method

.method public static synthetic b(Lcom/mgtv/downloader/a/a;)Lcom/mgtv/downloader/a/b;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    return-object p0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 13
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p11

    .line 15
    const-string v5, "tid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v0, Lcom/mgtv/downloader/a/a;->p:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&sid=5&uuid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&hc="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v5, p10

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, "&du="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 17
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 18
    const-string v3, "&ft="

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 19
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 20
    :cond_0
    const-string v3, "&errorMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    :cond_1
    :goto_0
    const-string v1, "&foreground="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/mgtv/downloader/util/d;->f()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 22
    iget-object v3, v0, Lcom/mgtv/downloader/a/a;->r:Lcom/mgtv/downloader/statistics/a/a;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v4, 0x3

    const-string v10, ""

    move/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v7, p7

    move-object/from16 v8, p2

    move/from16 v9, p8

    move-wide/from16 v12, p5

    move/from16 v15, p9

    move-object/from16 v16, p13

    invoke-virtual/range {v3 .. v16}, Lcom/mgtv/downloader/statistics/a/a;->a(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/downloader/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p13}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/downloader/a/a;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/a/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/mgtv/downloader/a/a;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/mgtv/downloader/a/a;->o:Z

    return p1
.end method

.method public static synthetic c(Lcom/mgtv/downloader/a/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/downloader/a/a;->i:I

    return p1
.end method

.method private c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JIIZIJLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 4
    :try_start_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p11

    .line 6
    const-string v5, "tid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v5, v0, Lcom/mgtv/downloader/a/a;->p:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&sid=5&uuid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->n()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v5, "&hc="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 v5, p10

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v5, "&du="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 8
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    const-string v3, "&ft="

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 11
    :cond_0
    const-string v3, "&errorMsg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :cond_1
    :goto_0
    const-string v1, "&foreground="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/mgtv/downloader/util/d;->f()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 13
    iget-object v3, v0, Lcom/mgtv/downloader/a/a;->r:Lcom/mgtv/downloader/statistics/a/a;

    const-string v10, ""

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v0, v0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v4, 0x3

    move/from16 v5, p1

    move-object/from16 v6, p3

    move/from16 v7, p7

    move-object/from16 v8, p2

    move/from16 v9, p8

    move-wide/from16 v12, p5

    move/from16 v15, p9

    move-object/from16 v16, p13

    invoke-virtual/range {v3 .. v16}, Lcom/mgtv/downloader/statistics/a/a;->b(IILjava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;JIZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 14
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    .line 40
    const-string v0, "switchCDN"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/mgtv/downloader/a/a;->e:I

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "taskID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", [resolveExInfo] switchCDN: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mgtv/downloader/a/a;->e:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/mgtv/downloader/a/a;)Z
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/downloader/a/a;->n()Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/mgtv/downloader/a/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/mgtv/downloader/a/a;->b:I

    return p1
.end method

.method public static synthetic d(Lcom/mgtv/downloader/a/a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/mgtv/downloader/a/a;->o()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 3

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/mgtv/downloader/util/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    if-eqz v0, :cond_3

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0, p1}, Lcom/mgtv/downloader/net/entity/a;->q(Ljava/lang/String;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->v()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s,%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/net/entity/a;->q(Ljava/lang/String;)V

    .line 12
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", [setFailedHosts] FailedHosts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->v()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " host="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static synthetic e(Lcom/mgtv/downloader/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/downloader/a/a;->q:Z

    return p0
.end method

.method public static synthetic f(Lcom/mgtv/downloader/a/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/downloader/a/a;->p()V

    return-void
.end method

.method public static synthetic g(Lcom/mgtv/downloader/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/downloader/a/a;->e:I

    return p0
.end method

.method public static synthetic h(Lcom/mgtv/downloader/a/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic i(Lcom/mgtv/downloader/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/downloader/a/a;->g:I

    return p0
.end method

.method public static synthetic j(Lcom/mgtv/downloader/a/a;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/mgtv/downloader/a/a;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mgtv/downloader/a/a;->g:I

    return v0
.end method

.method public static synthetic k(Lcom/mgtv/downloader/a/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/mgtv/downloader/a/a;->i:I

    return p0
.end method

.method public static synthetic l(Lcom/mgtv/downloader/a/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgtv/downloader/a/a;->o:Z

    return p0
.end method

.method public static synthetic m()I
    .locals 1

    .line 1
    sget v0, Lcom/mgtv/downloader/a/a;->k:I

    return v0
.end method

.method public static synthetic m(Lcom/mgtv/downloader/a/a;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/mgtv/downloader/a/a;->n:I

    return p0
.end method

.method private n()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result p0

    return p0
.end method

.method private o()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    return-void
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->l:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 4

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->s:Lcom/mgtv/task/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/mgtv/downloader/a/a;->t:Lcom/mgtv/task/m;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mgtv/task/h;->a(Lcom/mgtv/task/g;)V

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->t:Lcom/mgtv/task/m;

    invoke-virtual {v0, v1}, Lcom/mgtv/task/m;->a(Lcom/mgtv/task/g;)V

    iput-object v1, p0, Lcom/mgtv/downloader/a/a;->s:Lcom/mgtv/task/h;

    iput-object v1, p0, Lcom/mgtv/downloader/a/a;->t:Lcom/mgtv/task/m;

    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->s:Lcom/mgtv/task/h;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->t:Lcom/mgtv/task/m;

    if-nez v0, :cond_1

    new-instance v0, Lcom/mgtv/task/h;

    invoke-static {}, Lcom/hunantv/imgo/util/ThreadManager;->getNetWorkExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/mgtv/task/h;-><init>(Ljava/util/concurrent/Executor;Z)V

    iput-object v0, p0, Lcom/mgtv/downloader/a/a;->s:Lcom/mgtv/task/h;

    new-instance v0, Lcom/mgtv/task/m;

    iget-object v2, p0, Lcom/mgtv/downloader/a/a;->u:Landroid/content/Context;

    iget-object v3, p0, Lcom/mgtv/downloader/a/a;->s:Lcom/mgtv/task/h;

    invoke-direct {v0, v2, v3, v1}, Lcom/mgtv/task/m;-><init>(Landroid/content/Context;Lcom/mgtv/task/h;Lcom/mgtv/task/k;)V

    iput-object v0, p0, Lcom/mgtv/downloader/a/a;->t:Lcom/mgtv/task/m;

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 8
    iget p0, p0, Lcom/mgtv/downloader/a/a;->j:I

    return p0
.end method

.method public a(Z)I
    .locals 14

    .line 14
    iget v0, p0, Lcom/mgtv/downloader/a/a;->c:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const-string v3, "hls"

    const-string v4, "taskID: "

    const/4 v5, 0x1

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xb

    if-ne v7, v0, :cond_3

    .line 16
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, ", FileMD5Calc:"

    const-string v6, ", FileMD5:"

    const-string v7, ", definition: "

    if-ne v5, p1, :cond_2

    .line 17
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v8

    iget v9, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object v3, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v3, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    iget-object v3, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->m()Ljava/lang/String;

    move-result-object v12

    move-object v13, p1

    invoke-virtual/range {v8 .. v13}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->createOfflinePlayTask(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", hls create task failed"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v1

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", hls offline play, videoID: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3}, Lcom/mgtv/downloader/net/entity/a;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", filePath: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 22
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mp4 offline play, videoID: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    :goto_1
    return v2

    .line 23
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", [startTask]download start, videoID: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v8}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_d

    invoke-direct {p0}, Lcom/mgtv/downloader/a/a;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_5

    .line 25
    :cond_4
    const-string v0, ""

    if-eqz p1, :cond_5

    .line 26
    iget-object v7, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v7, v6}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 27
    iget-object v7, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v7, v0}, Lcom/mgtv/downloader/net/entity/a;->q(Ljava/lang/String;)V

    .line 28
    iget-object v7, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-string v8, "1.8.0"

    invoke-virtual {v7, v8}, Lcom/mgtv/downloader/net/entity/a;->m(Ljava/lang/String;)V

    .line 29
    iget-object v7, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    if-eqz v7, :cond_5

    .line 30
    iget v8, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object v9, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v7, v8, v9, v0}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    .line 31
    iget-object v7, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    iget v8, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object v9, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v7, v8, v9}, Lcom/mgtv/downloader/a/b;->b(ILcom/mgtv/downloader/net/entity/a;)V

    .line 32
    :cond_5
    invoke-static {}, Lcom/hunantv/imgo/util/i;->a()Z

    move-result v7

    if-nez v7, :cond_7

    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", download - sd card unavailable, return"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 35
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    if-eqz p1, :cond_6

    .line 36
    iget v2, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v3, 0x3

    invoke-interface {p1, v2, p0, v3, v0}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    :cond_6
    return v1

    .line 37
    :cond_7
    iget-object v1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->i()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_2

    .line 38
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 39
    :goto_2
    new-instance v4, Lcom/mgtv/downloader/net/ImgoHttpParams;

    invoke-direct {v4}, Lcom/mgtv/downloader/net/ImgoHttpParams;-><init>()V

    .line 40
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v8, Lcom/mgtv/task/http/HttpParams$Type;->BODY:Lcom/mgtv/task/http/HttpParams$Type;

    const-string v9, "definition"

    invoke-virtual {v4, v9, v7, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 41
    iget-object v7, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v7}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v7

    const-string v9, "id"

    invoke-virtual {v4, v9, v7, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 42
    iget-object v7, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v7}, Lcom/mgtv/downloader/net/entity/a;->t()Ljava/lang/String;

    move-result-object v7

    const-string v9, "cxid"

    invoke-virtual {v4, v9, v7, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 43
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    .line 44
    invoke-virtual {v7}, Ljava/util/Random;->nextInt()I

    move-result v7

    .line 45
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "c"

    invoke-virtual {v4, v10, v9, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 47
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "t"

    invoke-virtual {v4, v12, v11, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 48
    const-string v11, "st"

    const-string v12, "sha256"

    invoke-virtual {v4, v11, v12, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 49
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v7}, Lcom/mgtv/downloader/net/entity/a;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v7}, Lcom/mgtv/downloader/net/entity/a;->u()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v7}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v7, "s"

    invoke-virtual {v4, v7, v1, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 53
    iget-object v1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1}, Lcom/mgtv/downloader/net/entity/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "ch_token"

    invoke-virtual {v4, v7, v1, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 54
    const-string v1, "other"

    invoke-virtual {v4, v1, v0, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 55
    const-string v0, "encrypted"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 56
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 57
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->w()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rtype"

    invoke-virtual {v4, v1, v0, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 58
    :cond_9
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 59
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->x()Ljava/lang/String;

    move-result-object v0

    const-string v1, "openId"

    invoke-virtual {v4, v1, v0, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/String;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 60
    :cond_a
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 61
    invoke-virtual {v4, v3, v6, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    goto :goto_3

    .line 62
    :cond_b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v3, v0, v8}, Lcom/mgtv/task/http/HttpParams;->put(Ljava/lang/String;Ljava/lang/Number;Lcom/mgtv/task/http/HttpParams$Type;)Lcom/mgtv/task/http/HttpParams;

    .line 63
    :goto_3
    invoke-static {}, Lcom/mgtv/downloader/util/d;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/mgtv/downloader/util/d;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_c
    invoke-static {}, Lcom/mgtv/downloader/util/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "union/video/downloadUrl"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startTask]url path= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadSDK_1.8.0"

    invoke-static {v2, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "VD_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hunantv/imgo/util/b;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/hunantv/imgo/util/f;->b(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mgtv/downloader/a/a;->p:Ljava/lang/String;

    .line 68
    iget-object v3, p0, Lcom/mgtv/downloader/a/a;->t:Lcom/mgtv/task/m;

    const/16 v5, 0xbb8

    invoke-virtual {v3, v5}, Lcom/mgtv/task/m;->b(I)Lcom/mgtv/task/m;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/mgtv/task/m;->a(I)Lcom/mgtv/task/m;

    move-result-object v3

    new-instance v5, Lcom/mgtv/downloader/a/a$1;

    invoke-direct {v5, p0, p1, v1, v2}, Lcom/mgtv/downloader/a/a$1;-><init>(Lcom/mgtv/downloader/a/a;ZJ)V

    invoke-virtual {v3, v0, v4, v5}, Lcom/mgtv/task/m;->a(Ljava/lang/String;Lcom/mgtv/task/http/HttpParams;Lcom/mgtv/task/http/c;)Lcom/mgtv/task/g;

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startTask = end "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mgtv/downloader/a/a;->w:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 70
    iget p0, p0, Lcom/mgtv/downloader/a/a;->w:I

    return p0

    .line 71
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p1}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v7, p1, :cond_e

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", status is downloading or lock is locked, switch status from block_restart to block "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 73
    iget p1, p0, Lcom/mgtv/downloader/a/a;->j:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/mgtv/downloader/a/a;->j:I

    .line 74
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 75
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", status is downloading or lock is locked, status: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", locked: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/mgtv/downloader/a/a;->n()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return v5
.end method

.method public a(Ljava/lang/String;II)Lcom/mgtv/downloader/net/entity/DownloadData;
    .locals 25

    move-object/from16 v13, p0

    .line 76
    const-string v14, "F"

    const-string v1, "User-Agent"

    const-string v2, "GET"

    const-string v15, "errmsg="

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v16, 0x0

    const-string v12, "taskID: "

    if-eqz v3, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getDownloadRealUrl - origin url is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-object v16

    .line 78
    :cond_0
    :try_start_0
    const-string v3, " "

    const-string v4, "%20"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v5, p1

    :try_start_1
    invoke-virtual {v5, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v3

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v5, p1

    goto :goto_0

    .line 79
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v10, v5

    .line 80
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 81
    const-string v3, ""

    .line 82
    :try_start_2
    new-instance v4, Lcom/mgtv/irouting/okhttp/c;
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_44
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_43
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_2 .. :try_end_2} :catch_42
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3e
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/mgtv/irouting/okhttp/c;-><init>(Ljava/net/URL;)V
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_41
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_40
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_3 .. :try_end_3} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3e
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 v5, 0xbb8

    .line 83
    :try_start_4
    invoke-virtual {v4, v5}, Lcom/mgtv/irouting/okhttp/c;->setConnectTimeout(I)V

    .line 84
    invoke-virtual {v4, v5}, Lcom/mgtv/irouting/okhttp/c;->setReadTimeout(I)V

    .line 85
    invoke-virtual {v4, v2}, Lcom/mgtv/irouting/okhttp/c;->setRequestMethod(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/mgtv/downloader/util/d;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/mgtv/irouting/okhttp/c;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4}, Lcom/mgtv/irouting/okhttp/c;->getResponseCode()I

    move-result v6

    .line 88
    invoke-virtual {v4}, Lcom/mgtv/irouting/okhttp/c;->a()Lcom/mgtv/irouting/okhttp/c$a;

    move-result-object v7

    iget-object v11, v7, Lcom/mgtv/irouting/okhttp/c$a;->e:Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3d
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3c
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_4 .. :try_end_4} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3a
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 89
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "second ips: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_39
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_38
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_5 .. :try_end_5} :catch_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_36
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v9, v4

    move v8, v6

    :goto_3
    const/16 v3, 0x12e

    .line 90
    const-string v4, "DownloadSDK_1.8.0"

    if-eq v8, v3, :cond_1

    const/16 v3, 0x12d

    if-ne v8, v3, :cond_2

    :cond_1
    move-object/from16 p1, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object v15, v12

    goto/16 :goto_24

    .line 91
    :cond_2
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", return code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc8

    if-eq v8, v1, :cond_4

    if-nez v8, :cond_3

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [second error] responseCode == 0, url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 93
    const-string v4, "203001"

    const-string v5, "responseCode is 0"

    invoke-virtual {v9}, Lcom/mgtv/irouting/okhttp/c;->getContentLength()I

    move-result v6
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 v2, -0x1

    move-object/from16 v1, p0

    move-object v3, v10

    move/from16 v7, p2

    move v14, v8

    move/from16 v8, p3

    move-object/from16 p1, v9

    move v9, v14

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-wide/from16 v10, v17

    move-object/from16 v21, v15

    move-object v15, v12

    move-object/from16 v12, v20

    :try_start_7
    invoke-direct/range {v1 .. v12}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJLjava/lang/String;)V

    goto/16 :goto_17

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_3b

    :catch_2
    move-exception v0

    :goto_4
    move-object/from16 v6, p1

    :goto_5
    move-object v1, v0

    move-object/from16 v12, v16

    :goto_6
    move-object/from16 v7, v19

    :goto_7
    move-object/from16 v11, v20

    goto/16 :goto_35

    :catch_3
    move-exception v0

    :goto_8
    move-object/from16 v6, p1

    :goto_9
    move-object v1, v0

    move-object/from16 v12, v16

    :goto_a
    move-object/from16 v7, v19

    :goto_b
    move-object/from16 v11, v20

    :goto_c
    move-object/from16 v5, v21

    goto/16 :goto_37

    :catch_4
    move-exception v0

    :goto_d
    move-object/from16 v6, p1

    :goto_e
    move-object v1, v0

    move-object/from16 v12, v16

    :goto_f
    move-object/from16 v7, v19

    :goto_10
    move-object/from16 v11, v20

    :goto_11
    move-object/from16 v5, v21

    goto/16 :goto_38

    :catch_5
    move-exception v0

    :goto_12
    move-object/from16 v6, p1

    :goto_13
    move-object v1, v0

    move-object/from16 v12, v16

    :goto_14
    move-object/from16 v7, v19

    :goto_15
    move-object/from16 v11, v20

    :goto_16
    move-object/from16 v5, v21

    goto/16 :goto_39

    :catch_6
    move-exception v0

    move-object/from16 p1, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v6, p1

    move-object v1, v0

    move-object/from16 v12, v16

    move-object/from16 v7, v19

    goto/16 :goto_35

    :catch_7
    move-exception v0

    move-object/from16 p1, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v6, p1

    move-object v1, v0

    move-object/from16 v12, v16

    move-object/from16 v7, v19

    goto :goto_c

    :catch_8
    move-exception v0

    move-object/from16 p1, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v6, p1

    move-object v1, v0

    move-object/from16 v12, v16

    move-object/from16 v7, v19

    goto :goto_11

    :catch_9
    move-exception v0

    move-object/from16 p1, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object/from16 v6, p1

    move-object v1, v0

    move-object/from16 v12, v16

    move-object/from16 v7, v19

    goto :goto_16

    :cond_3
    move v14, v8

    move-object/from16 p1, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object v15, v12

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", [second error] responseCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object/from16 v12, v19

    :try_start_8
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "201"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "responseCode error"

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/irouting/okhttp/c;->getContentLength()I

    move-result v6
    :try_end_8
    .catch Ljava/net/ProtocolException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v2, -0x1

    move-object/from16 v1, p0

    move-object v3, v12

    move/from16 v7, p2

    move/from16 v8, p3

    move v9, v14

    move-wide/from16 v10, v17

    move-object/from16 v19, v12

    move-object/from16 v12, v20

    :try_start_9
    invoke-direct/range {v1 .. v12}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJLjava/lang/String;)V

    .line 96
    :goto_17
    invoke-direct/range {p0 .. p0}, Lcom/mgtv/downloader/a/a;->q()V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getDownloadRealUrl - not 200 response code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-object v16

    :catch_a
    move-exception v0

    move-object/from16 v19, v12

    goto/16 :goto_4

    :catch_b
    move-exception v0

    move-object/from16 v19, v12

    goto/16 :goto_8

    :catch_c
    move-exception v0

    move-object/from16 v19, v12

    goto/16 :goto_d

    :catch_d
    move-exception v0

    move-object/from16 v19, v12

    goto/16 :goto_12

    :cond_4
    move-object/from16 p1, v9

    move-object/from16 v19, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move v9, v8

    move-object v15, v12

    .line 98
    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/irouting/okhttp/c;->getInputStream()Ljava/io/InputStream;

    move-result-object v12
    :try_end_9
    .catch Ljava/net/ProtocolException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 99
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/irouting/okhttp/c;->getContentLength()I

    move-result v10
    :try_end_a
    .catch Ljava/net/ProtocolException; {:try_start_a .. :try_end_a} :catch_1f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_a .. :try_end_a} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1c
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const/high16 v1, 0x100000

    if-le v10, v1, :cond_6

    .line 100
    :try_start_b
    const-string v4, "22.05.100004"

    const-string v5, "errmsg = get real download url return size too big"

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/irouting/okhttp/c;->getContentLength()I

    move-result v6
    :try_end_b
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_16
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_15
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_b .. :try_end_b} :catch_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_13
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const/4 v2, -0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    move/from16 v7, p2

    move/from16 v8, p3

    move v14, v10

    move-wide/from16 v10, v17

    move-object/from16 v22, v12

    move-object/from16 v12, v20

    :try_start_c
    invoke-direct/range {v1 .. v12}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJLjava/lang/String;)V

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getDownloadRealUrl - size too big, totalLen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_c} :catch_12
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_11
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    move-object/from16 v12, v22

    if-eqz v12, :cond_5

    .line 102
    :try_start_d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    :catch_e
    :cond_5
    return-object v16

    :catchall_1
    move-exception v0

    move-object/from16 v12, v22

    :goto_18
    move-object v1, v0

    move-object/from16 v16, v12

    goto/16 :goto_3b

    :catch_f
    move-exception v0

    move-object/from16 v12, v22

    :goto_19
    move-object/from16 v6, p1

    move-object v1, v0

    goto/16 :goto_6

    :catch_10
    move-exception v0

    move-object/from16 v12, v22

    :goto_1a
    move-object/from16 v6, p1

    move-object v1, v0

    goto/16 :goto_a

    :catch_11
    move-exception v0

    move-object/from16 v12, v22

    :goto_1b
    move-object/from16 v6, p1

    move-object v1, v0

    goto/16 :goto_f

    :catch_12
    move-exception v0

    move-object/from16 v12, v22

    :goto_1c
    move-object/from16 v6, p1

    move-object v1, v0

    goto/16 :goto_14

    :catchall_2
    move-exception v0

    goto :goto_18

    :catch_13
    move-exception v0

    goto :goto_19

    :catch_14
    move-exception v0

    goto :goto_1a

    :catch_15
    move-exception v0

    goto :goto_1b

    :catch_16
    move-exception v0

    goto :goto_1c

    :cond_6
    const/16 v1, 0x400

    .line 103
    :try_start_e
    new-array v1, v1, [B

    .line 104
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 105
    :goto_1d
    invoke-virtual {v12, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3
    :try_end_e
    .catch Ljava/net/ProtocolException; {:try_start_e .. :try_end_e} :catch_1f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_e .. :try_end_e} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1c
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    const/4 v10, 0x0

    const/4 v11, -0x1

    if-eq v3, v11, :cond_7

    .line 106
    :try_start_f
    invoke-virtual {v2, v1, v10, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_f
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_16
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_15
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_f .. :try_end_f} :catch_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_13
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_1d

    .line 107
    :cond_7
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", \u4e8c\u5c42 return: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 110
    const-class v2, Lcom/mgtv/downloader/net/entity/DownloadData;

    invoke-static {v1, v2}, Lcom/mgtv/json/a;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v22, v1

    check-cast v22, Lcom/mgtv/downloader/net/entity/DownloadData;

    if-eqz v22, :cond_f

    .line 111
    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 112
    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getStatus()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    move-object/from16 v24, v12

    goto/16 :goto_21

    .line 113
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getDownloadRealUrl - success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 114
    const-string v4, ""

    const-string v5, ""

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/irouting/okhttp/c;->getContentLength()I

    move-result v6
    :try_end_10
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_10} :catch_1f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1e
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_10 .. :try_end_10} :catch_1d
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1c
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    move/from16 v8, p3

    move v15, v10

    move/from16 v23, v11

    move-wide/from16 v10, v17

    move-object/from16 v24, v12

    move-object/from16 v12, v20

    :try_start_11
    invoke-direct/range {v1 .. v12}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJLjava/lang/String;)V

    .line 115
    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getInfo()Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 117
    const-string v3, "nid"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 118
    iget-object v3, v13, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v3, v1}, Lcom/mgtv/downloader/net/entity/a;->c(Ljava/lang/String;)V

    .line 119
    iget-object v1, v13, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getIdc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mgtv/downloader/net/entity/a;->e(Ljava/lang/String;)V

    .line 120
    iget-object v1, v13, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v1, v2}, Lcom/mgtv/downloader/net/entity/a;->f(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getT()I

    move-result v1

    if-lez v1, :cond_c

    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getT()I

    move-result v1

    const v2, 0x151e4

    div-int/2addr v1, v2

    if-gtz v1, :cond_a

    goto/16 :goto_1f

    .line 122
    :cond_a
    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getExt()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getExt()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v15, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v1}, Lcom/mgtv/downloader/util/d;->b(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_b

    .line 124
    sput v23, Lcom/mgtv/downloader/a/a;->k:I

    goto/16 :goto_20

    :catchall_3
    move-exception v0

    :goto_1e
    move-object v1, v0

    move-object/from16 v16, v24

    goto/16 :goto_3b

    :catch_17
    move-exception v0

    move-object/from16 v6, p1

    move-object v1, v0

    move-object/from16 v7, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v24

    goto/16 :goto_35

    :catch_18
    move-exception v0

    move-object/from16 v6, p1

    move-object v1, v0

    move-object/from16 v7, v19

    move-object/from16 v11, v20

    move-object/from16 v5, v21

    move-object/from16 v12, v24

    goto/16 :goto_37

    :catch_19
    move-exception v0

    move-object/from16 v6, p1

    move-object v1, v0

    move-object/from16 v7, v19

    move-object/from16 v11, v20

    move-object/from16 v5, v21

    move-object/from16 v12, v24

    goto/16 :goto_38

    :catch_1a
    move-exception v0

    move-object/from16 v6, p1

    move-object v1, v0

    move-object/from16 v7, v19

    move-object/from16 v11, v20

    move-object/from16 v5, v21

    move-object/from16 v12, v24

    goto/16 :goto_39

    .line 125
    :cond_b
    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getT()I

    move-result v4

    div-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x7

    div-int v2, v3, v4

    sput v2, Lcom/mgtv/downloader/a/a;->k:I

    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "strLT: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lt: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", t: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getT()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", limitSpeed: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/mgtv/downloader/a/a;->k:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    goto :goto_20

    .line 127
    :cond_c
    :goto_1f
    sput v23, Lcom/mgtv/downloader/a/a;->k:I
    :try_end_11
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_19
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_11 .. :try_end_11} :catch_18
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_17
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 128
    :goto_20
    :try_start_12
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1b

    :catch_1b
    return-object v22

    :catchall_4
    move-exception v0

    move-object/from16 v24, v12

    goto/16 :goto_1e

    :catch_1c
    move-exception v0

    move-object/from16 v24, v12

    goto/16 :goto_19

    :catch_1d
    move-exception v0

    move-object/from16 v24, v12

    goto/16 :goto_1a

    :catch_1e
    move-exception v0

    move-object/from16 v24, v12

    goto/16 :goto_1b

    :catch_1f
    move-exception v0

    move-object/from16 v24, v12

    goto/16 :goto_1c

    .line 129
    :goto_21
    :try_start_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getDownloadRealUrl - status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_13
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_13} :catch_1a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_19
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_13 .. :try_end_13} :catch_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_17
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    const-string v3, "null"

    if-eqz v2, :cond_d

    move-object v2, v3

    goto :goto_22

    :cond_d
    :try_start_14
    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getStatus()Ljava/lang/String;

    move-result-object v2

    :goto_22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 130
    const-string v4, "204000"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_23

    :cond_e
    invoke-virtual/range {v22 .. v22}, Lcom/mgtv/downloader/net/entity/DownloadData;->getStatus()Ljava/lang/String;

    move-result-object v3

    :goto_23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/irouting/okhttp/c;->getContentLength()I

    move-result v6

    const/4 v2, -0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    move/from16 v7, p2

    move/from16 v8, p3

    move-wide/from16 v10, v17

    move-object/from16 v12, v20

    invoke-direct/range {v1 .. v12}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJLjava/lang/String;)V
    :try_end_14
    .catch Ljava/net/ProtocolException; {:try_start_14 .. :try_end_14} :catch_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_19
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_14 .. :try_end_14} :catch_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_17
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 131
    :try_start_15
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_20

    :catch_20
    return-object v16

    :cond_f
    move-object/from16 v24, v12

    .line 132
    :try_start_16
    const-string v4, "22.2000"

    const-string v5, "errmsg=downloadData is null or info is null"

    invoke-virtual/range {p1 .. p1}, Lcom/mgtv/irouting/okhttp/c;->getContentLength()I

    move-result v6

    const/4 v2, -0x1

    move-object/from16 v1, p0

    move-object/from16 v3, v19

    move/from16 v7, p2

    move/from16 v8, p3

    move-wide/from16 v10, v17

    move-object/from16 v12, v20

    invoke-direct/range {v1 .. v12}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIJLjava/lang/String;)V

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getDownloadRealUrl - downloadData is null or info is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_16
    .catch Ljava/net/ProtocolException; {:try_start_16 .. :try_end_16} :catch_1a
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_19
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_16 .. :try_end_16} :catch_18
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_17
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 134
    :try_start_17
    invoke-virtual/range {v24 .. v24}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_21

    :catch_21
    return-object v16

    .line 135
    :goto_24
    :try_start_18
    const-string v3, "Location"
    :try_end_18
    .catch Ljava/net/ProtocolException; {:try_start_18 .. :try_end_18} :catch_35
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_34
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_18 .. :try_end_18} :catch_33
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_32
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-object/from16 v6, p1

    :try_start_19
    invoke-virtual {v6, v3}, Lcom/mgtv/irouting/okhttp/c;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_19
    .catch Ljava/net/ProtocolException; {:try_start_19 .. :try_end_19} :catch_31
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_30
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_19 .. :try_end_19} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2e
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    if-eqz v7, :cond_10

    .line 137
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", getDownloadRealUrl - 302 but invalid redirect url"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/net/ProtocolException; {:try_start_1a .. :try_end_1a} :catch_25
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_24
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1a .. :try_end_1a} :catch_23
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_22
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    return-object v16

    :catch_22
    move-exception v0

    goto/16 :goto_5

    :catch_23
    move-exception v0

    goto/16 :goto_9

    :catch_24
    move-exception v0

    goto/16 :goto_e

    :catch_25
    move-exception v0

    goto/16 :goto_13

    .line 138
    :cond_10
    :try_start_1b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v13, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", return 302,redirect url is: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/hunantv/imgo/util/n;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    new-instance v9, Lcom/mgtv/irouting/okhttp/c;

    new-instance v3, Ljava/net/URL;
    :try_end_1b
    .catch Ljava/net/ProtocolException; {:try_start_1b .. :try_end_1b} :catch_31
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_30
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1b .. :try_end_1b} :catch_2f
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_2e
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    move-object/from16 v7, v19

    :try_start_1c
    invoke-direct {v3, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v3}, Lcom/mgtv/irouting/okhttp/c;-><init>(Ljava/net/URL;)V
    :try_end_1c
    .catch Ljava/net/ProtocolException; {:try_start_1c .. :try_end_1c} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_2c
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1c .. :try_end_1c} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2a
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 140
    :try_start_1d
    invoke-virtual {v9, v5}, Lcom/mgtv/irouting/okhttp/c;->setConnectTimeout(I)V

    .line 141
    invoke-virtual {v9, v5}, Lcom/mgtv/irouting/okhttp/c;->setReadTimeout(I)V

    .line 142
    invoke-virtual {v9, v2}, Lcom/mgtv/irouting/okhttp/c;->setRequestMethod(Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/mgtv/downloader/util/d;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v1, v3}, Lcom/mgtv/irouting/okhttp/c;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v9}, Lcom/mgtv/irouting/okhttp/c;->getResponseCode()I

    move-result v8
    :try_end_1d
    .catch Ljava/net/ProtocolException; {:try_start_1d .. :try_end_1d} :catch_29
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_28
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_1d .. :try_end_1d} :catch_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_26
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    move-object v10, v7

    move-object v12, v15

    move-object/from16 v11, v20

    move-object/from16 v15, v21

    goto/16 :goto_3

    :catch_26
    move-exception v0

    move-object v1, v0

    move-object v6, v9

    :goto_25
    move-object/from16 v12, v16

    goto/16 :goto_7

    :catch_27
    move-exception v0

    move-object v1, v0

    move-object v6, v9

    :goto_26
    move-object/from16 v12, v16

    goto/16 :goto_b

    :catch_28
    move-exception v0

    move-object v1, v0

    move-object v6, v9

    :goto_27
    move-object/from16 v12, v16

    goto/16 :goto_10

    :catch_29
    move-exception v0

    move-object v1, v0

    move-object v6, v9

    :goto_28
    move-object/from16 v12, v16

    goto/16 :goto_15

    :catch_2a
    move-exception v0

    :goto_29
    move-object v1, v0

    goto :goto_25

    :catch_2b
    move-exception v0

    :goto_2a
    move-object v1, v0

    goto :goto_26

    :catch_2c
    move-exception v0

    :goto_2b
    move-object v1, v0

    goto :goto_27

    :catch_2d
    move-exception v0

    :goto_2c
    move-object v1, v0

    goto :goto_28

    :catch_2e
    move-exception v0

    :goto_2d
    move-object/from16 v7, v19

    goto :goto_29

    :catch_2f
    move-exception v0

    :goto_2e
    move-object/from16 v7, v19

    goto :goto_2a

    :catch_30
    move-exception v0

    :goto_2f
    move-object/from16 v7, v19

    goto :goto_2b

    :catch_31
    move-exception v0

    :goto_30
    move-object/from16 v7, v19

    goto :goto_2c

    :catch_32
    move-exception v0

    move-object/from16 v6, p1

    goto :goto_2d

    :catch_33
    move-exception v0

    move-object/from16 v6, p1

    goto :goto_2e

    :catch_34
    move-exception v0

    move-object/from16 v6, p1

    goto :goto_2f

    :catch_35
    move-exception v0

    move-object/from16 v6, p1

    goto :goto_30

    :catch_36
    move-exception v0

    move-object v7, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object v1, v0

    :goto_31
    move-object v6, v4

    move-object/from16 v12, v16

    goto/16 :goto_35

    :catch_37
    move-exception v0

    move-object v7, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object v1, v0

    :goto_32
    move-object v6, v4

    move-object/from16 v12, v16

    goto/16 :goto_c

    :catch_38
    move-exception v0

    move-object v7, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object v1, v0

    :goto_33
    move-object v6, v4

    move-object/from16 v12, v16

    goto/16 :goto_11

    :catch_39
    move-exception v0

    move-object v7, v10

    move-object/from16 v20, v11

    move-object/from16 v21, v15

    move-object v1, v0

    :goto_34
    move-object v6, v4

    move-object/from16 v12, v16

    goto/16 :goto_16

    :catch_3a
    move-exception v0

    move-object v7, v10

    move-object/from16 v21, v15

    move-object v1, v0

    move-object v11, v3

    goto :goto_31

    :catch_3b
    move-exception v0

    move-object v7, v10

    move-object/from16 v21, v15

    move-object v1, v0

    move-object v11, v3

    goto :goto_32

    :catch_3c
    move-exception v0

    move-object v7, v10

    move-object/from16 v21, v15

    move-object v1, v0

    move-object v11, v3

    goto :goto_33

    :catch_3d
    move-exception v0

    move-object v7, v10

    move-object/from16 v21, v15

    move-object v1, v0

    move-object v11, v3

    goto :goto_34

    :catch_3e
    move-exception v0

    move-object v7, v10

    move-object/from16 v21, v15

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v6, v16

    move-object v12, v6

    goto :goto_35

    :catch_3f
    move-exception v0

    move-object v7, v10

    move-object/from16 v21, v15

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v6, v16

    move-object v12, v6

    goto/16 :goto_c

    :catch_40
    move-exception v0

    move-object v7, v10

    move-object/from16 v21, v15

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v6, v16

    move-object v12, v6

    goto/16 :goto_11

    :catch_41
    move-exception v0

    move-object v7, v10

    move-object/from16 v21, v15

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v6, v16

    move-object v12, v6

    goto/16 :goto_16

    .line 145
    :goto_35
    :try_start_1e
    const-string v4, "22.3000"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v21

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    move-object/from16 v1, p0

    move-object v3, v7

    move/from16 v7, p2

    move/from16 v8, p3

    move-wide/from16 v9, v17

    invoke-direct/range {v1 .. v11}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;IIJLjava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    if-eqz v12, :cond_11

    .line 146
    :goto_36
    :try_start_1f
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_45

    goto/16 :goto_3a

    :catch_42
    move-exception v0

    move-object v7, v10

    move-object v5, v15

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v6, v16

    move-object v12, v6

    .line 147
    :goto_37
    :try_start_20
    const-string v4, "202000"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    move-object/from16 v1, p0

    move-object v3, v7

    move/from16 v7, p2

    move/from16 v8, p3

    move-wide/from16 v9, v17

    invoke-direct/range {v1 .. v11}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;IIJLjava/lang/String;)V

    if-eqz v12, :cond_11

    goto :goto_36

    :catch_43
    move-exception v0

    move-object v7, v10

    move-object v5, v15

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v6, v16

    move-object v12, v6

    .line 148
    :goto_38
    const-string v4, "203000"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    move-object/from16 v1, p0

    move-object v3, v7

    move/from16 v7, p2

    move/from16 v8, p3

    move-wide/from16 v9, v17

    invoke-direct/range {v1 .. v11}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;IIJLjava/lang/String;)V

    if-eqz v12, :cond_11

    goto :goto_36

    :catch_44
    move-exception v0

    move-object v7, v10

    move-object v5, v15

    move-object v1, v0

    move-object v11, v3

    move-object/from16 v6, v16

    move-object v12, v6

    .line 149
    :goto_39
    const-string v4, "22.1000"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, -0x1

    move-object/from16 v1, p0

    move-object v3, v7

    move/from16 v7, p2

    move/from16 v8, p3

    move-wide/from16 v9, v17

    invoke-direct/range {v1 .. v11}, Lcom/mgtv/downloader/a/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/HttpURLConnection;IIJLjava/lang/String;)V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_2

    if-eqz v12, :cond_11

    goto/16 :goto_36

    :catch_45
    :cond_11
    :goto_3a
    return-object v16

    :goto_3b
    if-eqz v16, :cond_12

    .line 150
    :try_start_21
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_46

    .line 151
    :catch_46
    :cond_12
    throw v1
.end method

.method public a(I)V
    .locals 0

    .line 13
    iput p1, p0, Lcom/mgtv/downloader/a/a;->b:I

    return-void
.end method

.method public a(Lcom/mgtv/downloader/a/b;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    return-void
.end method

.method public a(Lcom/mgtv/downloader/net/entity/a;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/mgtv/downloader/net/entity/a;

    invoke-direct {v0, p1}, Lcom/mgtv/downloader/net/entity/a;-><init>(Lcom/mgtv/downloader/net/entity/a;)V

    iput-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/mgtv/downloader/a/a;->d:Ljava/lang/String;

    .line 12
    invoke-direct {p0, p1}, Lcom/mgtv/downloader/a/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public b()Lcom/mgtv/downloader/net/entity/a;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    return-object p0
.end method

.method public b(I)V
    .locals 0

    .line 7
    iput p1, p0, Lcom/mgtv/downloader/a/a;->c:I

    return-void
.end method

.method public b(Lcom/mgtv/downloader/a/b;)V
    .locals 4

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", delete offline cache start, videoID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 25
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->m:Lcom/mgtv/downloader/a/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->m:Lcom/mgtv/downloader/a/a$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", deleteOfflineCache exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 28
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/mgtv/downloader/a/a$2;

    invoke-direct {v2, p0, p1}, Lcom/mgtv/downloader/a/a$2;-><init>(Lcom/mgtv/downloader/a/a;Lcom/mgtv/downloader/a/b;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    const-string p1, "DownloadSDK"

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Task is already deleted offline, videoID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->m:Lcom/mgtv/downloader/a/a$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/a/a$a;->a(Z)V

    .line 10
    :cond_0
    new-instance v0, Lcom/mgtv/downloader/a/a$a;

    invoke-direct {v0, p0, p1}, Lcom/mgtv/downloader/a/a$a;-><init>(Lcom/mgtv/downloader/a/a;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mgtv/downloader/a/a;->m:Lcom/mgtv/downloader/a/a$a;

    .line 11
    const-string p1, "DownloadSDK"

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 12
    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->m:Lcom/mgtv/downloader/a/a$a;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public c()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/mgtv/downloader/a/a;->b:I

    return p0
.end method

.method public c(I)V
    .locals 13

    const/16 v0, 0xa

    const/16 v1, 0x8

    const/4 v2, 0x7

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x4

    .line 15
    const-string v8, ""

    const/4 v9, 0x1

    if-ne v9, p1, :cond_0

    .line 16
    const-string v10, "DOWNLOADING"

    goto :goto_0

    :cond_0
    if-ne v6, p1, :cond_1

    .line 17
    const-string v10, "BLOCK"

    goto :goto_0

    :cond_1
    const/16 v10, 0xb

    if-ne v10, p1, :cond_2

    .line 18
    const-string v10, "BLOCK_RESTART"

    goto :goto_0

    :cond_2
    if-ne v5, p1, :cond_3

    .line 19
    const-string v10, "PAUSE"

    goto :goto_0

    :cond_3
    if-ne v7, p1, :cond_4

    .line 20
    const-string v10, "COMPLETE"

    goto :goto_0

    :cond_4
    if-ne v4, p1, :cond_5

    .line 21
    const-string v10, "FAILED"

    goto :goto_0

    :cond_5
    if-ne v3, p1, :cond_6

    .line 22
    const-string v10, "FAILED_NO_NET"

    goto :goto_0

    :cond_6
    if-ne v2, p1, :cond_7

    .line 23
    const-string v10, "DELETE"

    goto :goto_0

    :cond_7
    if-ne v1, p1, :cond_8

    .line 24
    const-string v10, "FILESYS_ERR"

    goto :goto_0

    :cond_8
    if-ne v0, p1, :cond_9

    .line 25
    const-string v10, "MD5_CHECK_FAILED"

    goto :goto_0

    :cond_9
    move-object v10, v8

    .line 26
    :goto_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "taskID: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", update to status: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 27
    iget-object v10, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 28
    iget-object v10, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    if-eqz v10, :cond_10

    if-ne v7, p1, :cond_a

    .line 29
    iget p1, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v10, p1, p0}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;)V

    goto :goto_2

    :cond_a
    if-ne v4, p1, :cond_b

    .line 30
    iget p1, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v10, p1, v0}, Lcom/mgtv/downloader/a/b;->b(ILcom/mgtv/downloader/net/entity/a;)V

    .line 31
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    iget v0, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {p1, v0, p0, v2, v8}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    goto :goto_2

    :cond_b
    if-ne v3, p1, :cond_c

    .line 32
    iget p1, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v10, p1, v0}, Lcom/mgtv/downloader/a/b;->b(ILcom/mgtv/downloader/net/entity/a;)V

    .line 33
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    iget v0, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-string v1, "2"

    invoke-interface {p1, v0, p0, v1}, Lcom/mgtv/downloader/a/b;->b(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    if-eq v9, p1, :cond_f

    if-eq v6, p1, :cond_f

    if-ne v5, p1, :cond_d

    goto :goto_1

    :cond_d
    if-ne v1, p1, :cond_e

    .line 34
    iget p1, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v10, p1, v0}, Lcom/mgtv/downloader/a/b;->b(ILcom/mgtv/downloader/net/entity/a;)V

    .line 35
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    iget v0, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {p1, v0, p0, v7, v8}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    goto :goto_2

    :cond_e
    if-ne v0, p1, :cond_10

    .line 36
    iget p1, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v10, p1, v0}, Lcom/mgtv/downloader/a/b;->b(ILcom/mgtv/downloader/net/entity/a;)V

    .line 37
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    iget v0, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const v1, 0x499c0

    invoke-interface {p1, v0, p0, v1, v8}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;ILjava/lang/String;)V

    goto :goto_2

    .line 38
    :cond_f
    :goto_1
    iget p1, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {v10, p1, v0}, Lcom/mgtv/downloader/a/b;->b(ILcom/mgtv/downloader/net/entity/a;)V

    .line 39
    iget-object p1, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    iget v0, p0, Lcom/mgtv/downloader/a/a;->b:I

    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-interface {p1, v0, p0, v8}, Lcom/mgtv/downloader/a/b;->a(ILcom/mgtv/downloader/net/entity/a;Ljava/lang/String;)V

    :cond_10
    :goto_2
    return-void
.end method

.method public d()I
    .locals 0

    .line 3
    iget p0, p0, Lcom/mgtv/downloader/a/a;->c:I

    return p0
.end method

.method public e()I
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/downloader/a/a;->e()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->c()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 4
    :cond_1
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v0

    iget p0, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v0, p0}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getOfflineM3U8Path(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public g()V
    .locals 4

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "taskID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", delete task start, videoID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v2}, Lcom/mgtv/downloader/net/entity/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgtv/downloader/net/entity/a;->a(Ljava/lang/Integer;)V

    .line 4
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->m:Lcom/mgtv/downloader/a/a$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->m:Lcom/mgtv/downloader/a/a$a;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", delete exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    .line 7
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    .line 8
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v0

    iget v2, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v0, v2}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->stopTask(I)I

    .line 9
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    invoke-virtual {p0, v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/b;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->v:Lcom/mgtv/downloader/a/b;

    invoke-virtual {p0, v0}, Lcom/mgtv/downloader/a/a;->b(Lcom/mgtv/downloader/a/b;)V

    .line 11
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", delete task end "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mgtv/downloader/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 4
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v0

    iget v1, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->pauseTask(I)I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/net/entity/a;->q(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p0, v0}, Lcom/mgtv/downloader/a/a;->c(I)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {v0}, Lcom/mgtv/downloader/net/entity/a;->n()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    .line 4
    invoke-static {}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->getInstance()Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;

    move-result-object v0

    iget v1, p0, Lcom/mgtv/downloader/a/a;->b:I

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/p2p/mg/DownloadHlsManager;->pauseTask(I)I

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/net/entity/a;->q(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0}, Lcom/mgtv/downloader/a/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/mgtv/downloader/a/a;->p()V

    :cond_1
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p0, v0}, Lcom/mgtv/downloader/a/a;->c(I)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/net/entity/a;->q(Ljava/lang/String;)V

    const/4 v0, 0x5

    .line 3
    invoke-virtual {p0, v0}, Lcom/mgtv/downloader/a/a;->c(I)V

    return-void
.end method

.method public k()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/net/entity/a;->q(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgtv/downloader/net/entity/a;->c(Ljava/lang/Long;)V

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0, v0}, Lcom/mgtv/downloader/a/a;->c(I)V

    return-void
.end method

.method public l()Z
    .locals 1

    .line 2
    iget-object p0, p0, Lcom/mgtv/downloader/a/a;->a:Lcom/mgtv/downloader/net/entity/a;

    invoke-virtual {p0}, Lcom/mgtv/downloader/net/entity/a;->f()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
