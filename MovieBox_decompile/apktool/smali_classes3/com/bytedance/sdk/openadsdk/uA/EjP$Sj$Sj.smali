.class Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$Sj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/EjP;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Sj"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/uA/EjP$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$Sj;-><init>()V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/sP/EjP;Ljava/lang/Throwable;)Lcom/bytedance/sdk/component/HiB/sP/TKC;
    .locals 3

    .line 9
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/HiB/sP/EjP;->TKC(J)V

    .line 11
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/HiB/sP/TKC;

    const v1, 0x181cd

    const-string v2, "net failed"

    invoke-direct {v0, v1, p2, v2}, Lcom/bytedance/sdk/component/HiB/sP/TKC;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/HiB/sP/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/Jcg;)V

    return-object v0
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/HiB;Lcom/bytedance/sdk/component/sP/Sj/Zq;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/HiB/HiB;",
            "Lcom/bytedance/sdk/component/sP/Sj/Zq;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/HiB;->sP()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->Jcg()Lcom/bytedance/sdk/component/sP/Sj/vS;

    move-result-object p1

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->Sj(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/sP/Sj/vS;->sP(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public synthetic Sj(Lcom/bytedance/sdk/component/HiB/HiB;)Lcom/bytedance/sdk/component/HiB/vS;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$Sj;->sP(Lcom/bytedance/sdk/component/HiB/HiB;)Lcom/bytedance/sdk/component/HiB/sP/TKC;

    move-result-object p1

    return-object p1
.end method

.method public sP(Lcom/bytedance/sdk/component/HiB/HiB;)Lcom/bytedance/sdk/component/HiB/sP/TKC;
    .locals 6

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->sP()Lcom/bytedance/sdk/component/Jcg/Sj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Jcg/Sj;->HiB()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/HiB;->Sj()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/HiB;->TKC()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    new-instance v2, Lcom/bytedance/sdk/component/HiB/sP/EjP;

    .line 42
    .line 43
    invoke-direct {v2}, Lcom/bytedance/sdk/component/HiB/sP/EjP;-><init>()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move-object v2, v3

    .line 48
    :goto_0
    if-eqz v2, :cond_1

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v4

    .line 54
    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/component/HiB/sP/EjP;->Sj(J)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Lcom/bytedance/sdk/component/sP/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/component/HiB/sP/EjP;->sP(J)V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catchall_0
    move-exception p1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/HiB;Lcom/bytedance/sdk/component/sP/Sj/Zq;)Ljava/util/Map;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->vS()Lcom/bytedance/sdk/component/sP/Sj/uvD;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/uvD;->EjP()[B

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    new-instance v1, Lcom/bytedance/sdk/component/HiB/sP/TKC;

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const-string v5, ""

    .line 96
    .line 97
    invoke-direct {v1, v4, v0, v5, p1}, Lcom/bytedance/sdk/component/HiB/sP/TKC;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    .line 100
    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :goto_2
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/uA/EjP$Sj$Sj;->Sj(Lcom/bytedance/sdk/component/HiB/sP/EjP;Ljava/lang/Throwable;)Lcom/bytedance/sdk/component/HiB/sP/TKC;

    .line 105
    .line 106
    .line 107
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 109
    .line 110
    .line 111
    return-object p1

    .line 112
    :catchall_1
    move-exception p1

    .line 113
    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/TEQ;->Sj(Ljava/io/Closeable;)V

    .line 114
    .line 115
    .line 116
    throw p1
.end method
