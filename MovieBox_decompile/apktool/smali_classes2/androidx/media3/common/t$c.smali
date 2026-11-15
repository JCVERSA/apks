.class public final Landroidx/media3/common/t$c;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/common/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Ljava/lang/String;

.field private d:Landroidx/media3/common/t$d$a;

.field private e:Landroidx/media3/common/t$f$a;

.field private f:Ljava/util/List;

.field private g:Ljava/lang/String;

.field private h:Lcom/google/common/collect/ImmutableList;

.field private i:Ljava/lang/Object;

.field private j:J

.field private k:Landroidx/media3/common/v;

.field private l:Landroidx/media3/common/t$g$a;

.field private m:Landroidx/media3/common/t$i;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroidx/media3/common/t$d$a;

    invoke-direct {v0}, Landroidx/media3/common/t$d$a;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/t$c;->d:Landroidx/media3/common/t$d$a;

    .line 4
    new-instance v0, Landroidx/media3/common/t$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/t$f$a;-><init>(Landroidx/media3/common/t$a;)V

    iput-object v0, p0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$c;->f:Ljava/util/List;

    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 7
    new-instance v0, Landroidx/media3/common/t$g$a;

    invoke-direct {v0}, Landroidx/media3/common/t$g$a;-><init>()V

    iput-object v0, p0, Landroidx/media3/common/t$c;->l:Landroidx/media3/common/t$g$a;

    .line 8
    sget-object v0, Landroidx/media3/common/t$i;->d:Landroidx/media3/common/t$i;

    iput-object v0, p0, Landroidx/media3/common/t$c;->m:Landroidx/media3/common/t$i;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    iput-wide v0, p0, Landroidx/media3/common/t$c;->j:J

    return-void
.end method

