.class public final Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

.field public static final b:Lcom/snaptube/ads/base/AdsPos;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

.field public static final h:Lo/t14;

.field public static final i:Lo/t14;

.field public static final j:Lo/t14;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    invoke-direct {v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;-><init>()V

    sput-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->START_DOWNLOAD_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_download_count"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_last_download_count_time"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->d:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_after_ad_impression_download_count"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_after_guide_impression_download_count"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->f:Ljava/lang/String;

    sget-object v1, Lcom/snaptube/player_guide/PlayerGuideAdPos;->AD_POS_START_DOWNLOAD_INTERSTITIAL:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$playerGuide$2;->INSTANCE:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$playerGuide$2;

    invoke-static {v1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v1

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->h:Lo/t14;

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$installedAdImpressionInterval$2;->INSTANCE:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$installedAdImpressionInterval$2;

    invoke-static {v1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v1

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->i:Lo/t14;

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$preloadBlockPercentage$2;->INSTANCE:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$preloadBlockPercentage$2;

    invoke-static {v1}, Lkotlin/b;->b(Lo/bx2;)Lo/t14;

    move-result-object v1

    sput-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->j:Lo/t14;

    invoke-virtual {v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->C()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final A(Ljava/lang/String;)V
    .locals 2

    const-string v0, "scene"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->B(Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic B(Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0, p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->z(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public static final J(Landroid/content/Context;Landroid/os/Bundle;)Z
    .locals 6

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u5c1d\u8bd5\u5c55\u793a\u4e0b\u8f7d\u540e\u5e7f\u544a\u6216\u5bfc\u6d41"

    const-string v1, "StartDownloadAdViewModel"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    invoke-virtual {v0, p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->w(Landroid/os/Bundle;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string p0, "\u4e0b\u8f7d\u540e\u5e7f\u544a\u573a\u666f\u4e0d\u7b26\u5408"

    invoke-static {v1, p0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    sget-object v1, Lo/g9;->a:Lo/g9$a;

    invoke-virtual {v1}, Lo/g9$a;->a()Z

    move-result v1

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v2

    sget-object v4, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-interface {v2, v4}, Lcom/snaptube/player_guide/IPlayerGuide;->b(Lcom/snaptube/player_guide/PlayerGuideAdPos;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->q()I

    move-result v1

    invoke-virtual {v0, p0, p1, v4, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->K(Landroid/content/Context;Landroid/os/Bundle;II)Z

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->p(Z)Lo/qv4;

    move-result-object v1

    invoke-virtual {v1}, Lo/qv4;->a()Lo/ul3;

    move-result-object v2

    invoke-virtual {v2}, Lo/ul3;->b()I

    move-result v2

    invoke-virtual {v1}, Lo/qv4;->a()Lo/ul3;

    move-result-object v5

    invoke-virtual {v5}, Lo/ul3;->a()I

    move-result v5

    invoke-virtual {v0, p0, p1, v2, v5}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->K(Landroid/content/Context;Landroid/os/Bundle;II)Z

    move-result p0

    invoke-virtual {v1}, Lo/qv4;->b()Lo/ul3;

    move-result-object v2

    invoke-virtual {v2}, Lo/ul3;->b()I

    move-result v2

    invoke-virtual {v1}, Lo/qv4;->b()Lo/ul3;

    move-result-object v1

    invoke-virtual {v1}, Lo/ul3;->a()I

    move-result v1

    invoke-virtual {v0, p1, p0, v2, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->L(Landroid/os/Bundle;ZII)Z

    move-result p1

    if-nez p0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    :goto_0
    return v3
.end method

.method public static final synthetic a(Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;Landroid/content/SharedPreferences;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->k(Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;Landroid/content/SharedPreferences;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->l(Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method public static final synthetic c(Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;Landroid/content/SharedPreferences;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->n(Landroid/content/SharedPreferences;)I

    move-result p0

    return p0
.end method

.method public static final synthetic d()Lcom/snaptube/player_guide/PlayerGuideAdPos;
    .locals 1

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    return-object v0
.end method

.method public static final synthetic e(Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;)I
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->q()I

    move-result p0

    return p0
.end method

.method public static final synthetic f(Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;D)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->v(D)Z

    move-result p0

    return p0
.end method

.method public static final synthetic g(Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->D()V

    return-void
.end method

.method public static final synthetic h(Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;Landroid/content/SharedPreferences;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->E(Landroid/content/SharedPreferences;I)V

    return-void
.end method

.method public static final synthetic i(Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;Landroid/content/SharedPreferences;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->F(Landroid/content/SharedPreferences;I)V

    return-void
.end method

.method public static final synthetic j(Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->I()V

    return-void
.end method

.method public static final y(Landroid/os/Bundle;)V
    .locals 6

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "getGenericSharedPrefs(...)"

    invoke-static {v1, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->n(Landroid/content/SharedPreferences;)I

    move-result v1

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-static {v3, v2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->r(Landroid/content/SharedPreferences;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDownload "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StartDownloadAdViewModel"

    invoke-static {v2, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->D()V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v1}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->n(Landroid/content/SharedPreferences;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->G(Landroid/content/SharedPreferences;I)V

    invoke-virtual {v0, p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->w(Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\u4e0b\u8f7d\u6b21\u6570+1"

    invoke-static {v2, p0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final z(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 6

    const-string v0, "scene"

    invoke-static {p1, v0}, Lo/or3;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    invoke-virtual {v0, p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->w(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object v2, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v2}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pos(...)"

    invoke-static {v3, v4}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->m(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->h(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "StartDownloadAdViewModel"

    const-string v5, "\u9884\u52a0\u8f7d\u4e0b\u8f7d\u540e\u63d2\u5c4f\u5e7f\u544a\u4f4d"

    invoke-static {v3, v5}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->m(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v1, v3, p0}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->p(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->j(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lo/qe6;->c(II)I

    move-result p0

    goto :goto_0

    :cond_1
    sget-object p0, Lo/g9;->a:Lo/g9$a;

    invoke-virtual {p0}, Lo/g9$a;->a()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->p(Z)Lo/qv4;

    move-result-object p0

    invoke-virtual {p0}, Lo/qv4;->a()Lo/ul3;

    move-result-object p0

    invoke-virtual {p0}, Lo/ul3;->a()I

    move-result p0

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "getGenericSharedPrefs(...)"

    invoke-static {v1, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->k(Landroid/content/SharedPreferences;)I

    move-result v0

    sub-int/2addr p0, v0

    :goto_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/app/a;

    invoke-interface {v0}, Lo/sn;->H0()Lo/gb;

    move-result-object v0

    sget-object v1, Lo/jb;->e:Lo/jb$a;

    invoke-virtual {v2}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lo/jb$a;->a(Ljava/lang/String;)Lo/jb;

    move-result-object v1

    const-string v2, "ad_request_scene"

    invoke-virtual {v1, v2, p1}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "available_download_count"

    invoke-virtual {p1, v1, p0}, Lo/jb;->f(Ljava/lang/String;Ljava/lang/Object;)Lo/jb;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/gb;->c(Lo/jb;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 5

    sget-object v0, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pos(...)"

    invoke-static {v2, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$a;

    invoke-direct {v4}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$a;-><init>()V

    invoke-virtual {v0, v2, v4}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->n(Ljava/lang/String;Lo/lw2;)V

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$b;

    invoke-direct {v2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->o(Ljava/lang/String;Lo/lw2;)V

    return-void
.end method

.method public final D()V
    .locals 5

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getGenericSharedPrefs(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->r(Landroid/content/SharedPreferences;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "StartDownloadAdViewModel"

    const-string v1, "\u4e0a\u6b21\u6267\u884c\u4e0d\u662f\u4eca\u65e5\uff0c\u6e05\u7a7a\u7f13\u5b58\u4fe1\u606f"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->H(Landroid/content/SharedPreferences;J)V

    sget-object v2, Lo/g9;->a:Lo/g9$a;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lo/g9$a;->b(J)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lo/g9$a;->c(I)V

    invoke-virtual {v1, v0, v3}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->G(Landroid/content/SharedPreferences;I)V

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->E(Landroid/content/SharedPreferences;I)V

    invoke-virtual {v1, v0, v2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->F(Landroid/content/SharedPreferences;I)V

    :cond_0
    return-void
.end method

.method public final E(Landroid/content/SharedPreferences;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {p1}, Lo/or3;->c(Ljava/lang/Object;)V

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->e:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final F(Landroid/content/SharedPreferences;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {p1}, Lo/or3;->c(Ljava/lang/Object;)V

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->f:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final G(Landroid/content/SharedPreferences;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {p1}, Lo/or3;->c(Ljava/lang/Object;)V

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->c:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final H(Landroid/content/SharedPreferences;J)V
    .locals 1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-static {p1}, Lo/or3;->c(Ljava/lang/Object;)V

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->d:Ljava/lang/String;

    invoke-interface {p1, v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final I()V
    .locals 3

    const-string v0, "StartDownloadAdViewModel"

    const-string v1, "\u8df3\u8f6c gp"

    invoke-static {v0, v1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->s()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v0

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Lcom/snaptube/player_guide/IPlayerGuide;->h(Lcom/snaptube/player_guide/PlayerGuideAdPos;Ljava/util/Map;Ljava/util/Map;)Z

    return-void
.end method

.method public final K(Landroid/content/Context;Landroid/os/Bundle;II)Z
    .locals 9

    invoke-virtual {p0, p3, p4, p2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->u(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    sget-object p3, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object p4, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {p4}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pos(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->k(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p4}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3, v0, p2}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->b(Ljava/lang/String;Landroid/os/Bundle;)Lo/ic;

    move-result-object p2

    sget-object p3, Lo/ic;->c:Lo/ic$a;

    invoke-virtual {p3, p2}, Lo/ic$a;->a(Lo/ic;)Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    sget-object p1, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    invoke-virtual {p4}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3, p2}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a(Ljava/lang/String;Lo/ic;)V

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->x()Z

    move-result p2

    const/4 p3, 0x1

    const-string v2, "StartDownloadAdViewModel"

    if-eqz p2, :cond_1

    const-string p2, "\u4e0b\u8f7d\u540e\u5e7f\u544a\u573a\u666f\u6709\u5df2\u52a0\u8f7d\u5e7f\u544a\uff0c\u5c55\u793a\u5e7f\u544a"

    invoke-static {v2, p2}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const-string v5, "hot_launch"

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/snaptube/ads/activity/SplashAdActivity;->i1(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ZLjava/util/Map;)Z

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "getGenericSharedPrefs(...)"

    invoke-static {p1, p2}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->E(Landroid/content/SharedPreferences;I)V

    sget-object p1, Lo/g9;->a:Lo/g9$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lo/g9$a;->b(J)V

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lo/g9$a;->c(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a:Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;

    invoke-virtual {p4}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, Lo/ic$b;

    const-string v1, "no cache"

    const-string v3, ""

    invoke-direct {p4, v1, v3}, Lo/ic$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2, p4}, Lcom/snaptube/ads_log_v2/AdImpressionSceneTrack;->a(Ljava/lang/String;Lo/ic;)V

    const-string p1, "\u4e0b\u8f7d\u540e\u5e7f\u544a\u573a\u666f\u65e0\u52a0\u8f7d\u5e7f\u544a\uff0c\u8c03\u7528\u9884\u52a0\u8f7d"

    invoke-static {v2, p1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "no_cache"

    const/4 p2, 0x0

    invoke-static {p2, p1, p3, p2}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->B(Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public final L(Landroid/os/Bundle;ZII)Z
    .locals 4

    sget-object v0, Lo/ic;->c:Lo/ic$a;

    sget-object v1, Lcom/snaptube/ad/frequency/FrequencyControlManager;->a:Lcom/snaptube/ad/frequency/FrequencyControlManager;

    sget-object v2, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v2}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pos(...)"

    invoke-static {v2, v3}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3, p4, p1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->o(ZIILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/snaptube/ad/frequency/FrequencyControlManager;->g(Ljava/lang/String;Landroid/os/Bundle;)Lo/ic;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/ic$a;->a(Lo/ic;)Z

    move-result p1

    return p1
.end method

.method public final k(Landroid/content/SharedPreferences;)I
    .locals 2

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->e:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final l(Landroid/content/SharedPreferences;)I
    .locals 2

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->f:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final m(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget-object v1, Lo/g9;->a:Lo/g9$a;

    invoke-virtual {v1}, Lo/g9$a;->a()Z

    move-result v1

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v2

    sget-object v3, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-interface {v2, v3}, Lcom/snaptube/player_guide/IPlayerGuide;->b(Lcom/snaptube/player_guide/PlayerGuideAdPos;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lo/yn5;->a(Landroid/os/Bundle;ZZ)Landroid/os/Bundle;

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->a:Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;

    invoke-virtual {v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->t()D

    move-result-wide v1

    const-string v3, "key_preload_block_percentage"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "frequency_host"

    invoke-static {p1}, Lo/dn0;->h(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final n(Landroid/content/SharedPreferences;)I
    .locals 2

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public final o(ZIILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-virtual {p0, p2, p3, p4}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->u(IILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "key_ad_shown"

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p2
.end method

.method public final p(Z)Lo/qv4;
    .locals 7

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-static {v0}, Lo/q23;->p(Lcom/snaptube/player_guide/PlayerGuideAdPos;)Lcom/snaptube/player_guide/IPlayerGuideConfig$a;

    move-result-object v0

    if-eqz p1, :cond_0

    sget-object v1, Lcom/snaptube/player_guide/IPlayerGuideConfig$Key;->UNINSTALLED_NEW_USER_IMPRESSION_STRATEGY:Lcom/snaptube/player_guide/IPlayerGuideConfig$Key;

    :goto_0
    invoke-virtual {v1}, Lcom/snaptube/player_guide/IPlayerGuideConfig$Key;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/snaptube/player_guide/IPlayerGuideConfig$Key;->UNINSTALLED_OLD_USER_IMPRESSION_STRATEGY:Lcom/snaptube/player_guide/IPlayerGuideConfig$Key;

    goto :goto_0

    :goto_1
    new-instance v2, Lo/qv4;

    new-instance v3, Lo/ul3;

    const/4 v4, 0x4

    if-eqz p1, :cond_1

    const/4 v5, -0x1

    goto :goto_2

    :cond_1
    const/4 v5, 0x4

    :goto_2
    const/4 v6, 0x1

    invoke-direct {v3, v6, v5}, Lo/ul3;-><init>(II)V

    new-instance v5, Lo/ul3;

    if-eqz p1, :cond_2

    goto :goto_3

    :cond_2
    const/4 v6, 0x4

    :goto_3
    invoke-direct {v5, v6, v4}, Lo/ul3;-><init>(II)V

    invoke-direct {v2, v3, v5}, Lo/qv4;-><init>(Lo/ul3;Lo/ul3;)V

    invoke-static {v0, v1, v2}, Lcom/snaptube/player_guide/h;->i(Lcom/snaptube/player_guide/IPlayerGuideConfig$a;Ljava/lang/String;Lo/qv4;)Lo/qv4;

    move-result-object p1

    return-object p1
.end method

.method public final q()I
    .locals 1

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->i:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final r(Landroid/content/SharedPreferences;)J
    .locals 3

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->d:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()Lcom/snaptube/player_guide/IPlayerGuide;
    .locals 2

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->h:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lo/or3;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/snaptube/player_guide/IPlayerGuide;

    return-object v0
.end method

.method public final t()D
    .locals 2

    sget-object v0, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->j:Lo/t14;

    invoke-interface {v0}, Lo/t14;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final u(IILandroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    invoke-virtual {p0, p3}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->m(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "key_start_count"

    invoke-virtual {p3, v0, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "key_interval"

    invoke-virtual {p3, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p3
.end method

.method public final v(D)Z
    .locals 9

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getGenericSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lo/g9;->a:Lo/g9$a;

    invoke-virtual {v1}, Lo/g9$a;->a()Z

    move-result v1

    invoke-static {}, Lo/q23;->b0()Lcom/snaptube/player_guide/IPlayerGuide;

    move-result-object v2

    sget-object v3, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->g:Lcom/snaptube/player_guide/PlayerGuideAdPos;

    invoke-interface {v2, v3}, Lcom/snaptube/player_guide/IPlayerGuide;->b(Lcom/snaptube/player_guide/PlayerGuideAdPos;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->q()I

    move-result v4

    int-to-double v4, v4

    mul-double v4, v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->l(Landroid/content/SharedPreferences;)I

    move-result v5

    if-ltz v5, :cond_0

    if-ge v5, v4, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0, v1}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->p(Z)Lo/qv4;

    move-result-object v1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->q()I

    move-result v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lo/qv4;->a()Lo/ul3;

    move-result-object v4

    invoke-virtual {v4}, Lo/ul3;->a()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lo/qv4;->a()Lo/ul3;

    move-result-object v1

    invoke-virtual {v1}, Lo/ul3;->b()I

    move-result v1

    :goto_1
    if-ltz v4, :cond_6

    if-gtz v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v0}, Lo/or3;->c(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->n(Landroid/content/SharedPreferences;)I

    move-result v2

    int-to-double v6, v2

    int-to-double v1, v1

    mul-double v1, v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    cmpg-double v8, v6, v1

    if-gez v8, :cond_4

    return v3

    :cond_4
    int-to-double v1, v4

    mul-double v1, v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {p0, v0}, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->k(Landroid/content/SharedPreferences;)I

    move-result p2

    if-ltz p2, :cond_5

    if-ge p2, p1, :cond_5

    return v3

    :cond_5
    return v5

    :cond_6
    :goto_2
    return v3
.end method

.method public final w(Landroid/os/Bundle;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Lo/dn0;->k(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/k36;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    invoke-static {p1}, Lo/dn0;->q(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/or3;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final x()Z
    .locals 2

    const-string v0, "IAdsManager"

    invoke-static {v0}, Lo/zh4;->b(Ljava/lang/String;)Lo/vd3;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.snaptube.ads.manager.IAdsManager"

    invoke-static {v0, v1}, Lo/or3;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lo/ba3;

    invoke-interface {v0}, Lo/ba3;->b()Lo/ne3;

    move-result-object v0

    sget-object v1, Lcom/snaptube/plugin/extension/nonlifecycle/ad/StartDownloadAdViewModel;->b:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/x93;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
