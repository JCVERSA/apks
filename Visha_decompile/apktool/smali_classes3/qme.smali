.class public Lqme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leme;


# instance fields
.field public final a:Lpme;

.field public final b:Lcom/google/android/gms/internal/ads/d;


# direct methods
.method public constructor <init>(Lpme;)V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/d;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/d;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqme;->a:Lpme;

    iput-object v0, p0, Lqme;->b:Lcom/google/android/gms/internal/ads/d;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/c;)Lfme;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "Error occurred when closing InputStream"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/c;->zzd()Lxle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_f

    :cond_0
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v8, v0, Lxle;->b:Ljava/lang/String;

    if-eqz v8, :cond_1

    const-string v9, "If-None-Match"

    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-wide v8, v0, Lxle;->d:J

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_2

    const-string v0, "If-Modified-Since"

    invoke-static {v8, v9}, Lane;->c(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v0, v7

    :goto_1
    iget-object v7, v1, Lqme;->a:Lpme;

    invoke-virtual {v7, v2, v0}, Lpme;->a(Lcom/google/android/gms/internal/ads/c;Ljava/util/Map;)Lbne;

    move-result-object v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v7}, Lbne;->b()I

    move-result v9

    invoke-virtual {v7}, Lbne;->d()Ljava/util/List;

    move-result-object v0

    const/16 v8, 0x130

    if-ne v9, v8, :cond_9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v14, v8, v4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/c;->zzd()Lxle;

    move-result-object v8

    if-nez v8, :cond_3

    new-instance v8, Lfme;

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/16 v11, 0x130

    move-object v10, v8

    move-object/from16 v16, v0

    invoke-direct/range {v10 .. v16}, Lfme;-><init>(I[BZJLjava/util/List;)V

    goto/16 :goto_5

    :catch_1
    move-exception v0

    goto/16 :goto_e

    :cond_3
    new-instance v9, Ljava/util/TreeSet;

    sget-object v10, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v9, v10}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ldme;

    invoke-virtual {v11}, Ldme;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v0, v8, Lxle;->h:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lxle;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldme;

    invoke-virtual {v10}, Ldme;->a()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-interface {v13, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    iget-object v0, v8, Lxle;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v8, Lxle;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    new-instance v11, Ldme;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v11, v12, v10}, Ldme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    new-instance v0, Lfme;

    iget-object v12, v8, Lxle;->a:[B

    const/4 v8, 0x1

    const/16 v11, 0x130

    move-object v10, v0

    move-object v9, v13

    move v13, v8

    move-object/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lfme;-><init>(I[BZJLjava/util/List;)V

    move-object v8, v0

    :goto_5
    return-object v8

    :cond_9
    invoke-virtual {v7}, Lbne;->c()Ljava/io/InputStream;

    move-result-object v8

    const/4 v10, 0x0

    if-eqz v8, :cond_b

    invoke-virtual {v7}, Lbne;->a()I

    move-result v11

    iget-object v12, v1, Lqme;->b:Lcom/google/android/gms/internal/ads/d;

    new-instance v13, Lhne;

    invoke-direct {v13, v12, v11}, Lhne;-><init>(Lcom/google/android/gms/internal/ads/d;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v11, 0x400

    :try_start_2
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/d;->b(I)[B

    move-result-object v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_6
    :try_start_3
    invoke-virtual {v8, v11}, Ljava/io/InputStream;->read([B)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_a

    invoke-virtual {v13, v11, v10, v14}, Lhne;->write([BII)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_9

    :cond_a
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    :try_start_5
    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v3, v8}, Lnme;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/d;->a([B)V

    invoke-virtual {v13}, Lhne;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :goto_8
    move-object v15, v14

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v11, v6

    :goto_9
    :try_start_6
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_a

    :catch_3
    :try_start_7
    new-array v8, v10, [Ljava/lang/Object;

    invoke-static {v3, v8}, Lnme;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_a
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/d;->a([B)V

    invoke-virtual {v13}, Lhne;->close()V

    throw v0

    :cond_b
    new-array v14, v10, [B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_8

    :goto_b
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v4

    sget-boolean v8, Lnme;->b:Z

    if-nez v8, :cond_c

    const-wide/16 v12, 0xbb8

    cmp-long v8, v10, v12

    if-lez v8, :cond_e

    :cond_c
    const-string v8, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    if-eqz v15, :cond_d

    array-length v11, v15

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_c

    :catch_4
    move-exception v0

    goto :goto_d

    :cond_d
    const-string v11, "null"

    :goto_c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/c;->zzy()Lzle;

    move-result-object v13

    invoke-virtual {v13}, Lzle;->a()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v2, v10, v11, v12, v13}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v10}, Lnme;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    const/16 v8, 0xc8

    if-lt v9, v8, :cond_f

    const/16 v8, 0x12b

    if-gt v9, v8, :cond_f

    new-instance v16, Lfme;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v12, v10, v4

    const/4 v11, 0x0

    move-object/from16 v8, v16

    move-object v10, v15

    move-object v14, v0

    invoke-direct/range {v8 .. v14}, Lfme;-><init>(I[BZJLjava/util/List;)V

    return-object v16

    :cond_f
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :goto_d
    move-object v10, v15

    goto :goto_10

    :goto_e
    move-object v10, v6

    goto :goto_10

    :goto_f
    move-object v7, v6

    move-object v10, v7

    :goto_10
    instance-of v8, v0, Ljava/net/SocketTimeoutException;

    if-eqz v8, :cond_10

    new-instance v0, Lfne;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzapr;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzapr;-><init>()V

    const-string v8, "socket"

    invoke-direct {v0, v8, v7, v6}, Lfne;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaps;Lgne;)V

    :goto_11
    move-object v6, v0

    goto :goto_13

    :cond_10
    instance-of v8, v0, Ljava/net/MalformedURLException;

    if-nez v8, :cond_16

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Lbne;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/c;->zzk()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Unexpected response code %d for %s"

    invoke-static {v9, v8}, Lnme;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v10, :cond_14

    invoke-virtual {v7}, Lbne;->d()Ljava/util/List;

    move-result-object v14

    new-instance v7, Lfme;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v12, v8, v4

    const/4 v11, 0x0

    move-object v8, v7

    move v9, v0

    invoke-direct/range {v8 .. v14}, Lfme;-><init>(I[BZJLjava/util/List;)V

    const/16 v8, 0x191

    if-eq v0, v8, :cond_13

    const/16 v8, 0x193

    if-ne v0, v8, :cond_11

    goto :goto_12

    :cond_11
    const/16 v1, 0x190

    if-lt v0, v1, :cond_12

    const/16 v1, 0x1f3

    if-gt v0, v1, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaow;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzaow;-><init>(Lfme;)V

    throw v0

    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapq;

    invoke-direct {v0, v7}, Lcom/google/android/gms/internal/ads/zzapq;-><init>(Lfme;)V

    throw v0

    :cond_13
    :goto_12
    new-instance v0, Lfne;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaor;

    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzaor;-><init>(Lfme;)V

    const-string v7, "auth"

    invoke-direct {v0, v7, v8, v6}, Lfne;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaps;Lgne;)V

    goto :goto_11

    :cond_14
    new-instance v0, Lfne;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzape;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzape;-><init>()V

    const-string v8, "network"

    invoke-direct {v0, v8, v7, v6}, Lfne;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaps;Lgne;)V

    goto :goto_11

    :goto_13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/c;->zzy()Lzle;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/c;->zzb()I

    move-result v7

    :try_start_9
    invoke-static {v6}, Lfne;->a(Lfne;)Lcom/google/android/gms/internal/ads/zzaps;

    move-result-object v8

    invoke-virtual {v0, v8}, Lzle;->c(Lcom/google/android/gms/internal/ads/zzaps;)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzaps; {:try_start_9 .. :try_end_9} :catch_5

    invoke-static {v6}, Lfne;->b(Lfne;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/Object;

    move-result-object v0

    const-string v6, "%s-retry [timeout=%s]"

    invoke-static {v6, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/c;->zzm(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_5
    move-exception v0

    invoke-static {v6}, Lfne;->b(Lfne;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%s-timeout-giveup [timeout=%s]"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/c;->zzm(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v1, Lcom/google/android/gms/internal/ads/zzapg;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzapg;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_16
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/c;->zzk()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Bad URL "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
