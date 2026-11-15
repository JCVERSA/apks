.class public final Lcom/google/common/base/o;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/base/o$d;,
        Lcom/google/common/base/o$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/common/base/b;

.field private final b:Z

.field private final c:Lcom/google/common/base/o$d;

.field private final d:I


# direct methods
.method private constructor <init>(Lcom/google/common/base/o$d;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/base/b;->i()Lcom/google/common/base/b;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/o$d;ZLcom/google/common/base/b;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/common/base/o$d;ZLcom/google/common/base/b;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/common/base/o;->c:Lcom/google/common/base/o$d;

    .line 4
    iput-boolean p2, p0, Lcom/google/common/base/o;->b:Z

    .line 5
    iput-object p3, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/b;

    .line 6
    iput p4, p0, Lcom/google/common/base/o;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/common/base/o;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/common/base/o;->j(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic b(Lcom/google/common/base/o;)Lcom/google/common/base/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/google/common/base/o;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/common/base/o;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/google/common/base/o;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/common/base/o;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public static f(C)Lcom/google/common/base/o;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/common/base/b;->f(C)Lcom/google/common/base/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/google/common/base/o;->g(Lcom/google/common/base/b;)Lcom/google/common/base/o;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static g(Lcom/google/common/base/b;)Lcom/google/common/base/o;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/base/o;

    .line 5
    .line 6
    new-instance v1, Lcom/google/common/base/o$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/google/common/base/o$a;-><init>(Lcom/google/common/base/b;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/o$d;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private j(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/base/o;->c:Lcom/google/common/base/o$d;

    .line 2
    .line 3
    invoke-interface {v0, p0, p1}, Lcom/google/common/base/o$d;->a(Lcom/google/common/base/o;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method


# virtual methods
.method public e()Lcom/google/common/base/o;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/common/base/o;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/base/o;->c:Lcom/google/common/base/o$d;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/common/base/o;->a:Lcom/google/common/base/b;

    .line 6
    .line 7
    iget v3, p0, Lcom/google/common/base/o;->d:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/o$d;ZLcom/google/common/base/b;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public h(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/base/o$b;

    .line 5
    .line 6
    invoke-direct {v0, p0, p1}, Lcom/google/common/base/o$b;-><init>(Lcom/google/common/base/o;Ljava/lang/CharSequence;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public i(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/google/common/base/o;->j(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method

.method public k()Lcom/google/common/base/o;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/base/b;->k()Lcom/google/common/base/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/common/base/o;->l(Lcom/google/common/base/b;)Lcom/google/common/base/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public l(Lcom/google/common/base/b;)Lcom/google/common/base/o;
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/common/base/o;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/common/base/o;->c:Lcom/google/common/base/o$d;

    .line 7
    .line 8
    iget-boolean v2, p0, Lcom/google/common/base/o;->b:Z

    .line 9
    .line 10
    iget v3, p0, Lcom/google/common/base/o;->d:I

    .line 11
    .line 12
    invoke-direct {v0, v1, v2, p1, v3}, Lcom/google/common/base/o;-><init>(Lcom/google/common/base/o$d;ZLcom/google/common/base/b;I)V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method
