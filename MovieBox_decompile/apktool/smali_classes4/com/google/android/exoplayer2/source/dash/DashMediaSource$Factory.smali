.class public final Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/source/dash/a$a;

.field private final b:Lcom/google/android/exoplayer2/upstream/k$a;

.field private c:Lcom/google/android/exoplayer2/drm/x;

.field private d:Lv9/d;

.field private e:Lcom/google/android/exoplayer2/upstream/z;

.field private f:J

.field private g:Lcom/google/android/exoplayer2/upstream/b0$a;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/dash/a$a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/drm/j;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/drm/j;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lcom/google/android/exoplayer2/drm/x;

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/upstream/v;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/upstream/v;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Lcom/google/android/exoplayer2/upstream/z;

    const-wide/16 p1, 0x7530

    .line 7
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:J

    .line 8
    new-instance p1, Lv9/e;

    invoke-direct {p1}, Lv9/e;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d:Lv9/d;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/k$a;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/dash/c$a;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/source/dash/c$a;-><init>(Lcom/google/android/exoplayer2/upstream/k$a;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplayer2/source/dash/a$a;Lcom/google/android/exoplayer2/upstream/k$a;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/google/android/exoplayer2/w1;)Lcom/google/android/exoplayer2/source/o;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d(Lcom/google/android/exoplayer2/w1;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Lcom/google/android/exoplayer2/w1;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource;
    .locals 13

    .line 1
    iget-object v0, p1, Lcom/google/android/exoplayer2/w1;->b:Lcom/google/android/exoplayer2/w1$h;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->g:Lcom/google/android/exoplayer2/upstream/b0$a;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lz9/d;

    .line 11
    .line 12
    invoke-direct {v0}, Lz9/d;-><init>()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v2, p1, Lcom/google/android/exoplayer2/w1;->b:Lcom/google/android/exoplayer2/w1$h;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/google/android/exoplayer2/w1$h;->d:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    new-instance v3, Lcom/google/android/exoplayer2/offline/d;

    .line 26
    .line 27
    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplayer2/offline/d;-><init>(Lcom/google/android/exoplayer2/upstream/b0$a;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    move-object v4, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move-object v4, v0

    .line 33
    :goto_0
    new-instance v12, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;

    .line 34
    .line 35
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->b:Lcom/google/android/exoplayer2/upstream/k$a;

    .line 36
    .line 37
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->a:Lcom/google/android/exoplayer2/source/dash/a$a;

    .line 38
    .line 39
    iget-object v6, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->d:Lv9/d;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lcom/google/android/exoplayer2/drm/x;

    .line 42
    .line 43
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/drm/x;->a(Lcom/google/android/exoplayer2/w1;)Lcom/google/android/exoplayer2/drm/u;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    iget-object v8, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Lcom/google/android/exoplayer2/upstream/z;

    .line 48
    .line 49
    iget-wide v9, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->f:J

    .line 50
    .line 51
    const/4 v11, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    move-object v0, v12

    .line 54
    move-object v1, p1

    .line 55
    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplayer2/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplayer2/w1;Lz9/c;Lcom/google/android/exoplayer2/upstream/k$a;Lcom/google/android/exoplayer2/upstream/b0$a;Lcom/google/android/exoplayer2/source/dash/a$a;Lv9/d;Lcom/google/android/exoplayer2/drm/u;Lcom/google/android/exoplayer2/upstream/z;JLcom/google/android/exoplayer2/source/dash/DashMediaSource$a;)V

    .line 56
    .line 57
    .line 58
    return-object v12
.end method

.method public e(Lcom/google/android/exoplayer2/drm/x;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1

    .line 1
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/exoplayer2/drm/x;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->c:Lcom/google/android/exoplayer2/drm/x;

    .line 10
    .line 11
    return-object p0
.end method

.method public f(Lcom/google/android/exoplayer2/upstream/z;)Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;
    .locals 1

    .line 1
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/exoplayer2/util/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/google/android/exoplayer2/upstream/z;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/dash/DashMediaSource$Factory;->e:Lcom/google/android/exoplayer2/upstream/z;

    .line 10
    .line 11
    return-object p0
.end method
