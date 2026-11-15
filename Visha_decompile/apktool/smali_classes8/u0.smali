.class public Lu0;
.super Lp1;
.source "SourceFile"


# static fields
.field public static final c:Ld2;

.field public static final d:Lu0;

.field public static final e:Lu0;


# instance fields
.field public final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lu0$a;

    const-class v1, Lu0;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lu0$a;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lu0;->c:Ld2;

    new-instance v0, Lu0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu0;-><init>(B)V

    sput-object v0, Lu0;->d:Lu0;

    new-instance v0, Lu0;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lu0;-><init>(B)V

    sput-object v0, Lu0;->e:Lu0;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lp1;-><init>()V

    iput-byte p1, p0, Lu0;->b:B

    return-void
.end method

.method public static w([B)Lu0;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-byte p0, p0, v0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    if-eqz p0, :cond_0

    new-instance v0, Lu0;

    invoke-direct {v0, p0}, Lu0;-><init>(B)V

    return-object v0

    :cond_0
    sget-object p0, Lu0;->d:Lu0;

    return-object p0

    :cond_1
    sget-object p0, Lu0;->e:Lu0;

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BOOLEAN value should have 1 byte in it"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static x(Ly1;Z)Lu0;
    .locals 1

    sget-object v0, Lu0;->c:Ld2;

    invoke-virtual {v0, p0, p1}, Ld2;->e(Ly1;Z)Lp1;

    move-result-object p0

    check-cast p0, Lu0;

    return-object p0
.end method

.method public static y(Ljava/lang/Object;)Lu0;
    .locals 3

    if-eqz p0, :cond_2

    instance-of v0, p0, Lu0;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    check-cast p0, [B

    :try_start_0
    sget-object v0, Lu0;->c:Ld2;

    invoke-virtual {v0, p0}, Ld2;->b([B)Lp1;

    move-result-object p0

    check-cast p0, Lu0;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct boolean from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
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

    :cond_2
    :goto_0
    check-cast p0, Lu0;

    return-object p0
.end method

.method public static z(Z)Lu0;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lu0;->e:Lu0;

    goto :goto_0

    :cond_0
    sget-object p0, Lu0;->d:Lu0;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public A()Z
    .locals 0

    iget-byte p0, p0, Lu0;->b:B

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 0

    invoke-virtual {p0}, Lu0;->A()Z

    move-result p0

    return p0
.end method

.method public m(Lp1;)Z
    .locals 2

    instance-of v0, p1, Lu0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lu0;

    invoke-virtual {p0}, Lu0;->A()Z

    move-result p0

    invoke-virtual {p1}, Lu0;->A()Z

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public n(Lo1;Z)V
    .locals 1

    const/4 v0, 0x1

    iget-byte p0, p0, Lu0;->b:B

    invoke-virtual {p1, p2, v0, p0}, Lo1;->m(ZIB)V

    return-void
.end method

.method public o()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public q(Z)I
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lo1;->g(ZI)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lu0;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "TRUE"

    goto :goto_0

    :cond_0
    const-string p0, "FALSE"

    :goto_0
    return-object p0
.end method

.method public u()Lp1;
    .locals 0

    invoke-virtual {p0}, Lu0;->A()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lu0;->e:Lu0;

    goto :goto_0

    :cond_0
    sget-object p0, Lu0;->d:Lu0;

    :goto_0
    return-object p0
.end method
