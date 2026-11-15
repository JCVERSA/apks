.class public abstract Ls1;
.super Lp1;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field public static final c:Ld2;


# instance fields
.field public b:[Lx0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ls1$a;

    const-class v1, Ls1;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ls1$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Ls1;->c:Ld2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lp1;-><init>()V

    sget-object v0, Ly0;->d:[Lx0;

    iput-object v0, p0, Ls1;->b:[Lx0;

    return-void
.end method

.method public constructor <init>(Lx0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lx0;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Ls1;->b:[Lx0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'element\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ly0;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ly0;->g()[Lx0;

    move-result-object p1

    iput-object p1, p0, Ls1;->b:[Lx0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elementVector\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Lx0;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lp1;-><init>()V

    invoke-static {p1}, Lci;->C([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Ly0;->b([Lx0;)[Lx0;

    move-result-object p1

    iput-object p1, p0, Ls1;->b:[Lx0;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'elements\' cannot be null, or contain null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([Lx0;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p2, :cond_0

    invoke-static {p1}, Ly0;->b([Lx0;)[Lx0;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Ls1;->b:[Lx0;

    return-void
.end method

.method public static y(Ly1;Z)Ls1;
    .locals 1

    sget-object v0, Ls1;->c:Ld2;

    invoke-virtual {v0, p0, p1}, Ld2;->e(Ly1;Z)Lp1;

    move-result-object p0

    check-cast p0, Ls1;

    return-object p0
.end method

.method public static z(Ljava/lang/Object;)Ls1;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Ls1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lx0;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lx0;

    invoke-interface {v0}, Lx0;->j()Lp1;

    move-result-object v0

    instance-of v1, v0, Ls1;

    if-eqz v1, :cond_2

    check-cast v0, Ls1;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Ls1;->c:Ld2;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Ld2;->b([B)Lp1;

    move-result-object p0

    check-cast p0, Ls1;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct sequence from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    check-cast p0, Ls1;

    return-object p0
.end method


# virtual methods
.method public A(I)Lx0;
    .locals 0

    iget-object p0, p0, Ls1;->b:[Lx0;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public B()Ljava/util/Enumeration;
    .locals 1

    new-instance v0, Ls1$b;

    invoke-direct {v0, p0}, Ls1$b;-><init>(Ls1;)V

    return-object v0
.end method

.method public abstract C()Ls0;
.end method

.method public abstract D()La1;
.end method

.method public abstract E()Lm1;
.end method

.method public abstract F()Lt1;
.end method

.method public G()[Lx0;
    .locals 0

    iget-object p0, p0, Ls1;->b:[Lx0;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Ls1;->b:[Lx0;

    array-length v0, v0

    add-int/lit8 v1, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    mul-int/lit16 v1, v1, 0x101

    iget-object v2, p0, Ls1;->b:[Lx0;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lx0;->j()Lp1;

    move-result-object v2

    invoke-virtual {v2}, Lp1;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lci$a;

    iget-object p0, p0, Ls1;->b:[Lx0;

    invoke-direct {v0, p0}, Lci$a;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public m(Lp1;)Z
    .locals 5

    instance-of v0, p1, Ls1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ls1;

    invoke-virtual {p0}, Ls1;->size()I

    move-result v0

    invoke-virtual {p1}, Ls1;->size()I

    move-result v2

    if-eq v2, v0, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Ls1;->b:[Lx0;

    aget-object v3, v3, v2

    invoke-interface {v3}, Lx0;->j()Lp1;

    move-result-object v3

    iget-object v4, p1, Ls1;->b:[Lx0;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lx0;->j()Lp1;

    move-result-object v4

    if-eq v3, v4, :cond_2

    invoke-virtual {v3, v4}, Lp1;->m(Lp1;)Z

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Ls1;->b:[Lx0;

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ls1;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "[]"

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ls1;->b:[Lx0;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v0, :cond_1

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public u()Lp1;
    .locals 2

    new-instance v0, Laq1;

    iget-object p0, p0, Ls1;->b:[Lx0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Laq1;-><init>([Lx0;Z)V

    return-object v0
.end method

.method public v()Lp1;
    .locals 2

    new-instance v0, Lyq1;

    iget-object p0, p0, Ls1;->b:[Lx0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lyq1;-><init>([Lx0;Z)V

    return-object v0
.end method

.method public w()[Ls0;
    .locals 4

    invoke-virtual {p0}, Ls1;->size()I

    move-result v0

    new-array v1, v0, [Ls0;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Ls1;->b:[Lx0;

    aget-object v3, v3, v2

    invoke-static {v3}, Ls0;->z(Ljava/lang/Object;)Ls0;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public x()[Lm1;
    .locals 4

    invoke-virtual {p0}, Ls1;->size()I

    move-result v0

    new-array v1, v0, [Lm1;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Ls1;->b:[Lx0;

    aget-object v3, v3, v2

    invoke-static {v3}, Lm1;->y(Ljava/lang/Object;)Lm1;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
