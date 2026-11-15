.class public final Lkea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/a;


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/a;

.field public final b:Lrs1;

.field public c:Z

.field public d:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/a;Lrs1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/a;

    iput-object p1, p0, Lkea;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrs1;

    iput-object p1, p0, Lkea;->b:Lrs1;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/b;)J
    .locals 8

    iget-object v0, p0, Lkea;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/a;->a(Lcom/google/android/exoplayer2/upstream/b;)J

    move-result-wide v0

    iput-wide v0, p0, Lkea;->d:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    iget-wide v4, p1, Lcom/google/android/exoplayer2/upstream/b;->h:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/android/exoplayer2/upstream/b;->e(JJ)Lcom/google/android/exoplayer2/upstream/b;

    move-result-object p1

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkea;->c:Z

    iget-object v0, p0, Lkea;->b:Lrs1;

    invoke-interface {v0, p1}, Lrs1;->a(Lcom/google/android/exoplayer2/upstream/b;)V

    iget-wide p0, p0, Lkea;->d:J

    return-wide p0
.end method

.method public b(Lu5b;)V
    .locals 0

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lkea;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/a;->b(Lu5b;)V

    return-void
.end method

.method public close()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lkea;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/upstream/a;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, p0, Lkea;->c:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lkea;->c:Z

    iget-object p0, p0, Lkea;->b:Lrs1;

    invoke-interface {p0}, Lrs1;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    iget-boolean v2, p0, Lkea;->c:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, Lkea;->c:Z

    iget-object p0, p0, Lkea;->b:Lrs1;

    invoke-interface {p0}, Lrs1;->close()V

    :cond_1
    throw v1
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lkea;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/a;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lkea;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/a;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public read([BII)I
    .locals 4

    iget-wide v0, p0, Lkea;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lkea;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v0, p1, p2, p3}, Lms1;->read([BII)I

    move-result p3

    if-lez p3, :cond_1

    iget-object v0, p0, Lkea;->b:Lrs1;

    invoke-interface {v0, p1, p2, p3}, Lrs1;->write([BII)V

    iget-wide p1, p0, Lkea;->d:J

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    int-to-long v0, p3

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lkea;->d:J

    :cond_1
    return p3
.end method
