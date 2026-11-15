.class public Ll7/a;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field private static final c:Ll7/a;


# instance fields
.field private a:Ll7/b;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll7/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ll7/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ll7/a;->c:Ll7/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 1
    const-string v0, "AdxPreferencesHelper"

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Ll7/a;->b:Z

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0}, Ll7/a;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    iput-boolean v1, p0, Ll7/a;->b:Z

    .line 14
    .line 15
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "mmkv is available: "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v3, p0, Ll7/a;->b:Z

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-boolean v1, p0, Ll7/a;->b:Z

    .line 42
    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-static {}, Ll7/b;->c()Ll7/b;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iput-object v1, p0, Ll7/a;->a:Ll7/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "init mmkv error, com.tencent.mmkv.MMKV not found!"

    .line 58
    .line 59
    invoke-virtual {v1, v0, v2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 64
    .line 65
    :goto_0
    return-void
.end method

.method private a()Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Lcom/tencent/mmkv/MMKV;->j:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    .line 4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v2, 0x23

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    return v3

    .line 12
    :cond_0
    invoke-static {}, Ll7/b;->c()Ll7/b;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ll7/b;->h()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v5, "mmkvVersion: "

    .line 30
    .line 31
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "AdxPreferencesHelper"

    .line 42
    .line 43
    invoke-virtual {v2, v5, v4}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v2, "v0."

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    return v0

    .line 55
    :cond_1
    :try_start_1
    const-string v2, "v1."

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_5

    .line 62
    .line 63
    const-string v2, "\\."

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    array-length v2, v1

    .line 70
    const/4 v4, 0x3

    .line 71
    if-ne v2, v4, :cond_4

    .line 72
    .line 73
    aget-object v2, v1, v3

    .line 74
    .line 75
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    const/4 v6, 0x2

    .line 80
    aget-object v1, v1, v6

    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    if-gt v2, v4, :cond_2

    .line 87
    .line 88
    if-ne v2, v4, :cond_3

    .line 89
    .line 90
    const/16 v2, 0xe

    .line 91
    .line 92
    if-lt v1, v2, :cond_3

    .line 93
    .line 94
    :cond_2
    move v0, v3

    .line 95
    :cond_3
    return v0

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    goto :goto_0

    .line 98
    :cond_4
    return v0

    .line 99
    :cond_5
    return v3

    .line 100
    :goto_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/c;->Log()Lcom/cloud/sdk/commonutil/util/c;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v4, "checkMMKVAvailable error, e= "

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v2, v5, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :catch_0
    return v0
.end method

.method public static e()Ll7/a;
    .locals 1

    .line 1
    sget-object v0, Ll7/a;->c:Ll7/a;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ll7/b;->a()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "hisavana_sdk"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/cloud/sdk/commonutil/util/i;->b()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ll7/a;->d(Ljava/lang/String;Z)Z

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public d(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ll7/b;->b(Ljava/lang/String;Z)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const-string v0, "hisavana_sdk"

    .line 11
    .line 12
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->c(Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public f(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Ll7/a;->g(Ljava/lang/String;I)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public g(Ljava/lang/String;I)I
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ll7/b;->d(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const-string v0, "hisavana_sdk"

    .line 11
    .line 12
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->e(Ljava/lang/String;I)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    return p1
.end method

.method public h(Ljava/lang/String;)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, v1}, Ll7/a;->i(Ljava/lang/String;J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public i(Ljava/lang/String;J)J
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ll7/b;->e(Ljava/lang/String;J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p1

    .line 9
    return-wide p1

    .line 10
    :cond_0
    const-string v0, "hisavana_sdk"

    .line 11
    .line 12
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/i;->f(Ljava/lang/String;J)J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    return-wide p1
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0}, Ll7/a;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ll7/b;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string v0, "hisavana_sdk"

    .line 11
    .line 12
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public l(Ljava/lang/String;)Ljava/util/Set;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Ll7/a;->m(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public m(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ll7/b;->g(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string v0, "hisavana_sdk"

    .line 11
    .line 12
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->h(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ll7/a;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public o(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ll7/b;->i(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "hisavana_sdk"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->i(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ll7/b;->j(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "hisavana_sdk"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->j(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public q(Ljava/lang/String;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ll7/b;->k(Ljava/lang/String;J)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string v0, "hisavana_sdk"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lcom/cloud/sdk/commonutil/util/i;->k(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public r(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "hisavana_sdk"

    .line 6
    .line 7
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/cloud/sdk/commonutil/util/i;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, p1, p2}, Ll7/b;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Ll7/a;->a:Ll7/b;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ll7/b;->m(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const-string v0, "hisavana_sdk"

    .line 17
    .line 18
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/i;->d(Ljava/lang/String;)Lcom/cloud/sdk/commonutil/util/i;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0, p1}, Lcom/cloud/sdk/commonutil/util/i;->m(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method
