.class public Lvv8;
.super Lpo0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvv8$d;,
        Lvv8$c;,
        Lvv8$b;
    }
.end annotation


# static fields
.field public static final i:[I


# instance fields
.field public final c:I

.field public final d:Lpo0;

.field public final e:Lpo0;

.field public final f:I

.field public final g:I

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-lez v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v2, v1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_0
    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    sput-object v1, Lvv8;->i:[I

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lvv8;->i:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lpo0;Lpo0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lpo0;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lvv8;->h:I

    .line 4
    iput-object p1, p0, Lvv8;->d:Lpo0;

    .line 5
    iput-object p2, p0, Lvv8;->e:Lpo0;

    .line 6
    invoke-virtual {p1}, Lpo0;->size()I

    move-result v0

    iput v0, p0, Lvv8;->f:I

    .line 7
    invoke-virtual {p2}, Lpo0;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lvv8;->c:I

    .line 8
    invoke-virtual {p1}, Lpo0;->n()I

    move-result p1

    invoke-virtual {p2}, Lpo0;->n()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lvv8;->g:I

    return-void
.end method

.method public synthetic constructor <init>(Lpo0;Lpo0;Lvv8$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lvv8;-><init>(Lpo0;Lpo0;)V

    return-void
.end method

.method public static synthetic A(Lvv8;)Lpo0;
    .locals 0

    iget-object p0, p0, Lvv8;->e:Lpo0;

    return-object p0
.end method

.method public static synthetic B()[I
    .locals 1

    sget-object v0, Lvv8;->i:[I

    return-object v0
.end method

.method public static C(Lpo0;Lpo0;)Lpo0;
    .locals 6

    instance-of v0, p0, Lvv8;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lvv8;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Lpo0;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p0}, Lpo0;->size()I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    move-object p0, p1

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0}, Lpo0;->size()I

    move-result v2

    invoke-virtual {p1}, Lpo0;->size()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x80

    if-ge v2, v3, :cond_3

    invoke-static {p0, p1}, Lvv8;->D(Lpo0;Lpo0;)Lqm5;

    move-result-object p0

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    iget-object v4, v0, Lvv8;->e:Lpo0;

    invoke-virtual {v4}, Lpo0;->size()I

    move-result v4

    invoke-virtual {p1}, Lpo0;->size()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v4, v3, :cond_4

    iget-object p0, v0, Lvv8;->e:Lpo0;

    invoke-static {p0, p1}, Lvv8;->D(Lpo0;Lpo0;)Lqm5;

    move-result-object p0

    new-instance p1, Lvv8;

    iget-object v0, v0, Lvv8;->d:Lpo0;

    invoke-direct {p1, v0, p0}, Lvv8;-><init>(Lpo0;Lpo0;)V

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-object v3, v0, Lvv8;->d:Lpo0;

    invoke-virtual {v3}, Lpo0;->n()I

    move-result v3

    iget-object v4, v0, Lvv8;->e:Lpo0;

    invoke-virtual {v4}, Lpo0;->n()I

    move-result v4

    if-le v3, v4, :cond_5

    invoke-virtual {v0}, Lvv8;->n()I

    move-result v3

    invoke-virtual {p1}, Lpo0;->n()I

    move-result v4

    if-le v3, v4, :cond_5

    new-instance p0, Lvv8;

    iget-object v1, v0, Lvv8;->e:Lpo0;

    invoke-direct {p0, v1, p1}, Lvv8;-><init>(Lpo0;Lpo0;)V

    new-instance p1, Lvv8;

    iget-object v0, v0, Lvv8;->d:Lpo0;

    invoke-direct {p1, v0, p0}, Lvv8;-><init>(Lpo0;Lpo0;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lpo0;->n()I

    move-result v0

    invoke-virtual {p1}, Lpo0;->n()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sget-object v3, Lvv8;->i:[I

    aget v0, v3, v0

    if-lt v2, v0, :cond_6

    new-instance v0, Lvv8;

    invoke-direct {v0, p0, p1}, Lvv8;-><init>(Lpo0;Lpo0;)V

    move-object p0, v0

    goto :goto_2

    :cond_6
    new-instance v0, Lvv8$b;

    invoke-direct {v0, v1}, Lvv8$b;-><init>(Lvv8$a;)V

    invoke-static {v0, p0, p1}, Lvv8$b;->a(Lvv8$b;Lpo0;Lpo0;)Lpo0;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method public static D(Lpo0;Lpo0;)Lqm5;
    .locals 4

    invoke-virtual {p0}, Lpo0;->size()I

    move-result v0

    invoke-virtual {p1}, Lpo0;->size()I

    move-result v1

    add-int v2, v0, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3, v3, v0}, Lpo0;->l([BIII)V

    invoke-virtual {p1, v2, v3, v0, v1}, Lpo0;->l([BIII)V

    new-instance p0, Lqm5;

    invoke-direct {p0, v2}, Lqm5;-><init>([B)V

    return-object p0
.end method

.method public static synthetic z(Lvv8;)Lpo0;
    .locals 0

    iget-object p0, p0, Lvv8;->d:Lpo0;

    return-object p0
.end method


# virtual methods
.method public final E(Lpo0;)Z
    .locals 11

    new-instance v0, Lvv8$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvv8$c;-><init>(Lpo0;Lvv8$a;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqm5;

    new-instance v3, Lvv8$c;

    invoke-direct {v3, p1, v1}, Lvv8$c;-><init>(Lpo0;Lvv8$a;)V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqm5;

    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    move v6, v5

    :goto_0
    invoke-virtual {v2}, Lqm5;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-virtual {p1}, Lqm5;->size()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-nez v4, :cond_0

    invoke-virtual {v2, p1, v5, v9}, Lqm5;->z(Lqm5;II)Z

    move-result v10

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2, v4, v9}, Lqm5;->z(Lqm5;II)Z

    move-result v10

    :goto_1
    if-nez v10, :cond_1

    return v1

    :cond_1
    add-int/2addr v6, v9

    iget v10, p0, Lvv8;->c:I

    if-lt v6, v10, :cond_3

    if-ne v6, v10, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_3
    if-ne v9, v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqm5;

    move v4, v1

    goto :goto_2

    :cond_4
    add-int/2addr v4, v9

    :goto_2
    if-ne v9, v8, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqm5;

    move v5, v1

    goto :goto_0

    :cond_5
    add-int/2addr v5, v9

    goto :goto_0
.end method

.method public F()Lpo0$a;
    .locals 2

    new-instance v0, Lvv8$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lvv8$d;-><init>(Lvv8;Lvv8$a;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lpo0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lpo0;

    iget v1, p0, Lvv8;->c:I

    invoke-virtual {p1}, Lpo0;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lvv8;->c:I

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget v0, p0, Lvv8;->h:I

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lpo0;->t()I

    move-result v0

    if-eqz v0, :cond_4

    iget v1, p0, Lvv8;->h:I

    if-eq v1, v0, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0, p1}, Lvv8;->E(Lpo0;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lvv8;->h:I

    if-nez v0, :cond_1

    iget v0, p0, Lvv8;->c:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lvv8;->r(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lvv8;->h:I

    :cond_1
    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 0

    invoke-virtual {p0}, Lvv8;->F()Lpo0$a;

    move-result-object p0

    return-object p0
.end method

.method public m([BIII)V
    .locals 2

    add-int v0, p2, p4

    iget v1, p0, Lvv8;->f:I

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lvv8;->d:Lpo0;

    invoke-virtual {p0, p1, p2, p3, p4}, Lpo0;->m([BIII)V

    goto :goto_0

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object p0, p0, Lvv8;->e:Lpo0;

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3, p4}, Lpo0;->m([BIII)V

    goto :goto_0

    :cond_1
    sub-int/2addr v1, p2

    iget-object v0, p0, Lvv8;->d:Lpo0;

    invoke-virtual {v0, p1, p2, p3, v1}, Lpo0;->m([BIII)V

    iget-object p0, p0, Lvv8;->e:Lpo0;

    add-int/2addr p3, v1

    sub-int/2addr p4, v1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lpo0;->m([BIII)V

    :goto_0
    return-void
.end method

.method public n()I
    .locals 0

    iget p0, p0, Lvv8;->g:I

    return p0
.end method

.method public o()Z
    .locals 2

    iget v0, p0, Lvv8;->c:I

    sget-object v1, Lvv8;->i:[I

    iget p0, p0, Lvv8;->g:I

    aget p0, v1, p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public p()Z
    .locals 3

    iget-object v0, p0, Lvv8;->d:Lpo0;

    iget v1, p0, Lvv8;->f:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lpo0;->s(III)I

    move-result v0

    iget-object p0, p0, Lvv8;->e:Lpo0;

    invoke-virtual {p0}, Lpo0;->size()I

    move-result v1

    invoke-virtual {p0, v0, v2, v1}, Lpo0;->s(III)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public r(III)I
    .locals 2

    add-int v0, p2, p3

    iget v1, p0, Lvv8;->f:I

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lvv8;->d:Lpo0;

    invoke-virtual {p0, p1, p2, p3}, Lpo0;->r(III)I

    move-result p0

    return p0

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object p0, p0, Lvv8;->e:Lpo0;

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Lpo0;->r(III)I

    move-result p0

    return p0

    :cond_1
    sub-int/2addr v1, p2

    iget-object v0, p0, Lvv8;->d:Lpo0;

    invoke-virtual {v0, p1, p2, v1}, Lpo0;->r(III)I

    move-result p1

    iget-object p0, p0, Lvv8;->e:Lpo0;

    const/4 p2, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p0, p1, p2, p3}, Lpo0;->r(III)I

    move-result p0

    return p0
.end method

.method public s(III)I
    .locals 2

    add-int v0, p2, p3

    iget v1, p0, Lvv8;->f:I

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lvv8;->d:Lpo0;

    invoke-virtual {p0, p1, p2, p3}, Lpo0;->s(III)I

    move-result p0

    return p0

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object p0, p0, Lvv8;->e:Lpo0;

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Lpo0;->s(III)I

    move-result p0

    return p0

    :cond_1
    sub-int/2addr v1, p2

    iget-object v0, p0, Lvv8;->d:Lpo0;

    invoke-virtual {v0, p1, p2, v1}, Lpo0;->s(III)I

    move-result p1

    iget-object p0, p0, Lvv8;->e:Lpo0;

    const/4 p2, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p0, p1, p2, p3}, Lpo0;->s(III)I

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lvv8;->c:I

    return p0
.end method

.method public t()I
    .locals 0

    iget p0, p0, Lvv8;->h:I

    return p0
.end method

.method public v(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lpo0;->u()[B

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public y(Ljava/io/OutputStream;II)V
    .locals 2

    add-int v0, p2, p3

    iget v1, p0, Lvv8;->f:I

    if-gt v0, v1, :cond_0

    iget-object p0, p0, Lvv8;->d:Lpo0;

    invoke-virtual {p0, p1, p2, p3}, Lpo0;->y(Ljava/io/OutputStream;II)V

    goto :goto_0

    :cond_0
    if-lt p2, v1, :cond_1

    iget-object p0, p0, Lvv8;->e:Lpo0;

    sub-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, p3}, Lpo0;->y(Ljava/io/OutputStream;II)V

    goto :goto_0

    :cond_1
    sub-int/2addr v1, p2

    iget-object v0, p0, Lvv8;->d:Lpo0;

    invoke-virtual {v0, p1, p2, v1}, Lpo0;->y(Ljava/io/OutputStream;II)V

    iget-object p0, p0, Lvv8;->e:Lpo0;

    const/4 p2, 0x0

    sub-int/2addr p3, v1

    invoke-virtual {p0, p1, p2, p3}, Lpo0;->y(Ljava/io/OutputStream;II)V

    :goto_0
    return-void
.end method
