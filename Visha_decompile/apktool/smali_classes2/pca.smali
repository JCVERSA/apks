.class public abstract Lpca;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/Context;

.field public c:Lcom/hisavana/common/utils/RunTimer;

.field public d:Lcom/hisavana/mediation/a;

.field public e:Z

.field public f:Z

.field public g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

.field public h:Lrud;

.field public i:Z

.field public j:I

.field public k:I

.field public l:J

.field public m:Z

.field public mFillSource:I

.field public final n:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public o:I

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public u:Z

.field public v:I

.field public w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

.field public x:Ljava/lang/String;

.field public y:J

.field public z:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lpca;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lpca;->b:Landroid/content/Context;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lpca;->e:Z

    .line 38
    iput-boolean v0, p0, Lpca;->f:Z

    const v1, 0xea60

    .line 39
    iput v1, p0, Lpca;->j:I

    .line 40
    iput v0, p0, Lpca;->k:I

    const-wide/16 v1, 0x0

    .line 41
    iput-wide v1, p0, Lpca;->l:J

    .line 42
    iput-boolean v0, p0, Lpca;->m:Z

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lpca;->n:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lpca;->v:I

    .line 45
    new-instance v0, Lpca$a;

    invoke-direct {v0, p0}, Lpca$a;-><init>(Lpca;)V

    iput-object v0, p0, Lpca;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lpca;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lpca;->b:Landroid/content/Context;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lpca;->e:Z

    .line 22
    iput-boolean v0, p0, Lpca;->f:Z

    const v1, 0xea60

    .line 23
    iput v1, p0, Lpca;->j:I

    .line 24
    iput v0, p0, Lpca;->k:I

    const-wide/16 v1, 0x0

    .line 25
    iput-wide v1, p0, Lpca;->l:J

    .line 26
    iput-boolean v0, p0, Lpca;->m:Z

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lpca;->n:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lpca;->v:I

    .line 29
    new-instance v0, Lpca$a;

    invoke-direct {v0, p0}, Lpca$a;-><init>(Lpca;)V

    iput-object v0, p0, Lpca;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lpca;->b:Landroid/content/Context;

    .line 31
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {p1}, Lul4;->k(Landroid/content/Context;)V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lpca;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lpca;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lpca;->b:Landroid/content/Context;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lpca;->e:Z

    .line 5
    iput-boolean v0, p0, Lpca;->f:Z

    const v1, 0xea60

    .line 6
    iput v1, p0, Lpca;->j:I

    .line 7
    iput v0, p0, Lpca;->k:I

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lpca;->l:J

    .line 9
    iput-boolean v0, p0, Lpca;->m:Z

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lpca;->n:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lpca;->v:I

    .line 12
    new-instance v0, Lpca$a;

    invoke-direct {v0, p0}, Lpca$a;-><init>(Lpca;)V

    iput-object v0, p0, Lpca;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    .line 13
    iput-object p2, p0, Lpca;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lpca;->b:Landroid/content/Context;

    .line 15
    invoke-static {}, Lul4;->a()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    .line 16
    invoke-static {p1}, Lul4;->k(Landroid/content/Context;)V

    .line 17
    :cond_0
    invoke-virtual {p0}, Lpca;->b()V

    return-void
.end method

