.class public Lh40;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0;


# instance fields
.field public b:Lu1;

.field public c:Lxf1;


# direct methods
.method public constructor <init>(Lu1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh40;->b:Lu1;

    return-void
.end method

.method public static a(Lu1;)Lg40;
    .locals 2

    new-instance v0, Lxf1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lxf1;-><init>(Lu1;Z)V

    invoke-static {v0}, Lfz9;->c(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-virtual {v0}, Lxf1;->d()I

    move-result v0

    new-instance v1, Lg40;

    invoke-direct {v1, p0, v0}, Lg40;-><init>([BI)V

    return-object v1
.end method


# virtual methods
.method public b()Lp1;
    .locals 0

    iget-object p0, p0, Lh40;->b:Lu1;

    invoke-static {p0}, Lh40;->a(Lu1;)Lg40;

    move-result-object p0

    return-object p0
.end method

.method public c()Ljava/io/InputStream;
    .locals 3

    new-instance v0, Lxf1;

    iget-object v1, p0, Lh40;->b:Lu1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lxf1;-><init>(Lu1;Z)V

    iput-object v0, p0, Lh40;->c:Lxf1;

    return-object v0
.end method

.method public i()I
    .locals 0

    iget-object p0, p0, Lh40;->c:Lxf1;

    invoke-virtual {p0}, Lxf1;->d()I

    move-result p0

    return p0
.end method

.method public j()Lp1;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lh40;->b()Lp1;

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
