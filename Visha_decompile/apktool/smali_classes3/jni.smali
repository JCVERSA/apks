.class public final Ljni;
.super Lp4i;
.source "SourceFile"

# interfaces
.implements Llti;


# instance fields
.field public final e:Z

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Lssi;

.field public final j:Lssi;

.field public k:Lcfi;

.field public l:Ljava/net/HttpURLConnection;

.field public m:Ljava/io/InputStream;

.field public n:Z

.field public o:I

.field public p:J

.field public q:J


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IIZZLssi;Lw2i;ZLnmi;)V
    .locals 0

    const/4 p5, 0x1

    invoke-direct {p0, p5}, Lp4i;-><init>(Z)V

    iput-object p1, p0, Ljni;->h:Ljava/lang/String;

    iput p2, p0, Ljni;->f:I

    iput p3, p0, Ljni;->g:I

    iput-boolean p4, p0, Ljni;->e:Z

    iput-object p6, p0, Ljni;->i:Lssi;

    new-instance p1, Lssi;

    invoke-direct {p1}, Lssi;-><init>()V

    iput-object p1, p0, Ljni;->j:Lssi;

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p0, 0x0

    goto :goto_2

    :cond_0
    :try_start_0
    iget-wide v0, p0, Ljni;->p:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, -0x1

    if-eqz v2, :cond_2

    iget-wide v4, p0, Ljni;->q:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-nez v2, :cond_1

    :goto_0
    move p0, v3

    goto :goto_2

    :cond_1
    int-to-long v4, p3

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    iget-object v0, p0, Ljni;->m:Ljava/io/InputStream;

    sget v1, Lkfh;->a:I

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-wide p2, p0, Ljni;->q:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ljni;->q:J

    invoke-virtual {p0, p1}, Lp4i;->zzg(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move p0, p1

    :goto_2
    return p0

    :goto_3
    iget-object p0, p0, Ljni;->k:Lcfi;

    sget p2, Lkfh;->a:I

    const/4 p2, 0x2

    invoke-static {p1, p0, p2}, Lcom/google/android/gms/internal/ads/zzgv;->zza(Ljava/io/IOException;Lcfi;I)Lcom/google/android/gms/internal/ads/zzgv;

    move-result-object p0

    throw p0
.end method

.method public final j(Lcfi;)J
    .locals 26

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const/4 v14, 0x1

    iput-object v13, v12, Ljni;->k:Lcfi;

    const-wide/16 v10, 0x0

    iput-wide v10, v12, Ljni;->q:J

    iput-wide v10, v12, Ljni;->p:J

    invoke-virtual/range {p0 .. p1}, Lp4i;->l(Lcfi;)V

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v0, v13, Lcfi;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-wide v7, v13, Lcfi;->e:J

    iget-wide v5, v13, Lcfi;->f:J

    invoke-virtual {v13, v14}, Lcfi;->b(I)Z

    move-result v0

    iget-boolean v1, v12, Ljni;->e:Z

    const/4 v15, 0x0

    if-nez v1, :cond_0

    iget-object v9, v13, Lcfi;->d:Ljava/util/Map;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v16, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v17, v5

    move-wide v5, v7

    move-wide/from16 v7, v17

    move-object/from16 v17, v9

    move v9, v0

    move-wide/from16 v19, v10

    move/from16 v10, v16

    move-object/from16 v11, v17

    invoke-virtual/range {v1 .. v11}, Ljni;->n(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_d

    :cond_0
    move-wide/from16 v17, v5

    move-wide/from16 v19, v10

    move-object v11, v2

    move v1, v15

    :goto_0
    add-int/lit8 v10, v1, 0x1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_15

    iget-object v9, v13, Lcfi;->d:Ljava/util/Map;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-wide v5, v7

    move-wide/from16 v21, v7

    move-wide/from16 v7, v17

    move-object/from16 v23, v9

    move v9, v0

    move/from16 v24, v10

    move/from16 v10, v16

    move-object/from16 v25, v11

    move-object/from16 v11, v23

    invoke-virtual/range {v1 .. v11}, Ljni;->n(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const-string v3, "Location"

    invoke-virtual {v1, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x12c

    if-eq v2, v4, :cond_14

    const/16 v4, 0x12d

    if-eq v2, v4, :cond_14

    const/16 v4, 0x12e

    if-eq v2, v4, :cond_14

    const/16 v4, 0x12f

    if-eq v2, v4, :cond_14

    const/16 v4, 0x133

    if-eq v2, v4, :cond_14

    const/16 v4, 0x134

    if-ne v2, v4, :cond_1

    goto/16 :goto_c

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, v12, Ljni;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    iput v1, v12, Ljni;->o:I

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget v1, v12, Ljni;->o:I

    const/16 v2, 0x7d8

    const-string v4, "Content-Range"

    const/16 v5, 0xc8

    const-wide/16 v6, -0x1

    if-lt v1, v5, :cond_e

    const/16 v8, 0x12b

    if-le v1, v8, :cond_2

    goto/16 :goto_8

    :cond_2
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    iget v1, v12, Ljni;->o:I

    if-ne v1, v5, :cond_3

    iget-wide v10, v13, Lcfi;->e:J

    cmp-long v1, v10, v19

    if-nez v1, :cond_4

    :cond_3
    move-wide/from16 v10, v19

    :cond_4
    const-string v1, "Content-Encoding"

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "gzip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-wide v8, v13, Lcfi;->f:J

    cmp-long v3, v8, v6

    if-eqz v3, :cond_5

    iput-wide v8, v12, Ljni;->p:J

    goto :goto_2

    :cond_5
    const-string v3, "Content-Length"

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lmui;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-eqz v5, :cond_6

    sub-long v6, v3, v10

    :cond_6
    iput-wide v6, v12, Ljni;->p:J

    goto :goto_2

    :cond_7
    iget-wide v3, v13, Lcfi;->f:J

    iput-wide v3, v12, Ljni;->p:J

    :goto_2
    const/16 v3, 0x7d0

    :try_start_1
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v12, Ljni;->m:Ljava/io/InputStream;

    if-eqz v1, :cond_8

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, v12, Ljni;->m:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, v12, Ljni;->m:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_3
    iput-boolean v14, v12, Ljni;->n:Z

    invoke-virtual/range {p0 .. p1}, Lp4i;->m(Lcfi;)V

    cmp-long v0, v10, v19

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    const/16 v0, 0x1000

    :try_start_2
    new-array v0, v0, [B

    :goto_4
    cmp-long v1, v10, v19

    if-lez v1, :cond_c

    const-wide/16 v4, 0x1000

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v1, v4

    iget-object v4, v12, Ljni;->m:Ljava/io/InputStream;

    sget v5, Lkfh;->a:I

    invoke-virtual {v4, v0, v15, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, -0x1

    if-eq v1, v4, :cond_a

    int-to-long v4, v1

    sub-long/2addr v10, v4

    invoke-virtual {v12, v1}, Lp4i;->zzg(I)V

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_6

    :cond_a
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v0, v13, v2, v14}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Lcfi;II)V

    throw v0

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgv;

    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-direct {v0, v1, v13, v3, v14}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/io/IOException;Lcfi;II)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_c
    :goto_5
    iget-wide v0, v12, Ljni;->p:J

    return-wide v0

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ljni;->p()V

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzgv;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgv;

    throw v0

    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v1, v0, v13, v3, v14}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/io/IOException;Lcfi;II)V

    throw v1

    :goto_7
    invoke-virtual/range {p0 .. p0}, Ljni;->p()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {v1, v0, v13, v3, v14}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/io/IOException;Lcfi;II)V

    throw v1

    :cond_e
    :goto_8
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    iget v1, v12, Ljni;->o:I

    const/16 v8, 0x1a0

    if-ne v1, v8, :cond_10

    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmui;->b(Ljava/lang/String;)J

    move-result-wide v9

    move-object v4, v3

    iget-wide v2, v13, Lcfi;->e:J

    cmp-long v2, v2, v9

    if-nez v2, :cond_11

    iput-boolean v14, v12, Ljni;->n:Z

    invoke-virtual/range {p0 .. p1}, Lp4i;->m(Lcfi;)V

    iget-wide v0, v13, Lcfi;->f:J

    cmp-long v2, v0, v6

    if-eqz v2, :cond_f

    return-wide v0

    :cond_f
    return-wide v19

    :cond_10
    move-object v4, v3

    :cond_11
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_12

    :try_start_3
    invoke-static {v0}, Lg6i;->b(Ljava/io/InputStream;)[B

    move-result-object v0

    :goto_9
    move-object v7, v0

    goto :goto_a

    :cond_12
    sget-object v0, Lkfh;->c:[B
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_9

    :catch_3
    sget-object v0, Lkfh;->c:[B

    goto :goto_9

    :goto_a
    invoke-virtual/range {p0 .. p0}, Ljni;->p()V

    iget v0, v12, Ljni;->o:I

    if-ne v0, v8, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgf;

    const/16 v1, 0x7d8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(I)V

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    :goto_b
    new-instance v8, Lcom/google/android/gms/internal/ads/zzgx;

    iget v2, v12, Ljni;->o:I

    move-object v1, v8

    move-object v3, v4

    move-object v4, v0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcfi;[B)V

    throw v8

    :cond_14
    :goto_c
    :try_start_4
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v2, v25

    invoke-virtual {v12, v2, v3, v13}, Ljni;->o(Ljava/net/URL;Ljava/lang/String;Lcfi;)Ljava/net/URL;

    move-result-object v11

    move-wide/from16 v7, v21

    move/from16 v1, v24

    goto/16 :goto_0

    :cond_15
    move/from16 v24, v10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgv;

    new-instance v1, Ljava/net/NoRouteToHostException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many redirects: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v24

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x7d1

    invoke-direct {v0, v1, v13, v2, v14}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/io/IOException;Lcfi;II)V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_d
    invoke-virtual/range {p0 .. p0}, Ljni;->p()V

    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/ads/zzgv;->zza(Ljava/io/IOException;Lcfi;I)Lcom/google/android/gms/internal/ads/zzgv;

    move-result-object v0

    throw v0
.end method

.method public final n(Ljava/net/URL;I[BJJZZLjava/util/Map;)Ljava/net/HttpURLConnection;
    .locals 2

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    iget p2, p0, Ljni;->f:I

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget p2, p0, Ljni;->g:I

    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Ljni;->i:Lssi;

    invoke-virtual {p3}, Lssi;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object p3, p0, Ljni;->j:Lssi;

    invoke-virtual {p3}, Lssi;->a()Ljava/util/Map;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p2, p10}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p10

    check-cast p10, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p10, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 p2, 0x0

    cmp-long p10, p4, p2

    const-wide/16 v0, -0x1

    if-nez p10, :cond_2

    cmp-long p4, p6, v0

    if-nez p4, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    move-wide p4, p2

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bytes="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "-"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long p3, p6, v0

    if-eqz p3, :cond_3

    add-long/2addr p4, p6

    add-long/2addr p4, v0

    invoke-virtual {p2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-eqz p2, :cond_4

    const-string p3, "Range"

    invoke-virtual {p1, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Ljni;->h:Ljava/lang/String;

    if-eqz p0, :cond_5

    const-string p2, "User-Agent"

    invoke-virtual {p1, p2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 p0, 0x1

    if-eq p0, p8, :cond_6

    const-string p0, "identity"

    goto :goto_2

    :cond_6
    const-string p0, "gzip"

    :goto_2
    const-string p2, "Accept-Encoding"

    invoke-virtual {p1, p2, p0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/net/URLConnection;->setDoOutput(Z)V

    sget p0, Lcfi;->h:I

    const-string p0, "GET"

    invoke-virtual {p1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URLConnection;->connect()V

    return-object p1
.end method

.method public final o(Ljava/net/URL;Ljava/lang/String;Lcfi;)Ljava/net/URL;
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x7d1

    if-eqz p2, :cond_4

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p2

    const-string v3, "https"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "http"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    const-string p2, "Unsupported protocol redirect: "

    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;Lcfi;II)V

    throw p1

    :cond_1
    :goto_0
    iget-boolean p0, p0, Ljni;->e:Z

    if-nez p0, :cond_3

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disallowed cross-protocol redirect ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;Lcfi;II)V

    throw p0

    :cond_3
    :goto_1
    return-object v2

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgv;

    invoke-direct {p1, p0, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/io/IOException;Lcfi;II)V

    throw p1

    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/zzgv;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1, p3, v1, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;Lcfi;II)V

    throw p0
.end method

.method public final p()V
    .locals 2

    iget-object p0, p0, Ljni;->l:Ljava/net/HttpURLConnection;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "DefaultHttpDataSource"

    const-string v1, "Unexpected error while disconnecting"

    invoke-static {v0, v1, p0}, Lzrg;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Ljni;->l:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Ljni;->k:Lcfi;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcfi;->a:Landroid/net/Uri;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzd()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Ljni;->m:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgv;

    iget-object v4, p0, Ljni;->k:Lcfi;

    sget v5, Lkfh;->a:I

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/io/IOException;Lcfi;II)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    iput-object v1, p0, Ljni;->m:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljni;->p()V

    iget-boolean v2, p0, Ljni;->n:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Ljni;->n:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :cond_1
    iput-object v1, p0, Ljni;->l:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Ljni;->k:Lcfi;

    return-void

    :goto_1
    iput-object v1, p0, Ljni;->m:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljni;->p()V

    iget-boolean v3, p0, Ljni;->n:Z

    if-eqz v3, :cond_2

    iput-boolean v0, p0, Ljni;->n:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :cond_2
    iput-object v1, p0, Ljni;->l:Ljava/net/HttpURLConnection;

    iput-object v1, p0, Ljni;->k:Lcfi;

    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 1

    iget-object p0, p0, Ljni;->l:Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfwz;->zzd()Lcom/google/android/gms/internal/ads/zzfwz;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Llli;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    invoke-direct {v0, p0}, Llli;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