.method public static synthetic a(Lpca;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpca;->o()V

    return-void
.end method

.method public static synthetic b(Lpca;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lpca;->s()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/mediation/a;
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object p0, p0, Lpca;->z:Landroid/os/Bundle;

    if-eqz p0, :cond_0

    .line 6
    const-string p1, "scene_id"

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return-object p0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 8
    :cond_1
    iget-object p0, p0, Lpca;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final a()V
    .locals 5

    .line 27
    iget-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 28
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string v1, "request_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string/jumbo v2, "trigger_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string/jumbo v2, "trigger_ts"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 32
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v2, "ad_type"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v2, "cld_app_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v2, "cld_code_seat_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v2, "code_seat_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v2, "is_retreatad"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 38
    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v1

    const-string v2, "cloudControlVersion"

    invoke-virtual {v1, v2}, Lo9;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cld_configure_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v2, "is_preload"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 40
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string/jumbo v2, "traffic_group_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object p0, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v1, "experiment_group_id"

    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdCancel(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;D)V
    .locals 7

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v1, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {v1}, Lcom/hisavana/mediation/a;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v1

    iget-object v4, p0, Lpca;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lpca;->q:Z

    const/16 v5, 0x64

    invoke-virtual {v1, v4, v5, v3, p0}, Lcom/hisavana/common/bean/AdCache;->getCaches(Ljava/lang/String;IZZ)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 12
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v1, v3

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hisavana/common/interfacz/ICacheAd;

    .line 13
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v5

    cmpg-double v5, v5, p2

    if-gez v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 14
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v5

    if-nez v5, :cond_0

    .line 15
    instance-of v5, v4, Lcom/hisavana/common/base/BaseAd;

    const-string v6, "request_id"

    if-eqz v5, :cond_1

    .line 16
    check-cast v4, Lcom/hisavana/common/base/BaseAd;

    iget-object v4, v4, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 17
    :cond_1
    instance-of v5, v4, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v5, :cond_2

    .line 18
    check-cast v4, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v4}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 19
    invoke-virtual {v4}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 20
    invoke-virtual {v4}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v4

    iget-object v4, v4, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    :cond_2
    :goto_1
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 22
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p2, 0x1

    if-le p0, p2, :cond_4

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, p2

    invoke-virtual {v0, v3, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bidding_platform_str"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TBaseAd"

    invoke-virtual {p0, p3, p2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v3, v1

    :cond_5
    if-eqz p1, :cond_6

    .line 25
    const-string p0, "bid_fail_req_id_arr_hisavana"

    invoke-virtual {p1, p0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const-string/jumbo p0, "valid_cache_material_cnt"

    invoke-virtual {p1, p0, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method public a(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lpca;->h:Lrud;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lrud;->onError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 3

    .line 73
    iget-object v0, p0, Lpca;->h:Lrud;

    if-nez v0, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lpca;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 75
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v1

    .line 76
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    goto :goto_2

    .line 77
    :cond_1
    invoke-virtual {p0}, Lpca;->i()Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    move-object v2, v1

    goto :goto_0

    .line 78
    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v2

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 79
    :cond_3
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 80
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setSource(Ljava/lang/Integer;)V

    .line 81
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationId(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationKey(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setCodeSeatId(Ljava/lang/String;)V

    .line 84
    :cond_4
    iget-object p0, p0, Lpca;->h:Lrud;

    invoke-virtual {p0, v0}, Lrud;->r(Lcom/hisavana/common/bean/AdditionalInfo;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 6

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    const-string v1, "scene_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 45
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "is_offline"

    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 46
    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v1, :cond_0

    .line 47
    iget-object v1, p0, Lpca;->a:Ljava/lang/String;

    invoke-static {v1}, Lzgd;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v1

    iput-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 48
    :cond_0
    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    const-string v3, "cache_status"

    if-nez v1, :cond_1

    .line 49
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 51
    iget-object v4, p0, Lpca;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lpca;->q:Z

    invoke-virtual {v1, v4, v5}, Lcom/hisavana/common/bean/AdCache;->hasAds(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-virtual {v0, v3, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 53
    :cond_2
    iget-boolean p1, p0, Lpca;->e:Z

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    :cond_3
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 54
    :cond_4
    :goto_0
    iget-object p0, p0, Lpca;->a:Ljava/lang/String;

    const-string p1, "cld_code_seat_id"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cld_app_id"

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    const-string/jumbo v1, "ts"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 57
    const-string p0, "ad_count"

    invoke-virtual {v0, p0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 58
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackEnterScene(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(ZI)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Lpca;->a(ZII)V

    return-void
.end method

.method public final a(ZII)V
    .locals 6

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 61
    iget-wide v2, p0, Lpca;->l:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    const-string v3, "TBaseAd"

    if-gez v2, :cond_0

    .line 62
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "isReady interval time is not fit"

    invoke-virtual {p0, v3, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_0
    iput-wide v0, p0, Lpca;->l:J

    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2

    .line 65
    iget-boolean p2, p0, Lpca;->f:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 66
    :cond_2
    :goto_0
    const-string v1, "is_ready_status"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-nez p1, :cond_3

    if-eqz p3, :cond_3

    .line 67
    :try_start_0
    const-string p1, "ad_expire_reason"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 68
    :cond_3
    :goto_1
    const-string p1, "cld_code_seat_id"

    iget-object p0, p0, Lpca;->a:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string p0, "cld_app_id"

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo p0, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 71
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackIsReady(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 72
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public abstract a(I)Z
.end method

.method public b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;
    .locals 11

    if-nez p1, :cond_0

    .line 8
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_UNIT_CONFIG_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p0

    .line 9
    :cond_0
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->isDebug()Z

    move-result v0

    const-string v1, "ad_flow"

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloudControlEnable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCloudControlEnable()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\ncodeSeatId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\ncodeSeatType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nadShowCountLimitDay="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nadShowCountLimitHour="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\nadShowTimeInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\ncurrentShowInterval="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getLastShowTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "inspection info is: \n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCloudControlEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CLOUD_AD_SEAT_IS_CLOSED:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p0

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lpca;->o:I

    .line 22
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lpca;->a(I)Z

    move-result p0

    const-string v0, "TBaseAd"

    if-nez p0, :cond_3

    .line 23
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v2, "TBaseAd --> code seat type does not match request type"

    invoke-virtual {p0, v1, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code seat type does not match request type ---> "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_TYPE_LOAD_INCONSISTENCY:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p0

    .line 26
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 27
    invoke-static {v2, v3}, Luna;->c(J)J

    move-result-wide v4

    .line 28
    invoke-static {v2, v3}, Luna;->b(J)J

    move-result-wide v6

    .line 29
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_9

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v8, -0x1

    if-eq p0, v8, :cond_4

    .line 30
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayZeroClock()J

    move-result-wide v9

    cmp-long p0, v4, v9

    if-nez p0, :cond_4

    .line 31
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayShowTimes()I

    move-result p0

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt p0, v4, :cond_4

    goto/16 :goto_2

    .line 32
    :cond_4
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_8

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v8, :cond_5

    .line 33
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourZeroClock()J

    move-result-wide v4

    cmp-long p0, v6, v4

    if-nez p0, :cond_5

    .line 34
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourShowTimes()I

    move-result p0

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt p0, v4, :cond_5

    goto :goto_1

    .line 35
    :cond_5
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getLastShowTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_6

    goto :goto_0

    :cond_6
    neg-long v2, v2

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v4, p0

    const-wide/16 v6, -0x3e8

    cmp-long p0, v4, v6

    if-eqz p0, :cond_7

    .line 37
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v4, p0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_7

    .line 38
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v2, "TBaseAd --> ad display did not reach the interval"

    invoke-virtual {p0, v1, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad display did not reach the interval,time "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_NOT_IN_INTERVAL:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_8
    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v2, "TBaseAd --> ad display has reached the limit of hours"

    invoke-virtual {p0, v1, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad display has reached the limit of hour,hour showTimes "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_HOUR:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p0

    .line 44
    :cond_9
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v2, "TBaseAd --> ad show times can not exceed day show max"

    invoke-virtual {p0, v1, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad show times reach the limit of day,day showTimes "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    sget-object p0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_DAY:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p0
.end method

.method public b()V
    .locals 1

    .line 49
    iget-object v0, p0, Lpca;->h:Lrud;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lrud;

    invoke-direct {v0, p0}, Lrud;-><init>(Lpca;)V

    iput-object v0, p0, Lpca;->h:Lrud;

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 1

    .line 2
    invoke-static {}, Lul4;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "TBaseAd"

    const-string/jumbo v0, "you should init first"

    invoke-virtual {p0, p1, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lzm6;->a:Lzm6;

    invoke-virtual {v0}, Lzm6;->d()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lpca;->i:Z

    .line 6
    iput p1, p0, Lpca;->v:I

    .line 7
    new-instance p1, Loca;

    invoke-direct {p1, p0}, Loca;-><init>(Lpca;)V

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public b(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 0

    .line 47
    iget-object p0, p0, Lpca;->h:Lrud;

    if-eqz p0, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Lrud;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method public final b(ZI)V
    .locals 6

    .line 51
    invoke-static {}, Lcom/hisavana/common/tracking/TrackingUtil;->getTriggerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lpca;->x:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    .line 54
    :cond_0
    iget-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    iget-object v1, p0, Lpca;->x:Ljava/lang/String;

    const-string/jumbo v2, "trigger_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lpca;->y:J

    .line 56
    iget-object v2, p0, Lpca;->z:Landroid/os/Bundle;

    const-string/jumbo v3, "trigger_ts"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 57
    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v0, :cond_4

    .line 58
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "ad_type"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 59
    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 60
    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 61
    iget-object v3, p0, Lpca;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdCache;->getValidAndInvalidAdNum(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_1

    .line 62
    array-length v3, v0

    if-lt v3, v2, :cond_1

    const/4 v3, 0x0

    .line 63
    aget v3, v0, v3

    .line 64
    aget v0, v0, v1

    .line 65
    iget-object v4, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v5, "cache_valid_ads"

    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 66
    iget-object v3, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v4, "cache_expire_ads"

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 67
    :cond_1
    iget-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    iget-object v3, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestConcurrentCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "multi_count"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 68
    iget-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    iget v3, p0, Lpca;->v:I

    if-ne v3, v2, :cond_2

    .line 69
    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRealtimeBiddingWaitTime()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getBiddingWaitTime()Ljava/lang/Integer;

    move-result-object v2

    .line 70
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "bidding_duration"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    iget-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "traffic_group_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "experiment_group_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 74
    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 75
    :cond_3
    const-string v2, "request_num"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 76
    :cond_4
    iget-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    iget-object v1, p0, Lpca;->a:Ljava/lang/String;

    const-string v2, "code_seat_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v1, "is_pre_trigger"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    iget-object p1, p0, Lpca;->z:Landroid/os/Bundle;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cld_app_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lpca;->z:Landroid/os/Bundle;

    iget-object v0, p0, Lpca;->a:Ljava/lang/String;

    const-string v1, "cld_code_seat_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v0, "ad_trigger_status"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    iget-object p1, p0, Lpca;->z:Landroid/os/Bundle;

    iget p2, p0, Lpca;->k:I

    const-string v0, "priority_code"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    iget-object p1, p0, Lpca;->z:Landroid/os/Bundle;

    const-string p2, "is_contain_vulgar"

    iget-boolean v0, p0, Lpca;->q:Z

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    iget-object p1, p0, Lpca;->z:Landroid/os/Bundle;

    iget p2, p0, Lpca;->v:I

    const-string/jumbo v0, "trigger_mode"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 85
    iget-object p0, p0, Lpca;->z:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingADTrigger(Landroid/os/Bundle;)V

    return-void
.end method

.method public c(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)I
    .locals 4

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdxShowRate()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getEwShowRate()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 4
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 5
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x64

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v2, v0, :cond_1

    if-ge v1, p1, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    if-ge v2, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    if-ge v1, p1, :cond_3

    const/4 p0, 0x2

    .line 6
    :cond_3
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Traffic support config: adxShowRate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ewShowRate "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",current random result is: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TBaseAd"

    invoke-virtual {v1, v0, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public c(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lpca;->h:Lrud;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lpca;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setErrorCode(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 10
    :cond_0
    iget-object p0, p0, Lpca;->h:Lrud;

    invoke-virtual {p0, p1, v0}, Lrud;->d(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_1
    return-void
.end method

.method public abstract c()Z
.end method

.method public clearCurrentAd()V
    .locals 2

    iget-boolean v0, p0, Lpca;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpca;->a()V

    :cond_0
    invoke-virtual {p0}, Lpca;->stopTimer()V

    iget-object v0, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/mediation/a;->w()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpca;->setIsShowing(Z)V

    iget-boolean p0, p0, Lpca;->e:Z

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "ad_flow"

    const-string v1, "cancel request ad "

    invoke-virtual {p0, v0, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public d()Lvid;
    .locals 2

    .line 1
    new-instance v0, Lvid;

    invoke-direct {v0}, Lvid;-><init>()V

    .line 2
    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lvid;->c(Landroid/os/Bundle;)V

    .line 3
    iget v1, p0, Lpca;->k:I

    invoke-virtual {v0, v1}, Lvid;->w(I)V

    .line 4
    iget-boolean v1, p0, Lpca;->q:Z

    invoke-virtual {v0, v1}, Lvid;->k(Z)V

    .line 5
    iget-object v1, p0, Lpca;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvid;->e(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lpca;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lvid;->j(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lpca;->t:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lvid;->f(Ljava/util/Map;)V

    .line 8
    iget-boolean p0, p0, Lpca;->u:Z

    invoke-virtual {v0, p0}, Lvid;->n(Z)V

    return-object v0
.end method

.method public d(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lpca;->h:Lrud;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lpca;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setErrorCode(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 12
    :cond_0
    iget-object p0, p0, Lpca;->h:Lrud;

    invoke-virtual {p0, p1, v0}, Lrud;->m(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    new-instance v0, Lpca$b;

    invoke-direct {v0, p0}, Lpca$b;-><init>(Lpca;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lpca;->o:I

    return p0
.end method

.method public enterScene(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const-string v1, "TBaseAd"

    :try_start_0
    iget-object v2, p0, Lpca;->z:Landroid/os/Bundle;

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, p0, Lpca;->z:Landroid/os/Bundle;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    :goto_0
    iget-object v2, p0, Lpca;->z:Landroid/os/Bundle;

    const-string v3, "scene_id"

    invoke-virtual {v2, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "appId is empty"

    invoke-virtual {p0, v1, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {}, Lul4;->i()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string/jumbo p1, "you should init first"

    invoke-virtual {p0, v1, p1}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    iget-object v2, p0, Lpca;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "enterScene,mAdUnit is null"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3
    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v2, :cond_4

    iget-object v2, p0, Lpca;->a:Ljava/lang/String;

    invoke-static {v2}, Lzgd;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v2

    iput-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    :cond_4
    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v2, :cond_5

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "enterScene,mCodeSeatConfig is null"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    invoke-virtual {p0, v2}, Lpca;->b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string p1, "enterScene,cloud control inspection failed"

    invoke-virtual {p0, v1, p1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_6
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, p2}, Lpca;->a(Ljava/lang/String;I)V

    iget-object p2, p0, Lpca;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    move-result p2

    const/16 v3, 0x18

    if-lt p2, v3, :cond_7

    iget-object p2, p0, Lpca;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lpca;->n:Ljava/util/LinkedHashMap;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object p0, p0, Lpca;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, v2, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "enterScene is exception"

    invoke-virtual {p1, v1, p2, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public final f()Lcom/hisavana/common/bean/AdditionalInfo;
    .locals 2

    new-instance v0, Lcom/hisavana/common/bean/AdditionalInfo;

    invoke-direct {v0}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    iget-object v1, p0, Lpca;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setPlacementId(Ljava/lang/String;)V

    invoke-static {}, Lmd8;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMcc(Ljava/lang/String;)V

    iget-object v1, p0, Lpca;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setTriggerId(Ljava/lang/String;)V

    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setTrafficGroupId(Ljava/lang/String;)V

    iget-object p0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/AdditionalInfo;->setExperimentGroupId(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lmd8;->l()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/AdditionalInfo;->setSdkVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method public final g()Lcom/hisavana/mediation/a;
    .locals 2

    iget-object v0, p0, Lpca;->h:Lrud;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/mediation/a;

    move-result-object v0

    iput-object v0, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    :cond_1
    iget-object p0, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSupportFlag()I
    .locals 0

    iget p0, p0, Lpca;->k:I

    return p0
.end method

.method public getTopPrice(I)D
    .locals 1

    invoke-static {p1}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object p1

    if-nez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-object v0, p0, Lpca;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lpca;->q:Z

    invoke-virtual {p1, v0, p0}, Lcom/hisavana/common/bean/AdCache;->getMaxPrice(Ljava/lang/String;Z)D

    move-result-wide p0

    return-wide p0
.end method

.method public final h()Lcom/hisavana/common/bean/Network;
    .locals 2

    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {p0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hisavana/common/bean/Network;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasAd()Z
    .locals 7

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TBaseAd"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "appId is empty"

    invoke-virtual {p0, v1, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    invoke-static {}, Lul4;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string/jumbo v0, "you should init first"

    invoke-virtual {p0, v1, v0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    iget-boolean v0, p0, Lpca;->m:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Lpca;->a(ZI)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "current object is destroyed"

    invoke-virtual {p0, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v0, p0, Lpca;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v2, v0}, Lpca;->a(ZI)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "isReady,mAdUnit is null"

    invoke-virtual {p0, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_4

    iget-object v0, p0, Lpca;->a:Ljava/lang/String;

    invoke-static {v0}, Lzgd;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    iput-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    :cond_4
    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_5

    const/4 v0, 0x5

    invoke-virtual {p0, v2, v0}, Lpca;->a(ZI)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "isReady,mCodeSeatConfig is null"

    invoke-virtual {p0, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5
    invoke-virtual {p0, v0}, Lpca;->b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lpca;->a(ZI)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "isReady,cloud control inspection failed"

    invoke-virtual {p0, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_6
    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    if-nez v0, :cond_7

    const/4 v0, 0x6

    invoke-virtual {p0, v2, v0}, Lpca;->a(ZI)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "isReady,no ad cache"

    invoke-virtual {p0, v1, v0}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_7
    iget-object v3, p0, Lpca;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lpca;->q:Z

    invoke-virtual {v0, v3, v4}, Lcom/hisavana/common/bean/AdCache;->hasAds(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isReady key "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lpca;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " hasAd "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_8

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lpca;->a(ZI)V

    goto :goto_1

    :cond_8
    :try_start_0
    iget-object v4, p0, Lpca;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/hisavana/common/bean/AdCache;->getLastExpireReason(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v5

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v2

    :goto_0
    invoke-virtual {p0, v2, v2, v4}, Lpca;->a(ZII)V

    :try_start_1
    iget-object p0, p0, Lpca;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/hisavana/common/bean/AdCache;->clearLastExpireReason(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v3
.end method

.method public final i()Lcom/hisavana/common/interfacz/ICacheAd;
    .locals 3

    iget-object v0, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/hisavana/mediation/a;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    iget-object v1, p0, Lpca;->a:Ljava/lang/String;

    iget-boolean p0, p0, Lpca;->q:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p0}, Lcom/hisavana/common/bean/AdCache;->getCache(Ljava/lang/String;ZIZ)Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object p0

    return-object p0
.end method

.method public isLoaded()Z
    .locals 0

    iget-boolean p0, p0, Lpca;->f:Z

    return p0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lpca;->h:Lrud;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/mediation/a;

    move-result-object v0

    iput-object v0, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lpca;->h:Lrud;

    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/a;->p(Lrud;)V

    iget-object v0, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    iget-object v1, p0, Lpca;->c:Lcom/hisavana/common/utils/RunTimer;

    invoke-virtual {v0, v1}, Lcom/hisavana/mediation/a;->k(Lcom/hisavana/common/utils/RunTimer;)V

    iget-object v0, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    iget p0, p0, Lpca;->v:I

    invoke-virtual {v0, p0}, Lcom/hisavana/mediation/a;->R(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    return-void
.end method

.method public final k()V
    .locals 13

    iget-object v0, p0, Lpca;->a:Ljava/lang/String;

    invoke-static {v0}, Lzgd;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    iput-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lpca;->b(ZI)V

    invoke-virtual {p0}, Lpca;->m()V

    iget-boolean v1, p0, Lpca;->p:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lpca;->c()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CODE_AD_IS_SHOWING:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_0
    iput-boolean v0, p0, Lpca;->f:Z

    invoke-virtual {p0}, Lpca;->clearCurrentAd()V

    iput-boolean v2, p0, Lpca;->e:Z

    iget-boolean v1, p0, Lpca;->m:Z

    const-string v2, "ad_flow"

    const-string v3, "TBaseAd"

    if-eqz v1, :cond_1

    iput-boolean v0, p0, Lpca;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CURRENT_OBJECT_IS_DESTROYED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "TBaseAd -->current object haved been destroyed"

    invoke-virtual {p0, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "current object haved been destroyed"

    invoke-static {v3, p0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lpca;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_INVALID_APP_ID:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TBaseAd --> Network request is invalid, the appId or appToken must be valid ----- Current app id is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "loadAdInternal,appId is empty"

    invoke-static {v3, p0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAdInternal,config is null\uff1bcodeSeatId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpca;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lpca;->e:Z

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b(I)V

    invoke-static {}, Lo9;->e()Lo9;

    move-result-object v0

    const-string v1, "cloud_config_error_code"

    invoke-virtual {v0, v1}, Lo9;->f(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/hisavana/common/constant/ComConstants;->transferCloudErrorCode(I)Lcom/hisavana/common/bean/TAdErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_UNIT_CONFIG_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :goto_0
    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lpca;->o:I

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v4, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCloudControlEnable()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "loadAdInternal,config is closed"

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lpca;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CLOUD_AD_SEAT_IS_CLOSED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p0

    const-string v0, "TBaseAd --> current ad unit is close "

    invoke-virtual {p0, v2, v0}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Luna;->c(J)J

    move-result-wide v6

    invoke-static {v4, v5}, Luna;->b(J)J

    move-result-wide v8

    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_6

    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayZeroClock()J

    move-result-wide v11

    cmp-long v1, v6, v11

    if-nez v1, :cond_6

    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayShowTimes()I

    move-result v1

    iget-object v6, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v1, v6, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v10, :cond_7

    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourZeroClock()J

    move-result-wide v6

    cmp-long v1, v8, v6

    if-nez v1, :cond_7

    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourShowTimes()I

    move-result v1

    iget-object v6, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lt v1, v6, :cond_7

    goto/16 :goto_3

    :cond_7
    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getLastShowTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_8

    goto :goto_1

    :cond_8
    neg-long v4, v4

    :goto_1
    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    const-wide/16 v8, -0x3e8

    cmp-long v1, v6, v8

    if-eqz v1, :cond_9

    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gtz v1, :cond_9

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v4, "TBaseAd --> ad display did not reach the interval"

    invoke-virtual {v1, v2, v4}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad display did not reach the interval,time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lpca;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_NOT_IN_INTERVAL:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_9
    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {p0, v1}, Lpca;->c(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)I

    move-result v1

    iput v1, p0, Lpca;->k:I

    invoke-virtual {p0}, Lpca;->j()V

    invoke-virtual {p0}, Lpca;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Lpca;->a(I)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v4, "TBaseAd --> code seat type does not match request type"

    invoke-virtual {v1, v2, v4}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code seat type does not match request type ---> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lpca;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_TYPE_LOAD_INCONSISTENCY:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_a
    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-static {v1}, Lend;->a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v1

    iput-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v4, "TBaseAd --> net error "

    invoke-virtual {v1, v2, v4}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "net error"

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lpca;->e:Z

    invoke-virtual {p0}, Lpca;->h()Lcom/hisavana/common/bean/Network;

    move-result-object v0

    invoke-virtual {p0}, Lpca;->g()Lcom/hisavana/mediation/a;

    move-result-object v1

    if-eqz v0, :cond_b

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/hisavana/mediation/a;->d0()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lpca;->z:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/hisavana/mediation/a;->g(Landroid/os/Bundle;)V

    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/hisavana/mediation/a;->O(I)V

    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1, v2, v0}, Lcom/hisavana/mediation/a;->r(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Z

    move-result v0

    if-nez v0, :cond_c

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_NO_NETWORK_AND_OFFLINE:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_2

    :cond_b
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WITH_NETWORK_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_c
    :goto_2
    return-void

    :cond_d
    invoke-virtual {p0}, Lpca;->p()V

    invoke-virtual {p0}, Lpca;->r()V

    return-void

    :cond_e
    :goto_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v4, "TBaseAd --> ad display has reached the limit of hours"

    invoke-virtual {v1, v2, v4}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad display has reached the limit of hour,hour showTimes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lpca;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_HOUR:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_f
    :goto_4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    const-string v4, "TBaseAd --> ad show times can not exceed day show max"

    invoke-virtual {v1, v2, v4}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad show times reach the limit of day,day showTimes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v0, p0, Lpca;->e:Z

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_DAY:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public l()V
    .locals 4

    iget-object v0, p0, Lpca;->h:Lrud;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lpca;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    invoke-virtual {p0}, Lpca;->i()Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setSource(Ljava/lang/Integer;)V

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationKey(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setCodeSeatId(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setEcpm(Ljava/lang/Double;)V

    invoke-static {v2}, Lcom/hisavana/common/utils/AdUtil;->isWaterFall(Lcom/hisavana/common/bean/Network;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "estimated"

    goto :goto_1

    :cond_2
    const-string v3, "exact"

    :goto_1
    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setPrecision(Ljava/lang/String;)V

    const-string v3, "USD"

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setCurrency(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/hisavana/common/utils/AdUtil;->isBiddingNetwork(Lcom/hisavana/common/bean/Network;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/hisavana/common/bean/AdditionalInfo;->setBidding(Ljava/lang/Boolean;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    :cond_4
    iget-object p0, p0, Lpca;->h:Lrud;

    invoke-virtual {p0, v0}, Lrud;->c(Lcom/hisavana/common/bean/AdditionalInfo;)V

    return-void
.end method

.method public loadAd()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpca;->b(I)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lpca;->h:Lrud;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpca;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    iget-object p0, p0, Lpca;->h:Lrud;

    invoke-virtual {p0, v0}, Lrud;->p(Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, Lpca;->h:Lrud;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lrud;->g(Lcom/hisavana/common/interfacz/TAdListener;)V

    iget-object v0, p0, Lpca;->h:Lrud;

    invoke-virtual {v0, v1}, Lrud;->a(Lcom/hisavana/common/interfacz/OnSkipListener;)V

    iget-object v0, p0, Lpca;->h:Lrud;

    invoke-virtual {v0, v1}, Lrud;->h(Lcom/hisavana/common/interfacz/TAdditionalListener;)V

    :cond_0
    iput-object v1, p0, Lpca;->h:Lrud;

    iput-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-static {}, Lcom/hisavana/common/mock/RecordTestInfo;->destroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lpca;->setIsShowing(Z)V

    invoke-virtual {p0}, Lpca;->clearCurrentAd()V

    iget-boolean v1, p0, Lpca;->e:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CURRENT_OBJECT_IS_DESTROYED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    const v2, 0xea62

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v1, v3}, Lpca;->trackingAdLoaded(ILjava/lang/String;I)V

    :cond_1
    iput-boolean v0, p0, Lpca;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpca;->m:Z

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestTimeout()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lpca;->j:I

    :cond_0
    iget v0, p0, Lpca;->j:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lpca;->c:Lcom/hisavana/common/utils/RunTimer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/hisavana/common/utils/RunTimer;

    invoke-direct {v0}, Lcom/hisavana/common/utils/RunTimer;-><init>()V

    iput-object v0, p0, Lpca;->c:Lcom/hisavana/common/utils/RunTimer;

    :cond_1
    iget-object v0, p0, Lpca;->c:Lcom/hisavana/common/utils/RunTimer;

    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->cancelTimeTask()V

    iget-object v0, p0, Lpca;->c:Lcom/hisavana/common/utils/RunTimer;

    iget-object v1, p0, Lpca;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    invoke-virtual {v0, v1}, Lcom/hisavana/common/utils/RunTimer;->setTimeOutCallback(Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;)V

    iget-object v0, p0, Lpca;->c:Lcom/hisavana/common/utils/RunTimer;

    iget v1, p0, Lpca;->j:I

    invoke-virtual {v0, v1}, Lcom/hisavana/common/utils/RunTimer;->setScheduleTime(I)V

    iget-object p0, p0, Lpca;->c:Lcom/hisavana/common/utils/RunTimer;

    invoke-virtual {p0}, Lcom/hisavana/common/utils/RunTimer;->runTimerTask()V

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->i0()V

    :cond_0
    return-void
.end method

.method public final preload()V
    .locals 0

    invoke-virtual {p0}, Lpca;->loadAd()V

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public final r()V
    .locals 4

    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    const-string v1, "TBaseAd"

    if-nez v0, :cond_0

    const-string/jumbo v0, "startLoadMediation codeSeat is null"

    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_UNIT_CONFIG_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*----> TBaseAd - current cloudConfig is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_flow"

    invoke-virtual {v0, v3, v2}, Lja1;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lpca;->g()Lcom/hisavana/mediation/a;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lpca;->z:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/a;->g(Landroid/os/Bundle;)V

    iget-object v2, p0, Lpca;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/hisavana/mediation/a;->q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "prepare for request failed"

    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_PREPARE_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v2, "TBaseAd --> ad is empty "

    invoke-virtual {v0, v3, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "startLoadMediation,network is empty"

    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_LIST_IS_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    return-void
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lpca;->d:Lcom/hisavana/mediation/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/hisavana/mediation/a;->m0()V

    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    iget-object v0, p0, Lpca;->c:Lcom/hisavana/common/utils/RunTimer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->cancelTimeTask()V

    const/4 v0, 0x0

    iput-object v0, p0, Lpca;->c:Lcom/hisavana/common/utils/RunTimer;

    :cond_0
    return-void
.end method

.method public setAdLoadScenes(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpca;->r:Ljava/lang/String;

    iput-object p2, p0, Lpca;->s:Ljava/lang/String;

    iput-object p3, p0, Lpca;->t:Ljava/util/Map;

    return-void
.end method

.method public setCodeSeatType(I)V
    .locals 0

    iput p1, p0, Lpca;->o:I

    return-void
.end method

.method public setContainVulgarContent(Z)V
    .locals 0

    iput-boolean p1, p0, Lpca;->q:Z

    return-void
.end method

.method public setCurrActivityFullscreen(Z)V
    .locals 0

    iput-boolean p1, p0, Lpca;->u:Z

    return-void
.end method

.method public setIsShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Lpca;->p:Z

    return-void
.end method

.method public setLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lpca;->f:Z

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    iput-boolean p1, p0, Lpca;->e:Z

    return-void
.end method

.method public setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lpca;->b()V

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody;->getScheduleTime()I

    move-result v0

    iput v0, p0, Lpca;->j:I

    iget-object v0, p0, Lpca;->h:Lrud;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody;->getAdListener()Lcom/hisavana/common/interfacz/TAdListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrud;->g(Lcom/hisavana/common/interfacz/TAdListener;)V

    iget-object p0, p0, Lpca;->h:Lrud;

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody;->getAdditionalListener()Lcom/hisavana/common/interfacz/TAdditionalListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Lrud;->h(Lcom/hisavana/common/interfacz/TAdditionalListener;)V

    :cond_1
    return-void
.end method

.method public stopTimer()V
    .locals 1

    new-instance v0, Lpca$c;

    invoke-direct {v0, p0}, Lpca$c;-><init>(Lpca;)V

    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public t()V
    .locals 1

    iget-object v0, p0, Lpca;->h:Lrud;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_TRIGGER_SHOW_ONLINE_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p0, p0, Lpca;->h:Lrud;

    invoke-virtual {p0, v0}, Lrud;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_RIGGER_SHOW_OFFLINE_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    invoke-virtual {p0, v0}, Lpca;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    iget-object p0, p0, Lpca;->h:Lrud;

    invoke-virtual {p0, v0}, Lrud;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public trackingAdLoaded(ILjava/lang/String;I)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p1

    const-string v2, "is_preload"

    const-string v3, "filling_ad_type"

    const-string v4, "request_num"

    const-string v5, "request_id"

    const-string v6, "is_retreatad"

    const-string v7, "ad_count"

    const-string v8, "priority"

    const-string v9, "biddingType"

    const-string v10, "request_type"

    const-string v11, "is_pre_trigger"

    const-string v12, "ad_type"

    const-string/jumbo v13, "trigger_ts"

    const-string/jumbo v14, "trigger_id"

    const-string v15, "bidding_price"

    const-string v1, "code_seat_id"

    move-object/from16 v16, v2

    const-string v2, "ad_trigger_status"

    move-object/from16 v17, v3

    :try_start_0
    iget-object v3, v0, Lpca;->z:Landroid/os/Bundle;

    if-nez v3, :cond_0

    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v1, "ad_flow"

    const-string v2, "mBundle is null"

    invoke-virtual {v0, v1, v2}, Lja1;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_b

    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v18, v4

    iget-object v4, v0, Lpca;->z:Landroid/os/Bundle;

    invoke-virtual {v4, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v14, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lpca;->z:Landroid/os/Bundle;

    move-object v14, v5

    invoke-virtual {v4, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v13, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v4, v0, Lpca;->z:Landroid/os/Bundle;

    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v12, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, v0, Lpca;->z:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, v0, Lpca;->d:Lcom/hisavana/mediation/a;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v13, v0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v13, :cond_1

    invoke-virtual {v4}, Lcom/hisavana/mediation/a;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v4

    iget-object v13, v0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v13}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v13

    iget v12, v0, Lpca;->k:I

    move-object/from16 v20, v14

    iget-boolean v14, v0, Lpca;->q:Z

    invoke-virtual {v4, v13, v5, v12, v14}, Lcom/hisavana/common/bean/AdCache;->getCache(Ljava/lang/String;ZIZ)Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object/from16 v20, v14

    const/4 v4, 0x0

    :goto_0
    const-string v12, "platform"

    if-eqz v4, :cond_5

    :try_start_1
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v13

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v21

    instance-of v5, v4, Lcom/hisavana/common/base/BaseAd;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/hisavana/common/base/BaseAd;

    iget-object v5, v5, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    goto :goto_1

    :cond_2
    instance-of v5, v4, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v5, :cond_3

    move-object v5, v4

    check-cast v5, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v5}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v5

    iget-object v5, v5, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    :goto_1
    move-wide/from16 v22, v13

    goto :goto_2

    :cond_3
    move-wide/from16 v22, v13

    const/4 v5, 0x0

    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v13

    const-string v14, "TBaseAd"

    move-object/from16 v24, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v6

    const-string/jumbo v6, "trackingAdLoaded --> isNative = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v6, v4, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " \u8bbe\u7f6e\u6807\u8bc6\u7b26 contextBundle.PLATFORM="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v14, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "is_offline_ad"

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    move-result v6

    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "mediator_source"

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mediator_code_seat_id"

    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceUnitId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v19, v21

    move-wide/from16 v13, v22

    goto :goto_4

    :cond_5
    move-object/from16 v24, v2

    move-object/from16 v25, v6

    const-wide/16 v13, 0x0

    const/4 v5, 0x0

    const/16 v19, 0x0

    :goto_4
    invoke-virtual {v0, v3, v13, v14}, Lpca;->a(Landroid/os/Bundle;D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "app_id"

    if-eqz v5, :cond_8

    :try_start_2
    invoke-virtual {v5, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v11, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v10, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v12, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-virtual {v3, v15, v10, v11}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v9, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v8, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v6, v25

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v6, v20

    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adTrackingFilling code_seat_id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",platform:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bidding_price:"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    move-object/from16 v1, v18

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v1, v24

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_7

    const/4 v6, 0x3

    :cond_6
    :goto_5
    move-object/from16 v1, v17

    goto :goto_6

    :cond_7
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v6, 0x2

    goto :goto_5

    :goto_6
    invoke-virtual {v3, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v5, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v1, v16

    invoke-virtual {v5, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "scene_id"

    const-string v4, "scene_id"

    invoke-virtual {v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string v1, "adTrackingFilling"

    invoke-static {v1}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    const-string v1, "cld_app_id"

    iget-object v4, v0, Lpca;->z:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cld_code_seat_id"

    iget-object v2, v0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, ""

    if-nez v2, :cond_9

    move-object v2, v4

    goto :goto_7

    :cond_9
    :try_start_3
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    move-result-object v2

    :goto_7
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_timeout"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "error_code"

    move/from16 v5, p1

    invoke-virtual {v3, v1, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "error_message"

    invoke-static/range {p2 .. p2}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "filling_source"

    move/from16 v6, p3

    invoke-virtual {v3, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "filling_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v1, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "installed_facebook"

    sget-boolean v6, Lcom/hisavana/common/constant/ComConstants;->isFbAppExist:Z

    invoke-virtual {v3, v1, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "filter_count"

    iget-object v6, v0, Lpca;->d:Lcom/hisavana/mediation/a;

    if-nez v6, :cond_a

    goto :goto_8

    :cond_a
    invoke-virtual {v6}, Lcom/hisavana/mediation/a;->M()I

    move-result v2

    :goto_8
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "optimize_status"

    iget-object v2, v0, Lpca;->z:Landroid/os/Bundle;

    const-string v6, "optimize_status"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "priority_code"

    iget-object v2, v0, Lpca;->z:Landroid/os/Bundle;

    const-string v6, "priority_code"

    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lpca;->d:Lcom/hisavana/mediation/a;

    if-eqz v1, :cond_b

    const-string v2, "max_price"

    invoke-virtual {v1}, Lcom/hisavana/mediation/a;->S()D

    move-result-wide v6

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    :cond_b
    sget-boolean v1, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill result code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE7:I

    invoke-static {v1, v2}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    :cond_c
    const-string v1, "is_contain_vulgar"

    iget-boolean v2, v0, Lpca;->q:Z

    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz v19, :cond_d

    const-string v1, "price_coefficient"

    invoke-virtual/range {v19 .. v19}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v3, v1, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    invoke-virtual/range {v19 .. v19}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v12, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_d
    const-string/jumbo v1, "traffic_group_id"

    iget-object v2, v0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v2, :cond_e

    move-object v2, v4

    goto :goto_9

    :cond_e
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v3, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "experiment_group_id"

    iget-object v0, v0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_f

    goto :goto_a

    :cond_f
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    move-result-object v4

    :goto_a
    invoke-virtual {v3, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdLoaded(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_c

    :goto_b
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lja1;->e(Ljava/lang/String;)V

    :goto_c
    return-void
.end method

.method public trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 7

    const-string v0, "platform"

    const-string v1, "bidding_price"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    :try_start_0
    iget-object v3, p0, Lpca;->z:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "trigger_ts"

    const-string/jumbo v5, "trigger_id"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lpca;->z:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-object v3, p0, Lpca;->z:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    iget-object v1, p0, Lpca;->z:Landroid/os/Bundle;

    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/hisavana/common/tracking/TrackingUtil;->getTriggerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :goto_0
    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez v0, :cond_1

    iget-object v0, p0, Lpca;->a:Ljava/lang/String;

    invoke-static {v0}, Lzgd;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object v0

    iput-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    :cond_1
    const-string v0, "cld_app_id"

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "app_id"

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code_seat_id"

    iget-object v1, p0, Lpca;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cld_code_seat_id"

    iget-object v1, p0, Lpca;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ad_type"

    invoke-virtual {p0}, Lpca;->e()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "traffic_group_id"

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "experiment_group_id"

    iget-object v1, p0, Lpca;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "error_code"

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "error_message"

    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p1, "is_offline"

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lpca;->i()Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string p1, "mediator_source"

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mediator_code_seat_id"

    invoke-interface {p0}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceUnitId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-static {v2}, Lcom/hisavana/common/tracking/TrackingManager;->trackingTriggerShow(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ad_flow"

    invoke-virtual {p1, v0, p0}, Lja1;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
