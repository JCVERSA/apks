.class public Lcom/mgmi/trace/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/trace/a$a;
    }
.end annotation


# instance fields
.field private volatile a:J

.field private volatile b:J

.field private volatile c:J

.field private volatile d:J

.field private volatile e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mgmi/trace/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mgmi/trace/a$a;->a()Lcom/mgmi/trace/a;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/mgmi/net/bean/BootAdBean;)Z
    .locals 6

    .line 5
    const-string v0, "checkData"

    const-string v1, "lyzzzzzz"

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-wide v2, p0, Lcom/mgmi/trace/a;->d:J

    iget-wide v4, p0, Lcom/mgmi/trace/a;->c:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-ltz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object p0, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    if-eqz p0, :cond_0

    iget-wide v2, p0, Lcom/mgmi/net/bean/a;->b:J

    cmp-long p0, v2, v4

    if-lez p0, :cond_0

    .line 7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkData:truebootAdBean:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/a;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    .line 8
    :cond_0
    const-string p0, "checkData:false"

    invoke-static {v1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "lyzzzzzz"

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mgmi/trace/a;->a:J

    iput-wide v0, p0, Lcom/mgmi/trace/a;->b:J

    iput-wide v0, p0, Lcom/mgmi/trace/a;->c:J

    iput-wide v0, p0, Lcom/mgmi/trace/a;->d:J

    const-string v0, ""

    iput-object v0, p0, Lcom/mgmi/trace/a;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/mgmi/trace/a;->a:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/mgmi/trace/a;->c:J

    .line 4
    const-string p0, "lyzzzzzz"

    const-string p1, "startApplicationInitialize"

    invoke-static {p0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized a(Lcom/mgmi/net/bean/BootAdBean;)V
    .locals 2

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/mgmi/trace/a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/trace/a;->e:Ljava/lang/String;

    iget-object v1, p1, Lcom/mgmi/net/bean/BootAdBean;->uniqueId:Ljava/lang/String;

    .line 9
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    iget-object p1, p1, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    invoke-virtual {p1}, Lcom/mgmi/net/bean/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/mgmi/net/bean/BootAdBean;Z)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 12
    :try_start_0
    const-string v2, "lyzzzzzz"

    const-string v3, "report"

    invoke-static {v2, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_15

    .line 13
    iget-object v2, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    if-nez v2, :cond_0

    goto/16 :goto_d

    .line 14
    :cond_0
    iget-object v2, v1, Lcom/mgmi/trace/a;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v0, Lcom/mgmi/net/bean/BootAdBean;->uniqueId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    iget-object v2, v1, Lcom/mgmi/trace/a;->e:Ljava/lang/String;

    iget-object v3, v0, Lcom/mgmi/net/bean/BootAdBean;->uniqueId:Ljava/lang/String;

    .line 15
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_c

    .line 16
    :cond_1
    iget-object v2, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    iget-boolean v2, v2, Lcom/mgmi/net/bean/a;->i:Z

    if-eqz v2, :cond_2

    .line 17
    const-string v0, "lyzzzzzz"

    const-string v2, "\u91cd\u590d\u4e0a\u62a5"

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/mgmi/trace/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_e

    .line 20
    :cond_2
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lcom/mgmi/trace/a;->a(Lcom/mgmi/net/bean/BootAdBean;)V

    .line 21
    iget-object v2, v0, Lcom/mgmi/net/bean/BootAdBean;->trace:Ljava/lang/String;

    .line 22
    iget-object v3, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    iget-object v3, v3, Lcom/mgmi/net/bean/a;->f:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    iget-object v3, v3, Lcom/mgmi/net/bean/a;->f:Ljava/lang/String;

    const-string v6, "sdk://"

    .line 23
    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    .line 24
    iget-object v6, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    iget-wide v6, v6, Lcom/mgmi/net/bean/a;->c:J

    goto :goto_1

    :cond_4
    iget-object v6, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    .line 25
    invoke-virtual {v6}, Lcom/mgmi/net/bean/a;->e()J

    move-result-wide v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-gez v10, :cond_5

    .line 26
    monitor-exit p0

    return-void

    .line 27
    :cond_5
    :try_start_2
    iget-boolean v10, v0, Lcom/mgmi/net/bean/BootAdBean;->isWarmBoot:Z

    .line 28
    iget-object v11, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    invoke-virtual {v11}, Lcom/mgmi/net/bean/a;->a()J

    move-result-wide v11

    .line 29
    iget-object v13, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    invoke-virtual {v13}, Lcom/mgmi/net/bean/a;->c()J

    move-result-wide v13

    sub-long/2addr v13, v11

    move-wide/from16 v16, v6

    if-nez v10, :cond_6

    move-wide v5, v13

    goto :goto_2

    :cond_6
    move-wide/from16 v5, v16

    .line 30
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_13

    invoke-direct/range {p0 .. p1}, Lcom/mgmi/trace/a;->b(Lcom/mgmi/net/bean/BootAdBean;)Z

    move-result v7

    if-eqz v7, :cond_13

    cmp-long v7, v5, v8

    if-lez v7, :cond_13

    cmp-long v18, v11, v8

    if-lez v18, :cond_13

    .line 31
    const-string v15, "[EV_KEY]"

    const-string v4, "chain_cost_v2"

    invoke-virtual {v2, v15, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 32
    const-string v4, "[EV_V1]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 33
    const-string v4, "lyzzzzzz"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[EV_V1]\u5f00\u673a\u6d41\u7a0b\u603b\u8017\u65f6\uff08\u6beb\u79d2\uff09\u89e3\u91ca\uff1a\u4ece\u5e7f\u544a\u8bf7\u6c42\u5f00\u59cb\uff0c\u5230\u5e7f\u544a\u9996\u5e27\u5c55\u793a:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string v4, "lyzzzzzz"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\uff08\u6beb\u79d2\uff09endTime - startReqAdTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_7

    const-wide/16 v8, 0x0

    goto :goto_3

    .line 35
    :cond_7
    iget-object v4, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    iget-wide v8, v4, Lcom/mgmi/net/bean/a;->b:J

    .line 36
    :goto_3
    const-string v4, "[EV_V2]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 37
    const-string v4, "lyzzzzzz"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[EV_V2]\u8292\u679c\u5e7f\u544a\u63a5\u53e3\u8bf7\u6c42\u8017\u65f6\uff08\u6beb\u79d2\uff09:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ""

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_8

    .line 38
    iget-object v4, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    iget-object v4, v4, Lcom/mgmi/net/bean/a;->f:Ljava/lang/String;

    goto :goto_4

    :cond_8
    const-string v4, ""

    .line 39
    :goto_4
    const-string v10, "[EV_V5]"

    invoke-virtual {v2, v10, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 40
    const-string v10, "lyzzzzzz"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[EV_V5]\u7b2c\u4e09\u65b9SDK\u8bf7\u6c42\u6570\u636e:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_9

    const-wide/16 v13, 0x0

    goto :goto_5

    .line 41
    :cond_9
    iget-object v4, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    iget-wide v13, v4, Lcom/mgmi/net/bean/a;->c:J

    .line 42
    :goto_5
    const-string v4, "[EV_V3]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v4, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 43
    const-string v4, "lyzzzzzz"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[EV_V3]\u7b2c\u4e09\u65b9SDK\u8bf7\u6c42\u8017\u65f6\uff08\u6beb\u79d2\uff09\u65e0C2S\u5e7f\u544a\u4e0a\u62a50:"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_b

    if-nez p2, :cond_a

    goto :goto_6

    :cond_a
    move-wide/from16 v3, v16

    goto :goto_7

    :cond_b
    :goto_6
    const-wide/16 v3, 0x0

    .line 44
    :goto_7
    const-string v10, "[EV_V4]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-wide/from16 v16, v5

    const-string v5, ""

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v10, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 45
    const-string v5, "lyzzzzzz"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[EV_V4]\u7d20\u6750\u52a0\u8f7d\u8017\u65f6\uff08\u6beb\u79d2\uff09\u65e0\u5f00\u673a&\u8d85\u7ea7\u79c0\u5e7f\u544a\u4e0a\u62a5-1 C2S\u5e7f\u544a\u4e0a\u62a50:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-wide v5, v1, Lcom/mgmi/trace/a;->a:J

    const-wide/16 v19, 0x0

    cmp-long v5, v5, v19

    if-lez v5, :cond_c

    .line 47
    iget-wide v5, v1, Lcom/mgmi/trace/a;->a:J

    add-long/2addr v5, v11

    iget-wide v10, v1, Lcom/mgmi/trace/a;->c:J

    sub-long/2addr v5, v10

    goto :goto_8

    .line 48
    :cond_c
    iget-wide v5, v1, Lcom/mgmi/trace/a;->b:J

    .line 49
    :goto_8
    const-string v10, "[EV_V6]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 50
    const-string v10, "lyzzzzzz"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[EV_V6]APP\u542f\u52a8\u5230\u5f00\u673a\u5e7f\u544a\u8bf7\u6c42\u5f00\u59cb\u4e4b\u524d\u7684\u65f6\u95f4\u95f4\u9694\uff08\u6beb\u79d2\uff09:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-wide v10, v1, Lcom/mgmi/trace/a;->d:J

    move-wide/from16 v21, v5

    iget-wide v5, v1, Lcom/mgmi/trace/a;->c:J

    sub-long/2addr v10, v5

    .line 52
    const-string v5, "[EV_V7]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 53
    const-string v5, "lyzzzzzz"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[EV_V7]\u521d\u59cb\u5316\u51fd\u6570\u8017\u65f6\uff08\u6beb\u79d2\uff09:"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ""

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v5, "online"

    iget-object v6, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    iget-object v6, v6, Lcom/mgmi/net/bean/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_d

    .line 55
    new-instance v5, Lcom/mgmi/trace/ExtraJson;

    invoke-direct {v5}, Lcom/mgmi/trace/ExtraJson;-><init>()V

    const/4 v12, 0x0

    .line 56
    invoke-virtual {v5, v12}, Lcom/mgmi/trace/ExtraJson;->setIs_cache(I)V

    goto :goto_9

    .line 57
    :cond_d
    const-string v5, "local"

    iget-object v12, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    iget-object v12, v12, Lcom/mgmi/net/bean/a;->g:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 58
    new-instance v5, Lcom/mgmi/trace/ExtraJson;

    invoke-direct {v5}, Lcom/mgmi/trace/ExtraJson;-><init>()V

    const/4 v12, 0x1

    .line 59
    invoke-virtual {v5, v12}, Lcom/mgmi/trace/ExtraJson;->setIs_cache(I)V

    goto :goto_9

    :cond_e
    move-object v5, v6

    :goto_9
    if-eqz v5, :cond_f

    .line 60
    invoke-static {v5, v6}, Lcom/mgadplus/netlib/json/b;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v5

    .line 61
    const-string v6, "[EV_V8]"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_f
    if-ltz v7, :cond_12

    const-wide/16 v5, 0x0

    cmp-long v7, v8, v5

    if-ltz v7, :cond_12

    cmp-long v7, v13, v5

    if-ltz v7, :cond_12

    cmp-long v7, v3, v5

    if-ltz v7, :cond_12

    cmp-long v7, v21, v5

    if-ltz v7, :cond_12

    cmp-long v5, v10, v5

    if-gez v5, :cond_10

    goto :goto_a

    :cond_10
    add-long/2addr v8, v3

    cmp-long v3, v16, v8

    if-gez v3, :cond_11

    .line 62
    const-string v0, "lyzzzzzz"

    const-string v2, "\u6570\u636e\u6709\u8bef1"

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/mgmi/trace/a;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 65
    :cond_11
    :try_start_3
    const-string v3, "lyzzzzzz"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bootAdBean:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    invoke-virtual {v5}, Lcom/mgmi/net/bean/a;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v3, "lyzzzzzz"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "url:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/mgmi/net/b;->a()Lcom/mgmi/net/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mgmi/net/b;->b()Lcom/mgmi/e/a/d;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mgmi/e/a/d;->a(Ljava/lang/String;)V

    .line 68
    iget-object v0, v0, Lcom/mgmi/net/bean/BootAdBean;->reportCreativeTrackInfo:Lcom/mgmi/net/bean/a;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/mgmi/net/bean/a;->i:Z

    goto :goto_b

    .line 69
    :cond_12
    :goto_a
    const-string v0, "lyzzzzzz"

    const-string v2, "\u6570\u636e\u6709\u8bef"

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/mgmi/trace/a;->d()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 72
    :cond_13
    :goto_b
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/mgmi/trace/a;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 74
    :cond_14
    :goto_c
    :try_start_5
    const-string v0, "lyzzzzzz"

    const-string v2, "\u6b64\u6b21\u6570\u636e\u552f\u4e00id\u4e0d\u4e00\u6837\u89c6\u4e3a\u9519\u8bef\u6570\u636e"

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/mgmi/trace/a;->d()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    .line 77
    :cond_15
    :goto_d
    :try_start_6
    const-string v0, "lyzzzzzz"

    const-string v2, "\u975e\u6cd5\u6570\u636e"

    invoke-static {v0, v2}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/mgmi/trace/a;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    :goto_e
    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 5
    :try_start_0
    iput-object p1, p0, Lcom/mgmi/trace/a;->e:Ljava/lang/String;

    .line 6
    const-string p1, "lyzzzzzz"

    const-string v0, "requestAd"

    invoke-static {p1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mgmi/trace/a;->d:J

    .line 2
    const-string p0, "lyzzzzzz"

    const-string v0, "endInitialize"

    invoke-static {p0, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized b(J)V
    .locals 4

    monitor-enter p0

    .line 3
    :try_start_0
    const-string v0, "lyzzzzzz"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recordSelfLogic\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "lyzzzzzz"

    const-string v1, "endRequestAd"

    invoke-static {v0, v1}, Lcom/mgadplus/mgutil/SourceKitLogger;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/mgmi/trace/a;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
