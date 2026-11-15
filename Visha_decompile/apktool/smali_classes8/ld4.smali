.class public Lld4;
.super Lj1;
.source "SourceFile"


# instance fields
.field public final b:[Lkd4;


# direct methods
.method public constructor <init>(Lkd4;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lj1;-><init>()V

    filled-new-array {p1}, [Lkd4;

    move-result-object p1

    iput-object p1, p0, Lld4;->b:[Lkd4;

    return-void
.end method

.method public constructor <init>(Ls1;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lj1;-><init>()V

    invoke-virtual {p1}, Ls1;->size()I

    move-result v0

    new-array v0, v0, [Lkd4;

    iput-object v0, p0, Lld4;->b:[Lkd4;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ls1;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lld4;->b:[Lkd4;

    invoke-virtual {p1, v0}, Ls1;->A(I)Lx0;

    move-result-object v2

    invoke-static {v2}, Lkd4;->m(Ljava/lang/Object;)Lkd4;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static m([Lkd4;)[Lkd4;
    .locals 3

    array-length v0, p0

    new-array v0, v0, [Lkd4;

    const/4 v1, 0x0

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static n(Ly1;Z)Lld4;
    .locals 1

    new-instance v0, Lld4;

    invoke-static {p0, p1}, Ls1;->y(Ly1;Z)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lld4;-><init>(Ls1;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Object;)Lld4;
    .locals 1

    instance-of v0, p0, Lld4;

    if-eqz v0, :cond_0

    check-cast p0, Lld4;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lld4;

    invoke-static {p0}, Ls1;->z(Ljava/lang/Object;)Ls1;

    move-result-object p0

    invoke-direct {v0, p0}, Lld4;-><init>(Ls1;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public j()Lp1;
    .locals 1

    new-instance v0, Laq1;

    iget-object p0, p0, Lld4;->b:[Lkd4;

    invoke-direct {v0, p0}, Laq1;-><init>([Lx0;)V

    return-object v0
.end method

.method public p()[Lkd4;
    .locals 0

    iget-object p0, p0, Lld4;->b:[Lkd4;

    invoke-static {p0}, Lld4;->m([Lkd4;)[Lkd4;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lu0a;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GeneralNames:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lld4;->b:[Lkd4;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    const-string v3, "    "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lld4;->b:[Lkd4;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
