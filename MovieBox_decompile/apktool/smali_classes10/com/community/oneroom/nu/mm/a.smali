.class public final Lcom/community/oneroom/nu/mm/a;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method public static installPlaybackClientBuild()V
    .locals 12

    .line 54
    sget-object v0, La/k;->i:Landroid/os/Handler;

    .line 317
    const-string v0, "03d4b741632d136bc23e2de4c6adcdb7712f1980b619c183221801730bbd0410oneroom"

    .line 319
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    .line 320
    div-long v5, v1, v3

    .line 321
    rem-long/2addr v1, v3

    mul-long/2addr v1, v3

    long-to-int v1, v1

    .line 322
    sget-object v2, La/k;->j:Ljava/security/SecureRandom;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 323
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%d%06d%d"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v1, v6, v5

    const/4 v1, 0x2

    aput-object v2, v6, v1

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 324
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "UTF-8"

    .line 325
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 324
    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 327
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 328
    array-length v4, v0

    move v6, v7

    :goto_0
    if-ge v6, v4, :cond_0

    aget-byte v8, v0, v6

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "%02x"

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v8, v11, v7

    invoke-static {v9, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    const-string v2, "jg.b"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 332
    const-string v3, "a"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 334
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "b"

    new-array v6, v1, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    aput-object v8, v6, v5

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 335
    new-array v1, v1, [Ljava/lang/Object;

    const-string v4, "X-Client-Build"

    aput-object v4, v1, v7

    aput-object v0, v1, v5

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()Z
    .locals 14

    .line 85
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 62
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    :try_start_0
    const-string v1, "notification"

    .line 65
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-eqz v1, :cond_2

    .line 66
    invoke-static {v1}, La/a;->b(Landroid/app/NotificationManager;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    invoke-static {}, La/a;->c()V

    invoke-static {}, La/a;->a()Landroid/app/NotificationChannel;

    move-result-object v2

    .line 74
    invoke-static {v2}, La/a;->d(Landroid/app/NotificationChannel;)V

    .line 75
    invoke-static {v2}, La/a;->f(Landroid/app/NotificationChannel;)V

    .line 76
    invoke-static {v2}, La/a;->g(Landroid/app/NotificationChannel;)V

    .line 77
    invoke-static {v2}, La/a;->h(Landroid/app/NotificationChannel;)V

    .line 78
    invoke-static {v1, v2}, La/a;->e(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 116
    :try_start_1
    invoke-static {v0}, La/d;->a(Landroid/app/Application;)[Landroid/content/pm/Signature;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 117
    array-length v3, v2

    if-nez v3, :cond_3

    goto/16 :goto_7

    .line 118
    :cond_3
    sget-object v3, La/d;->a:[[I

    sget-object v4, La/d;->b:[I

    const/16 v5, 0x40

    .line 156
    new-array v6, v5, [B

    const/4 v7, 0x0

    move v8, v7

    :goto_1
    if-ge v8, v5, :cond_4

    .line 158
    rem-int/lit8 v9, v8, 0x4

    .line 159
    aget-object v10, v3, v9

    div-int/lit8 v11, v8, 0x4

    aget v10, v10, v11

    aget v9, v4, v9

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v6, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 161
    :cond_4
    :try_start_2
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v6, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    :try_start_3
    const-string v3, ""

    .line 123
    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v5, :cond_5

    goto :goto_5

    .line 124
    :cond_5
    array-length v4, v2

    move v5, v7

    :goto_3
    if-ge v5, v4, :cond_8

    aget-object v6, v2, v5

    .line 125
    const-string v8, "SHA-256"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 126
    const-string v8, "0123456789abcdef"

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    .line 127
    array-length v9, v6

    mul-int/lit8 v9, v9, 0x2

    new-array v9, v9, [C

    move v10, v7

    .line 128
    :goto_4
    array-length v11, v6

    if-ge v10, v11, :cond_6

    .line 129
    aget-byte v11, v6, v10

    and-int/lit16 v12, v11, 0xff

    mul-int/lit8 v13, v10, 0x2

    ushr-int/lit8 v12, v12, 0x4

    .line 130
    aget-char v12, v8, v12

    aput-char v12, v9, v13

    add-int/lit8 v13, v13, 0x1

    and-int/lit8 v11, v11, 0xf

    .line 131
    aget-char v11, v8, v11

    aput-char v11, v9, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 133
    :cond_6
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v6, :cond_7

    goto :goto_7

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 165
    :cond_8
    :goto_5
    sget-object v2, La/d;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_7

    :cond_9
    const/16 v2, 0xfa0

    .line 166
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-nez v3, :cond_a

    goto :goto_6

    .line 167
    :cond_a
    sget-object v4, La/d;->e:Ljava/security/SecureRandom;

    add-int/2addr v3, v1

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    :goto_6
    add-int/2addr v7, v2

    int-to-long v2, v7

    .line 168
    sget-object v4, La/d;->d:Landroid/os/Handler;

    new-instance v5, La/c;

    const/4 v6, 0x1

    .line 168
    invoke-direct {v5, v6}, La/c;-><init>(I)V

    .line 168
    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    :catchall_0
    :cond_b
    :goto_7
    sget-object v2, La/k;->q:La/k;

    iput-object v0, v2, La/k;->a:Landroid/app/Application;

    .line 310
    invoke-virtual {v0, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 311
    invoke-virtual {v2}, La/k;->b()V

    return v1
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
