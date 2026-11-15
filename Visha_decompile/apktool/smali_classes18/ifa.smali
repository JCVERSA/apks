.class public abstract Lifa;
.super Lfreemarker/core/t1;
.source "SourceFile"

# interfaces
.implements Ljavax/swing/tree/TreeNode;


# instance fields
.field public g:Lifa;

.field public h:Lifa;

.field public i:[Lifa;

.field public j:I

.field public k:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lfreemarker/core/t1;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract F(Lfreemarker/core/Environment;)V
.end method

.method public final G(ILifa;)V
    .locals 5

    iget v0, p0, Lifa;->j:I

    iget-object v1, p0, Lifa;->i:[Lifa;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x6

    new-array v1, v1, [Lifa;

    iput-object v1, p0, Lifa;->i:[Lifa;

    goto :goto_1

    :cond_0
    array-length v3, v1

    if-ne v0, v3, :cond_2

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v0, 0x2

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Lifa;->k0(I)V

    iget-object v1, p0, Lifa;->i:[Lifa;

    :cond_2
    :goto_1
    move v3, v0

    :goto_2
    if-le v3, p1, :cond_3

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v1, v4

    iput v3, v4, Lifa;->k:I

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_3
    iput p1, p2, Lifa;->k:I

    iput-object p0, p2, Lifa;->g:Lifa;

    aput-object p2, v1, p1

    add-int/2addr v0, v2

    iput v0, p0, Lifa;->j:I

    return-void
.end method

.method public final H(Lifa;)V
    .locals 1

    iget v0, p0, Lifa;->j:I

    invoke-virtual {p0, v0, p1}, Lifa;->G(ILifa;)V

    return-void
.end method

.method public I()Ljava/util/Enumeration;
    .locals 2

    iget-object v0, p0, Lifa;->h:Lifa;

    instance-of v1, v0, Laq6;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lifa;->I()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v0, p0, Lifa;->i:[Lifa;

    if-eqz v0, :cond_2

    new-instance v1, Lxzc;

    iget p0, p0, Lifa;->j:I

    invoke-direct {v1, v0, p0}, Lxzc;-><init>([Ljava/lang/Object;I)V

    return-object v1

    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method public abstract J(Z)Ljava/lang/String;
.end method

.method public K(I)Ljavax/swing/tree/TreeNode;
    .locals 3

    iget-object v0, p0, Lifa;->h:Lifa;

    instance-of v1, v0, Laq6;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lifa;->K(I)Ljavax/swing/tree/TreeNode;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "invalid index"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget v0, p0, Lifa;->j:I

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lifa;->i:[Lifa;

    aget-object p0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget p0, p0, Lifa;->j:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Template element has no children"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public L()I
    .locals 2

    iget-object v0, p0, Lifa;->h:Lifa;

    instance-of v1, v0, Laq6;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lifa;->L()I

    move-result p0

    return p0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    iget p0, p0, Lifa;->j:I

    return p0
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lifa;->J(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final N()Lifa;
    .locals 1

    iget-object v0, p0, Lifa;->h:Lifa;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lifa;->j:I

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lifa;->i:[Lifa;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final O()Lifa;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lifa;->a0()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lfreemarker/core/e1;

    if-nez v0, :cond_0

    instance-of v0, p0, Lfreemarker/core/g;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lifa;->N()Lifa;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public P(Ljavax/swing/tree/TreeNode;)I
    .locals 2

    iget-object v0, p0, Lifa;->h:Lifa;

    instance-of v1, v0, Laq6;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lifa;->P(Ljavax/swing/tree/TreeNode;)I

    move-result p0

    return p0

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_3

    return v1

    :cond_1
    :goto_0
    iget v0, p0, Lifa;->j:I

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lifa;->i:[Lifa;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final Q()Lifa;
    .locals 1

    iget-object v0, p0, Lifa;->h:Lifa;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget v0, p0, Lifa;->j:I

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lifa;->i:[Lifa;

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public final R()Lifa;
    .locals 1

    :goto_0
    invoke-virtual {p0}, Lifa;->a0()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p0, Lfreemarker/core/e1;

    if-nez v0, :cond_0

    instance-of v0, p0, Lfreemarker/core/g;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lifa;->Q()Lifa;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final S()Lifa;
    .locals 0

    iget-object p0, p0, Lifa;->h:Lifa;

    return-object p0
.end method

.method public T()Ljavax/swing/tree/TreeNode;
    .locals 0

    iget-object p0, p0, Lifa;->g:Lifa;

    return-object p0
.end method

.method public final U()Lifa;
    .locals 0

    iget-object p0, p0, Lifa;->g:Lifa;

    return-object p0
.end method

.method public final V(I)Lifa;
    .locals 0

    iget-object p0, p0, Lifa;->i:[Lifa;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public final W()I
    .locals 0

    iget p0, p0, Lifa;->j:I

    return p0
.end method

.method public X()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public Y()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public Z()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public a0()Z
    .locals 1

    iget-object v0, p0, Lifa;->h:Lifa;

    if-nez v0, :cond_0

    iget p0, p0, Lifa;->j:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public b0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c0()Lifa;
    .locals 4

    iget-object v0, p0, Lifa;->g:Lifa;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget p0, p0, Lifa;->k:I

    add-int/lit8 v2, p0, 0x1

    iget v3, v0, Lifa;->j:I

    if-ge v2, v3, :cond_1

    iget-object v0, v0, Lifa;->i:[Lifa;

    add-int/lit8 p0, p0, 0x1

    aget-object v1, v0, p0

    :cond_1
    return-object v1
.end method

.method public d0()Lifa;
    .locals 1

    invoke-virtual {p0}, Lifa;->c0()Lifa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lifa;->O()Lifa;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lifa;->g:Lifa;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lifa;->d0()Lifa;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public e0(Z)Lifa;
    .locals 7

    iget v0, p0, Lifa;->j:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lifa;->i:[Lifa;

    aget-object v4, v4, v3

    invoke-virtual {v4, p1}, Lifa;->e0(Z)Lifa;

    move-result-object v4

    iget-object v5, p0, Lifa;->i:[Lifa;

    aput-object v4, v5, v3

    iput-object p0, v4, Lifa;->g:Lifa;

    iput v3, v4, Lifa;->k:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    move p1, v2

    :goto_1
    if-ge p1, v0, :cond_3

    iget-object v3, p0, Lifa;->i:[Lifa;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Lifa;->Z()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, -0x1

    move v3, p1

    :goto_2
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lifa;->i:[Lifa;

    add-int/lit8 v5, v3, 0x1

    aget-object v6, v4, v5

    aput-object v6, v4, v3

    iput v3, v6, Lifa;->k:I

    move v3, v5

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lifa;->i:[Lifa;

    aput-object v1, v3, v0

    iput v0, p0, Lifa;->j:I

    add-int/lit8 p1, p1, -0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lifa;->i:[Lifa;

    array-length v1, p1

    if-ge v0, v1, :cond_7

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x4

    if-gt v0, p1, :cond_7

    new-array p1, v0, [Lifa;

    :goto_3
    if-ge v2, v0, :cond_4

    iget-object v1, p0, Lifa;->i:[Lifa;

    aget-object v1, v1, v2

    aput-object v1, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iput-object p1, p0, Lifa;->i:[Lifa;

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lifa;->h:Lifa;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lifa;->e0(Z)Lifa;

    move-result-object p1

    iput-object p1, p0, Lifa;->h:Lifa;

    invoke-virtual {p1}, Lifa;->Z()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object v1, p0, Lifa;->h:Lifa;

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lifa;->h:Lifa;

    iput-object p0, p1, Lifa;->g:Lifa;

    :cond_7
    :goto_4
    return-object p0
.end method

.method public f0()Lifa;
    .locals 1

    invoke-virtual {p0}, Lifa;->g0()Lifa;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lifa;->R()Lifa;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lifa;->g:Lifa;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lifa;->f0()Lifa;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public g0()Lifa;
    .locals 2

    iget-object v0, p0, Lifa;->g:Lifa;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget p0, p0, Lifa;->k:I

    if-lez p0, :cond_1

    iget-object v0, v0, Lifa;->i:[Lifa;

    add-int/lit8 p0, p0, -0x1

    aget-object v1, v0, p0

    :cond_1
    return-object v1
.end method

.method public h0(ILifa;)V
    .locals 2

    iget-object v0, p0, Lifa;->h:Lifa;

    instance-of v1, v0, Laq6;

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lifa;->h0(ILifa;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iput-object p2, p0, Lifa;->h:Lifa;

    const/4 p1, 0x0

    iput p1, p2, Lifa;->k:I

    iput-object p0, p2, Lifa;->g:Lifa;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "invalid index"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v0, p0, Lifa;->i:[Lifa;

    if-eqz v0, :cond_3

    aput-object p2, v0, p1

    iput p1, p2, Lifa;->k:I

    iput-object p0, p2, Lifa;->g:Lifa;

    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "element has no children"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i0()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lifa;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lifa;->g:Lifa;

    return-void
.end method

.method public final j0(Lifa;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p0, p1, Lifa;->g:Lifa;

    const/4 v0, 0x0

    iput v0, p1, Lifa;->k:I

    :cond_0
    iput-object p1, p0, Lifa;->h:Lifa;

    return-void
.end method

.method public final k0(I)V
    .locals 3

    iget v0, p0, Lifa;->j:I

    new-array p1, p1, [Lifa;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lifa;->i:[Lifa;

    aget-object v2, v2, v1

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lifa;->i:[Lifa;

    return-void
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lifa;->J(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
