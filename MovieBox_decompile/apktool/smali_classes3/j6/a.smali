.class public Lj6/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lj6/e;


# instance fields
.field private a:Lcom/bytedance/sdk/component/sP/Sj/Ym;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lj6/a;->a:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 6
    .line 7
    invoke-static {}, Lv5/b;->a()Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lj6/a;->a:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Lj6/b;)Lj6/c;
    .locals 5

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p1, Lj6/b;->e:Ljava/util/Map;

    .line 7
    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-nez v4, :cond_0

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 47
    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    const-string v2, ""

    .line 51
    .line 52
    :cond_1
    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v1, p1, Lj6/b;->b:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "videoPreloadLowVersion"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x6

    .line 73
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->Sj(I)Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Fmk$Sj;->sP()Lcom/bytedance/sdk/component/sP/Sj/Fmk;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lj6/a;->a:Lcom/bytedance/sdk/component/sP/Sj/Ym;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/sP/Sj/Ym;->Sj(Lcom/bytedance/sdk/component/sP/Sj/Fmk;)Lcom/bytedance/sdk/component/sP/Sj/sP;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Lcom/bytedance/sdk/component/sP/Sj/sP;->sP()Lcom/bytedance/sdk/component/sP/Sj/Zq;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/sP/Sj/Zq;->TKC()I

    .line 92
    .line 93
    .line 94
    new-instance v1, Lj6/f;

    .line 95
    .line 96
    invoke-direct {v1, v0, p1}, Lj6/f;-><init>(Lcom/bytedance/sdk/component/sP/Sj/Zq;Lj6/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :catchall_0
    const/4 p1, 0x0

    .line 101
    return-object p1
.end method
