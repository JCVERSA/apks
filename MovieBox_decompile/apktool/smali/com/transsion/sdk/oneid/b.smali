.class public abstract Lcom/transsion/sdk/oneid/b;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static a:Lcom/transsion/core/log/ObjectLogUtils;


# direct methods
.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_fsid:J

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    goto :goto_1

    .line 36
    :goto_0
    throw v0

    .line 37
    :goto_1
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    const-string v0, ""

    .line 45
    .line 46
    return-object v0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-wide/32 v2, 0x40000000

    .line 4
    .line 5
    .line 6
    cmp-long v4, p0, v2

    .line 7
    .line 8
    if-ltz v4, :cond_0

    .line 9
    .line 10
    :try_start_0
    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    const-string v5, "%.1fGB"

    .line 13
    .line 14
    long-to-float p0, p0

    .line 15
    long-to-float p1, v2

    .line 16
    div-float/2addr p0, p1

    .line 17
    :try_start_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-array p1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p0, p1, v0

    .line 24
    .line 25
    invoke-static {v4, v5, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    const-wide/32 v2, 0x100000

    .line 31
    .line 32
    .line 33
    cmp-long v4, p0, v2

    .line 34
    .line 35
    const/high16 v5, 0x42c80000    # 100.0f

    .line 36
    .line 37
    if-ltz v4, :cond_2

    .line 38
    .line 39
    long-to-float p0, p0

    .line 40
    long-to-float p1, v2

    .line 41
    div-float/2addr p0, p1

    .line 42
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    cmpl-float v2, p0, v5

    .line 45
    .line 46
    if-lez v2, :cond_1

    .line 47
    .line 48
    const-string v2, "%.0fMB"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const-string v2, "%.1fMB"

    .line 52
    .line 53
    :goto_0
    :try_start_2
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    new-array v1, v1, [Ljava/lang/Object;

    .line 58
    .line 59
    aput-object p0, v1, v0

    .line 60
    .line 61
    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    return-object p0

    .line 66
    :cond_2
    const-wide/16 v2, 0x400

    .line 67
    .line 68
    cmp-long v4, p0, v2

    .line 69
    .line 70
    if-ltz v4, :cond_4

    .line 71
    .line 72
    long-to-float p0, p0

    .line 73
    long-to-float p1, v2

    .line 74
    div-float/2addr p0, p1

    .line 75
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .line 77
    cmpl-float v2, p0, v5

    .line 78
    .line 79
    if-lez v2, :cond_3

    .line 80
    .line 81
    const-string v2, "%.0fKB"

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const-string v2, "%.1fKB"

    .line 85
    .line 86
    :goto_1
    :try_start_3
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    new-array v1, v1, [Ljava/lang/Object;

    .line 91
    .line 92
    aput-object p0, v1, v0

    .line 93
    .line 94
    invoke-static {p1, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    return-object p0

    .line 99
    :cond_4
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .line 101
    const-string v3, "%dB"

    .line 102
    .line 103
    :try_start_4
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    new-array p1, v1, [Ljava/lang/Object;

    .line 108
    .line 109
    aput-object p0, p1, v0

    .line 110
    .line 111
    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 115
    return-object p0

    .line 116
    :catchall_0
    const-string p0, "0"

    .line 117
    .line 118
    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "com.android.internal.os.PowerProfile"

    .line 4
    .line 5
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    new-array v4, v1, [Ljava/lang/Class;

    .line 10
    .line 11
    const-class v5, Landroid/content/Context;

    .line 12
    .line 13
    aput-object v5, v4, v0

    .line 14
    .line 15
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p0, v1, v0

    .line 22
    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    const-string v1, "getBatteryCapacity"

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :try_start_1
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/lang/Double;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 45
    .line 46
    .line 47
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    const-wide/16 v0, 0x0

    .line 50
    .line 51
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    return-object p0
.end method

.method public static d(Landroid/content/Context;Landroid/os/Handler$Callback;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string p0, "content://com.transsion.dataservice.provider/property"

    .line 9
    .line 10
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    const-string v4, "prop_key = ?"

    .line 15
    .line 16
    :try_start_1
    const-string p0, "oneid"

    .line 17
    .line 18
    filled-new-array {p0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    const/4 v6, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    const/4 p0, 0x0

    .line 37
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    :try_start_2
    new-instance v1, Lcom/transsion/sdk/oneid/d;

    .line 50
    .line 51
    invoke-direct {v1, p0, p1}, Lcom/transsion/sdk/oneid/d;-><init>(Landroid/content/Context;Landroid/os/Handler$Callback;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/transsion/sdk/oneid/d;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    .line 56
    .line 57
    :cond_1
    if-eqz v0, :cond_2

    .line 58
    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 60
    .line 61
    .line 62
    :cond_2
    const-string p0, ""

    .line 63
    .line 64
    return-object p0

    .line 65
    :goto_0
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :goto_1
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 69
    .line 70
    .line 71
    :cond_3
    throw p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v2, "android.os.SystemProperties"

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    new-array v2, v1, [Ljava/lang/Class;

    .line 14
    .line 15
    const-class v3, Ljava/lang/String;

    .line 16
    .line 17
    aput-object v3, v2, v0

    .line 18
    .line 19
    const-string v3, "get"

    .line 20
    .line 21
    invoke-virtual {p0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    new-instance v3, Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {v3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-array p1, v1, [Ljava/lang/Object;

    .line 31
    .line 32
    aput-object v3, p1, v0

    .line 33
    .line 34
    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :catch_1
    const-string p0, ""

    .line 44
    .line 45
    :goto_0
    return-object p0

    .line 46
    :goto_1
    throw p0
.end method

.method public static f(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    .line 5
    .line 6
    const/16 p0, 0x400

    .line 7
    .line 8
    :try_start_0
    new-array p0, p0, [B

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-lez v1, :cond_0

    .line 15
    .line 16
    new-instance v2, Ljava/lang/String;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, p0, v3, v1}, Ljava/lang/String;-><init>([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v2, 0x0

    .line 26
    :goto_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 36
    .line 37
    .line 38
    :goto_2
    throw p0
.end method

.method public static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "SHA-256"

    .line 2
    .line 3
    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    array-length v3, v0

    .line 25
    if-ge v2, v3, :cond_1

    .line 26
    .line 27
    aget-byte v3, v0, v2

    .line 28
    .line 29
    and-int/lit16 v3, v3, 0xff

    .line 30
    .line 31
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    const/4 v5, 0x1

    .line 40
    if-ne v4, v5, :cond_0

    .line 41
    .line 42
    const/16 v4, 0x30

    .line 43
    .line 44
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_1

    .line 58
    :catch_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    :goto_1
    return-object p0
.end method

.method public static h(Landroid/content/Context;Ljava/util/List;)V
    .locals 14

    .line 1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    move-object v1, v0

    .line 7
    move-object v2, v1

    .line 8
    move-object v3, v2

    .line 9
    move-object v4, v3

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    const-string v6, "oaid"

    .line 15
    .line 16
    const-string v7, "opid"

    .line 17
    .line 18
    if-eqz v5, :cond_9

    .line 19
    .line 20
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    check-cast v5, Lcom/transsion/sdk/oneid/data/IdChangeInfo;

    .line 25
    .line 26
    iget-object v8, v5, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->id_type:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v9

    .line 32
    const v10, 0x33ee6d

    .line 33
    .line 34
    .line 35
    const/4 v11, 0x1

    .line 36
    const/4 v12, 0x3

    .line 37
    const/4 v13, 0x2

    .line 38
    if-eq v9, v10, :cond_3

    .line 39
    .line 40
    const v6, 0x3426bc

    .line 41
    .line 42
    .line 43
    if-eq v9, v6, :cond_2

    .line 44
    .line 45
    const v6, 0x3677da

    .line 46
    .line 47
    .line 48
    if-eq v9, v6, :cond_1

    .line 49
    .line 50
    const v6, 0x371d06

    .line 51
    .line 52
    .line 53
    if-eq v9, v6, :cond_0

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    const-string v6, "vaid"

    .line 57
    .line 58
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-eqz v6, :cond_4

    .line 63
    .line 64
    move v6, v13

    .line 65
    goto :goto_2

    .line 66
    :catch_0
    move-exception p0

    .line 67
    goto/16 :goto_7

    .line 68
    .line 69
    :cond_1
    const-string v6, "tsid"

    .line 70
    .line 71
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_4

    .line 76
    .line 77
    const/4 v6, 0x0

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    if-eqz v6, :cond_4

    .line 84
    .line 85
    move v6, v12

    .line 86
    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v6

    .line 91
    if-eqz v6, :cond_4

    .line 92
    .line 93
    move v6, v11

    .line 94
    goto :goto_2

    .line 95
    :cond_4
    :goto_1
    const/4 v6, -0x1

    .line 96
    :goto_2
    if-eqz v6, :cond_8

    .line 97
    .line 98
    if-eq v6, v11, :cond_7

    .line 99
    .line 100
    if-eq v6, v13, :cond_6

    .line 101
    .line 102
    if-eq v6, v12, :cond_5

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    iget-object v4, v5, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->new_id:Ljava/lang/String;

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_6
    iget-object v3, v5, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->new_id:Ljava/lang/String;

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    iget-object v2, v5, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->new_id:Ljava/lang/String;

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_8
    iget-object v1, v5, Lcom/transsion/sdk/oneid/data/IdChangeInfo;->new_id:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_9
    invoke-static {p0}, Lbz/b;->b(Landroid/content/Context;)Lbz/b;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_a

    .line 126
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 128
    .line 129
    .line 130
    move-result-wide v8

    .line 131
    const-wide/16 v10, 0x3e8

    .line 132
    .line 133
    div-long/2addr v8, v10

    .line 134
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :try_start_2
    const-string v8, "oneid"

    .line 143
    .line 144
    invoke-virtual {p1, v8, v1}, Lbz/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v1, "oneid_time"

    .line 148
    .line 149
    invoke-virtual {p1, v1, v5}, Lbz/b;->c(Ljava/lang/String;I)V

    .line 150
    .line 151
    .line 152
    const-string v1, "sync tsid success"

    .line 153
    .line 154
    invoke-static {v1}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 155
    .line 156
    .line 157
    :catch_1
    :cond_a
    :try_start_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 161
    if-nez v1, :cond_b

    .line 162
    .line 163
    :try_start_4
    invoke-virtual {p1, v6, v2}, Lbz/b;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    const-string p1, "sync oaid success"

    .line 167
    .line 168
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 169
    .line 170
    .line 171
    :catch_2
    :cond_b
    :try_start_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_c

    .line 176
    .line 177
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-nez p1, :cond_14

    .line 182
    .line 183
    :cond_c
    new-instance p1, Ljava/io/File;

    .line 184
    .line 185
    invoke-static {}, Lcom/transsion/sdk/oneid/a;->a()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 193
    .line 194
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-nez v1, :cond_14

    .line 199
    .line 200
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 201
    .line 202
    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_14

    .line 207
    .line 208
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-eqz v1, :cond_d

    .line 213
    .line 214
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->f(Ljava/io/File;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    if-eqz v1, :cond_f

    .line 219
    .line 220
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    if-lez v2, :cond_f

    .line 225
    .line 226
    new-instance v0, Lorg/json/JSONObject;

    .line 227
    .line 228
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    goto :goto_3

    .line 232
    :cond_d
    new-instance v1, Ljava/io/File;

    .line 233
    .line 234
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    .line 239
    .line 240
    invoke-direct {v1, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 244
    .line 245
    .line 246
    move-result v2

    .line 247
    if-nez v2, :cond_e

    .line 248
    .line 249
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 250
    .line 251
    .line 252
    move-result v1

    .line 253
    if-eqz v1, :cond_f

    .line 254
    .line 255
    :cond_e
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-eqz v1, :cond_f

    .line 260
    .line 261
    const-string v1, "createNewFile success"

    .line 262
    .line 263
    invoke-static {v1}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    :cond_f
    :goto_3
    if-nez v0, :cond_10

    .line 267
    .line 268
    new-instance v0, Lorg/json/JSONObject;

    .line 269
    .line 270
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 271
    .line 272
    .line 273
    :cond_10
    const-string v1, ""

    .line 274
    .line 275
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 280
    .line 281
    .line 282
    move-result v2

    .line 283
    if-eqz v2, :cond_11

    .line 284
    .line 285
    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    .line 287
    .line 288
    const-string v1, "sync opid success"

    .line 289
    .line 290
    invoke-static {v1}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    goto :goto_4

    .line 294
    :cond_11
    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    if-nez v2, :cond_12

    .line 299
    .line 300
    invoke-static {p0}, Lbz/b;->b(Landroid/content/Context;)Lbz/b;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v2, v7, v1}, Lbz/b;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const-string v1, "cover opid success"

    .line 308
    .line 309
    invoke-static {v1}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 310
    .line 311
    .line 312
    :cond_12
    :goto_4
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    if-nez v1, :cond_13

    .line 317
    .line 318
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object p0

    .line 322
    invoke-virtual {v0, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    .line 324
    .line 325
    const-string p0, "sync vaid success"

    .line 326
    .line 327
    invoke-static {p0}, Lcom/transsion/sdk/oneid/b;->i(Ljava/lang/Object;)V

    .line 328
    .line 329
    .line 330
    :cond_13
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 334
    :try_start_6
    new-instance v0, Ljava/io/FileOutputStream;

    .line 335
    .line 336
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 337
    .line 338
    .line 339
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    invoke-virtual {v0, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 344
    .line 345
    .line 346
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 347
    .line 348
    .line 349
    goto :goto_8

    .line 350
    :catch_3
    move-exception p0

    .line 351
    goto :goto_6

    .line 352
    :catchall_0
    move-exception p0

    .line 353
    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 354
    .line 355
    .line 356
    goto :goto_5

    .line 357
    :catchall_1
    move-exception p1

    .line 358
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 359
    .line 360
    .line 361
    :goto_5
    throw p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 362
    :goto_6
    :try_start_b
    throw p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 363
    :goto_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p0

    .line 367
    invoke-static {p0}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    :cond_14
    :goto_8
    return-void
.end method

.method public static i(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/sdk/oneid/b;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static j()Ljava/lang/String;
    .locals 11

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->getTotalSpace()J

    .line 14
    .line 15
    .line 16
    move-result-wide v2

    .line 17
    add-long/2addr v0, v2

    .line 18
    const-wide/16 v2, 0x1

    .line 19
    .line 20
    move-wide v4, v2

    .line 21
    move-wide v6, v4

    .line 22
    :cond_0
    :goto_0
    mul-long v8, v4, v6

    .line 23
    .line 24
    cmp-long v10, v8, v0

    .line 25
    .line 26
    if-gez v10, :cond_1

    .line 27
    .line 28
    const/4 v8, 0x1

    .line 29
    shl-long/2addr v4, v8

    .line 30
    const-wide/16 v8, 0x200

    .line 31
    .line 32
    cmp-long v8, v4, v8

    .line 33
    .line 34
    if-lez v8, :cond_0

    .line 35
    .line 36
    const-wide/16 v4, 0x3e8

    .line 37
    .line 38
    mul-long/2addr v6, v4

    .line 39
    move-wide v4, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v8, v9}, Lcom/transsion/sdk/oneid/b;->b(J)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object v0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    .line 49
    .line 50
    const-string v0, "0"

    .line 51
    .line 52
    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v2, 0x1c

    .line 5
    .line 6
    if-lt v1, v2, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/apm/insight/l/o;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_2

    .line 13
    :catch_0
    move-exception v1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v2, "activity"

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Landroid/app/ActivityManager;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 48
    .line 49
    iget v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 50
    .line 51
    if-ne v4, v1, :cond_1

    .line 52
    .line 53
    iget-object v0, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_3
    return-object v0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/16 v1, 0x40

    .line 10
    .line 11
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 20
    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    array-length v0, p0

    .line 24
    if-lez v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    aget-object p0, p0, v0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    array-length v1, p0

    .line 43
    :goto_0
    if-ge v0, v1, :cond_0

    .line 44
    .line 45
    aget-byte v2, p0, v0

    .line 46
    .line 47
    and-int/lit16 v2, v2, 0xff

    .line 48
    .line 49
    or-int/lit16 v2, v2, 0x100

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    const/4 v3, 0x3

    .line 56
    const/4 v4, 0x1

    .line 57
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    add-int/lit8 v0, v0, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    return-object p0

    .line 76
    :catch_0
    :cond_1
    const-string p0, ""

    .line 77
    .line 78
    return-object p0
.end method

.method public static m(Ljava/lang/Object;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/sdk/oneid/b;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils;->i(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManager;

    .line 8
    .line 9
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 10
    .line 11
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 15
    .line 16
    .line 17
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/transsion/sdk/oneid/b;->b(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    const-string p0, "0"

    .line 25
    .line 26
    return-object p0
.end method

.method public static o()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "OneID"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->p(Ljava/lang/String;)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->q(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->n(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils$a;->m()Lcom/transsion/core/log/ObjectLogUtils;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lcom/transsion/sdk/oneid/b;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 27
    .line 28
    return-void
.end method

.method public static p(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "connectivity"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p0, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    const/4 v2, 0x3

    .line 50
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 51
    .line 52
    .line 53
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    move v0, v1

    .line 60
    :cond_2
    return v0

    .line 61
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    .line 63
    .line 64
    :cond_3
    return v0
.end method

.method public static q(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "power"

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/os/PowerManager;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 13
    .line 14
    .line 15
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    :catch_0
    :cond_0
    return v0
.end method

.method public static r(Landroid/content/Context;)Z
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Landroid/content/ComponentName;

    .line 6
    .line 7
    const-string v1, "com.hoffnung"

    .line 8
    .line 9
    const-string v2, "com.transsion.dataservice.provider.DCSProvider"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/16 v1, 0x80

    .line 15
    .line 16
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    .line 23
    .line 24
    if-eqz p0, :cond_0

    .line 25
    .line 26
    const-string v0, "tran_dcs_version"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-eqz p0, :cond_0

    .line 33
    .line 34
    const-string v0, "1.0.2.1"

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    if-ltz p0, :cond_0

    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    return p0

    .line 44
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 45
    return p0
.end method