.method private constructor <init>(Landroidx/media3/common/t;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Landroidx/media3/common/t$c;-><init>()V

    .line 11
    iget-object v0, p1, Landroidx/media3/common/t;->f:Landroidx/media3/common/t$d;

    invoke-virtual {v0}, Landroidx/media3/common/t$d;->a()Landroidx/media3/common/t$d$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$c;->d:Landroidx/media3/common/t$d$a;

    .line 12
    iget-object v0, p1, Landroidx/media3/common/t;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/t$c;->a:Ljava/lang/String;

    .line 13
    iget-object v0, p1, Landroidx/media3/common/t;->e:Landroidx/media3/common/v;

    iput-object v0, p0, Landroidx/media3/common/t$c;->k:Landroidx/media3/common/v;

    .line 14
    iget-object v0, p1, Landroidx/media3/common/t;->d:Landroidx/media3/common/t$g;

    invoke-virtual {v0}, Landroidx/media3/common/t$g;->a()Landroidx/media3/common/t$g$a;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/common/t$c;->l:Landroidx/media3/common/t$g$a;

    .line 15
    iget-object v0, p1, Landroidx/media3/common/t;->h:Landroidx/media3/common/t$i;

    iput-object v0, p0, Landroidx/media3/common/t$c;->m:Landroidx/media3/common/t$i;

    .line 16
    iget-object p1, p1, Landroidx/media3/common/t;->b:Landroidx/media3/common/t$h;

    if-eqz p1, :cond_1

    .line 17
    iget-object v0, p1, Landroidx/media3/common/t$h;->e:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/t$c;->g:Ljava/lang/String;

    .line 18
    iget-object v0, p1, Landroidx/media3/common/t$h;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/common/t$c;->c:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Landroidx/media3/common/t$h;->a:Landroid/net/Uri;

    iput-object v0, p0, Landroidx/media3/common/t$c;->b:Landroid/net/Uri;

    .line 20
    iget-object v0, p1, Landroidx/media3/common/t$h;->d:Ljava/util/List;

    iput-object v0, p0, Landroidx/media3/common/t$c;->f:Ljava/util/List;

    .line 21
    iget-object v0, p1, Landroidx/media3/common/t$h;->f:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Landroidx/media3/common/t$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 22
    iget-object v0, p1, Landroidx/media3/common/t$h;->h:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/media3/common/t$c;->i:Ljava/lang/Object;

    .line 23
    iget-object v0, p1, Landroidx/media3/common/t$h;->c:Landroidx/media3/common/t$f;

    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v0}, Landroidx/media3/common/t$f;->b()Landroidx/media3/common/t$f$a;

    move-result-object v0

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Landroidx/media3/common/t$f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/media3/common/t$f$a;-><init>(Landroidx/media3/common/t$a;)V

    :goto_0
    iput-object v0, p0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    .line 26
    iget-wide v0, p1, Landroidx/media3/common/t$h;->i:J

    iput-wide v0, p0, Landroidx/media3/common/t$c;->j:J

    :cond_1
    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/common/t;Landroidx/media3/common/t$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/common/t$c;-><init>(Landroidx/media3/common/t;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/media3/common/t;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/media3/common/t$f$a;->e(Landroidx/media3/common/t$f$a;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v1, v0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/media3/common/t$f$a;->f(Landroidx/media3/common/t$f$a;)Ljava/util/UUID;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 23
    :goto_1
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 24
    .line 25
    .line 26
    iget-object v3, v0, Landroidx/media3/common/t$c;->b:Landroid/net/Uri;

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    new-instance v14, Landroidx/media3/common/t$h;

    .line 32
    .line 33
    iget-object v4, v0, Landroidx/media3/common/t$c;->c:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v2, v0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    .line 36
    .line 37
    invoke-static {v2}, Landroidx/media3/common/t$f$a;->f(Landroidx/media3/common/t$f$a;)Ljava/util/UUID;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/media3/common/t$c;->e:Landroidx/media3/common/t$f$a;

    .line 44
    .line 45
    invoke-virtual {v1}, Landroidx/media3/common/t$f$a;->i()Landroidx/media3/common/t$f;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    :cond_2
    move-object v5, v1

    .line 50
    iget-object v7, v0, Landroidx/media3/common/t$c;->f:Ljava/util/List;

    .line 51
    .line 52
    iget-object v8, v0, Landroidx/media3/common/t$c;->g:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v9, v0, Landroidx/media3/common/t$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 55
    .line 56
    iget-object v10, v0, Landroidx/media3/common/t$c;->i:Ljava/lang/Object;

    .line 57
    .line 58
    iget-wide v11, v0, Landroidx/media3/common/t$c;->j:J

    .line 59
    .line 60
    const/4 v13, 0x0

    .line 61
    const/4 v6, 0x0

    .line 62
    move-object v2, v14

    .line 63
    invoke-direct/range {v2 .. v13}, Landroidx/media3/common/t$h;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroidx/media3/common/t$f;Landroidx/media3/common/t$b;Ljava/util/List;Ljava/lang/String;Lcom/google/common/collect/ImmutableList;Ljava/lang/Object;JLandroidx/media3/common/t$a;)V

    .line 64
    .line 65
    .line 66
    move-object/from16 v18, v14

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    move-object/from16 v18, v1

    .line 70
    .line 71
    :goto_2
    new-instance v1, Landroidx/media3/common/t;

    .line 72
    .line 73
    iget-object v2, v0, Landroidx/media3/common/t$c;->a:Ljava/lang/String;

    .line 74
    .line 75
    if-eqz v2, :cond_4

    .line 76
    .line 77
    :goto_3
    move-object/from16 v16, v2

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_4
    const-string v2, ""

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :goto_4
    iget-object v2, v0, Landroidx/media3/common/t$c;->d:Landroidx/media3/common/t$d$a;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroidx/media3/common/t$d$a;->g()Landroidx/media3/common/t$e;

    .line 86
    .line 87
    .line 88
    move-result-object v17

    .line 89
    iget-object v2, v0, Landroidx/media3/common/t$c;->l:Landroidx/media3/common/t$g$a;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroidx/media3/common/t$g$a;->f()Landroidx/media3/common/t$g;

    .line 92
    .line 93
    .line 94
    move-result-object v19

    .line 95
    iget-object v2, v0, Landroidx/media3/common/t$c;->k:Landroidx/media3/common/v;

    .line 96
    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    :goto_5
    move-object/from16 v20, v2

    .line 100
    .line 101
    goto :goto_6

    .line 102
    :cond_5
    sget-object v2, Landroidx/media3/common/v;->I:Landroidx/media3/common/v;

    .line 103
    .line 104
    goto :goto_5

    .line 105
    :goto_6
    iget-object v2, v0, Landroidx/media3/common/t$c;->m:Landroidx/media3/common/t$i;

    .line 106
    .line 107
    const/16 v22, 0x0

    .line 108
    .line 109
    move-object v15, v1

    .line 110
    move-object/from16 v21, v2

    .line 111
    .line 112
    invoke-direct/range {v15 .. v22}, Landroidx/media3/common/t;-><init>(Ljava/lang/String;Landroidx/media3/common/t$e;Landroidx/media3/common/t$h;Landroidx/media3/common/t$g;Landroidx/media3/common/v;Landroidx/media3/common/t$i;Landroidx/media3/common/t$a;)V

    .line 113
    .line 114
    .line 115
    return-object v1
.end method

.method public b(Ljava/lang/String;)Landroidx/media3/common/t$c;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/t$c;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public c(Landroidx/media3/common/t$g;)Landroidx/media3/common/t$c;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroidx/media3/common/t$g;->a()Landroidx/media3/common/t$g$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/media3/common/t$c;->l:Landroidx/media3/common/t$g$a;

    .line 6
    .line 7
    return-object p0
.end method

.method public d(Ljava/lang/String;)Landroidx/media3/common/t$c;
    .locals 0

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, Landroidx/media3/common/t$c;->a:Ljava/lang/String;

    .line 8
    .line 9
    return-object p0
.end method

.method public e(Ljava/lang/String;)Landroidx/media3/common/t$c;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/t$c;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(Ljava/util/List;)Landroidx/media3/common/t$c;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    iput-object p1, p0, Landroidx/media3/common/t$c;->f:Ljava/util/List;

    .line 24
    .line 25
    return-object p0
.end method

.method public g(Ljava/util/List;)Landroidx/media3/common/t$c;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Landroidx/media3/common/t$c;->h:Lcom/google/common/collect/ImmutableList;

    .line 6
    .line 7
    return-object p0
.end method

.method public h(Ljava/lang/Object;)Landroidx/media3/common/t$c;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/t$c;->i:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public i(Landroid/net/Uri;)Landroidx/media3/common/t$c;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/media3/common/t$c;->b:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method public j(Ljava/lang/String;)Landroidx/media3/common/t$c;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/media3/common/t$c;->i(Landroid/net/Uri;)Landroidx/media3/common/t$c;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
