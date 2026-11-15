.class public final Ln2/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lk2/r;


# instance fields
.field private final a:Landroidx/media3/common/util/j0;

.field private final b:Lk2/o0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/media3/common/util/j0;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Landroidx/media3/common/util/j0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Ln2/a;->a:Landroidx/media3/common/util/j0;

    .line 11
    .line 12
    new-instance v0, Lk2/o0;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const-string v2, "image/avif"

    .line 16
    .line 17
    invoke-direct {v0, v1, v1, v2}, Lk2/o0;-><init>(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Ln2/a;->b:Lk2/o0;

    .line 21
    .line 22
    return-void
.end method

.method private a(Lk2/s;I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Ln2/a;->a:Landroidx/media3/common/util/j0;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroidx/media3/common/util/j0;->S(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ln2/a;->a:Landroidx/media3/common/util/j0;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/common/util/j0;->e()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {p1, v0, v2, v1}, Lk2/s;->peekFully([BII)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Ln2/a;->a:Landroidx/media3/common/util/j0;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/media3/common/util/j0;->J()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    int-to-long p1, p2

    .line 24
    cmp-long p1, v0, p1

    .line 25
    .line 26
    if-nez p1, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    :cond_0
    return v2
.end method


# virtual methods
.method public b(Lk2/s;)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-interface {p1, v0}, Lk2/s;->advancePeekPosition(I)V

    .line 3
    .line 4
    .line 5
    const v0, 0x66747970

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Ln2/a;->a(Lk2/s;I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const v0, 0x61766966

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, p1, v0}, Ln2/a;->a(Lk2/s;I)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    :goto_0
    return p1
.end method

.method public synthetic c()Lk2/r;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->b(Lk2/r;)Lk2/r;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public d(Lk2/s;Lk2/l0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/a;->b:Lk2/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lk2/o0;->d(Lk2/s;Lk2/l0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public e(Lk2/t;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/a;->b:Lk2/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lk2/o0;->e(Lk2/t;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic f()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {p0}, Lk2/q;->a(Lk2/r;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln2/a;->b:Lk2/o0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lk2/o0;->seek(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
