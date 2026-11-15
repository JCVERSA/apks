.class public final Lxga;
.super Lifa;
.source "SourceFile"


# static fields
.field public static final n:[C

.field public static final o:Lxga;


# instance fields
.field public l:[C

.field public final m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [C

    sput-object v1, Lxga;->n:[C

    new-instance v2, Lxga;

    invoke-direct {v2, v1, v0}, Lxga;-><init>([CZ)V

    sput-object v2, Lxga;->o:Lxga;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lxga;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lxga;-><init>([CZ)V

    return-void
.end method

.method public constructor <init>([CZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lifa;-><init>()V

    .line 4
    iput-object p1, p0, Lxga;->l:[C

    .line 5
    iput-boolean p2, p0, Lxga;->m:Z

    return-void
.end method

.method public static l0([C[C)[C
    .locals 3

    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [C

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static s0([CI)[C
    .locals 1

    array-length v0, p0

    invoke-static {p0, p1, v0}, Lxga;->t0([CII)[C

    move-result-object p0

    return-object p0
.end method

.method public static t0([CII)[C
    .locals 2

    sub-int/2addr p2, p1

    new-array v0, p2, [C

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public F(Lfreemarker/core/Environment;)V
    .locals 0

    invoke-virtual {p1}, Lfreemarker/core/Environment;->a1()Ljava/io/Writer;

    move-result-object p1

    iget-object p0, p0, Lxga;->l:[C

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write([C)V

    return-void
.end method

.method public J(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lxga;->l:[C

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    iget-boolean p0, p0, Lxga;->m:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "<#noparse>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</#noparse>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "text "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lxga;->l:[C

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Ln0a;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public X()Z
    .locals 5

    invoke-virtual {p0}, Lxga;->Z()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lxga;->l:[C

    array-length v0, v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_4

    iget-object v3, p0, Lxga;->l:[C

    aget-char v3, v3, v0

    const/16 v4, 0xa

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    return v2
.end method

.method public Y()Z
    .locals 5

    invoke-virtual {p0}, Lxga;->Z()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lxga;->l:[C

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v0, v3, :cond_4

    aget-char v2, v2, v0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    return v4
.end method

.method public Z()Z
    .locals 5

    iget-object v0, p0, Lxga;->l:[C

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Ln0a;->y([C)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0}, Lifa;->U()Lifa;

    move-result-object v0

    invoke-virtual {v0}, Lifa;->U()Lifa;

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lifa;->g0()Lifa;

    move-result-object v3

    invoke-virtual {p0}, Lifa;->c0()Lifa;

    move-result-object v4

    if-nez v3, :cond_3

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0, v3}, Lxga;->q0(Lifa;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    if-nez v4, :cond_5

    if-nez v0, :cond_7

    :cond_5
    invoke-virtual {p0, v4}, Lxga;->q0(Lifa;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :cond_7
    :goto_1
    return v1
.end method

.method public e0(Z)Lifa;
    .locals 4

    iget-object v0, p0, Lxga;->l:[C

    array-length v0, v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lxga;->m0()Z

    move-result v0

    invoke-virtual {p0}, Lxga;->n0()Z

    move-result v1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lxga;->l:[C

    array-length p1, p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lifa;->U()Lifa;

    move-result-object p1

    invoke-virtual {p1}, Lifa;->U()Lifa;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lifa;->g0()Lifa;

    move-result-object p1

    if-nez p1, :cond_2

    return-object p0

    :cond_2
    const/4 p1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lxga;->u0()I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, p1

    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {p0}, Lxga;->r0()I

    move-result v1

    goto :goto_1

    :cond_4
    move v1, p1

    :goto_1
    if-nez v1, :cond_5

    if-nez v0, :cond_5

    return-object p0

    :cond_5
    iget-object v2, p0, Lxga;->l:[C

    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-static {v2, v1, v3}, Lxga;->t0([CII)[C

    move-result-object v2

    iput-object v2, p0, Lxga;->l:[C

    if-lez v1, :cond_6

    iget v1, p0, Lfreemarker/core/t1;->d:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lfreemarker/core/t1;->d:I

    iput v2, p0, Lfreemarker/core/t1;->c:I

    :cond_6
    if-lez v0, :cond_7

    iput p1, p0, Lfreemarker/core/t1;->e:I

    :cond_7
    :goto_2
    return-object p0
.end method

.method public final m0()Z
    .locals 7

    invoke-virtual {p0}, Lifa;->d0()Lifa;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_6

    iget v3, v0, Lfreemarker/core/t1;->d:I

    iget v4, p0, Lfreemarker/core/t1;->f:I

    if-ne v3, v4, :cond_6

    instance-of v3, v0, Lz9b;

    if-eqz v3, :cond_5

    move-object v3, v0

    check-cast v3, Lz9b;

    iget-boolean v4, v3, Lz9b;->p:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iget-boolean v3, v3, Lz9b;->q:Z

    if-nez v3, :cond_0

    move v2, v5

    :cond_0
    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lxga;->p0()I

    move-result v2

    if-gez v2, :cond_1

    iget v3, p0, Lfreemarker/core/t1;->c:I

    if-ne v3, v5, :cond_4

    :cond_1
    iget-object v3, p0, Lxga;->l:[C

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v1, v2}, Lxga;->t0([CII)[C

    move-result-object v3

    iget-object v4, p0, Lxga;->l:[C

    invoke-static {v4, v2}, Lxga;->s0([CI)[C

    move-result-object v2

    invoke-static {v2}, Ln0a;->y([C)Z

    move-result v4

    if-eqz v4, :cond_2

    iput-object v3, p0, Lxga;->l:[C

    iput v1, p0, Lfreemarker/core/t1;->e:I

    goto :goto_2

    :cond_2
    move v4, v1

    :goto_1
    aget-char v6, v2, v4

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v2, v4}, Lxga;->s0([CI)[C

    move-result-object v2

    invoke-static {v3, v2}, Lxga;->l0([C[C)[C

    move-result-object v2

    iput-object v2, p0, Lxga;->l:[C

    :cond_4
    :goto_2
    move v2, v5

    :cond_5
    invoke-virtual {v0}, Lifa;->d0()Lifa;

    move-result-object v0

    goto :goto_0

    :cond_6
    return v2
.end method

.method public final n0()Z
    .locals 9

    invoke-virtual {p0}, Lifa;->f0()Lifa;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-eqz v0, :cond_a

    iget v3, v0, Lfreemarker/core/t1;->f:I

    iget v4, p0, Lfreemarker/core/t1;->d:I

    if-ne v3, v4, :cond_a

    instance-of v3, v0, Lz9b;

    if-eqz v3, :cond_9

    move-object v3, v0

    check-cast v3, Lz9b;

    iget-boolean v4, v3, Lz9b;->p:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iget-boolean v4, v3, Lz9b;->q:Z

    if-nez v4, :cond_0

    move v2, v5

    :cond_0
    iget-boolean v3, v3, Lz9b;->q:Z

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lxga;->o0()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1

    return v1

    :cond_1
    iget-object v4, p0, Lxga;->l:[C

    array-length v6, v4

    if-le v6, v3, :cond_2

    aget-char v6, v4, v2

    const/16 v7, 0xd

    if-ne v6, v7, :cond_2

    aget-char v6, v4, v3

    const/16 v7, 0xa

    if-ne v6, v7, :cond_2

    add-int/lit8 v3, v2, 0x2

    :cond_2
    invoke-static {v4, v3}, Lxga;->s0([CI)[C

    move-result-object v2

    iget-object v4, p0, Lxga;->l:[C

    invoke-static {v4, v1, v3}, Lxga;->t0([CII)[C

    move-result-object v3

    invoke-static {v3}, Ln0a;->y([C)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v2, p0, Lxga;->l:[C

    iget v2, p0, Lfreemarker/core/t1;->d:I

    add-int/2addr v2, v5

    iput v2, p0, Lfreemarker/core/t1;->d:I

    iput v5, p0, Lfreemarker/core/t1;->c:I

    goto :goto_4

    :cond_3
    array-length v3, v3

    sub-int/2addr v3, v5

    :goto_1
    iget-object v4, p0, Lxga;->l:[C

    aget-char v4, v4, v3

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lxga;->l:[C

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4, v1, v3}, Lxga;->t0([CII)[C

    move-result-object v3

    invoke-static {v2}, Ln0a;->y([C)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lifa;->d0()Lifa;

    move-result-object v4

    move v6, v5

    :goto_2
    if-eqz v4, :cond_7

    iget v7, v4, Lfreemarker/core/t1;->d:I

    iget v8, p0, Lfreemarker/core/t1;->f:I

    if-ne v7, v8, :cond_7

    invoke-virtual {v4}, Lifa;->X()Z

    move-result v7

    if-eqz v7, :cond_5

    move v6, v1

    :cond_5
    instance-of v7, v4, Lz9b;

    if-eqz v7, :cond_6

    move-object v7, v4

    check-cast v7, Lz9b;

    iget-boolean v7, v7, Lz9b;->p:Z

    if-eqz v7, :cond_6

    move v6, v5

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lifa;->d0()Lifa;

    move-result-object v4

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    sget-object v2, Lxga;->n:[C

    :cond_8
    invoke-static {v3, v2}, Lxga;->l0([C[C)[C

    move-result-object v2

    iput-object v2, p0, Lxga;->l:[C

    :goto_4
    move v2, v5

    :cond_9
    invoke-virtual {v0}, Lifa;->f0()Lifa;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    return v2
.end method

.method public final o0()I
    .locals 3

    iget-object p0, p0, Lxga;->l:[C

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    aget-char v1, p0, v0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final p0()I
    .locals 3

    iget-object p0, p0, Lxga;->l:[C

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    aget-char v1, p0, v0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public final q0(Lifa;)Z
    .locals 0

    instance-of p0, p1, Lfreemarker/core/e1;

    if-nez p0, :cond_1

    instance-of p0, p1, Lfreemarker/core/e;

    if-nez p0, :cond_1

    instance-of p0, p1, Lbj;

    if-nez p0, :cond_1

    instance-of p0, p1, Lfreemarker/core/n1;

    if-nez p0, :cond_1

    instance-of p0, p1, Lfreemarker/core/b1;

    if-nez p0, :cond_1

    instance-of p0, p1, Lda1;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    const-string p0, "#text"

    return-object p0
.end method

.method public final r0()I
    .locals 6

    invoke-virtual {p0}, Lxga;->o0()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget v1, p0, Lfreemarker/core/t1;->c:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lxga;->l:[C

    array-length v4, v3

    if-le v4, v1, :cond_1

    if-lez v1, :cond_1

    aget-char v4, v3, v0

    const/16 v5, 0xd

    if-ne v4, v5, :cond_1

    aget-char v4, v3, v1

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    add-int/lit8 v1, v0, 0x2

    :cond_1
    invoke-static {v3, v2, v1}, Ln0a;->A([CII)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lifa;->f0()Lifa;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    iget v3, v0, Lfreemarker/core/t1;->f:I

    iget v4, p0, Lfreemarker/core/t1;->d:I

    if-ne v3, v4, :cond_4

    invoke-virtual {v0}, Lifa;->X()Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {v0}, Lifa;->f0()Lifa;

    move-result-object v0

    goto :goto_0

    :cond_4
    return v1
.end method

.method public s()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public t(I)Ljw7;
    .locals 0

    if-nez p1, :cond_0

    sget-object p0, Ljw7;->E:Ljw7;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public u(I)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/String;

    iget-object p0, p0, Lxga;->l:[C

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public final u0()I
    .locals 5

    invoke-virtual {p0}, Lxga;->p0()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    iget v1, p0, Lfreemarker/core/t1;->c:I

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lxga;->l:[C

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ln0a;->z([CI)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lifa;->d0()Lifa;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    iget v2, v1, Lfreemarker/core/t1;->d:I

    iget v4, p0, Lfreemarker/core/t1;->f:I

    if-ne v2, v4, :cond_3

    invoke-virtual {v1}, Lifa;->Y()Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {v1}, Lifa;->d0()Lifa;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lxga;->l:[C

    array-length p0, p0

    sub-int/2addr p0, v0

    return p0
.end method
