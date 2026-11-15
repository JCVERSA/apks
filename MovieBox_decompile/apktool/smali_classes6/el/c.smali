.class public Lel/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lel/e;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Ljava/net/URL;

.field private volatile d:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "@#&=*+-_.,:!?()/~\'%"

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lel/c;->b:Ljava/lang/String;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 20
    .line 21
    const-string v0, "url must be can not null or empty"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lel/c;->d:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lel/c;->b:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v1, Lel/e;->a:Ljava/nio/charset/Charset;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lel/c;->d:[B

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lel/c;->d:[B

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b()Ljava/net/URL;
    .locals 2

    .line 1
    iget-object v0, p0, Lel/c;->c:Ljava/net/URL;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/net/URL;

    .line 6
    .line 7
    iget-object v1, p0, Lel/c;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lel/c;->c:Ljava/net/URL;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lel/c;->c:Ljava/net/URL;

    .line 15
    .line 16
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lel/c;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
