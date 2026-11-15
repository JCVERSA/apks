.class public final Lhv9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhv9$d;,
        Lhv9$c;
    }
.end annotation


# instance fields
.field public final a:Lev0;

.field public final b:Z

.field public final c:Lhv9$d;

.field public final d:I


# direct methods
.method public constructor <init>(Lhv9$d;)V
    .locals 3

    .line 1
    invoke-static {}, Lev0;->i()Lev0;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v0, v1}, Lhv9;-><init>(Lhv9$d;ZLev0;I)V

    return-void
.end method

.method public constructor <init>(Lhv9$d;ZLev0;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lhv9;->c:Lhv9$d;

    .line 4
    iput-boolean p2, p0, Lhv9;->b:Z

    .line 5
    iput-object p3, p0, Lhv9;->a:Lev0;

    .line 6
    iput p4, p0, Lhv9;->d:I

    return-void
.end method

.method public static synthetic a(Lhv9;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0, p1}, Lhv9;->j(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lhv9;)Lev0;
    .locals 0

    iget-object p0, p0, Lhv9;->a:Lev0;

    return-object p0
.end method

.method public static synthetic c(Lhv9;)Z
    .locals 0

    iget-boolean p0, p0, Lhv9;->b:Z

    return p0
.end method

.method public static synthetic d(Lhv9;)I
    .locals 0

    iget p0, p0, Lhv9;->d:I

    return p0
.end method

.method public static f(C)Lhv9;
    .locals 0

    invoke-static {p0}, Lev0;->f(C)Lev0;

    move-result-object p0

    invoke-static {p0}, Lhv9;->g(Lev0;)Lhv9;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lev0;)Lhv9;
    .locals 2

    invoke-static {p0}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhv9;

    new-instance v1, Lhv9$a;

    invoke-direct {v1, p0}, Lhv9$a;-><init>(Lev0;)V

    invoke-direct {v0, v1}, Lhv9;-><init>(Lhv9$d;)V

    return-object v0
.end method


# virtual methods
.method public e()Lhv9;
    .locals 4

    new-instance v0, Lhv9;

    iget-object v1, p0, Lhv9;->c:Lhv9$d;

    iget-object v2, p0, Lhv9;->a:Lev0;

    iget p0, p0, Lhv9;->d:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2, p0}, Lhv9;-><init>(Lhv9$d;ZLev0;I)V

    return-object v0
.end method

.method public h(Ljava/lang/CharSequence;)Ljava/lang/Iterable;
    .locals 1

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhv9$b;

    invoke-direct {v0, p0, p1}, Lhv9$b;-><init>(Lhv9;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public i(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 1

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lhv9;->j(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final j(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lhv9;->c:Lhv9$d;

    invoke-interface {v0, p0, p1}, Lhv9$d;->a(Lhv9;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public k()Lhv9;
    .locals 1

    invoke-static {}, Lev0;->k()Lev0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhv9;->l(Lev0;)Lhv9;

    move-result-object p0

    return-object p0
.end method

.method public l(Lev0;)Lhv9;
    .locals 3

    invoke-static {p1}, Lxd8;->o(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lhv9;

    iget-object v1, p0, Lhv9;->c:Lhv9$d;

    iget-boolean v2, p0, Lhv9;->b:Z

    iget p0, p0, Lhv9;->d:I

    invoke-direct {v0, v1, v2, p1, p0}, Lhv9;-><init>(Lhv9$d;ZLev0;I)V

    return-object v0
.end method
