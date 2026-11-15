.class public final Landroidx/media3/exoplayer/upstream/q;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/upstream/Loader$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/upstream/q$a;
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:Lw1/h;

.field public final c:I

.field private final d:Lw1/l;

.field private final e:Landroidx/media3/exoplayer/upstream/q$a;

.field private volatile f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a;Landroid/net/Uri;ILandroidx/media3/exoplayer/upstream/q$a;)V
    .locals 1

    .line 1
    new-instance v0, Lw1/h$b;

    invoke-direct {v0}, Lw1/h$b;-><init>()V

    .line 2
    invoke-virtual {v0, p2}, Lw1/h$b;->i(Landroid/net/Uri;)Lw1/h$b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lw1/h$b;->b(I)Lw1/h$b;

    move-result-object p2

    invoke-virtual {p2}, Lw1/h$b;->a()Lw1/h;

    move-result-object p2

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/upstream/q;-><init>(Landroidx/media3/datasource/a;Lw1/h;ILandroidx/media3/exoplayer/upstream/q$a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a;Lw1/h;ILandroidx/media3/exoplayer/upstream/q$a;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lw1/l;

    invoke-direct {v0, p1}, Lw1/l;-><init>(Landroidx/media3/datasource/a;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    .line 6
    iput-object p2, p0, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    .line 7
    iput p3, p0, Landroidx/media3/exoplayer/upstream/q;->c:I

    .line 8
    iput-object p4, p0, Landroidx/media3/exoplayer/upstream/q;->e:Landroidx/media3/exoplayer/upstream/q$a;

    .line 9
    invoke-static {}, Lf2/i;->a()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/media3/exoplayer/upstream/q;->a:J

    return-void
.end method

.method public static e(Landroidx/media3/datasource/a;Landroidx/media3/exoplayer/upstream/q$a;Lw1/h;I)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Landroidx/media3/exoplayer/upstream/q;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p3, p1}, Landroidx/media3/exoplayer/upstream/q;-><init>(Landroidx/media3/datasource/a;Lw1/h;ILandroidx/media3/exoplayer/upstream/q$a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/q;->load()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/exoplayer/upstream/q;->c()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw1/l;->d()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public b()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw1/l;->f()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final cancelLoad()V
    .locals 0

    .line 1
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw1/l;->e()Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final load()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lw1/l;->g()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lw1/f;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    .line 9
    .line 10
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/q;->b:Lw1/h;

    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Lw1/f;-><init>(Landroidx/media3/datasource/a;Lw1/h;)V

    .line 13
    .line 14
    .line 15
    :try_start_0
    invoke-virtual {v0}, Lw1/f;->h()V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/media3/exoplayer/upstream/q;->d:Lw1/l;

    .line 19
    .line 20
    invoke-virtual {v1}, Lw1/l;->getUri()Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/net/Uri;

    .line 29
    .line 30
    iget-object v2, p0, Landroidx/media3/exoplayer/upstream/q;->e:Landroidx/media3/exoplayer/upstream/q$a;

    .line 31
    .line 32
    invoke-interface {v2, v1, v0}, Landroidx/media3/exoplayer/upstream/q$a;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iput-object v1, p0, Landroidx/media3/exoplayer/upstream/q;->f:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    invoke-static {v0}, Landroidx/media3/common/util/a1;->m(Ljava/io/Closeable;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    invoke-static {v0}, Landroidx/media3/common/util/a1;->m(Ljava/io/Closeable;)V

    .line 44
    .line 45
    .line 46
    throw v1
.end method
