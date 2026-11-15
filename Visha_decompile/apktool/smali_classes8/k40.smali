.class public Lk40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln1;


# instance fields
.field public b:Lu1;


# direct methods
.method public constructor <init>(Lu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk40;->b:Lu1;

    return-void
.end method

.method public static a(Lu1;)Lj40;
    .locals 2

    new-instance v0, Lj40;

    new-instance v1, Lyf1;

    invoke-direct {v1, p0}, Lyf1;-><init>(Lu1;)V

    invoke-static {v1}, Lfz9;->c(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Lj40;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public b()Lp1;
    .locals 0

    iget-object p0, p0, Lk40;->b:Lu1;

    invoke-static {p0}, Lk40;->a(Lu1;)Lj40;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lyf1;

    iget-object p0, p0, Lk40;->b:Lu1;

    invoke-direct {v0, p0}, Lyf1;-><init>(Lu1;)V

    return-object v0
.end method

.method public j()Lp1;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lk40;->b()Lp1;

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
