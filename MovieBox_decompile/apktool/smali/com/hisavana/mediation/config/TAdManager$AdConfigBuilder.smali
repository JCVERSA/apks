.class public final Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/config/TAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdConfigBuilder"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/lang/String;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

.field public l:Z

.field public m:Z

.field public n:I

.field public o:J

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Ljava/lang/String;

.field public u:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->a:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->c:Z

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->d:Z

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->e:Z

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    iput-boolean v2, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->f:Z

    .line 17
    .line 18
    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->i:Ljava/lang/String;

    .line 19
    .line 20
    iput-boolean v2, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->m:Z

    .line 21
    .line 22
    iput-boolean v2, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->p:Z

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->q:Z

    .line 25
    .line 26
    iput-boolean v2, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->r:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->s:Z

    .line 29
    .line 30
    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->t:Ljava/lang/String;

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->u:Z

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic b(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic e(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->b:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic g(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic j(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic k(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->q:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic l(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->r:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic m(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->s:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic o(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic p(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic q(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->j:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic s(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic t(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic u(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/hisavana/mediation/config/TAdManager$AdConfig;
    .locals 1

    .line 1
    new-instance v0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/hisavana/mediation/config/TAdManager$AdConfig;-><init>(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public closePangleWebFileLock(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->u:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public initAlliance(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public initPangleAdvance(Ljava/lang/String;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public isInitAdMob(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->l:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setAhaChannel(Ljava/lang/String;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppIconId(I)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->b:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setAppId(Ljava/lang/String;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 1

    .line 1
    const-string v0, "appId can not be null"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCloudCompleteListener(Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCodeSeatIds(Ljava/util/List;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCustomParams(Ljava/util/Map;)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->j:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    if-gt v0, v1, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->j:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v0, 0x0

    .line 40
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_4

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/util/Map$Entry;

    .line 51
    .line 52
    if-lt v0, v1, :cond_3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    if-eqz v2, :cond_2

    .line 56
    .line 57
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    iget-object v3, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->j:Ljava/util/Map;

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    check-cast v4, Ljava/lang/String;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/String;

    .line 72
    .line 73
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    :goto_1
    return-object p0
.end method

.method public setDebug(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->c:Z

    .line 2
    .line 3
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->d:Z

    .line 4
    .line 5
    return-object p0
.end method

.method public setDefaultMaterialCacheSize(I)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->n:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setEnableWebRecommendFeature(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->s:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setInternalDefaultAdVersion(J)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->o:J

    .line 2
    .line 3
    return-object p0
.end method

.method public setMuteVideo(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 3

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->m:Z

    .line 2
    .line 3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "SDK init , muteAllAd = "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v1, "TAdManager"

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-object p0
.end method

.method public setRewardedCompletionToastEnabled(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->r:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setShouldOptimizeImageLoading(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->q:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public testDevice(Z)Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->e:Z

    .line 2
    .line 3
    return-object p0
.end method
