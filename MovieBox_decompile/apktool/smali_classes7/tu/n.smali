.class public abstract Ltu/n;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static volatile a:Ljava/lang/String; = ""

.field public static volatile b:Ljava/lang/String; = ""


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "getLanguage(...)"

    .line 21
    .line 22
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    const-string v0, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    .line 32
    .line 33
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-object p0
.end method

.method public static final b(Landroid/app/Application;)V
    .locals 5

    .line 1
    const-string v0, "$it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Ltu/n;->a:Ljava/lang/String;

    .line 24
    .line 25
    sget-object v1, Ltu/i;->b:Ltu/h;

    .line 26
    .line 27
    invoke-virtual {v1, p0}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const-string v3, "KV_UPGRADE_GAID_VALUE"

    .line 32
    .line 33
    sget-object v4, Ltu/n;->a:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v2, v3, v4}, Ltu/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Ltu/c;->a:Ljavax/crypto/spec/IvParameterSpec;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "getPackageName(...)"

    .line 45
    .line 46
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v2}, Ltu/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Ltu/n;->b:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v1, p0}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    const-string v0, "KV_UPGRADE_GAID_ENCRYPT_VALUE"

    .line 69
    .line 70
    sget-object v1, Ltu/n;->b:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0, v0, v1}, Ltu/i;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;IILkotlin/jvm/functions/Function0;)V
    .locals 7

    .line 1
    const-string v0, "palmplay://thirdlauncher.com/?entryType=AppDetail&packageName="

    .line 2
    .line 3
    const-string v1, "pkgName"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "callback"

    .line 9
    .line 10
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lpu/a;->a:Landroid/app/Application;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const-string v3, "application"

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v1, v2

    .line 25
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    if-eq p1, v4, :cond_1

    .line 35
    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v6, "&su="

    .line 39
    .line 40
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v6, "&iad="

    .line 54
    .line 55
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p0, "&_source=ps_updatesdk&backFloatball="

    .line 74
    .line 75
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    if-ne p2, v4, :cond_2

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    const/4 v4, 0x0

    .line 82
    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    new-instance p1, Landroid/content/Intent;

    .line 97
    .line 98
    const-string p2, "android.intent.action.VIEW"

    .line 99
    .line 100
    invoke-direct {p1, p2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .line 102
    .line 103
    const/high16 p0, 0x10000000

    .line 104
    .line 105
    invoke-virtual {p1, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    const-string p0, "currentUpdateTime"

    .line 109
    .line 110
    invoke-static {}, Ltu/n;->e()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    if-eqz p0, :cond_4

    .line 122
    .line 123
    sget-object p0, Lpu/a;->a:Landroid/app/Application;

    .line 124
    .line 125
    if-eqz p0, :cond_3

    .line 126
    .line 127
    move-object v2, p0

    .line 128
    goto :goto_3

    .line 129
    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :goto_3
    invoke-virtual {v2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    :cond_4
    :goto_4
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    :cond_5
    return-void
.end method

.method public static d()Z
    .locals 4

    .line 1
    sget-object v0, Lpu/a;->a:Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const-string v0, "application"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "palmplay://thirdlauncher.com/?entryType=AppDetail"

    .line 17
    .line 18
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Landroid/content/Intent;

    .line 23
    .line 24
    const-string v3, "android.intent.action.VIEW"

    .line 25
    .line 26
    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    const/4 v0, 0x1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :goto_1
    return v0
.end method

.method public static e()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Ltu/j;->b:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "fileName"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    new-instance v1, Ljava/io/InputStreamReader;

    .line 9
    .line 10
    sget-object v2, Lpu/a;->a:Landroid/app/Application;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v2, "application"

    .line 16
    .line 17
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    .line 40
    .line 41
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_1

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception v2

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const-string v3, "toString(...)"

    .line 63
    .line 64
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 65
    .line 66
    .line 67
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 68
    .line 69
    .line 70
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 71
    .line 72
    .line 73
    goto :goto_7

    .line 74
    :catch_0
    move-exception v0

    .line 75
    goto :goto_6

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    goto :goto_4

    .line 78
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 79
    .line 80
    .line 81
    goto :goto_3

    .line 82
    :catchall_2
    move-exception v0

    .line 83
    :try_start_6
    invoke-static {v2, v0}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_3
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 87
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 88
    .line 89
    .line 90
    goto :goto_5

    .line 91
    :catchall_3
    move-exception v1

    .line 92
    :try_start_8
    invoke-static {v0, v1}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :goto_5
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 96
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    const-string v2, ""

    .line 100
    .line 101
    :goto_7
    const/4 v0, 0x0

    .line 102
    invoke-static {v2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    sget-object v3, Ltu/j;->a:[B

    .line 115
    .line 116
    sget-object v3, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 117
    .line 118
    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const-string v3, "this as java.lang.String).getBytes(charset)"

    .line 123
    .line 124
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v2, v1}, Ltu/j;->a([B[B)[B

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const-string v1, "encodeToString(...)"

    .line 139
    .line 140
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lnu/b;
    .locals 21

    .line 1
    const-string v0, "-"

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    const-string v3, "context"

    .line 8
    .line 9
    move-object/from16 v4, p0

    .line 10
    .line 11
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    new-instance v15, Lnu/b;

    .line 19
    .line 20
    const-string v17, "1"

    .line 21
    .line 22
    const-string v18, ""

    .line 23
    .line 24
    const-string v5, ""

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v7, ""

    .line 28
    .line 29
    const-wide/16 v8, 0x0

    .line 30
    .line 31
    const-string v10, ""

    .line 32
    .line 33
    const-string v11, ""

    .line 34
    .line 35
    const-string v12, ""

    .line 36
    .line 37
    const-string v13, ""

    .line 38
    .line 39
    const-string v14, ""

    .line 40
    .line 41
    const-string v16, ""

    .line 42
    .line 43
    const-string v19, ""

    .line 44
    .line 45
    move-object v4, v15

    .line 46
    move-object/from16 v20, v15

    .line 47
    .line 48
    move-object/from16 v15, v16

    .line 49
    .line 50
    move-object/from16 v16, v19

    .line 51
    .line 52
    invoke-direct/range {v4 .. v18}, Lnu/b;-><init>(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    const-string v6, "<set-?>"

    .line 67
    .line 68
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    move-object/from16 v7, v20

    .line 72
    .line 73
    iput-object v5, v7, Lnu/b;->a:Ljava/lang/String;

    .line 74
    .line 75
    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 76
    .line 77
    const-string v9, "BRAND"

    .line 78
    .line 79
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iput-object v8, v7, Lnu/b;->i:Ljava/lang/String;

    .line 86
    .line 87
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 88
    .line 89
    const-string v10, "MODEL"

    .line 90
    .line 91
    invoke-static {v8, v10}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iput-object v8, v7, Lnu/b;->k:Ljava/lang/String;

    .line 98
    .line 99
    const/4 v10, 0x0

    .line 100
    const/4 v11, 0x0

    .line 101
    :try_start_0
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const-string v13, "this as java.lang.String).toUpperCase(Locale.ROOT)"

    .line 106
    .line 107
    if-nez v12, :cond_6

    .line 108
    .line 109
    :try_start_1
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const/4 v12, 0x2

    .line 113
    invoke-static {v8, v1, v11, v12, v10}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v14

    .line 117
    if-eqz v14, :cond_2

    .line 118
    .line 119
    new-instance v0, Lkotlin/text/Regex;

    .line 120
    .line 121
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, v8, v11}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-nez v1, :cond_1

    .line 133
    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 143
    .line 144
    .line 145
    move-result v12

    .line 146
    if-eqz v12, :cond_1

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v12

    .line 152
    check-cast v12, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 155
    .line 156
    .line 157
    move-result v12

    .line 158
    if-nez v12, :cond_0

    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    .line 166
    .line 167
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    goto :goto_1

    .line 172
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :goto_1
    new-array v1, v11, [Ljava/lang/String;

    .line 177
    .line 178
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, [Ljava/lang/String;

    .line 183
    .line 184
    array-length v1, v0

    .line 185
    add-int/lit8 v1, v1, -0x1

    .line 186
    .line 187
    aget-object v0, v0, v1

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_2
    invoke-static {v8, v0, v11, v12, v10}, Lkotlin/text/StringsKt;->c0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-eqz v1, :cond_5

    .line 195
    .line 196
    new-instance v1, Lkotlin/text/Regex;

    .line 197
    .line 198
    invoke-direct {v1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v1, v8, v11}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_4

    .line 210
    .line 211
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    :goto_2
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 220
    .line 221
    .line 222
    move-result v12

    .line 223
    if-eqz v12, :cond_4

    .line 224
    .line 225
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v12

    .line 229
    check-cast v12, Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 232
    .line 233
    .line 234
    move-result v12

    .line 235
    if-nez v12, :cond_3

    .line 236
    .line 237
    goto :goto_2

    .line 238
    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    add-int/lit8 v1, v1, 0x1

    .line 243
    .line 244
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    goto :goto_3

    .line 249
    :cond_4
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    :goto_3
    new-array v1, v11, [Ljava/lang/String;

    .line 254
    .line 255
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, [Ljava/lang/String;

    .line 260
    .line 261
    array-length v1, v0

    .line 262
    add-int/lit8 v1, v1, -0x1

    .line 263
    .line 264
    aget-object v0, v0, v1

    .line 265
    .line 266
    goto :goto_4

    .line 267
    :cond_5
    move-object v0, v8

    .line 268
    :goto_4
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    goto :goto_5

    .line 278
    :cond_6
    move-object v0, v2

    .line 279
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    sget-object v12, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 285
    .line 286
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 290
    .line 291
    invoke-virtual {v12, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v9

    .line 295
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const/16 v9, 0x5f

    .line 302
    .line 303
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 313
    goto :goto_6

    .line 314
    :catch_0
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    :goto_6
    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    iput-object v8, v7, Lnu/b;->j:Ljava/lang/String;

    .line 321
    .line 322
    invoke-static {}, Ltu/n;->h()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    iput-object v0, v7, Lnu/b;->l:Ljava/lang/String;

    .line 330
    .line 331
    sget-object v0, Lpu/a;->a:Landroid/app/Application;

    .line 332
    .line 333
    if-eqz v0, :cond_7

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_7
    const-string v0, "application"

    .line 337
    .line 338
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    move-object v0, v10

    .line 342
    :goto_7
    :try_start_2
    const-string v1, "phone"

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    const-string v1, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    .line 349
    .line 350
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 354
    .line 355
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    const-string v1, "getSimCountryIso(...)"

    .line 360
    .line 361
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 362
    .line 363
    .line 364
    move-object v2, v0

    .line 365
    :catch_1
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    iput-object v2, v7, Lnu/b;->h:Ljava/lang/String;

    .line 369
    .line 370
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v0

    .line 378
    const-string v1, "toString(...)"

    .line 379
    .line 380
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    iput-object v0, v7, Lnu/b;->m:Ljava/lang/String;

    .line 387
    .line 388
    :try_start_3
    invoke-virtual {v4, v5, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v4, v5, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    const-string v2, "getApplicationInfo(...)"

    .line 397
    .line 398
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 402
    .line 403
    invoke-virtual {v4, v5, v2, v10}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    const-string v4, "null cannot be cast to non-null type kotlin.String"

    .line 412
    .line 413
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    check-cast v1, Ljava/lang/String;

    .line 417
    .line 418
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 419
    .line 420
    const/16 v5, 0x1c

    .line 421
    .line 422
    if-lt v4, v5, :cond_8

    .line 423
    .line 424
    invoke-static {v0}, Lf7/a;->a(Landroid/content/pm/PackageInfo;)J

    .line 425
    .line 426
    .line 427
    move-result-wide v4

    .line 428
    goto :goto_8

    .line 429
    :catch_2
    move-exception v0

    .line 430
    goto :goto_9

    .line 431
    :cond_8
    iget v4, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 432
    .line 433
    int-to-long v4, v4

    .line 434
    :goto_8
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 435
    .line 436
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    iput-object v1, v7, Lnu/b;->c:Ljava/lang/String;

    .line 440
    .line 441
    iput-object v2, v7, Lnu/b;->b:Landroid/graphics/drawable/Drawable;

    .line 442
    .line 443
    iput-wide v4, v7, Lnu/b;->d:J

    .line 444
    .line 445
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 446
    .line 447
    .line 448
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    iput-object v0, v7, Lnu/b;->e:Ljava/lang/String;

    .line 452
    .line 453
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    invoke-static {v3}, Ltu/n;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v0

    .line 460
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 461
    .line 462
    .line 463
    iput-object v0, v7, Lnu/b;->f:Ljava/lang/String;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 464
    .line 465
    goto :goto_a

    .line 466
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 467
    .line 468
    .line 469
    :goto_a
    invoke-static {}, Ltu/n;->g()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    return-object v7
.end method

.method public static g()Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Ltu/n;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lpu/a;->a:Landroid/app/Application;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "application"

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->y(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    .line 21
    .line 22
    new-instance v2, Ltu/m;

    .line 23
    .line 24
    invoke-direct {v2, v0}, Ltu/m;-><init>(Landroid/app/Application;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 31
    .line 32
    .line 33
    sget-object v1, Ltu/i;->b:Ltu/h;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v3, "KV_UPGRADE_GAID_VALUE"

    .line 40
    .line 41
    const-string v4, ""

    .line 42
    .line 43
    invoke-virtual {v2, v3, v4}, Ltu/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    sput-object v2, Ltu/n;->a:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ltu/h;->a(Landroid/content/Context;)Ltu/i;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "KV_UPGRADE_GAID_ENCRYPT_VALUE"

    .line 54
    .line 55
    invoke-virtual {v0, v1, v4}, Ltu/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Ltu/n;->b:Ljava/lang/String;

    .line 60
    .line 61
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v1, "gaid : "

    .line 64
    .line 65
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    sget-object v1, Ltu/n;->a:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "tag"

    .line 78
    .line 79
    const-string v2, "UpgradeSdkManager"

    .line 80
    .line 81
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    const-string v1, "msg"

    .line 85
    .line 86
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 90
    .line 91
    .line 92
    move-result-wide v0

    .line 93
    sget-boolean v2, Ltu/g;->a:Z

    .line 94
    .line 95
    if-eqz v2, :cond_2

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    sget-wide v2, Ltu/g;->b:J

    .line 99
    .line 100
    sub-long v2, v0, v2

    .line 101
    .line 102
    const-wide/16 v4, 0x1388

    .line 103
    .line 104
    cmp-long v2, v2, v4

    .line 105
    .line 106
    if-gez v2, :cond_3

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_3
    sput-wide v0, Ltu/g;->b:J

    .line 110
    .line 111
    const-string v0, "upgradeSdkLog"

    .line 112
    .line 113
    const/4 v1, 0x3

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    const/4 v0, 0x1

    .line 121
    sput-boolean v0, Ltu/g;->a:Z

    .line 122
    .line 123
    :cond_4
    :goto_1
    sget-object v0, Lqu/f;->o:Lqu/d;

    .line 124
    .line 125
    invoke-virtual {v0}, Lqu/d;->a()Lqu/f;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-boolean v0, v0, Lqu/f;->d:Z

    .line 130
    .line 131
    sget-object v0, Ltu/n;->a:Ljava/lang/String;

    .line 132
    .line 133
    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    const-string v2, "android.os.SystemProperties"

    .line 4
    .line 5
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "get"

    .line 10
    .line 11
    new-array v4, v0, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v5, Ljava/lang/String;

    .line 14
    .line 15
    aput-object v5, v4, v1

    .line 16
    .line 17
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    const-string v3, "ro.system.build.version.release"

    .line 24
    .line 25
    aput-object v3, v0, v1

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v2, v3, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "null cannot be cast to non-null type kotlin.String"

    .line 33
    .line 34
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    const-string v0, ""

    .line 45
    .line 46
    :goto_0
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_1

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    goto :goto_2

    .line 70
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    const-string v3, "getDefault(...)"

    .line 75
    .line 76
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v2, "this as java.lang.String).toUpperCase(locale)"

    .line 84
    .line 85
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    add-int/lit8 v0, v0, -0x47

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    :goto_1
    const/4 v0, -0x1

    .line 96
    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    return-object v0
.end method

.method public static i()J
    .locals 3

    .line 1
    invoke-static {}, Lyj/a;->a()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "com.transsnet.store"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "getPackageInfo(...)"

    .line 17
    .line 18
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x1c

    .line 24
    .line 25
    if-lt v1, v2, :cond_0

    .line 26
    .line 27
    invoke-static {v0}, Lf7/a;->a(Landroid/content/pm/PackageInfo;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    goto :goto_1

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    int-to-long v0, v0

    .line 37
    goto :goto_1

    .line 38
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    const-wide/16 v0, -0x1

    .line 42
    .line 43
    :goto_1
    return-wide v0
.end method
