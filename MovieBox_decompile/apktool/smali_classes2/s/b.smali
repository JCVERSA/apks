.class public final Ls/b;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls/b$a;
    }
.end annotation


# static fields
.field public static final m:Ls/b$a;

.field public static final n:I


# instance fields
.field private final a:Landroidx/compose/runtime/ComposerImpl;

.field private b:Ls/a;

.field private c:Z

.field private final d:Landroidx/compose/runtime/m0;

.field private e:Z

.field private f:I

.field private g:I

.field private h:Landroidx/compose/runtime/z2;

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ls/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ls/b;->m:Ls/b$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Ls/b;->n:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl;Ls/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls/b;->a:Landroidx/compose/runtime/ComposerImpl;

    .line 5
    .line 6
    iput-object p2, p0, Ls/b;->b:Ls/a;

    .line 7
    .line 8
    new-instance p1, Landroidx/compose/runtime/m0;

    .line 9
    .line 10
    invoke-direct {p1}, Landroidx/compose/runtime/m0;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Ls/b;->e:Z

    .line 17
    .line 18
    new-instance p1, Landroidx/compose/runtime/z2;

    .line 19
    .line 20
    invoke-direct {p1}, Landroidx/compose/runtime/z2;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    .line 24
    .line 25
    const/4 p1, -0x1

    .line 26
    iput p1, p0, Ls/b;->i:I

    .line 27
    .line 28
    iput p1, p0, Ls/b;->j:I

    .line 29
    .line 30
    iput p1, p0, Ls/b;->k:I

    .line 31
    .line 32
    return-void
.end method

