.class public final Lcom/cloud/h5update/utils/i;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/cloud/h5update/utils/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/h5update/utils/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/h5update/utils/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/h5update/utils/i;->a:Lcom/cloud/h5update/utils/i;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a([B)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "0123456789ABCDEF"

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "this as java.lang.String).toCharArray()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    array-length v2, p1

    .line 15
    mul-int/lit8 v2, v2, 0x2

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 18
    .line 19
    .line 20
    array-length v2, p1

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v2, :cond_0

    .line 23
    .line 24
    aget-byte v4, p1, v3

    .line 25
    .line 26
    shr-int/lit8 v5, v4, 0x4

    .line 27
    .line 28
    and-int/lit8 v5, v5, 0xf

    .line 29
    .line 30
    aget-char v5, v0, v5

    .line 31
    .line 32
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    and-int/lit8 v4, v4, 0xf

    .line 36
    .line 37
    aget-char v4, v0, v4

    .line 38
    .line 39
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v0, "r.toString()"

    .line 50
    .line 51
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return-object p1
.end method


# virtual methods
.method public final b(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    .line 4
    .line 5
    invoke-virtual {v2, p1}, Lcom/cloud/h5update/utils/h$a;->r(Ljava/io/File;)Z

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    const-string v4, ""

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return-object v4

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    :try_start_0
    const-string v5, "MD5"

    .line 16
    .line 17
    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    invoke-virtual {v2, p1}, Lcom/cloud/h5update/utils/h$a;->n(Ljava/io/File;)Ljava/io/InputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const/16 p1, 0x2000

    .line 26
    .line 27
    new-array p1, p1, [B

    .line 28
    .line 29
    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, p1}, Ljava/io/InputStream;->read([B)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v6, -0x1

    .line 37
    if-eq v2, v6, :cond_1

    .line 38
    .line 39
    invoke-virtual {v5, p1, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_3

    .line 45
    :catch_0
    move-exception p1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v5}, Ljava/security/MessageDigest;->digest()[B

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v2, "digest.digest()"

    .line 52
    .line 53
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, p1}, Lcom/cloud/h5update/utils/i;->a([B)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    sget-object p1, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    .line 61
    .line 62
    new-array v0, v0, [Ljava/io/Closeable;

    .line 63
    .line 64
    aput-object v3, v0, v1

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    :try_start_1
    sget-object v2, Lrf/b;->a:Lrf/b;

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Lrf/b;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    .line 74
    .line 75
    sget-object p1, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    .line 76
    .line 77
    new-array v0, v0, [Ljava/io/Closeable;

    .line 78
    .line 79
    aput-object v3, v0, v1

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    return-object v4

    .line 85
    :goto_3
    sget-object v2, Lcom/cloud/h5update/utils/h;->a:Lcom/cloud/h5update/utils/h$a;

    .line 86
    .line 87
    new-array v0, v0, [Ljava/io/Closeable;

    .line 88
    .line 89
    aput-object v3, v0, v1

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Lcom/cloud/h5update/utils/h$a;->e([Ljava/io/Closeable;)V

    .line 92
    .line 93
    .line 94
    throw p1
.end method
