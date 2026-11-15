.class public Lcom/bytedance/adsdk/ugeno/EjP/EjP/uA;
.super Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;
.source "source.java"


# instance fields
.field private Ym:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/uA;->Ym:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public varargs Sj([Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->HiB:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "interval"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, -0x1

    .line 19
    :goto_0
    const/4 v1, 0x0

    .line 20
    aget-object p1, p1, v1

    .line 21
    .line 22
    check-cast p1, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-lt p1, v0, :cond_2

    .line 29
    .line 30
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/uA;->Ym:Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Boolean;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_2

    .line 49
    .line 50
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/uA;->Ym:Ljava/util/Map;

    .line 51
    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 57
    .line 58
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->Sj:Lcom/bytedance/adsdk/ugeno/EjP/Ym;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->sP:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->vS:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/EjP/EjP/Sj;->TKC:Lcom/bytedance/adsdk/ugeno/EjP/vS;

    .line 68
    .line 69
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/EjP/vS;->sP()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/EjP/Ym;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Ljava/util/List;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    const/4 p1, 0x1

    .line 77
    return p1
.end method
