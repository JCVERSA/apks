.class public final Lfl/f$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfl/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field private final a:Lfl/f$d;

.field private final b:[Z

.field private c:Z

.field final synthetic d:Lfl/f;


# direct methods
.method synthetic constructor <init>(Lfl/f;Lfl/f$d;Lfl/f$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfl/f$c;->d:Lfl/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lfl/f$c;->a:Lfl/f$d;

    .line 7
    .line 8
    invoke-static {p2}, Lfl/f$d;->o(Lfl/f$d;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1}, Lfl/f;->s(Lfl/f;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    new-array p1, p1, [Z

    .line 21
    .line 22
    :goto_0
    iput-object p1, p0, Lfl/f$c;->b:[Z

    .line 23
    .line 24
    return-void
.end method

.method static synthetic a(Lfl/f$c;)Lfl/f$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lfl/f$c;->a:Lfl/f$d;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lfl/f$c;)[Z
    .locals 0

    .line 1
    iget-object p0, p0, Lfl/f$c;->b:[Z

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(I)Ljava/io/File;
    .locals 3

    .line 1
    iget-object v0, p0, Lfl/f$c;->d:Lfl/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lfl/f$c;->a:Lfl/f$d;

    .line 5
    .line 6
    invoke-static {v1}, Lfl/f$d;->p(Lfl/f$d;)Lfl/f$c;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-ne v1, p0, :cond_2

    .line 11
    .line 12
    iget-object v1, p0, Lfl/f$c;->a:Lfl/f$d;

    .line 13
    .line 14
    invoke-static {v1}, Lfl/f$d;->o(Lfl/f$d;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lfl/f$c;->b:[Z

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aput-boolean v2, v1, p1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iget-object v1, p0, Lfl/f$c;->a:Lfl/f$d;

    .line 29
    .line 30
    iget-object v1, v1, Lfl/f$d;->d:[Ljava/io/File;

    .line 31
    .line 32
    aget-object p1, v1, p1

    .line 33
    .line 34
    iget-object v1, p0, Lfl/f$c;->d:Lfl/f;

    .line 35
    .line 36
    invoke-static {v1}, Lfl/f;->v(Lfl/f;)Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    iget-object v1, p0, Lfl/f$c;->d:Lfl/f;

    .line 47
    .line 48
    invoke-static {v1}, Lfl/f;->v(Lfl/f;)Ljava/io/File;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 53
    .line 54
    .line 55
    :cond_1
    monitor-exit v0

    .line 56
    return-object p1

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    throw p1
.end method

.method public c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfl/f$c;->d:Lfl/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p0, v1}, Lfl/f;->m(Lfl/f;Lfl/f$c;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfl/f$c;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Lfl/f$c;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfl/f$c;->d:Lfl/f;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, p0, v1}, Lfl/f;->m(Lfl/f;Lfl/f$c;Z)V

    .line 5
    .line 6
    .line 7
    iput-boolean v1, p0, Lfl/f$c;->c:Z

    .line 8
    .line 9
    return-void
.end method
