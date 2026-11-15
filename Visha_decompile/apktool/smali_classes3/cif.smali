.class public final Lcif;
.super Lp4i;
.source "SourceFile"

# interfaces
.implements Llti;


# static fields
.field public static final u:Ljava/util/regex/Pattern;

.field public static final v:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public final e:Ljavax/net/ssl/SSLSocketFactory;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Lssi;

.field public j:Lcfi;

.field public k:Ljava/net/HttpURLConnection;

.field public l:Ljava/io/InputStream;

.field public m:Z

.field public n:I

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:I

.field public final t:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcif;->u:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcif;->v:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lixi;III)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lp4i;-><init>(Z)V

    new-instance v0, Lbif;

    invoke-direct {v0, p0}, Lbif;-><init>(Lcif;)V

    iput-object v0, p0, Lcif;->e:Ljavax/net/ssl/SSLSocketFactory;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcif;->t:Ljava/util/Set;

    invoke-static {p1}, Ln7g;->c(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcif;->h:Ljava/lang/String;

    new-instance p1, Lssi;

    invoke-direct {p1}, Lssi;-><init>()V

    iput-object p1, p0, Lcif;->i:Lssi;

    iput p3, p0, Lcif;->f:I

    iput p4, p0, Lcif;->g:I

    iput p5, p0, Lcif;->s:I

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lp4i;->c(Lixi;)V

    :cond_0
    return-void
.end method

.method public static bridge synthetic n(Lcif;)I
    .locals 0

    iget p0, p0, Lcif;->s:I

    return p0
.end method

.method public static bridge synthetic o(Lcif;Ljava/net/Socket;)V
    .locals 0

    iget-object p0, p0, Lcif;->t:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final b([BII)I
    .locals 9

    :try_start_0
    iget-wide v0, p0, Lcif;->q:J

    iget-wide v2, p0, Lcif;->o:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcif;->v:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-nez v3, :cond_1

    const/16 v3, 0x1000

    new-array v3, v3, [B

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_0
    iget-wide v4, p0, Lcif;->q:J

    iget-wide v6, p0, Lcif;->o:J

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    array-length v8, v3

    sub-long/2addr v6, v4

    int-to-long v4, v8

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    iget-object v5, p0, Lcif;->l:Ljava/io/InputStream;

    invoke-virtual {v5, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    if-nez v5, :cond_3

    if-eq v4, v2, :cond_2

    iget-wide v5, p0, Lcif;->q:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcif;->q:J

    invoke-virtual {p0, v4}, Lp4i;->zzg(I)V

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    :cond_4
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_1
    if-nez p3, :cond_5

    goto :goto_3

    :cond_5
    iget-wide v0, p0, Lcif;->p:J

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_7

    iget-wide v5, p0, Lcif;->r:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-nez v5, :cond_6

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_6
    int-to-long v5, p3

    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_7
    iget-object v0, p0, Lcif;->l:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_9

    iget-wide p1, p0, Lcif;->p:J

    cmp-long p1, p1, v3

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_9
    iget-wide p1, p0, Lcif;->r:J

    int-to-long v2, v1

    add-long/2addr p1, v2

    iput-wide p1, p0, Lcif;->r:J

    invoke-virtual {p0, v1}, Lp4i;->zzg(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v1

    :goto_4
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgv;

    iget-object p0, p0, Lcif;->j:Lcfi;

    const/16 p3, 0x7d0

    const/4 v0, 0x2

    invoke-direct {p2, p1, p0, p3, v0}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/io/IOException;Lcfi;II)V

    throw p2
.end method

.method public final j(Lcfi;)J
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    const/4 v2, 0x1

    const-string v3, "Unable to connect to "

    iput-object v7, v1, Lcif;->j:Lcfi;

    const-wide/16 v4, 0x0

    iput-wide v4, v1, Lcif;->r:J

    iput-wide v4, v1, Lcif;->q:J

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v6, v7, Lcfi;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iget-wide v8, v7, Lcfi;->e:J

    iget-wide v10, v7, Lcfi;->f:J

    invoke-virtual {v7, v2}, Lcfi;->b(I)Z

    move-result v6

    const/4 v13, 0x0

    :goto_0
    add-int/lit8 v14, v13, 0x1

    const/16 v15, 0x14

    if-gt v13, v15, :cond_16

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    check-cast v13, Ljava/net/HttpURLConnection;

    instance-of v15, v13, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v15, :cond_0

    move-object v15, v13

    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    iget-object v2, v1, Lcif;->e:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v15, v2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_0
    :goto_1
    iget v2, v1, Lcif;->f:I

    invoke-virtual {v13, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    iget v2, v1, Lcif;->g:I

    invoke-virtual {v13, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    iget-object v2, v1, Lcif;->i:Lssi;

    invoke-virtual {v2}, Lssi;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/lang/String;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v12, v15}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    cmp-long v2, v8, v4

    const-wide/16 v18, -0x1

    if-nez v2, :cond_2

    cmp-long v2, v10, v18

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_2
    move-wide v4, v8

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bytes="

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    cmp-long v12, v10, v18

    if-eqz v12, :cond_3

    add-long/2addr v4, v10

    add-long v4, v4, v18

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v4, "Range"

    invoke-virtual {v13, v4, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "User-Agent"

    iget-object v4, v1, Lcif;->h:Ljava/lang/String;

    invoke-virtual {v13, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_5

    const-string v2, "Accept-Encoding"

    const-string v4, "identity"

    invoke-virtual {v13, v2, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v13, v2}, Ljava/net/URLConnection;->setDoOutput(Z)V

    invoke-virtual {v13}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0x12c

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12d

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12e

    if-eq v4, v5, :cond_6

    const/16 v5, 0x12f

    if-eq v4, v5, :cond_6

    const/16 v5, 0x133

    if-eq v4, v5, :cond_6

    const/16 v5, 0x134

    if-ne v4, v5, :cond_7

    :cond_6
    const/4 v4, 0x1

    const-wide/16 v16, 0x0

    goto/16 :goto_8

    :cond_7
    iput-object v13, v1, Lcif;->k:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, v1, Lcif;->n:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_11

    const/16 v3, 0x12b

    if-le v0, v3, :cond_8

    goto/16 :goto_7

    :cond_8
    if-ne v0, v2, :cond_9

    iget-wide v2, v7, Lcfi;->e:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_a

    :cond_9
    const-wide/16 v2, 0x0

    :cond_a
    iput-wide v2, v1, Lcif;->o:J

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Lcfi;->b(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-wide v2, v7, Lcfi;->f:J

    cmp-long v0, v2, v18

    if-eqz v0, :cond_b

    iput-wide v2, v1, Lcif;->p:J

    goto/16 :goto_6

    :cond_b
    iget-object v0, v1, Lcif;->k:Ljava/net/HttpURLConnection;

    const-string v2, "Content-Length"

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "]"

    if-nez v3, :cond_c

    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected Content-Length ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v5, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    :cond_c
    move-wide/from16 v5, v18

    :goto_4
    const-string v3, "Content-Range"

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, Lcif;->u:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_e

    const/4 v8, 0x2

    :try_start_3
    invoke-virtual {v3, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    const-wide/16 v16, 0x0

    cmp-long v3, v5, v16

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    if-gez v3, :cond_d

    move-wide v5, v8

    goto :goto_5

    :cond_d
    cmp-long v3, v5, v8

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Inconsistent headers ["

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Content-Range ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    :cond_e
    :goto_5
    cmp-long v0, v5, v18

    if-eqz v0, :cond_f

    iget-wide v2, v1, Lcif;->o:J

    sub-long v18, v5, v2

    :cond_f
    move-wide/from16 v2, v18

    iput-wide v2, v1, Lcif;->p:J

    goto :goto_6

    :cond_10
    iget-wide v2, v7, Lcfi;->f:J

    iput-wide v2, v1, Lcif;->p:J

    :goto_6
    :try_start_4
    iget-object v0, v1, Lcif;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, v1, Lcif;->l:Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcif;->m:Z

    invoke-virtual/range {p0 .. p1}, Lp4i;->m(Lcfi;)V

    iget-wide v0, v1, Lcif;->p:J

    return-wide v0

    :catch_3
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcif;->q()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgv;

    const/16 v2, 0x7d0

    const/4 v4, 0x1

    invoke-direct {v1, v0, v7, v2, v4}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/io/IOException;Lcfi;II)V

    throw v1

    :cond_11
    :goto_7
    iget-object v0, v1, Lcif;->k:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcif;->q()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgx;

    iget v3, v1, Lcif;->n:I

    const/4 v5, 0x0

    sget-object v8, Lkfh;->c:[B

    const/4 v4, 0x0

    move-object v2, v0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzgx;-><init>(ILjava/lang/String;Ljava/io/IOException;Ljava/util/Map;Lcfi;[B)V

    iget v1, v1, Lcif;->n:I

    const/16 v2, 0x1a0

    if-ne v1, v2, :cond_12

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgf;

    const/16 v2, 0x7d8

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzgf;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_12
    throw v0

    :catch_4
    move-exception v0

    invoke-virtual/range {p0 .. p0}, Lcif;->q()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzgv;

    iget-object v1, v7, Lcfi;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x7d0

    const/4 v6, 0x1

    move-object v1, v8

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcfi;II)V

    throw v8

    :goto_8
    :try_start_5
    const-string v5, "Location"

    invoke-virtual {v13, v5}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V

    if-eqz v5, :cond_15

    new-instance v12, Ljava/net/URL;

    invoke-direct {v12, v0, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v5, "https"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "http"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    goto :goto_9

    :cond_13
    new-instance v1, Ljava/net/ProtocolException;

    const-string v2, "Unsupported protocol redirect: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    :goto_9
    move v2, v4

    move-object v0, v12

    move v13, v14

    move-wide/from16 v4, v16

    goto/16 :goto_0

    :cond_15
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Null location redirect"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/net/NoRouteToHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many redirects: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_a
    new-instance v8, Lcom/google/android/gms/internal/ads/zzgv;

    iget-object v1, v7, Lcfi;->a:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x7d0

    const/4 v6, 0x1

    move-object v1, v8

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcfi;II)V

    throw v8
.end method

.method public final p(I)V
    .locals 2

    iput p1, p0, Lcif;->s:I

    iget-object p1, p0, Lcif;->t:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    iget v1, p0, Lcif;->s:I

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setReceiveBufferSize(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Failed to update receive buffer size."

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzk(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final q()V
    .locals 2

    iget-object v0, p0, Lcif;->k:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Unexpected error while disconnecting"

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcif;->k:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcif;->k:Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public final zzd()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcif;->l:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    sget v3, Lkfh;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

    iget-object v4, p0, Lcif;->j:Lcfi;

    const/16 v5, 0x7d0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzgv;-><init>(Ljava/io/IOException;Lcfi;II)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    iput-object v1, p0, Lcif;->l:Ljava/io/InputStream;

    invoke-virtual {p0}, Lcif;->q()V

    iget-boolean v1, p0, Lcif;->m:Z

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lcif;->m:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :cond_1
    iget-object p0, p0, Lcif;->t:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void

    :goto_1
    iput-object v1, p0, Lcif;->l:Ljava/io/InputStream;

    invoke-virtual {p0}, Lcif;->q()V

    iget-boolean v1, p0, Lcif;->m:Z

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcif;->m:Z

    invoke-virtual {p0}, Lp4i;->k()V

    :cond_2
    iget-object p0, p0, Lcif;->t:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    throw v2
.end method

.method public final zze()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcif;->k:Ljava/net/HttpURLConnection;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
