.class public final La/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final i:Landroid/os/Handler;

.field public static final j:Ljava/security/SecureRandom;

.field public static final k:[[I

.field public static final l:[I

.field public static final m:[[I

.field public static final n:[I

.field public static final o:[[I

.field public static final p:[I

.field public static final q:La/k;


# instance fields
.field public a:Landroid/app/Application;

.field public volatile b:La/b;

.field public volatile c:I

.field public d:Landroid/app/Activity;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, La/k;->i:Landroid/os/Handler;

    .line 275
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, La/k;->j:Ljava/security/SecureRandom;

    const/16 v0, 0xa

    .line 276
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 277
    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/16 v3, 0x9

    .line 278
    new-array v4, v3, [I

    fill-array-data v4, :array_2

    .line 279
    new-array v5, v3, [I

    fill-array-data v5, :array_3

    const/4 v6, 0x4

    .line 280
    new-array v7, v6, [[I

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v1, 0x1

    aput-object v2, v7, v1

    const/4 v2, 0x2

    aput-object v4, v7, v2

    const/4 v4, 0x3

    aput-object v5, v7, v4

    sput-object v7, La/k;->k:[[I

    const/16 v5, 0xc7

    const/16 v7, 0x42

    const/16 v9, 0xd9

    const/16 v10, 0xea

    .line 281
    filled-new-array {v9, v10, v5, v7}, [I

    move-result-object v5

    sput-object v5, La/k;->l:[I

    .line 283
    new-array v5, v0, [I

    fill-array-data v5, :array_4

    .line 284
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    .line 285
    new-array v7, v3, [I

    fill-array-data v7, :array_6

    .line 286
    new-array v3, v3, [I

    fill-array-data v3, :array_7

    .line 287
    new-array v9, v6, [[I

    aput-object v5, v9, v8

    aput-object v0, v9, v1

    aput-object v7, v9, v2

    aput-object v3, v9, v4

    sput-object v9, La/k;->m:[[I

    const/16 v0, 0x52

    const/16 v3, 0x7b

    const/16 v5, 0x1f

    const/16 v7, 0x68

    .line 288
    filled-new-array {v5, v7, v0, v3}, [I

    move-result-object v0

    sput-object v0, La/k;->n:[I

    const/16 v0, 0x10

    .line 290
    new-array v3, v0, [I

    fill-array-data v3, :array_8

    .line 291
    new-array v5, v0, [I

    fill-array-data v5, :array_9

    .line 292
    new-array v7, v0, [I

    fill-array-data v7, :array_a

    .line 293
    new-array v0, v0, [I

    fill-array-data v0, :array_b

    .line 294
    new-array v6, v6, [[I

    aput-object v3, v6, v8

    aput-object v5, v6, v1

    aput-object v7, v6, v2

    aput-object v0, v6, v4

    sput-object v6, La/k;->o:[[I

    const/16 v0, 0xe3

    const/16 v1, 0x61

    const/16 v2, 0x96

    const/16 v3, 0x9a

    .line 295
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, La/k;->p:[I

    .line 297
    new-instance v0, La/k;

    .line 270
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 300
    invoke-static {}, La/b;->a()La/b;

    move-result-object v1

    iput-object v1, v0, La/k;->b:La/b;

    .line 297
    sput-object v0, La/k;->q:La/k;

    return-void

    nop

    :array_0
    .array-data 4
        0xb1
        0xaa
        0xba
        0xb6
        0xbb
        0xa9
        0xb5
        0xf6
        0xeb
        0xb6
    .end array-data

    :array_1
    .array-data 4
        0x9e
        0xd0
        0xdb
        0x9c
        0x85
        0x9a
        0x83
        0x87
        0xc4
        0x84
    .end array-data

    :array_2
    .array-data 4
        0xb3
        0xe8
        0xe9
        0xae
        0xbf
        0xe9
        0xa4
        0xe8
        0xad
    .end array-data

    :array_3
    .array-data 4
        0x32
        0x6d
        0x2f
        0x27
        0x23
        0x21
        0x29
        0x21
        0x31
    .end array-data

    :array_4
    .array-data 4
        0x77
        0x6c
        0x7c
        0x70
        0x7d
        0x6f
        0x73
        0x30
        0x2d
        0x70
    .end array-data

    :array_5
    .array-data 4
        0x1c
        0x52
        0x5a
        0x1e
        0x7
        0x18
        0x1
        0x5
        0x46
        0x6
    .end array-data

    :array_6
    .array-data 4
        0x26
        0x7d
        0x7c
        0x3b
        0x2a
        0x7c
        0x31
        0x7d
        0x38
    .end array-data

    :array_7
    .array-data 4
        0xb
        0x54
        0x16
        0x1e
        0x1a
        0x18
        0x10
        0x18
        0x8
    .end array-data

    :array_8
    .array-data 4
        0xf1
        0xa6
        0xd3
        0xc3
        0xf8
        0xe2
        0xfb
        0xff
        0xfd
        0xdd
        0xa0
        0xef
        0xc6
        0xae
        0xd9
        0xe0
    .end array-data

    :array_9
    .array-data 4
        0xd3
        0xa3
        0xef
        0xe2
        0xdf
        0xd2
        0xad
        0xd3
        0xdb
        0xf7
        0xf4
        0xa8
        0xdb
        0xfc
        0xa3
        0xcc
    .end array-data

    :array_a
    .array-data 4
        0xa6
        0x8f
        0xaa
        0xa8
        0x8e
        0x92
        0x99
        0x88
        0x87
        0xb4
        0xbc
        0xba
        0xb3
        0x92
        0xce
        0x8f
    .end array-data

    :array_b
    .array-data 4
        0x32
        0x12
        0x12
        0x35
        0x35
        0x2c
        0x3b
        0x39
        0x29
        0x3e
        0x13
        0x2a
        0x57
        0x1b
        0x25
        0x6
    .end array-data
.end method

.method public static a(La/k;Ljava/lang/String;)La/b;
    .locals 5

    .line 391
    const-string p0, "Remote config HTTP status "

    invoke-static {p1}, La/k;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 395
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 396
    :try_start_1
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v1, 0x2710

    .line 397
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 398
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v1, 0x0

    .line 399
    invoke-virtual {p1, v1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 400
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_2

    .line 404
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 405
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 407
    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/high16 v2, 0x100000

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Remote config is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 411
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    sget-object v1, La/k;->o:[[I

    sget-object v2, La/k;->p:[I

    const/16 v3, 0x40

    invoke-static {v1, v2, v3}, La/k;->f([[I[II)Ljava/lang/String;

    move-result-object v1

    .line 411
    invoke-static {v0, v1}, La/f;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, La/b;->b(Lorg/json/JSONObject;)La/b;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    :try_start_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 414
    :catch_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_1
    move-exception p0

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_1

    .line 402
    :cond_2
    :try_start_4
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_2
    move-exception p0

    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    :goto_1
    if-eqz p0, :cond_3

    .line 413
    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    :cond_3
    if-eqz p1, :cond_4

    .line 414
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 415
    :cond_4
    throw v0

    .line 391
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid remote config endpoint"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .line 472
    invoke-static {p1}, La/k;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public static f([[I[II)Ljava/lang/String;
    .locals 5

    .line 352
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 354
    array-length v2, p0

    rem-int v2, v1, v2

    .line 355
    aget-object v3, p0, v2

    array-length v4, p0

    div-int v4, v1, v4

    aget v3, v3, v4

    aget v2, p1, v2

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    :cond_0
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const-string p1, "UTF-8"

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 1

    .line 468
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 366
    :try_start_0
    iput v0, p0, La/k;->c:I

    .line 367
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, La/h;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, La/h;-><init>(Ljava/lang/Object;I)V

    const-string v2, "w"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized c(Landroid/app/Activity;)V
    .locals 2

    monitor-enter p0

    .line 453
    :try_start_0
    iget-boolean v0, p0, La/k;->h:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 454
    :cond_0
    const-string v0, "com.transsion.subroom.activity.MainActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 455
    :try_start_1
    iput-boolean v0, p0, La/k;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/community/oneroom/nu/mm/b;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 458
    :catch_0
    :goto_0
    monitor-exit p0

    return-void

    .line 453
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final declared-synchronized d(Landroid/app/Activity;)V
    .locals 7

    monitor-enter p0

    .line 427
    :try_start_0
    iget-object v0, p0, La/k;->b:La/b;

    if-eqz p1, :cond_7

    .line 428
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 429
    :cond_0
    const-string v1, "com.transsion.subroom.activity.MainActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    .line 430
    :cond_1
    :try_start_1
    iget-boolean v1, v0, La/b;->j:Z

    if-eqz v1, :cond_6

    iget-wide v1, v0, La/b;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    .line 462
    :try_start_2
    iget-object v4, p0, La/k;->a:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, La/k;->a:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 463
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v5, v6, :cond_2

    invoke-static {v4}, La/g;->a(Landroid/content/pm/PackageInfo;)J

    move-result-wide v4

    goto :goto_0

    :cond_2
    iget v4, v4, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    int-to-long v4, v4

    goto :goto_0

    :catch_0
    const-wide v4, 0x7fffffffffffffffL

    :goto_0
    cmp-long v1, v1, v4

    if-lez v1, :cond_6

    .line 430
    :try_start_3
    iget-object v1, v0, La/b;->g:Ljava/lang/String;

    invoke-static {v1}, La/k;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    .line 431
    :cond_3
    iget-boolean v1, p0, La/k;->f:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, La/k;->g:Z

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 432
    iput-boolean v1, p0, La/k;->f:Z

    .line 433
    iput-boolean v1, p0, La/k;->g:Z

    .line 434
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, v0, La/b;->l:Ljava/lang/String;

    .line 435
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, v0, La/b;->m:Ljava/lang/String;

    .line 436
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, v0, La/b;->n:Ljava/lang/String;

    const/4 v4, 0x0

    .line 437
    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 438
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 439
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 440
    new-instance v2, La/i;

    invoke-direct {v2, p0}, La/i;-><init>(La/k;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 443
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v2, -0x1

    .line 444
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, La/j;

    invoke-direct {v3, p1, v0, v1}, La/j;-><init>(Landroid/app/Activity;La/b;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 431
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    .line 430
    :cond_6
    :goto_2
    monitor-exit p0

    return-void

    .line 428
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 480
    iput-object p1, p0, La/k;->d:Landroid/app/Activity;

    .line 481
    invoke-static {p1}, La/e;->a(Landroid/app/Activity;)V

    .line 482
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    .line 483
    const-string v0, "com.transsion.videodetail.StreamDetailActivity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 0
    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, La/k;->b:La/b;

    .line 420
    iget-boolean v1, v0, La/b;->h:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, La/b;->e:Ljava/lang/String;

    invoke-static {v1}, La/k;->g(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 421
    :cond_0
    iget v1, p0, La/k;->e:I

    iget v2, v0, La/b;->b:I

    if-lt v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, La/k;->e:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 422
    :cond_1
    :goto_0
    iget v1, p0, La/k;->e:I

    if-nez v1, :cond_2

    iget-object v0, v0, La/b;->e:Ljava/lang/String;

    invoke-static {p1, v0}, La/k;->e(Landroid/app/Activity;Ljava/lang/String;)V

    .line 423
    :cond_2
    iget v0, p0, La/k;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, La/k;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    monitor-exit p0

    goto :goto_3

    .line 420
    :cond_3
    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 484
    :cond_4
    :goto_3
    const-string v0, "com.transsion.subroom.activity.MainActivity"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1}, La/k;->c(Landroid/app/Activity;)V

    invoke-virtual {p0, p1}, La/k;->d(Landroid/app/Activity;)V

    :cond_5
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 493
    iget-object v0, p0, La/k;->d:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, La/k;->d:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 492
    iget-object v0, p0, La/k;->d:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, La/k;->d:Landroid/app/Activity;

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .line 487
    iput-object p1, p0, La/k;->d:Landroid/app/Activity;

    .line 488
    invoke-static {p1}, La/e;->a(Landroid/app/Activity;)V

    .line 489
    invoke-virtual {p0, p1}, La/k;->c(Landroid/app/Activity;)V

    .line 490
    invoke-virtual {p0, p1}, La/k;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 496
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 494
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .line 495
    return-void
.end method
