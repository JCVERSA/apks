.class public abstract La/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[[I

.field public static final b:[I

.field public static final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final d:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v0, 0x10

    .line 186
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 187
    new-array v2, v0, [I

    fill-array-data v2, :array_1

    .line 188
    new-array v3, v0, [I

    fill-array-data v3, :array_2

    .line 189
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    const/4 v4, 0x4

    .line 190
    new-array v4, v4, [[I

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const/4 v1, 0x2

    aput-object v3, v4, v1

    const/4 v1, 0x3

    aput-object v0, v4, v1

    sput-object v4, La/e;->a:[[I

    const/16 v0, 0x52

    const/16 v1, 0xe5

    const/16 v2, 0xd1

    const/16 v3, 0xc3

    .line 191
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, La/e;->b:[I

    .line 193
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, La/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, La/e;->d:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0xe8
        0x90
        0xe0
        0x94
        0xe7
        0xe3
        0x95
        0xe0
        0xe4
        0xe2
        0xe0
        0xe3
        0xe4
        0xe1
        0x97
        0xe4
    .end array-data

    :array_1
    .array-data 4
        0xf0
        0xf3
        0xf6
        0xf0
        0x82
        0x81
        0xf6
        0xf2
        0x82
        0x85
        0xf6
        0xf6
        0xfa
        0x80
        0xf3
        0x82
    .end array-data

    :array_2
    .array-data 4
        0x66
        0x67
        0x13
        0x63
        0x65
        0x61
        0x10
        0x6a
        0x64
        0x64
        0x6a
        0x61
        0x6b
        0x17
        0x17
        0x66
    .end array-data

    :array_3
    .array-data 4
        0xa1
        0xd2
        0xa7
        0xd0
        0xd1
        0xa4
        0xd6
        0xd5
        0xd6
        0xd1
        0xd4
        0xa4
        0xd6
        0xd5
        0xa3
        0xa3
    .end array-data
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 13

    .line 202
    :try_start_0
    invoke-static {p0}, La/e;->b(Landroid/content/Context;)[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 203
    array-length v0, p0

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 204
    :cond_0
    sget-object v0, La/e;->a:[[I

    sget-object v1, La/e;->b:[I

    const/16 v2, 0x40

    .line 237
    new-array v3, v2, [B

    const/16 v4, 0x3f

    :goto_0
    if-ltz v4, :cond_1

    .line 239
    rem-int/lit8 v5, v4, 0x4

    .line 240
    aget-object v6, v0, v5

    div-int/lit8 v7, v4, 0x4

    aget v6, v6, v7

    aget v5, v1, v5

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 242
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    const-string v0, ""

    .line 209
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_2

    goto :goto_4

    .line 210
    :cond_2
    array-length v1, p0

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_5

    aget-object v5, p0, v2

    .line 211
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v7, v5

    mul-int/lit8 v7, v7, 0x2

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    array-length v7, v5

    move v8, v4

    :goto_3
    if-ge v8, v7, :cond_3

    aget-byte v9, v5, v8

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v11, "%02x"

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v9, v12, v4

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 214
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 246
    :cond_5
    :goto_4
    sget-object p0, La/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_6

    :cond_6
    const/16 p0, 0xfa0

    .line 247
    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-nez p0, :cond_7

    const-wide/16 v0, 0x0

    goto :goto_5

    .line 248
    :cond_7
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    int-to-long v2, p0

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 249
    :goto_5
    new-instance p0, La/c;

    const/4 v2, 0x3

    .line 249
    invoke-direct {p0, v2}, La/c;-><init>(I)V

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    .line 249
    sget-object v2, La/e;->d:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :catchall_0
    :cond_8
    :goto_6
    return-void
.end method

.method public static b(Landroid/content/Context;)[Landroid/content/pm/Signature;
    .locals 3

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    const/high16 v1, 0x8000000

    .line 226
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 227
    const-class v0, Landroid/content/pm/PackageInfo;

    const-string v1, "signingInfo"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 229
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getApkContentsSigners"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 230
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/content/pm/Signature;

    return-object p0

    :cond_1
    const/16 v1, 0x40

    .line 232
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 233
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    return-object p0
.end method
