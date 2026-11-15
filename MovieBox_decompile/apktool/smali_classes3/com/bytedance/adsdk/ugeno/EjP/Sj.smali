.class public Lcom/bytedance/adsdk/ugeno/EjP/Sj;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/EjP/Dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Sj()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/EjP/Jcg;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/bytedance/adsdk/ugeno/EjP/Sj$1;

    .line 7
    .line 8
    const-string v2, "slide"

    .line 9
    .line 10
    invoke-direct {v1, p0, v2}, Lcom/bytedance/adsdk/ugeno/EjP/Sj$1;-><init>(Lcom/bytedance/adsdk/ugeno/EjP/Sj;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    new-instance v1, Lcom/bytedance/adsdk/ugeno/EjP/Sj$2;

    .line 17
    .line 18
    const-string v2, "tap"

    .line 19
    .line 20
    invoke-direct {v1, p0, v2}, Lcom/bytedance/adsdk/ugeno/EjP/Sj$2;-><init>(Lcom/bytedance/adsdk/ugeno/EjP/Sj;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/bytedance/adsdk/ugeno/EjP/Sj$3;

    .line 27
    .line 28
    const-string v2, "timer"

    .line 29
    .line 30
    invoke-direct {v1, p0, v2}, Lcom/bytedance/adsdk/ugeno/EjP/Sj$3;-><init>(Lcom/bytedance/adsdk/ugeno/EjP/Sj;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/bytedance/adsdk/ugeno/EjP/Sj$4;

    .line 37
    .line 38
    const-string v2, "videoProgress"

    .line 39
    .line 40
    invoke-direct {v1, p0, v2}, Lcom/bytedance/adsdk/ugeno/EjP/Sj$4;-><init>(Lcom/bytedance/adsdk/ugeno/EjP/Sj;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    return-object v0
.end method
