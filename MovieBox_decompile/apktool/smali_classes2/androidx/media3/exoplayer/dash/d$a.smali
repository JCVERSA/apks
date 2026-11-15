.class public final Landroidx/media3/exoplayer/dash/d$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/media3/exoplayer/dash/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/dash/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media3/datasource/a$a;

.field private final b:I

.field private final c:Lg2/f$a;


# direct methods
.method public constructor <init>(Landroidx/media3/datasource/a$a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/media3/exoplayer/dash/d$a;-><init>(Landroidx/media3/datasource/a$a;I)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/datasource/a$a;I)V
    .locals 1

    .line 2
    new-instance v0, Lg2/d$b;

    invoke-direct {v0}, Lg2/d$b;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Landroidx/media3/exoplayer/dash/d$a;-><init>(Lg2/f$a;Landroidx/media3/datasource/a$a;I)V

    return-void
.end method

.method public constructor <init>(Lg2/f$a;Landroidx/media3/datasource/a$a;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/media3/exoplayer/dash/d$a;->c:Lg2/f$a;

    .line 5
    iput-object p2, p0, Landroidx/media3/exoplayer/dash/d$a;->a:Landroidx/media3/datasource/a$a;

    .line 6
    iput p3, p0, Landroidx/media3/exoplayer/dash/d$a;->b:I

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lh3/s$a;)Landroidx/media3/exoplayer/dash/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/d$a;->h(Lh3/s$a;)Landroidx/media3/exoplayer/dash/d$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(I)Landroidx/media3/exoplayer/dash/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/d$a;->g(I)Landroidx/media3/exoplayer/dash/d$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic c(Z)Landroidx/media3/exoplayer/dash/a$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/dash/d$a;->f(Z)Landroidx/media3/exoplayer/dash/d$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public d(Landroidx/media3/common/r;)Landroidx/media3/common/r;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$a;->c:Lg2/f$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lg2/f$a;->d(Landroidx/media3/common/r;)Landroidx/media3/common/r;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public e(Landroidx/media3/exoplayer/upstream/p;Lz1/c;Ly1/b;I[ILi2/z;IJZLjava/util/List;Landroidx/media3/exoplayer/dash/f$c;Lw1/n;Lx1/f4;Landroidx/media3/exoplayer/upstream/f;)Landroidx/media3/exoplayer/dash/a;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p13

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/media3/exoplayer/dash/d$a;->a:Landroidx/media3/datasource/a$a;

    .line 6
    .line 7
    invoke-interface {v2}, Landroidx/media3/datasource/a$a;->createDataSource()Landroidx/media3/datasource/a;

    .line 8
    .line 9
    .line 10
    move-result-object v12

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v12, v1}, Landroidx/media3/datasource/a;->c(Lw1/n;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    new-instance v1, Landroidx/media3/exoplayer/dash/d;

    .line 17
    .line 18
    move-object v3, v1

    .line 19
    iget-object v4, v0, Landroidx/media3/exoplayer/dash/d$a;->c:Lg2/f$a;

    .line 20
    .line 21
    iget v15, v0, Landroidx/media3/exoplayer/dash/d$a;->b:I

    .line 22
    .line 23
    move-object/from16 v5, p1

    .line 24
    .line 25
    move-object/from16 v6, p2

    .line 26
    .line 27
    move-object/from16 v7, p3

    .line 28
    .line 29
    move/from16 v8, p4

    .line 30
    .line 31
    move-object/from16 v9, p5

    .line 32
    .line 33
    move-object/from16 v10, p6

    .line 34
    .line 35
    move/from16 v11, p7

    .line 36
    .line 37
    move-wide/from16 v13, p8

    .line 38
    .line 39
    move/from16 v16, p10

    .line 40
    .line 41
    move-object/from16 v17, p11

    .line 42
    .line 43
    move-object/from16 v18, p12

    .line 44
    .line 45
    move-object/from16 v19, p14

    .line 46
    .line 47
    move-object/from16 v20, p15

    .line 48
    .line 49
    invoke-direct/range {v3 .. v20}, Landroidx/media3/exoplayer/dash/d;-><init>(Lg2/f$a;Landroidx/media3/exoplayer/upstream/p;Lz1/c;Ly1/b;I[ILi2/z;ILandroidx/media3/datasource/a;JIZLjava/util/List;Landroidx/media3/exoplayer/dash/f$c;Lx1/f4;Landroidx/media3/exoplayer/upstream/f;)V

    .line 50
    .line 51
    .line 52
    return-object v1
.end method

.method public f(Z)Landroidx/media3/exoplayer/dash/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$a;->c:Lg2/f$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lg2/f$a;->c(Z)Lg2/f$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public g(I)Landroidx/media3/exoplayer/dash/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$a;->c:Lg2/f$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lg2/f$a;->b(I)Lg2/f$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public h(Lh3/s$a;)Landroidx/media3/exoplayer/dash/d$a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/exoplayer/dash/d$a;->c:Lg2/f$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lg2/f$a;->a(Lh3/s$a;)Lg2/f$a;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
