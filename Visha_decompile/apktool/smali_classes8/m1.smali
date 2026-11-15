.class public abstract Lm1;
.super Lp1;
.source "SourceFile"

# interfaces
.implements Ln1;


# static fields
.field public static final c:Ld2;

.field public static final d:[B


# instance fields
.field public b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lm1$a;

    const-class v1, Lm1;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lm1$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lm1;->c:Ld2;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lm1;->d:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lp1;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lm1;->b:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "\'string\' cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static w([B)Lm1;
    .locals 1

    new-instance v0, Lwp1;

    invoke-direct {v0, p0}, Lwp1;-><init>([B)V

    return-object v0
.end method

.method public static x(Ly1;Z)Lm1;
    .locals 1

    sget-object v0, Lm1;->c:Ld2;

    invoke-virtual {v0, p0, p1}, Ld2;->e(Ly1;Z)Lp1;

    move-result-object p0

    check-cast p0, Lm1;

    return-object p0
.end method

.method public static y(Ljava/lang/Object;)Lm1;
    .locals 3

    if-eqz p0, :cond_3

    instance-of v0, p0, Lm1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lx0;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lx0;

    invoke-interface {v0}, Lx0;->j()Lp1;

    move-result-object v0

    instance-of v1, v0, Lm1;

    if-eqz v1, :cond_2

    check-cast v0, Lm1;

    return-object v0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    sget-object v0, Lm1;->c:Ld2;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Ld2;->b([B)Lp1;

    move-result-object p0

    check-cast p0, Lm1;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct OCTET STRING from byte[]: "

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

    const-string v2, "illegal object in getInstance: "

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
    check-cast p0, Lm1;

    return-object p0
.end method


# virtual methods
.method public A()I
    .locals 0

    invoke-virtual {p0}, Lm1;->z()[B

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public b()Lp1;
    .locals 0

    invoke-virtual {p0}, Lp1;->j()Lp1;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object p0, p0, Lm1;->b:[B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lm1;->z()[B

    move-result-object p0

    invoke-static {p0}, Lci;->v([B)I

    move-result p0

    return p0
.end method

.method public m(Lp1;)Z
    .locals 1

    instance-of v0, p1, Lm1;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lm1;

    iget-object p0, p0, Lm1;->b:[B

    iget-object p1, p1, Lm1;->b:[B

    invoke-static {p0, p1}, Lci;->b([B[B)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm1;->b:[B

    invoke-static {p0}, Ljp4;->d([B)[B

    move-result-object p0

    invoke-static {p0}, Lu0a;->b([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u()Lp1;
    .locals 1

    new-instance v0, Lwp1;

    iget-object p0, p0, Lm1;->b:[B

    invoke-direct {v0, p0}, Lwp1;-><init>([B)V

    return-object v0
.end method

.method public v()Lp1;
    .locals 1

    new-instance v0, Lwp1;

    iget-object p0, p0, Lm1;->b:[B

    invoke-direct {v0, p0}, Lwp1;-><init>([B)V

    return-object v0
.end method

.method public z()[B
    .locals 0

    iget-object p0, p0, Lm1;->b:[B

    return-object p0
.end method
