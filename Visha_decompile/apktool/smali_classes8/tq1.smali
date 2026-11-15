.class public Ltq1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0;


# instance fields
.field public final b:Lf72;

.field public c:I


# direct methods
.method public constructor <init>(Lf72;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ltq1;->c:I

    iput-object p1, p0, Ltq1;->b:Lf72;

    return-void
.end method


# virtual methods
.method public final a(Z)Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Ltq1;->b:Lf72;

    invoke-virtual {v0}, Lf72;->e()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Ltq1;->b:Lf72;

    invoke-virtual {v1}, Lf72;->read()I

    move-result v1

    iput v1, p0, Ltq1;->c:I

    if-lez v1, :cond_3

    const/4 v2, 0x2

    if-lt v0, v2, :cond_2

    const/4 v0, 0x7

    if-gt v1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected octet-aligned bitstring, but found padBits: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ltq1;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "zero length data with non-zero pad bits"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    iget-object p0, p0, Ltq1;->b:Lf72;

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "content octets cannot be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Lp1;
    .locals 0

    iget-object p0, p0, Ltq1;->b:Lf72;

    invoke-virtual {p0}, Lf72;->h()[B

    move-result-object p0

    invoke-static {p0}, Ls0;->w([B)Ls0;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltq1;->a(Z)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public i()I
    .locals 0

    iget p0, p0, Ltq1;->c:I

    return p0
.end method

.method public j()Lp1;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ltq1;->b()Lp1;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IOException converting stream to byte array: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
