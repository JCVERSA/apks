.class public Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;
.super Lcom/bytedance/sdk/component/sP/Sj/Zq;
.source "source.java"


# static fields
.field public static Sj:I = -0x1


# instance fields
.field EjP:I

.field HiB:Ljava/lang/String;

.field TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

.field sP:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/bytedance/sdk/component/sP/Sj/Fmk;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;-><init>()V

    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->HiB:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 8
    iput p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->EjP:I

    return-void
.end method

.method public constructor <init>(Ljava/net/HttpURLConnection;Lcom/bytedance/sdk/component/sP/Sj/Fmk;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;-><init>()V

    .line 2
    sget v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->Sj:I

    iput v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->EjP:I

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    return-void
.end method


# virtual methods
.method public Dq()Lcom/bytedance/sdk/component/sP/Sj/aa;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/sP/Sj/aa;->sP:Lcom/bytedance/sdk/component/sP/Sj/aa;

    .line 2
    .line 3
    return-object v0
.end method

.method public EjP()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xc8

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0x12c

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public HiB()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->HiB:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->HiB:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/vS;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/String;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/vS;-><init>([Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Ljava/util/Map$Entry;

    .line 44
    .line 45
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/util/List;

    .line 50
    .line 51
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Ljava/lang/String;

    .line 72
    .line 73
    const-string v6, "Content-Range"

    .line 74
    .line 75
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_3

    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    const/16 v6, 0xce

    .line 86
    .line 87
    if-eq v5, v6, :cond_2

    .line 88
    .line 89
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/vS;

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    new-array v2, v2, [Ljava/lang/String;

    .line 107
    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, [Ljava/lang/String;

    .line 113
    .line 114
    invoke-direct {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/vS;-><init>([Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-object v1
.end method

.method public Sj()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public TEQ()Lcom/bytedance/sdk/component/sP/Sj/Fmk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 2
    .line 3
    return-object v0
.end method

.method public TKC()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    iget v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->EjP:I

    .line 9
    .line 10
    return v0
.end method

.method public close()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    return-void
.end method

.method public sP()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public uA()Lcom/bytedance/sdk/component/sP/Sj/TEQ;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TEQ()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TEQ()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/TEQ;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TEQ()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v1, v1, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/TEQ;-><init>(Lcom/bytedance/sdk/component/TKC/Sj/Sj;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 29
    return-object v0
.end method

.method public vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Ym()V

    .line 10
    .line 11
    .line 12
    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Dq;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Dq;-><init>(Ljava/net/HttpURLConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    :try_start_1
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Dq;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->sP:Ljava/net/HttpURLConnection;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Dq;-><init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/sP/Sj/Sj/Sj/Jcg;->TKC:Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 38
    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    iget-object v1, v1, Lcom/bytedance/sdk/component/sP/Sj/Fmk;->sP:Lcom/bytedance/sdk/component/TKC/Sj/Sj;

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/TKC/Sj/Sj;->Fmk()V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-object v0
.end method
