.class final Li0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B

.field private c:Li0/p;

.field private d:Ljava/security/Key;


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Li0/d;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Li0/o;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p2}, Li0/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, [B

    .line 15
    .line 16
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, [B

    .line 21
    .line 22
    iput-object p1, p0, Li0/o;->b:[B

    .line 23
    .line 24
    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    .line 25
    .line 26
    const-string v0, "HmacSHA1"

    .line 27
    .line 28
    invoke-direct {p1, p2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Li0/o;->d:Ljava/security/Key;

    .line 32
    .line 33
    new-instance p1, Li0/p;

    .line 34
    .line 35
    invoke-direct {p1, p2}, Li0/p;-><init>([B)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Li0/o;->c:Li0/p;

    .line 39
    .line 40
    return-void
.end method

.method static a(Ljava/security/Key;[B)[B
    .locals 2

    .line 1
    sget-object v0, Li0/q;->a:Ljavax/crypto/Mac;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :try_start_1
    monitor-exit v0

    .line 12
    return-object p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/RuntimeException;

    .line 17
    .line 18
    const-string v1, "Fatal error: hmac key is invalid."

    .line 19
    .line 20
    invoke-direct {p1, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    throw p0
.end method


# virtual methods
.method public final b([BI)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x3

    .line 3
    iget-object v2, p0, Li0/o;->d:Ljava/security/Key;

    .line 4
    .line 5
    invoke-static {v2, p1}, Li0/o;->a(Ljava/security/Key;[B)[B

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v2, 0x14

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eq p2, v2, :cond_0

    .line 13
    .line 14
    invoke-static {p1, v3, p2}, Li0/g;->c([BII)[B

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    new-instance p2, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v2, p0, Li0/o;->c:Li0/p;

    .line 21
    .line 22
    invoke-virtual {v2}, Li0/i;->a()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, [B

    .line 27
    .line 28
    new-array v4, v1, [[B

    .line 29
    .line 30
    new-array v5, v0, [B

    .line 31
    .line 32
    aput-byte v3, v5, v3

    .line 33
    .line 34
    aput-object v5, v4, v3

    .line 35
    .line 36
    aput-object v2, v4, v0

    .line 37
    .line 38
    const/4 v0, 0x2

    .line 39
    aput-object p1, v4, v0

    .line 40
    .line 41
    invoke-static {v4}, Li0/g;->d([[B)[B

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1, v1}, Landroid/util/Base64;->encode([BI)[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    .line 50
    .line 51
    .line 52
    return-object p2
.end method
