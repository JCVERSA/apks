.class public final Lrk8;
.super Ldj;
.source "SourceFile"


# instance fields
.field public c:I

.field public d:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldj;-><init>(Z)V

    array-length v0, p2

    invoke-static {p1}, Ltk8;->a(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iput p1, p0, Lrk8;->c:I

    invoke-static {p2}, Lci;->f([B)[B

    move-result-object p1

    iput-object p1, p0, Lrk8;->d:[B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid key size for security category"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public b()[B
    .locals 0

    iget-object p0, p0, Lrk8;->d:[B

    invoke-static {p0}, Lci;->f([B)[B

    move-result-object p0

    return-object p0
.end method

.method public c()I
    .locals 0

    iget p0, p0, Lrk8;->c:I

    return p0
.end method
