.class public Lbk/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static b:Lbk/a;

.field private static c:Landroid/content/Context;


# instance fields
.field private a:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lbk/a;->c:Landroid/content/Context;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lbk/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lbk/a;
    .locals 2

    .line 1
    const-class v0, Lbk/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lbk/a;->b:Lbk/a;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lbk/a;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lbk/a;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lbk/a;->b:Lbk/a;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object p0, Lbk/a;->b:Lbk/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object p0

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p0
.end method

.method private c(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "tcrypto"

    .line 8
    .line 9
    if-ge v0, v1, :cond_2

    .line 10
    .line 11
    iget-object v0, p0, Lbk/a;->a:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    if-nez p1, :cond_1

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_1
    :try_start_0
    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lbk/a;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    :catch_0
    iget-object p1, p0, Lbk/a;->a:Landroid/content/SharedPreferences;

    .line 26
    .line 27
    return-object p1

    .line 28
    :cond_2
    const-string v0, "user"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Landroid/os/UserManager;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/android/gms/internal/auth/a;->a(Landroid/os/UserManager;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    :try_start_1
    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lbk/a;->a:Landroid/content/SharedPreferences;

    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_3
    invoke-static {p1}, Landroidx/profileinstaller/b;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lbk/a;->a:Landroid/content/SharedPreferences;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 58
    .line 59
    return-object p1

    .line 60
    :catch_1
    return-object v2
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lbk/a;->c:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-object v1

    .line 8
    :cond_0
    invoke-static {}, Lak/e;->b()Lak/e;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v2, Lbk/a;->c:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Lak/e;->a(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    return-object v1

    .line 21
    :cond_1
    iget-object v0, p0, Lbk/a;->a:Landroid/content/SharedPreferences;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    sget-object v0, Lbk/a;->c:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {p0, v0}, Lbk/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lbk/a;->a:Landroid/content/SharedPreferences;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lbk/a;->a:Landroid/content/SharedPreferences;

    .line 34
    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_3
    :try_start_0
    new-instance v0, Lak/d;

    .line 39
    .line 40
    sget-object v2, Lbk/a;->c:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {v0, v2}, Lak/d;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lbk/a;->a:Landroid/content/SharedPreferences;

    .line 46
    .line 47
    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-eqz v2, :cond_4

    .line 56
    .line 57
    return-object v1

    .line 58
    :cond_4
    const-string v2, "_"

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    array-length v2, p1

    .line 65
    const/4 v2, 0x1

    .line 66
    aget-object v2, p1, v2

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Lzj/a;->a(Ljava/lang/String;)[B

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-virtual {v0, v2}, Lak/d;->d([B)[B

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    array-length v2, v0

    .line 77
    const/16 v2, 0x20

    .line 78
    .line 79
    new-array v3, v2, [B

    .line 80
    .line 81
    const/16 v4, 0x10

    .line 82
    .line 83
    new-array v5, v4, [B

    .line 84
    .line 85
    const/4 v6, 0x0

    .line 86
    invoke-static {v0, v6, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0, v2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    .line 91
    .line 92
    new-instance v0, Lak/a;

    .line 93
    .line 94
    invoke-direct {v0, v3, v5}, Lak/a;-><init>([B[B)V

    .line 95
    .line 96
    .line 97
    aget-object p1, p1, v6

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Lzj/a;->a(Ljava/lang/String;)[B

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {v0, p1}, Lak/a;->d([B)[B

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance v0, Ljava/lang/String;

    .line 108
    .line 109
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    return-object v0

    .line 113
    :catch_0
    return-object v1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lbk/a;->c:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-static {}, Lak/e;->b()Lak/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lbk/a;->c:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lak/e;->a(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lbk/a;->a:Landroid/content/SharedPreferences;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Lbk/a;->c:Landroid/content/Context;

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lbk/a;->c(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lbk/a;->a:Landroid/content/SharedPreferences;

    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lbk/a;->a:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :try_start_0
    new-instance v0, Lak/b;

    .line 34
    .line 35
    invoke-direct {v0}, Lak/b;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lak/d;

    .line 39
    .line 40
    sget-object v2, Lbk/a;->c:Landroid/content/Context;

    .line 41
    .line 42
    invoke-direct {v1, v2}, Lak/d;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p2}, Lak/b;->e(Ljava/lang/String;)[B

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {v0, p2}, Lzj/a;->c([B)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {v0}, Lak/b;->i()[B

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Lak/d;->e([B)[B

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Lzj/a;->c([B)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Lbk/a;->a:Landroid/content/SharedPreferences;

    .line 66
    .line 67
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string p2, "_"

    .line 80
    .line 81
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    :catch_0
    return-void

    .line 99
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    .line 100
    .line 101
    const-string p2, "sp is null"

    .line 102
    .line 103
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1

    .line 107
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    .line 108
    .line 109
    const-string p2, "key not created"

    .line 110
    .line 111
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw p1

    .line 115
    :cond_3
    new-instance p1, Ljava/lang/Exception;

    .line 116
    .line 117
    const-string p2, "context is null"

    .line 118
    .line 119
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    throw p1
.end method
