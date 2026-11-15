.class public Lq40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx0;
.implements Lyy4;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Lu1;


# direct methods
.method public constructor <init>(IILu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lq40;->b:I

    iput p2, p0, Lq40;->c:I

    iput-object p3, p0, Lq40;->d:Lu1;

    return-void
.end method


# virtual methods
.method public b()Lp1;
    .locals 2

    iget-object v0, p0, Lq40;->d:Lu1;

    iget v1, p0, Lq40;->b:I

    iget p0, p0, Lq40;->c:I

    invoke-virtual {v0, v1, p0}, Lu1;->c(II)Lp1;

    move-result-object p0

    return-object p0
.end method

.method public j()Lp1;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lq40;->b()Lp1;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
