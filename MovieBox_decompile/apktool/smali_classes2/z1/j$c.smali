.class public Lz1/j$c;
.super Lz1/j;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz1/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final i:Landroid/net/Uri;

.field public final j:J

.field private final k:Ljava/lang/String;

.field private final l:Lz1/i;

.field private final m:Lz1/m;


# direct methods
.method public constructor <init>(JLandroidx/media3/common/r;Ljava/util/List;Lz1/k$e;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;J)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    const/4 v9, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move-wide v1, p1

    .line 5
    move-object v3, p3

    .line 6
    move-object v4, p4

    .line 7
    move-object/from16 v5, p5

    .line 8
    .line 9
    move-object/from16 v6, p6

    .line 10
    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    invoke-direct/range {v0 .. v9}, Lz1/j;-><init>(JLandroidx/media3/common/r;Ljava/util/List;Lz1/k;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lz1/j$a;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    move-object v1, p4

    .line 20
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lz1/b;

    .line 25
    .line 26
    iget-object v0, v0, Lz1/b;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, v10, Lz1/j$c;->i:Landroid/net/Uri;

    .line 33
    .line 34
    invoke-virtual/range {p5 .. p5}, Lz1/k$e;->c()Lz1/i;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, v10, Lz1/j$c;->l:Lz1/i;

    .line 39
    .line 40
    move-object/from16 v1, p9

    .line 41
    .line 42
    iput-object v1, v10, Lz1/j$c;->k:Ljava/lang/String;

    .line 43
    .line 44
    move-wide/from16 v1, p10

    .line 45
    .line 46
    iput-wide v1, v10, Lz1/j$c;->j:J

    .line 47
    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lz1/m;

    .line 53
    .line 54
    new-instance v3, Lz1/i;

    .line 55
    .line 56
    const/4 v4, 0x0

    .line 57
    const-wide/16 v5, 0x0

    .line 58
    .line 59
    move-object p1, v3

    .line 60
    move-object p2, v4

    .line 61
    move-wide p3, v5

    .line 62
    move-wide/from16 p5, p10

    .line 63
    .line 64
    invoke-direct/range {p1 .. p6}, Lz1/i;-><init>(Ljava/lang/String;JJ)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v0, v3}, Lz1/m;-><init>(Lz1/i;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iput-object v0, v10, Lz1/j$c;->m:Lz1/m;

    .line 71
    .line 72
    return-void
.end method


# virtual methods
.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/j$c;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Ly1/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/j$c;->m:Lz1/m;

    .line 2
    .line 3
    return-object v0
.end method

.method public l()Lz1/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lz1/j$c;->l:Lz1/i;

    .line 2
    .line 3
    return-object v0
.end method
