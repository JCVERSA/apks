.class public Lcom/transsion/sdk/oneid/OneID;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field static transient c:Z = true

.field static d:I

.field private static volatile e:Lcom/transsion/sdk/oneid/OneID;


# instance fields
.field private final a:Lcom/transsion/sdk/oneid/e;

.field private final b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/transsion/sdk/oneid/OneID;->b:Landroid/content/Context;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/transsion/sdk/oneid/e;->a(Landroid/content/Context;)Lcom/transsion/sdk/oneid/e;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/transsion/sdk/oneid/OneID;->a:Lcom/transsion/sdk/oneid/e;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lll/a;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_2

    .line 4
    :cond_0
    sget-object v0, Lcom/transsion/sdk/oneid/OneID;->e:Lcom/transsion/sdk/oneid/OneID;

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    const-class v0, Lcom/transsion/sdk/oneid/OneID;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/transsion/sdk/oneid/OneID;->e:Lcom/transsion/sdk/oneid/OneID;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    new-instance v1, Lcom/transsion/sdk/oneid/OneID;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/transsion/sdk/oneid/OneID;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/transsion/sdk/oneid/OneID;->e:Lcom/transsion/sdk/oneid/OneID;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    monitor-exit v0

    .line 26
    goto :goto_2

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_2
    :goto_2
    sget-object p0, Lcom/transsion/sdk/oneid/OneID;->e:Lcom/transsion/sdk/oneid/OneID;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/transsion/sdk/oneid/OneID;->b:Landroid/content/Context;

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    iget-object p0, p0, Lcom/transsion/sdk/oneid/OneID;->a:Lcom/transsion/sdk/oneid/e;

    .line 36
    .line 37
    if-nez p0, :cond_3

    .line 38
    .line 39
    goto :goto_3

    .line 40
    :cond_3
    invoke-virtual {p0, p1}, Lcom/transsion/sdk/oneid/e;->b(I)V

    .line 41
    .line 42
    .line 43
    :cond_4
    :goto_3
    return-void
.end method

.method public static d(Landroid/content/Context;II)V
    .locals 1

    .line 1
    sget v0, Lcom/transsion/sdk/oneid/OneID;->d:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sput p2, Lcom/transsion/sdk/oneid/OneID;->d:I

    .line 6
    .line 7
    :cond_0
    invoke-static {p0, p1}, Lcom/transsion/sdk/oneid/OneID;->c(Landroid/content/Context;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static e()Lcom/transsion/sdk/oneid/OneID;
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/sdk/oneid/OneID;->e:Lcom/transsion/sdk/oneid/OneID;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/transsion/sdk/oneid/OneID;->e:Lcom/transsion/sdk/oneid/OneID;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v1, "You should call OneID.init first!"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0
.end method

.method public static f()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/transsion/sdk/oneid/OneID;->c:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/transsion/sdk/oneid/OneID;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Lcom/transsion/sdk/oneid/OneID;->a:Lcom/transsion/sdk/oneid/e;

    .line 6
    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lcom/transsion/sdk/oneid/e;->i(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v0, v1

    .line 17
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    iget-object v2, p0, Lcom/transsion/sdk/oneid/OneID;->b:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v2}, Lbz/b;->b(Landroid/content/Context;)Lbz/b;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :try_start_0
    const-string v3, "appid_info_list"

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lbz/b;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    new-instance v3, Lcom/google/gson/Gson;

    .line 43
    .line 44
    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 45
    .line 46
    .line 47
    new-instance v4, Lcom/transsion/sdk/oneid/OneID$a;

    .line 48
    .line 49
    invoke-direct {v4, p0}, Lcom/transsion/sdk/oneid/OneID$a;-><init>(Lcom/transsion/sdk/oneid/OneID;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/transsion/sdk/oneid/data/AppIdInfo;

    .line 71
    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    iget-object v0, p1, Lcom/transsion/sdk/oneid/data/AppIdInfo;->odid:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v1, p1, Lcom/transsion/sdk/oneid/data/AppIdInfo;->msg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception p1

    .line 80
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lcom/transsion/sdk/oneid/b;->m(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_3

    .line 92
    .line 93
    return-object v0

    .line 94
    :cond_3
    new-instance p1, Lcom/transsion/sdk/oneid/OneIDException;

    .line 95
    .line 96
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    if-eqz v0, :cond_4

    .line 101
    .line 102
    const-string v1, "Please try later"

    .line 103
    .line 104
    :cond_4
    invoke-direct {p1, v1}, Lcom/transsion/sdk/oneid/OneIDException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_5
    new-instance p1, Lcom/transsion/sdk/oneid/OneIDException;

    .line 109
    .line 110
    const-string v0, "OneID not init yet"

    .line 111
    .line 112
    invoke-direct {p1, v0}, Lcom/transsion/sdk/oneid/OneIDException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/sdk/oneid/OneID;->a:Lcom/transsion/sdk/oneid/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/sdk/oneid/e;->h()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method
