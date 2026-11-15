.class public final Lcom/hisavana/mediation/config/TAdManager$AdConfig;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hisavana/mediation/config/TAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdConfig"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

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

.field public i:Z

.field public j:I

.field public k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

.field public l:Z

.field public m:I

.field public n:J

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Z


# direct methods
.method public constructor <init>(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->b:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d:Z

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->i:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->l:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->o:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->p:Z

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->q:Z

    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    iput-object v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->r:Ljava/lang/String;

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->s:Z

    .line 27
    .line 28
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->s(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a:Z

    .line 33
    .line 34
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->t(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->b:Z

    .line 39
    .line 40
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->u(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->a(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d:Z

    .line 51
    .line 52
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->b(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput-boolean v1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->e:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->f:Z

    .line 59
    .line 60
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->c(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->g:Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->d(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->i:Z

    .line 71
    .line 72
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->e(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->f(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->j:I

    .line 83
    .line 84
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->g(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->h(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->l:Z

    .line 95
    .line 96
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->i(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    iput v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->m:I

    .line 101
    .line 102
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->j(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    iput-wide v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->n:J

    .line 107
    .line 108
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->k(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->o:Z

    .line 113
    .line 114
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->l(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->p:Z

    .line 119
    .line 120
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->m(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->q:Z

    .line 125
    .line 126
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->n(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->r:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->o(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iput-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->s:Z

    .line 137
    .line 138
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->p(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    sput-object v0, Lcom/hisavana/common/bean/AppStartInfo;->channel:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->q(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Ljava/util/Map;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    sput-object v0, Lcom/hisavana/common/bean/AppStartInfo;->extInfo:Ljava/util/Map;

    .line 149
    .line 150
    invoke-static {p1}, Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;->r(Lcom/hisavana/mediation/config/TAdManager$AdConfigBuilder;)Z

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    sput-boolean p1, Lcom/hisavana/common/bean/AdMuteStatus;->MUTE_ALL:Z

    .line 155
    .line 156
    return-void
.end method

.method public static synthetic a(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    return-object p0
.end method

.method public static synthetic a(Lcom/hisavana/mediation/config/TAdManager$AdConfig;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a:Z

    return p1
.end method

.method public static synthetic b(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic b(Lcom/hisavana/mediation/config/TAdManager$AdConfig;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->f:Z

    return p1
.end method

.method public static synthetic c(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic d(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic e(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/hisavana/mediation/config/TAdManager$AdConfig;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public checkEnableRewardedToast()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->a()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->a()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v0, v0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->p:Z

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public checkEnableWebRecommendFeature()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->a()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->a()Lcom/hisavana/mediation/config/TAdManager$AdConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v0, v0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->q:Z

    .line 12
    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public getAppIconId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCodeSeatIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultMaterialMaxSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public getDefaultVersion()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPangleAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPkgEvn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public getShouldOptimizeImageLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method public isClosePangleWebFileLock()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnableGDPR()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInitAdmob()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public isInitAlliance()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLite()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public isTestDevice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public releaseCloudListener()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->k:Lcom/hisavana/mediation/config/TAdManager$OnCloudCompleteListener;

    .line 3
    .line 4
    return-void
.end method

.method public setCodeSeatIds(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 23
    .line 24
    .line 25
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/hisavana/mediation/config/TAdManager$AdConfig;->h:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method