.method private final A()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls/b;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B()V
    .locals 2

    .line 1
    iget v0, p0, Ls/b;->g:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Ls/b;->b:Ls/a;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ls/a;->G(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Ls/b;->g:I

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/z2;->d()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 22
    .line 23
    iget-object v1, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/compose/runtime/z2;->i()[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ls/a;->k([Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/runtime/z2;->a()V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method

.method private final C()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Ls/b;->I(Ls/b;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Ls/b;->K()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final D(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls/b;->H(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E(Ls/b;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Ls/b;->D(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final F(III)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2, p3}, Ls/a;->u(III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final G()V
    .locals 4

    .line 1
    iget v0, p0, Ls/b;->l:I

    .line 2
    .line 3
    if-lez v0, :cond_1

    .line 4
    .line 5
    iget v1, p0, Ls/b;->i:I

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    if-ltz v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, v1, v0}, Ls/b;->J(II)V

    .line 11
    .line 12
    .line 13
    iput v2, p0, Ls/b;->i:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v1, p0, Ls/b;->k:I

    .line 17
    .line 18
    iget v3, p0, Ls/b;->j:I

    .line 19
    .line 20
    invoke-direct {p0, v1, v3, v0}, Ls/b;->F(III)V

    .line 21
    .line 22
    .line 23
    iput v2, p0, Ls/b;->j:I

    .line 24
    .line 25
    iput v2, p0, Ls/b;->k:I

    .line 26
    .line 27
    :goto_0
    const/4 v0, 0x0

    .line 28
    iput v0, p0, Ls/b;->l:I

    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method private final H(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/compose/runtime/i2;->u()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroidx/compose/runtime/i2;->k()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    :goto_0
    iget v0, p0, Ls/b;->f:I

    .line 21
    .line 22
    sub-int v0, p1, v0

    .line 23
    .line 24
    if-ltz v0, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    :goto_1
    if-nez v1, :cond_2

    .line 30
    .line 31
    const-string v1, "Tried to seek backward"

    .line 32
    .line 33
    invoke-static {v1}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_2
    if-lez v0, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Ls/b;->b:Ls/a;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ls/a;->e(I)V

    .line 41
    .line 42
    .line 43
    iput p1, p0, Ls/b;->f:I

    .line 44
    .line 45
    :cond_3
    return-void
.end method

.method static synthetic I(Ls/b;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1}, Ls/b;->H(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final J(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Ls/a;->x(II)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final k(Landroidx/compose/runtime/c;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    invoke-static {p0, v1, v2, v0}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ls/a;->o(Landroidx/compose/runtime/c;)V

    .line 10
    .line 11
    .line 12
    iput-boolean v2, p0, Ls/b;->c:Z

    .line 13
    .line 14
    return-void
.end method

.method private final l()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ls/b;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Ls/b;->e:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-static {p0, v0, v2, v1}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 16
    .line 17
    invoke-virtual {v0}, Ls/a;->p()V

    .line 18
    .line 19
    .line 20
    iput-boolean v2, p0, Ls/b;->c:Z

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private final q()Landroidx/compose/runtime/i2;
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->a:Landroidx/compose/runtime/ComposerImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl;->E0()Landroidx/compose/runtime/i2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final K()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/i2;->x()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroidx/compose/runtime/i2;->u()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    iget-object v2, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    .line 20
    .line 21
    const/4 v3, -0x2

    .line 22
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/m0;->h(I)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eq v2, v1, :cond_0

    .line 27
    .line 28
    invoke-direct {p0}, Ls/b;->l()V

    .line 29
    .line 30
    .line 31
    if-lez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/i2;->a(I)Landroidx/compose/runtime/c;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v2, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    .line 38
    .line 39
    invoke-virtual {v2, v1}, Landroidx/compose/runtime/m0;->j(I)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v0}, Ls/b;->k(Landroidx/compose/runtime/c;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method public final L()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->B()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Ls/b;->c:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ls/b;->U()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ls/b;->j()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final M(Landroidx/compose/runtime/b2;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ls/a;->v(Landroidx/compose/runtime/b2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final N()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ls/b;->C()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 5
    .line 6
    invoke-virtual {v0}, Ls/a;->w()V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Ls/b;->f:I

    .line 10
    .line 11
    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroidx/compose/runtime/i2;->p()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    add-int/2addr v0, v1

    .line 20
    iput v0, p0, Ls/b;->f:I

    .line 21
    .line 22
    return-void
.end method

.method public final O(II)V
    .locals 2

    .line 1
    if-lez p2, :cond_3

    .line 2
    .line 3
    if-ltz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v1, "Invalid remove index "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget v0, p0, Ls/b;->i:I

    .line 31
    .line 32
    if-ne v0, p1, :cond_2

    .line 33
    .line 34
    iget p1, p0, Ls/b;->l:I

    .line 35
    .line 36
    add-int/2addr p1, p2

    .line 37
    iput p1, p0, Ls/b;->l:I

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-direct {p0}, Ls/b;->G()V

    .line 41
    .line 42
    .line 43
    iput p1, p0, Ls/b;->i:I

    .line 44
    .line 45
    iput p2, p0, Ls/b;->l:I

    .line 46
    .line 47
    :cond_3
    :goto_1
    return-void
.end method

.method public final P()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls/a;->y()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final Q()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ls/b;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroidx/compose/runtime/m0;->a()V

    .line 7
    .line 8
    .line 9
    iput v0, p0, Ls/b;->f:I

    .line 10
    .line 11
    return-void
.end method

.method public final R(Ls/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    return-void
.end method

.method public final S(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ls/b;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public final T(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ls/a;->z(Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final U()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls/a;->A()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final V(I)V
    .locals 1

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    invoke-direct {p0}, Ls/b;->C()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ls/a;->B(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final W(Ljava/lang/Object;Landroidx/compose/runtime/c;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ls/a;->C(Ljava/lang/Object;Landroidx/compose/runtime/c;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final X(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ls/a;->D(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final Y(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Ls/a;->E(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Z(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Ls/b;->D(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Ls/a;->F(Ljava/lang/Object;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final a(Landroidx/compose/runtime/c;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ls/a;->f(Landroidx/compose/runtime/c;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final a0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ls/a;->H(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final b(Ljava/util/List;Landroidx/compose/runtime/internal/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ls/a;->g(Ljava/util/List;Landroidx/compose/runtime/internal/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Landroidx/compose/runtime/x0;Landroidx/compose/runtime/m;Landroidx/compose/runtime/y0;Landroidx/compose/runtime/y0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Ls/a;->h(Landroidx/compose/runtime/x0;Landroidx/compose/runtime/m;Landroidx/compose/runtime/y0;Landroidx/compose/runtime/y0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {p0, v2, v0, v1}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Ls/a;->i()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final e(Landroidx/compose/runtime/internal/c;Landroidx/compose/runtime/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->B()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Ls/a;->j(Landroidx/compose/runtime/internal/c;Landroidx/compose/runtime/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final f(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ls/a;->l(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/l;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final g()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/i2;->u()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    .line 10
    .line 11
    const/4 v2, -0x1

    .line 12
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/m0;->h(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x1

    .line 18
    if-gt v1, v0, :cond_0

    .line 19
    .line 20
    move v1, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v1, v3

    .line 23
    :goto_0
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, "Missed recording an endGroup"

    .line 26
    .line 27
    invoke-static {v1}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v1, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroidx/compose/runtime/m0;->h(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-ne v1, v0, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {p0, v3, v4, v0}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/compose/runtime/m0;->i()I

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 48
    .line 49
    invoke-virtual {v0}, Ls/a;->m()V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public final h()V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ls/a;->n()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ls/b;->f:I

    .line 8
    .line 9
    return-void
.end method

.method public final i()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls/b;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final j()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Ls/b;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v0, v1, v2}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1, v2}, Ls/b;->E(Ls/b;ZILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Ls/b;->b:Ls/a;

    .line 15
    .line 16
    invoke-virtual {v1}, Ls/a;->m()V

    .line 17
    .line 18
    .line 19
    iput-boolean v0, p0, Ls/b;->c:Z

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->B()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls/b;->d:Landroidx/compose/runtime/m0;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/runtime/m0;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "Missed recording an endGroup()"

    .line 13
    .line 14
    invoke-static {v0}, Landroidx/compose/runtime/k;->r(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final n()Ls/a;
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ls/b;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public final p()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/i2;->u()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Ls/b;->f:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public final r(Ls/a;Landroidx/compose/runtime/internal/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ls/a;->q(Ls/a;Landroidx/compose/runtime/internal/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final s(Landroidx/compose/runtime/c;Landroidx/compose/runtime/j2;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->B()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ls/b;->C()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ls/b;->G()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2}, Ls/a;->r(Landroidx/compose/runtime/c;Landroidx/compose/runtime/j2;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final t(Landroidx/compose/runtime/c;Landroidx/compose/runtime/j2;Ls/c;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->B()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Ls/b;->C()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ls/b;->G()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 11
    .line 12
    invoke-virtual {v0, p1, p2, p3}, Ls/a;->s(Landroidx/compose/runtime/c;Landroidx/compose/runtime/j2;Ls/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final u(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->C()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls/b;->b:Ls/a;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ls/a;->t(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final v(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->G()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/z2;->h(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final w(III)V
    .locals 3

    .line 1
    if-lez p3, :cond_1

    .line 2
    .line 3
    iget v0, p0, Ls/b;->l:I

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget v1, p0, Ls/b;->j:I

    .line 8
    .line 9
    sub-int v2, p1, v0

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    iget v1, p0, Ls/b;->k:I

    .line 14
    .line 15
    sub-int v2, p2, v0

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    add-int/2addr v0, p3

    .line 20
    iput v0, p0, Ls/b;->l:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-direct {p0}, Ls/b;->G()V

    .line 24
    .line 25
    .line 26
    iput p1, p0, Ls/b;->j:I

    .line 27
    .line 28
    iput p2, p0, Ls/b;->k:I

    .line 29
    .line 30
    iput p3, p0, Ls/b;->l:I

    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method public final x(I)V
    .locals 2

    .line 1
    iget v0, p0, Ls/b;->f:I

    .line 2
    .line 3
    invoke-direct {p0}, Ls/b;->q()Landroidx/compose/runtime/i2;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroidx/compose/runtime/i2;->k()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    sub-int/2addr p1, v1

    .line 12
    add-int/2addr v0, p1

    .line 13
    iput v0, p0, Ls/b;->f:I

    .line 14
    .line 15
    return-void
.end method

.method public final y(I)V
    .locals 0

    .line 1
    iput p1, p0, Ls/b;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final z()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ls/b;->G()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/compose/runtime/z2;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Ls/b;->h:Landroidx/compose/runtime/z2;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/runtime/z2;->g()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget v0, p0, Ls/b;->g:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    iput v0, p0, Ls/b;->g:I

    .line 23
    .line 24
    :goto_0
    return-void
.end method
