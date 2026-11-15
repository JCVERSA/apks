.class public final Lhrc;
.super Lbrc;
.source "SourceFile"

# interfaces
.implements Ly93;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhrc$b;
    }
.end annotation


# instance fields
.field public final d:Ldrc;

.field public final e:I

.field public final f:[B

.field public final g:[B


# direct methods
.method public constructor <init>(Lhrc$b;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lhrc$b;->a(Lhrc$b;)Ldrc;

    move-result-object v0

    invoke-virtual {v0}, Ldrc;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lbrc;-><init>(ZLjava/lang/String;)V

    invoke-static {p1}, Lhrc$b;->a(Lhrc$b;)Ldrc;

    move-result-object v0

    iput-object v0, p0, Lhrc;->d:Ldrc;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ldrc;->f()I

    move-result v2

    invoke-static {p1}, Lhrc$b;->b(Lhrc$b;)[B

    move-result-object v3

    if-eqz v3, :cond_2

    array-length p1, v3

    add-int v0, v2, v2

    if-ne p1, v0, :cond_0

    iput v1, p0, Lhrc;->e:I

    invoke-static {v3, v1, v2}, Lnrc;->g([BII)[B

    move-result-object p1

    iput-object p1, p0, Lhrc;->f:[B

    invoke-static {v3, v2, v2}, Lnrc;->g([BII)[B

    move-result-object p1

    iput-object p1, p0, Lhrc;->g:[B

    goto :goto_2

    :cond_0
    array-length p1, v3

    add-int/lit8 v0, v2, 0x4

    add-int/2addr v0, v2

    if-ne p1, v0, :cond_1

    invoke-static {v3, v1}, Lcv7;->a([BI)I

    move-result p1

    iput p1, p0, Lhrc;->e:I

    const/4 p1, 0x4

    invoke-static {v3, p1, v2}, Lnrc;->g([BII)[B

    move-result-object v0

    iput-object v0, p0, Lhrc;->f:[B

    add-int/2addr p1, v2

    invoke-static {v3, p1, v2}, Lnrc;->g([BII)[B

    move-result-object p1

    iput-object p1, p0, Lhrc;->g:[B

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "public key has wrong size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v0}, Ldrc;->d()Lirc;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ldrc;->d()Lirc;

    move-result-object v0

    invoke-interface {v0}, Lirc;->a()I

    move-result v0

    iput v0, p0, Lhrc;->e:I

    goto :goto_0

    :cond_3
    iput v1, p0, Lhrc;->e:I

    :goto_0
    invoke-static {p1}, Lhrc$b;->c(Lhrc$b;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v1, v0

    if-ne v1, v2, :cond_4

    iput-object v0, p0, Lhrc;->f:[B

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length of root must be equal to length of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-array v0, v2, [B

    iput-object v0, p0, Lhrc;->f:[B

    :goto_1
    invoke-static {p1}, Lhrc$b;->d(Lhrc$b;)[B

    move-result-object p1

    if-eqz p1, :cond_7

    array-length v0, p1

    if-ne v0, v2, :cond_6

    iput-object p1, p0, Lhrc;->g:[B

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "length of publicSeed must be equal to length of digest"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-array p1, v2, [B

    iput-object p1, p0, Lhrc;->g:[B

    :goto_2
    return-void

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "params == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Lhrc$b;Lhrc$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lhrc;-><init>(Lhrc$b;)V

    return-void
.end method


# virtual methods
.method public c()Ldrc;
    .locals 0

    iget-object p0, p0, Lhrc;->d:Ldrc;

    return-object p0
.end method

.method public d()[B
    .locals 0

    iget-object p0, p0, Lhrc;->g:[B

    invoke-static {p0}, Lnrc;->c([B)[B

    move-result-object p0

    return-object p0
.end method

.method public e()[B
    .locals 0

    iget-object p0, p0, Lhrc;->f:[B

    invoke-static {p0}, Lnrc;->c([B)[B

    move-result-object p0

    return-object p0
.end method

.method public f()[B
    .locals 4

    iget-object v0, p0, Lhrc;->d:Ldrc;

    invoke-virtual {v0}, Ldrc;->f()I

    move-result v0

    iget v1, p0, Lhrc;->e:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    add-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v0

    new-array v3, v3, [B

    invoke-static {v1, v3, v2}, Lcv7;->c(I[BI)V

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    add-int v1, v0, v0

    new-array v3, v1, [B

    :goto_0
    iget-object v1, p0, Lhrc;->f:[B

    invoke-static {v3, v1, v2}, Lnrc;->e([B[BI)V

    add-int/2addr v2, v0

    iget-object p0, p0, Lhrc;->g:[B

    invoke-static {v3, p0, v2}, Lnrc;->e([B[BI)V

    return-object v3
.end method

.method public getEncoded()[B
    .locals 0

    invoke-virtual {p0}, Lhrc;->f()[B

    move-result-object p0

    return-object p0
.end method
