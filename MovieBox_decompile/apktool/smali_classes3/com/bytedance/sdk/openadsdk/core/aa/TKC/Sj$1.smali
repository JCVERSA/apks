.class Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;
.super Lcom/bytedance/sdk/component/Dq/Dq;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Dq/Dq;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-nez v2, :cond_2

    .line 13
    .line 14
    new-instance v2, Ljava/io/File;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    array-length v2, v1

    .line 38
    const/4 v3, 0x0

    .line 39
    :goto_0
    if-ge v3, v2, :cond_2

    .line 40
    .line 41
    aget-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 42
    .line 43
    if-eqz v4, :cond_1

    .line 44
    .line 45
    :try_start_1
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Ljava/io/File;)Ljava/io/File;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_0

    .line 50
    .line 51
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_0

    .line 56
    .line 57
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 58
    .line 59
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/Map;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-interface {v6, v4, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 75
    .line 76
    invoke-static {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Ljava/io/File;)Ljava/io/File;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 81
    .line 82
    invoke-static {v5, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    .line 84
    .line 85
    :catchall_0
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_1
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->Sj()Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 93
    .line 94
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/Map;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/sU/Sj/TKC;->Sj(Ljava/util/Map;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj$1;->Sj:Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->TKC(Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    .line 109
    .line 110
    return-void
.end method
