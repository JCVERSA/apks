.class public Lpp1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0;
.implements Lyy4;


# instance fields
.field public b:Lu1;


# direct methods
.method public constructor <init>(Lu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpp1;->b:Lu1;

    return-void
.end method

.method public static a(Lu1;)Luq1;
    .locals 2

    :try_start_0
    new-instance v0, Luq1;

    new-instance v1, Lyq1;

    invoke-virtual {p0}, Lu1;->h()Ly0;

    move-result-object p0

    invoke-direct {v1, p0}, Lyq1;-><init>(Ly0;)V

    invoke-direct {v0, v1}, Luq1;-><init>(Lyq1;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public b()Lp1;
    .locals 0

    iget-object p0, p0, Lpp1;->b:Lu1;

    invoke-static {p0}, Lpp1;->a(Lu1;)Luq1;

    move-result-object p0

    return-object p0
.end method

.method public j()Lp1;
    .locals 2

    const-string v0, "unable to get DER object"

    :try_start_0
    invoke-virtual {p0}, Lpp1;->b()Lp1;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
