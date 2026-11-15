.class public final Lox9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/upstream/a;


# instance fields
.field public final a:Lcom/google/android/exoplayer2/upstream/a;

.field public b:J

.field public c:Landroid/net/Uri;

.field public d:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/upstream/a;

    iput-object p1, p0, Lox9;->a:Lcom/google/android/exoplayer2/upstream/a;

    sget-object p1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iput-object p1, p0, Lox9;->c:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lox9;->d:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/upstream/b;)J
    .locals 2

    iget-object v0, p1, Lcom/google/android/exoplayer2/upstream/b;->a:Landroid/net/Uri;

    iput-object v0, p0, Lox9;->c:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lox9;->d:Ljava/util/Map;

    iget-object v0, p0, Lox9;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/upstream/a;->a(Lcom/google/android/exoplayer2/upstream/b;)J

    move-result-wide v0

    invoke-virtual {p0}, Lox9;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    iput-object p1, p0, Lox9;->c:Landroid/net/Uri;

    invoke-virtual {p0}, Lox9;->getResponseHeaders()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lox9;->d:Ljava/util/Map;

    return-wide v0
.end method

.method public b(Lu5b;)V
    .locals 0

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lox9;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/upstream/a;->b(Lu5b;)V

    return-void
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lox9;->b:J

    return-wide v0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Lox9;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/a;->close()V

    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lox9;->c:Landroid/net/Uri;

    return-object p0
.end method

.method public e()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lox9;->d:Ljava/util/Map;

    return-object p0
.end method

.method public f()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lox9;->b:J

    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lox9;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/a;->getResponseHeaders()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lox9;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {p0}, Lcom/google/android/exoplayer2/upstream/a;->getUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public read([BII)I
    .locals 2

    iget-object v0, p0, Lox9;->a:Lcom/google/android/exoplayer2/upstream/a;

    invoke-interface {v0, p1, p2, p3}, Lms1;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget-wide p2, p0, Lox9;->b:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lox9;->b:J

    :cond_0
    return p1
.end method
