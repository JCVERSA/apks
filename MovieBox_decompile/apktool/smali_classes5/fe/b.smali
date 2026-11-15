.class public abstract Lfe/b;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/content/Context;

.field public c:Lcom/hisavana/common/utils/RunTimer;

.field public d:Lee/c;

.field public e:Z

.field public f:Z

.field public g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

.field public h:Lee/s;

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

    iput-object v0, p0, Lfe/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lfe/b;->b:Landroid/content/Context;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 38
    iput-boolean v0, p0, Lfe/b;->f:Z

    const v1, 0xea60

    .line 39
    iput v1, p0, Lfe/b;->j:I

    .line 40
    iput v0, p0, Lfe/b;->k:I

    const-wide/16 v1, 0x0

    .line 41
    iput-wide v1, p0, Lfe/b;->l:J

    .line 42
    iput-boolean v0, p0, Lfe/b;->m:Z

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lfe/b;->n:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lfe/b;->v:I

    .line 45
    new-instance v0, Lfe/b$a;

    invoke-direct {v0, p0}, Lfe/b$a;-><init>(Lfe/b;)V

    iput-object v0, p0, Lfe/b;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lfe/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lfe/b;->b:Landroid/content/Context;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 22
    iput-boolean v0, p0, Lfe/b;->f:Z

    const v1, 0xea60

    .line 23
    iput v1, p0, Lfe/b;->j:I

    .line 24
    iput v0, p0, Lfe/b;->k:I

    const-wide/16 v1, 0x0

    .line 25
    iput-wide v1, p0, Lfe/b;->l:J

    .line 26
    iput-boolean v0, p0, Lfe/b;->m:Z

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lfe/b;->n:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lfe/b;->v:I

    .line 29
    new-instance v0, Lfe/b$a;

    invoke-direct {v0, p0}, Lfe/b$a;-><init>(Lfe/b;)V

    iput-object v0, p0, Lfe/b;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfe/b;->b:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/e;->i(Landroid/content/Context;)V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lfe/b;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lfe/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lfe/b;->b:Landroid/content/Context;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 5
    iput-boolean v0, p0, Lfe/b;->f:Z

    const v1, 0xea60

    .line 6
    iput v1, p0, Lfe/b;->j:I

    .line 7
    iput v0, p0, Lfe/b;->k:I

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lfe/b;->l:J

    .line 9
    iput-boolean v0, p0, Lfe/b;->m:Z

    .line 10
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lfe/b;->n:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lfe/b;->v:I

    .line 12
    new-instance v0, Lfe/b$a;

    invoke-direct {v0, p0}, Lfe/b$a;-><init>(Lfe/b;)V

    iput-object v0, p0, Lfe/b;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    .line 13
    iput-object p2, p0, Lfe/b;->a:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lfe/b;->b:Landroid/content/Context;

    .line 15
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->a()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    .line 16
    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/e;->i(Landroid/content/Context;)V

    .line 17
    :cond_0
    invoke-virtual {p0}, Lfe/b;->b()V

    return-void
.end method

.method public static synthetic a(Lfe/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfe/b;->o()V

    return-void
.end method

.method public static synthetic b(Lfe/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfe/b;->s()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lee/c;
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lfe/b;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final a()V
    .locals 5

    .line 24
    iget-object v0, p0, Lfe/b;->z:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string v1, "request_type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 27
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v2, "trigger_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v2, "trigger_ts"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 29
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v2, "ad_type"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v2, "cld_app_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v2, "cld_code_seat_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v2, "app_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v2, "code_seat_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v2, "is_retreatad"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    invoke-static {}, Ll7/a;->e()Ll7/a;

    move-result-object v1

    const-string v2, "cloudControlVersion"

    invoke-virtual {v1, v2}, Ll7/a;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cld_configure_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v2, "is_preload"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 37
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v2, "traffic_group_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v2, "experiment_group_id"

    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdCancel(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Landroid/os/Bundle;D)V
    .locals 8

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    iget-object v1, p0, Lfe/b;->d:Lee/c;

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 8
    invoke-virtual {v1}, Lee/c;->G()Lcom/hisavana/common/bean/AdCache;

    move-result-object v1

    iget-object v4, p0, Lfe/b;->a:Ljava/lang/String;

    iget-boolean v5, p0, Lfe/b;->q:Z

    const/16 v6, 0x64

    invoke-virtual {v1, v4, v6, v3, v5}, Lcom/hisavana/common/bean/AdCache;->getCaches(Ljava/lang/String;IZZ)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v3

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hisavana/common/interfacz/ICacheAd;

    .line 10
    invoke-interface {v5}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    move-result-wide v6

    cmpg-double v6, v6, p2

    if-gez v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 11
    invoke-interface {v5}, Lcom/hisavana/common/interfacz/ICacheAd;->getAdSource()I

    move-result v6

    if-nez v6, :cond_0

    .line 12
    instance-of v6, v5, Lcom/hisavana/common/base/BaseAd;

    const-string v7, "request_id"

    if-eqz v6, :cond_1

    .line 13
    check-cast v5, Lcom/hisavana/common/base/BaseAd;

    iget-object v5, v5, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 14
    :cond_1
    instance-of v6, v5, Lcom/hisavana/common/bean/AdNativeInfo;

    if-eqz v6, :cond_2

    .line 15
    check-cast v5, Lcom/hisavana/common/bean/AdNativeInfo;

    invoke-virtual {v5}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 16
    invoke-virtual {v5}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 17
    invoke-virtual {v5}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    move-result-object v5

    iget-object v5, v5, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    :cond_2
    :goto_1
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 19
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x1

    if-le p2, p3, :cond_4

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-virtual {v0, v3, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bidding_platform_str"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "TBaseAd"

    invoke-virtual {p2, v0, p3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v3, v4

    :cond_5
    if-eqz p1, :cond_6

    .line 22
    const-string p2, "bid_fail_req_id_arr_hisavana"

    invoke-virtual {p1, p2, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string p2, "valid_cache_material_cnt"

    invoke-virtual {p1, p2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method public a(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lee/s;->onError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/hisavana/common/bean/TAdNativeInfo;)V
    .locals 3

    .line 68
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lfe/b;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    if-eqz p1, :cond_1

    .line 70
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v1

    .line 71
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    goto :goto_2

    .line 72
    :cond_1
    invoke-virtual {p0}, Lfe/b;->i()Lcom/hisavana/common/interfacz/ICacheAd;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    move-object v2, v1

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    move-result-object v2

    :goto_0
    if-nez p1, :cond_3

    goto :goto_1

    .line 74
    :cond_3
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_4

    .line 75
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setSource(Ljava/lang/Integer;)V

    .line 76
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationId(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationKey(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setCodeSeatId(Ljava/lang/String;)V

    .line 79
    :cond_4
    iget-object p1, p0, Lfe/b;->h:Lee/s;

    invoke-virtual {p1, v0}, Lee/s;->s(Lcom/hisavana/common/bean/AdditionalInfo;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 40
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 41
    const-string v1, "scene_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string p2, "scene_token"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 43
    invoke-static {p1}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    move-result p2

    const/4 v1, 0x1

    xor-int/2addr p2, v1

    const-string v2, "is_offline"

    invoke-virtual {v0, v2, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 44
    iget-object p2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-nez p2, :cond_0

    .line 45
    iget-object p2, p0, Lfe/b;->a:Ljava/lang/String;

    invoke-static {p2}, Lee/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    move-result-object p2

    iput-object p2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 46
    :cond_0
    iget-object p2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    const-string v2, "cache_status"

    if-nez p2, :cond_1

    .line 47
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 48
    :cond_1
    invoke-virtual {p2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 49
    iget-object v3, p0, Lfe/b;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lfe/b;->q:Z

    invoke-virtual {p2, v3, v4}, Lcom/hisavana/common/bean/AdCache;->hasAds(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 50
    invoke-virtual {v0, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 51
    :cond_2
    iget-boolean p1, p0, Lfe/b;->e:Z

    if-eqz p1, :cond_3

    const/4 v1, 0x2

    :cond_3
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 52
    :cond_4
    :goto_0
    iget-object p1, p0, Lfe/b;->a:Ljava/lang/String;

    const-string p2, "cld_code_seat_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cld_app_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v1, "ts"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 55
    const-string p1, "ad_count"

    invoke-virtual {v0, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 56
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackEnterScene(Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(ZI)V
    .locals 6

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 58
    iget-wide v2, p0, Lfe/b;->l:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 59
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string p2, "TBaseAd"

    const-string v0, "isReady interval time is not fit"

    invoke-virtual {p1, p2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_0
    iput-wide v0, p0, Lfe/b;->l:J

    .line 61
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_2

    .line 62
    iget-boolean p1, p0, Lfe/b;->f:Z

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 63
    :cond_2
    :goto_0
    const-string p1, "is_ready_status"

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 64
    iget-object p1, p0, Lfe/b;->a:Ljava/lang/String;

    const-string p2, "cld_code_seat_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cld_app_id"

    invoke-virtual {v0, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-string v1, "ts"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 67
    invoke-static {v0}, Lcom/hisavana/common/tracking/TrackingManager;->trackIsReady(Landroid/os/Bundle;)V

    return-void
.end method

.method public abstract a(I)Z
.end method

.method public b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;
    .locals 12

    if-nez p1, :cond_0

    .line 8
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_UNIT_CONFIG_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1

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

    invoke-virtual {v2, v1, v0}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCloudControlEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 20
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CLOUD_AD_SEAT_IS_CLOSED:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lfe/b;->o:I

    .line 22
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lfe/b;->a(I)Z

    move-result v0

    const-string v2, "TBaseAd"

    if-nez v0, :cond_3

    .line 23
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "TBaseAd --> code seat type does not match request type"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code seat type does not match request type ---> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_TYPE_LOAD_INCONSISTENCY:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1

    .line 26
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 27
    invoke-static {v3, v4}, Lcom/cloud/hisavana/sdk/common/util/k0;->c(J)J

    move-result-wide v5

    .line 28
    invoke-static {v3, v4}, Lcom/cloud/hisavana/sdk/common/util/k0;->b(J)J

    move-result-wide v7

    .line 29
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v9, -0x1

    if-eq v0, v9, :cond_4

    .line 30
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayZeroClock()J

    move-result-wide v10

    cmp-long v0, v5, v10

    if-nez v0, :cond_4

    .line 31
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayShowTimes()I

    move-result v0

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v0, v5, :cond_4

    goto/16 :goto_2

    .line 32
    :cond_4
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v9, :cond_5

    .line 33
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourZeroClock()J

    move-result-wide v5

    cmp-long v0, v7, v5

    if-nez v0, :cond_5

    .line 34
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourShowTimes()I

    move-result v0

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lt v0, v5, :cond_5

    goto :goto_1

    .line 35
    :cond_5
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getLastShowTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    goto :goto_0

    :cond_6
    neg-long v3, v3

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    const-wide/16 v7, -0x3e8

    cmp-long v0, v5, v7

    if-eqz v0, :cond_7

    .line 37
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-gtz v0, :cond_7

    .line 38
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "TBaseAd --> ad display did not reach the interval"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad display did not reach the interval,time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_NOT_IN_INTERVAL:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1

    .line 41
    :cond_8
    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "TBaseAd --> ad display has reached the limit of hours"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad display has reached the limit of hour,hour showTimes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_HOUR:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1

    .line 44
    :cond_9
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v0

    const-string v3, "TBaseAd --> ad show times can not exceed day show max"

    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ad show times reach the limit of day,day showTimes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    sget-object p1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_DAY:Lcom/hisavana/common/bean/TAdErrorCode;

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 49
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lee/s;

    invoke-direct {v0, p0}, Lee/s;-><init>(Lfe/b;)V

    iput-object v0, p0, Lfe/b;->h:Lee/s;

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object p1

    const-string v0, "TBaseAd"

    const-string v1, "you should init first"

    invoke-virtual {p1, v0, v1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/cloud/hisavana/sdk/manager/b;->a:Lcom/cloud/hisavana/sdk/manager/b;

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/manager/b;->d()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lfe/b;->i:Z

    .line 6
    iput p1, p0, Lfe/b;->v:I

    .line 7
    new-instance p1, Lfe/a;

    invoke-direct {p1, p0}, Lfe/a;-><init>(Lfe/b;)V

    invoke-static {p1}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    return-void
.end method

.method public b(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 1

    .line 47
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Lee/s;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    :cond_0
    return-void
.end method

.method public final b(ZI)V
    .locals 6

    .line 51
    invoke-static {}, Lcom/hisavana/common/tracking/TrackingUtil;->getTriggerId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfe/b;->x:Ljava/lang/String;

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lfe/b;->z:Landroid/os/Bundle;

    .line 53
    iget-object v1, p0, Lfe/b;->x:Ljava/lang/String;

    const-string v2, "trigger_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lfe/b;->y:J

    .line 55
    iget-object v2, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v3, "trigger_ts"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 56
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    if-eqz v0, :cond_3

    .line 57
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "ad_type"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 58
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    .line 60
    iget-object v3, p0, Lfe/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdCache;->getValidAndInvalidAdNum(Ljava/lang/String;)[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    array-length v3, v0

    if-lt v3, v2, :cond_0

    const/4 v3, 0x0

    .line 62
    aget v3, v0, v3

    .line 63
    aget v0, v0, v1

    .line 64
    iget-object v4, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v5, "cache_valid_ads"

    invoke-virtual {v4, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    iget-object v3, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v4, "cache_expire_ads"

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lfe/b;->z:Landroid/os/Bundle;

    iget-object v3, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestConcurrentCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "multi_count"

    invoke-virtual {v0, v4, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 67
    iget-object v0, p0, Lfe/b;->z:Landroid/os/Bundle;

    iget v3, p0, Lfe/b;->v:I

    if-ne v3, v2, :cond_1

    .line 68
    iget-object v2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getRealtimeBiddingWaitTime()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getBiddingWaitTime()Ljava/lang/Integer;

    move-result-object v2

    .line 69
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "bidding_duration"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 70
    iget-object v0, p0, Lfe/b;->z:Landroid/os/Bundle;

    iget-object v2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "traffic_group_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lfe/b;->z:Landroid/os/Bundle;

    iget-object v2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "experiment_group_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lfe/b;->z:Landroid/os/Bundle;

    iget-object v2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    .line 73
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 74
    :cond_2
    const-string v2, "request_num"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 75
    :cond_3
    iget-object v0, p0, Lfe/b;->z:Landroid/os/Bundle;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lfe/b;->z:Landroid/os/Bundle;

    iget-object v1, p0, Lfe/b;->a:Ljava/lang/String;

    const-string v2, "code_seat_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v1, "is_pre_trigger"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 78
    iget-object p1, p0, Lfe/b;->z:Landroid/os/Bundle;

    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cld_app_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lfe/b;->z:Landroid/os/Bundle;

    iget-object v0, p0, Lfe/b;->a:Ljava/lang/String;

    const-string v1, "cld_code_seat_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string v0, "ad_trigger_status"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 81
    iget-object p1, p0, Lfe/b;->z:Landroid/os/Bundle;

    iget p2, p0, Lfe/b;->k:I

    const-string v0, "priority_code"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 82
    iget-object p1, p0, Lfe/b;->z:Landroid/os/Bundle;

    const-string p2, "is_contain_vulgar"

    iget-boolean v0, p0, Lfe/b;->q:Z

    invoke-virtual {p1, p2, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 83
    iget-object p1, p0, Lfe/b;->z:Landroid/os/Bundle;

    iget p2, p0, Lfe/b;->v:I

    const-string v0, "trigger_mode"

    invoke-virtual {p1, v0, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 84
    iget-object p1, p0, Lfe/b;->z:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/hisavana/common/tracking/TrackingManager;->trackingADTrigger(Landroid/os/Bundle;)V

    return-void
.end method

.method public c(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdxShowRate()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2
    invoke-virtual {p1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getEwShowRate()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    .line 4
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x64

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0x64

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v3, v1, :cond_1

    if-ge v2, p1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    if-ge v3, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    if-ge v2, p1, :cond_3

    const/4 v0, 0x2

    .line 6
    :cond_3
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Traffic support config: adxShowRate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ewShowRate "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",current random result is: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "TBaseAd"

    invoke-virtual {v2, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public c(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    .line 7
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lfe/b;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setErrorCode(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 10
    :cond_0
    iget-object v1, p0, Lfe/b;->h:Lee/s;

    invoke-virtual {v1, p1, v0}, Lee/s;->d(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_1
    return-void
.end method

.method public abstract c()Z
.end method

.method public clearCurrentAd()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lfe/b;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lfe/b;->d:Lee/c;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lfe/b;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0}, Lfe/b;->stopTimer()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lfe/b;->d:Lee/c;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lee/c;->w()V

    .line 20
    .line 21
    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lfe/b;->setIsShowing(Z)V

    .line 24
    .line 25
    .line 26
    iget-boolean v0, p0, Lfe/b;->e:Z

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "ad_flow"

    .line 35
    .line 36
    const-string v2, "cancel request ad "

    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    return-void
.end method

.method public d()Lee/i;
    .locals 2

    .line 1
    new-instance v0, Lee/i;

    invoke-direct {v0}, Lee/i;-><init>()V

    .line 2
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lee/i;->c(Landroid/os/Bundle;)V

    .line 3
    iget v1, p0, Lfe/b;->k:I

    invoke-virtual {v0, v1}, Lee/i;->w(I)V

    .line 4
    iget-boolean v1, p0, Lfe/b;->q:Z

    invoke-virtual {v0, v1}, Lee/i;->k(Z)V

    .line 5
    iget-object v1, p0, Lfe/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lee/i;->e(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lfe/b;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lee/i;->j(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lfe/b;->t:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lee/i;->f(Ljava/util/Map;)V

    .line 8
    iget-boolean v1, p0, Lfe/b;->u:Z

    invoke-virtual {v0, v1}, Lee/i;->n(Z)V

    return-object v0
.end method

.method public d(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 2

    .line 9
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {p0}, Lfe/b;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/hisavana/common/bean/AdditionalInfo;->setErrorCode(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 12
    :cond_0
    iget-object v1, p0, Lfe/b;->h:Lee/s;

    invoke-virtual {v1, p1, v0}, Lee/s;->n(Lcom/hisavana/common/bean/TAdErrorCode;Lcom/hisavana/common/bean/AdditionalInfo;)V

    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 1

    .line 1
    new-instance v0, Lfe/b$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lfe/b$b;-><init>(Lfe/b;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lfe/b;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public enterScene(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, ""

    .line 10
    .line 11
    const-string v2, "TBaseAd"

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string p2, "appId is empty"

    .line 20
    .line 21
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v1

    .line 25
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string p2, "you should init first"

    .line 36
    .line 37
    invoke-virtual {p1, v2, p2}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_1
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/Preconditions;->a()V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/DeviceUtil;->o()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {p0, v0, p1, p2}, Lfe/b;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lfe/b;->n:Ljava/util/LinkedHashMap;

    .line 52
    .line 53
    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    const/16 v1, 0x18

    .line 58
    .line 59
    if-lt p2, v1, :cond_2

    .line 60
    .line 61
    iget-object p2, p0, Lfe/b;->n:Ljava/util/LinkedHashMap;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_2

    .line 76
    .line 77
    iget-object v1, p0, Lfe/b;->n:Ljava/util/LinkedHashMap;

    .line 78
    .line 79
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-virtual {v1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object p2, p0, Lfe/b;->n:Ljava/util/LinkedHashMap;

    .line 87
    .line 88
    invoke-virtual {p2, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method public final f()Lcom/hisavana/common/bean/AdditionalInfo;
    .locals 2

    .line 1
    new-instance v0, Lcom/hisavana/common/bean/AdditionalInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/hisavana/common/bean/AdditionalInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lfe/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setPlacementId(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lk7/c;->d()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMcc(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lfe/b;->x:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setTriggerId(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setTrafficGroupId(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setExperimentGroupId(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {}, Lk7/c;->l()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setSdkVersion(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object v0
.end method

.method public final g()Lee/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p0, Lfe/b;->d:Lee/c;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lee/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lfe/b;->d:Lee/c;

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lfe/b;->d:Lee/c;

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public getSupportFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lfe/b;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public getTopPrice(I)D
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-object v0, p0, Lfe/b;->a:Ljava/lang/String;

    .line 11
    .line 12
    iget-boolean v1, p0, Lfe/b;->q:Z

    .line 13
    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/hisavana/common/bean/AdCache;->getMaxPrice(Ljava/lang/String;Z)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    return-wide v0
.end method

.method public final h()Lcom/hisavana/common/bean/Network;
    .locals 3

    .line 1
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lcom/hisavana/common/bean/Network;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-nez v2, :cond_0

    .line 44
    .line 45
    return-object v1

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    return-object v0
.end method

.method public hasAd()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, "TBaseAd"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v3, "appId is empty"

    .line 19
    .line 20
    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return v2

    .line 24
    :cond_0
    invoke-static {}, Lcom/cloud/sdk/commonutil/util/e;->h()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v3, "you should init first"

    .line 35
    .line 36
    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return v2

    .line 40
    :cond_1
    iget-boolean v0, p0, Lfe/b;->m:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    const/4 v0, 0x3

    .line 45
    invoke-virtual {p0, v2, v0}, Lfe/b;->a(ZI)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v3, "current object is destroyed"

    .line 53
    .line 54
    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return v2

    .line 58
    :cond_2
    iget-object v0, p0, Lfe/b;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    const/4 v0, 0x4

    .line 67
    invoke-virtual {p0, v2, v0}, Lfe/b;->a(ZI)V

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const-string v3, "isReady,mAdUnit is null"

    .line 75
    .line 76
    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return v2

    .line 80
    :cond_3
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 81
    .line 82
    if-nez v0, :cond_4

    .line 83
    .line 84
    iget-object v0, p0, Lfe/b;->a:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v0}, Lee/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 91
    .line 92
    :cond_4
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 93
    .line 94
    if-nez v0, :cond_5

    .line 95
    .line 96
    const/4 v0, 0x5

    .line 97
    invoke-virtual {p0, v2, v0}, Lfe/b;->a(ZI)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const-string v3, "isReady,mCodeSeatConfig is null"

    .line 105
    .line 106
    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return v2

    .line 110
    :cond_5
    invoke-virtual {p0, v0}, Lfe/b;->b(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/common/bean/TAdErrorCode;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-virtual {p0, v2, v0}, Lfe/b;->a(ZI)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v3, "isReady,cloud control inspection failed"

    .line 128
    .line 129
    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return v2

    .line 133
    :cond_6
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    invoke-static {v0}, Lcom/hisavana/common/manager/AdCacheManager;->getCache(I)Lcom/hisavana/common/bean/AdCache;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    if-nez v0, :cond_7

    .line 148
    .line 149
    const/4 v0, 0x6

    .line 150
    invoke-virtual {p0, v2, v0}, Lfe/b;->a(ZI)V

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v3, "isReady,no ad cache"

    .line 158
    .line 159
    invoke-virtual {v0, v1, v3}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    return v2

    .line 163
    :cond_7
    iget-object v3, p0, Lfe/b;->a:Ljava/lang/String;

    .line 164
    .line 165
    iget-boolean v4, p0, Lfe/b;->q:Z

    .line 166
    .line 167
    invoke-virtual {v0, v3, v4}, Lcom/hisavana/common/bean/AdCache;->hasAds(Ljava/lang/String;Z)Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string v5, "isReady key "

    .line 181
    .line 182
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object v5, p0, Lfe/b;->a:Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v5, " hasAd "

    .line 191
    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v3, v1, v4}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v0, v2}, Lfe/b;->a(ZI)V

    .line 206
    .line 207
    .line 208
    return v0
.end method

.method public final i()Lcom/hisavana/common/interfacz/ICacheAd;
    .locals 4

    .line 1
    iget-object v0, p0, Lfe/b;->d:Lee/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lee/c;->G()Lcom/hisavana/common/bean/AdCache;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lfe/b;->a:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v2, p0, Lfe/b;->q:Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/hisavana/common/bean/AdCache;->getCache(Ljava/lang/String;ZIZ)Lcom/hisavana/common/interfacz/ICacheAd;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfe/b;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lee/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lfe/b;->d:Lee/c;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v1, p0, Lfe/b;->h:Lee/s;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lee/c;->o(Lee/s;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lfe/b;->d:Lee/c;

    .line 24
    .line 25
    iget-object v1, p0, Lfe/b;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lee/c;->k(Lcom/hisavana/common/utils/RunTimer;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lfe/b;->d:Lee/c;

    .line 31
    .line 32
    iget v1, p0, Lfe/b;->v:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lee/c;->R(I)V

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void

    .line 38
    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lfe/b;->d:Lee/c;

    .line 40
    .line 41
    return-void
.end method

.method public final k()V
    .locals 13

    .line 1
    iget-object v0, p0, Lfe/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lee/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    xor-int/2addr v1, v2

    .line 16
    invoke-virtual {p0, v0, v1}, Lfe/b;->b(ZI)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lfe/b;->m()V

    .line 20
    .line 21
    .line 22
    iget-boolean v1, p0, Lfe/b;->p:Z

    .line 23
    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lfe/b;->c()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CODE_AD_IS_SHOWING:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iput-boolean v0, p0, Lfe/b;->f:Z

    .line 39
    .line 40
    invoke-virtual {p0}, Lfe/b;->clearCurrentAd()V

    .line 41
    .line 42
    .line 43
    iput-boolean v2, p0, Lfe/b;->e:Z

    .line 44
    .line 45
    iget-boolean v1, p0, Lfe/b;->m:Z

    .line 46
    .line 47
    const-string v2, "ad_flow"

    .line 48
    .line 49
    const-string v3, "TBaseAd"

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 54
    .line 55
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CURRENT_OBJECT_IS_DESTROYED:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "TBaseAd -->current object haved been destroyed"

    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v0, "current object haved been destroyed"

    .line 70
    .line 71
    invoke-static {v3, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 86
    .line 87
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_INVALID_APP_ID:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 88
    .line 89
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v4, "TBaseAd --> Network request is invalid, the appId or appToken must be valid ----- Current app id is:"

    .line 102
    .line 103
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string v0, "loadAdInternal,appId is empty"

    .line 121
    .line 122
    invoke-static {v3, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_2
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 127
    .line 128
    if-nez v1, :cond_4

    .line 129
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 131
    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 133
    .line 134
    .line 135
    const-string v2, "loadAdInternal,config is null\uff1bcodeSeatId = "

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lfe/b;->a:Ljava/lang/String;

    .line 141
    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 153
    .line 154
    const/4 v0, 0x6

    .line 155
    invoke-static {v0}, Lcom/hisavana/mediation/config/CloudControlConfigSync;->b(I)V

    .line 156
    .line 157
    .line 158
    invoke-static {}, Ll7/a;->e()Ll7/a;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const-string v1, "cloud_config_error_code"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ll7/a;->f(Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_3

    .line 169
    .line 170
    invoke-static {v0}, Lcom/hisavana/common/constant/ComConstants;->transferCloudErrorCode(I)Lcom/hisavana/common/bean/TAdErrorCode;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 175
    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_3
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_UNIT_CONFIG_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 181
    .line 182
    .line 183
    :goto_0
    return-void

    .line 184
    :cond_4
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    iput v1, p0, Lfe/b;->o:I

    .line 193
    .line 194
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 195
    .line 196
    iget-object v4, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 197
    .line 198
    invoke-virtual {v4}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCloudControlEnable()Ljava/lang/Boolean;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    invoke-virtual {v1, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_5

    .line 207
    .line 208
    const-string v1, "loadAdInternal,config is closed"

    .line 209
    .line 210
    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 214
    .line 215
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CLOUD_AD_SEAT_IS_CLOSED:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 216
    .line 217
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 218
    .line 219
    .line 220
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const-string v1, "TBaseAd --> current ad unit is close "

    .line 225
    .line 226
    invoke-virtual {v0, v2, v1}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return-void

    .line 230
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 231
    .line 232
    .line 233
    move-result-wide v4

    .line 234
    invoke-static {v4, v5}, Lcom/cloud/hisavana/sdk/common/util/k0;->c(J)J

    .line 235
    .line 236
    .line 237
    move-result-wide v6

    .line 238
    invoke-static {v4, v5}, Lcom/cloud/hisavana/sdk/common/util/k0;->b(J)J

    .line 239
    .line 240
    .line 241
    move-result-wide v8

    .line 242
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 243
    .line 244
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v1

    .line 252
    if-eqz v1, :cond_f

    .line 253
    .line 254
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    const/4 v10, -0x1

    .line 265
    if-eq v1, v10, :cond_6

    .line 266
    .line 267
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 268
    .line 269
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayZeroClock()J

    .line 270
    .line 271
    .line 272
    move-result-wide v11

    .line 273
    cmp-long v1, v6, v11

    .line 274
    .line 275
    if-nez v1, :cond_6

    .line 276
    .line 277
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 278
    .line 279
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTodayShowTimes()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    iget-object v6, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 284
    .line 285
    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    if-lt v1, v6, :cond_6

    .line 294
    .line 295
    goto/16 :goto_4

    .line 296
    .line 297
    :cond_6
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 298
    .line 299
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_e

    .line 308
    .line 309
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 310
    .line 311
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-eq v1, v10, :cond_7

    .line 320
    .line 321
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 322
    .line 323
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourZeroClock()J

    .line 324
    .line 325
    .line 326
    move-result-wide v6

    .line 327
    cmp-long v1, v8, v6

    .line 328
    .line 329
    if-nez v1, :cond_7

    .line 330
    .line 331
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 332
    .line 333
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCurrentHourShowTimes()I

    .line 334
    .line 335
    .line 336
    move-result v1

    .line 337
    iget-object v6, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 338
    .line 339
    invoke-virtual {v6}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    if-lt v1, v6, :cond_7

    .line 348
    .line 349
    goto/16 :goto_3

    .line 350
    .line 351
    :cond_7
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 352
    .line 353
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getLastShowTime()J

    .line 354
    .line 355
    .line 356
    move-result-wide v6

    .line 357
    sub-long/2addr v4, v6

    .line 358
    const-wide/16 v6, 0x0

    .line 359
    .line 360
    cmp-long v1, v4, v6

    .line 361
    .line 362
    if-lez v1, :cond_8

    .line 363
    .line 364
    goto :goto_1

    .line 365
    :cond_8
    neg-long v4, v4

    .line 366
    :goto_1
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 367
    .line 368
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    int-to-long v6, v1

    .line 377
    const-wide/16 v8, -0x3e8

    .line 378
    .line 379
    cmp-long v1, v6, v8

    .line 380
    .line 381
    if-eqz v1, :cond_9

    .line 382
    .line 383
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 384
    .line 385
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 390
    .line 391
    .line 392
    move-result v1

    .line 393
    int-to-long v6, v1

    .line 394
    cmp-long v1, v4, v6

    .line 395
    .line 396
    if-gtz v1, :cond_9

    .line 397
    .line 398
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 399
    .line 400
    .line 401
    move-result-object v1

    .line 402
    const-string v4, "TBaseAd --> ad display did not reach the interval"

    .line 403
    .line 404
    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    .line 408
    .line 409
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .line 411
    .line 412
    const-string v2, "ad display did not reach the interval,time "

    .line 413
    .line 414
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    iget-object v2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 418
    .line 419
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowTimeInterval()Ljava/lang/Integer;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 434
    .line 435
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_NOT_IN_INTERVAL:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 436
    .line 437
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :cond_9
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 442
    .line 443
    invoke-virtual {p0, v1}, Lfe/b;->c(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)I

    .line 444
    .line 445
    .line 446
    move-result v1

    .line 447
    iput v1, p0, Lfe/b;->k:I

    .line 448
    .line 449
    invoke-virtual {p0}, Lfe/b;->j()V

    .line 450
    .line 451
    .line 452
    invoke-virtual {p0}, Lfe/b;->e()I

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    invoke-virtual {p0, v1}, Lfe/b;->a(I)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-nez v1, :cond_a

    .line 461
    .line 462
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    const-string v4, "TBaseAd --> code seat type does not match request type"

    .line 467
    .line 468
    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    new-instance v1, Ljava/lang/StringBuilder;

    .line 472
    .line 473
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    .line 475
    .line 476
    const-string v2, "code seat type does not match request type ---> "

    .line 477
    .line 478
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    iget-object v2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 482
    .line 483
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatType()Ljava/lang/Integer;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 498
    .line 499
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_TYPE_LOAD_INCONSISTENCY:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 500
    .line 501
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 502
    .line 503
    .line 504
    return-void

    .line 505
    :cond_a
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 506
    .line 507
    invoke-static {v1}, Lee/m;->a(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    iput-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 512
    .line 513
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    if-nez v1, :cond_d

    .line 518
    .line 519
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    const-string v4, "TBaseAd --> net error "

    .line 524
    .line 525
    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    const-string v1, "net error"

    .line 529
    .line 530
    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 531
    .line 532
    .line 533
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 534
    .line 535
    invoke-virtual {p0}, Lfe/b;->h()Lcom/hisavana/common/bean/Network;

    .line 536
    .line 537
    .line 538
    move-result-object v0

    .line 539
    invoke-virtual {p0}, Lfe/b;->g()Lee/c;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    if-eqz v0, :cond_b

    .line 544
    .line 545
    if-eqz v1, :cond_b

    .line 546
    .line 547
    invoke-virtual {v1}, Lee/c;->d0()Z

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    if-eqz v2, :cond_b

    .line 552
    .line 553
    iget-object v2, p0, Lfe/b;->z:Landroid/os/Bundle;

    .line 554
    .line 555
    invoke-virtual {v1, v2}, Lee/c;->g(Landroid/os/Bundle;)V

    .line 556
    .line 557
    .line 558
    iget-object v2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 559
    .line 560
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestCount()Ljava/lang/Integer;

    .line 561
    .line 562
    .line 563
    move-result-object v2

    .line 564
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 565
    .line 566
    .line 567
    move-result v2

    .line 568
    invoke-virtual {v1, v2}, Lee/c;->O(I)V

    .line 569
    .line 570
    .line 571
    iget-object v2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 572
    .line 573
    invoke-virtual {v1, v2, v0}, Lee/c;->r(Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;Lcom/hisavana/common/bean/Network;)Z

    .line 574
    .line 575
    .line 576
    move-result v0

    .line 577
    if-nez v0, :cond_c

    .line 578
    .line 579
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_NO_NETWORK_AND_OFFLINE:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 580
    .line 581
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 582
    .line 583
    .line 584
    goto :goto_2

    .line 585
    :cond_b
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_FILL_FAILED_WITH_NETWORK_EXCEPTION:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 586
    .line 587
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 588
    .line 589
    .line 590
    :cond_c
    :goto_2
    return-void

    .line 591
    :cond_d
    invoke-virtual {p0}, Lfe/b;->p()V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p0}, Lfe/b;->r()V

    .line 595
    .line 596
    .line 597
    return-void

    .line 598
    :cond_e
    :goto_3
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    const-string v4, "TBaseAd --> ad display has reached the limit of hours"

    .line 603
    .line 604
    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    .line 608
    .line 609
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 610
    .line 611
    .line 612
    const-string v2, "ad display has reached the limit of hour,hour showTimes "

    .line 613
    .line 614
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    iget-object v2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 618
    .line 619
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitHour()Ljava/lang/Integer;

    .line 620
    .line 621
    .line 622
    move-result-object v2

    .line 623
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 624
    .line 625
    .line 626
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 627
    .line 628
    .line 629
    move-result-object v1

    .line 630
    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    .line 632
    .line 633
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 634
    .line 635
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_HOUR:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 636
    .line 637
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 638
    .line 639
    .line 640
    return-void

    .line 641
    :cond_f
    :goto_4
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 642
    .line 643
    .line 644
    move-result-object v1

    .line 645
    const-string v4, "TBaseAd --> ad show times can not exceed day show max"

    .line 646
    .line 647
    invoke-virtual {v1, v2, v4}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    .line 651
    .line 652
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .line 654
    .line 655
    const-string v2, "ad show times reach the limit of day,day showTimes "

    .line 656
    .line 657
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    iget-object v2, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 661
    .line 662
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdShowCountLimitDay()Ljava/lang/Integer;

    .line 663
    .line 664
    .line 665
    move-result-object v2

    .line 666
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 667
    .line 668
    .line 669
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    invoke-static {v3, v1}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    .line 675
    .line 676
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 677
    .line 678
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SHOW_TIMES_OUT_OF_DAY:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 679
    .line 680
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 681
    .line 682
    .line 683
    return-void
.end method

.method public l()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lfe/b;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lfe/b;->i()Lcom/hisavana/common/interfacz/ICacheAd;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setSource(Ljava/lang/Integer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getApplicationId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationId(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getApplicationKey()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setApplicationKey(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getCodeSeatId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setCodeSeatId(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Lcom/hisavana/common/bean/Network;->getPrice()Ljava/lang/Double;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setEcpm(Ljava/lang/Double;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v2}, Lcom/hisavana/common/utils/AdUtil;->isWaterFall(Lcom/hisavana/common/bean/Network;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    const-string v3, "estimated"

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const-string v3, "exact"

    .line 69
    .line 70
    :goto_1
    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setPrecision(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const-string v3, "USD"

    .line 74
    .line 75
    invoke-virtual {v0, v3}, Lcom/hisavana/common/bean/AdditionalInfo;->setCurrency(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-static {v2}, Lcom/hisavana/common/utils/AdUtil;->isBiddingNetwork(Lcom/hisavana/common/bean/Network;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v0, v2}, Lcom/hisavana/common/bean/AdditionalInfo;->setBidding(Ljava/lang/Boolean;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-interface {v1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Lcom/hisavana/common/bean/AdditionalInfo;->setMediatorSource(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_4
    iget-object v1, p0, Lfe/b;->h:Lee/s;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Lee/s;->c(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public loadAd()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lfe/b;->b(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lfe/b;->f()Lcom/hisavana/common/bean/AdditionalInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lfe/b;->h:Lee/s;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lee/s;->q(Lcom/hisavana/common/bean/AdditionalInfo;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdNativeInfo;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final o()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lee/s;->h(Lcom/hisavana/common/interfacz/TAdListener;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lee/s;->g(Lcom/hisavana/common/interfacz/OnSkipListener;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lee/s;->i(Lcom/hisavana/common/interfacz/TAdditionalListener;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-object v1, p0, Lfe/b;->h:Lee/s;

    .line 20
    .line 21
    iput-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 22
    .line 23
    invoke-static {}, Lcom/hisavana/common/mock/RecordTestInfo;->destroy()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lfe/b;->setIsShowing(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lfe/b;->clearCurrentAd()V

    .line 31
    .line 32
    .line 33
    iget-boolean v1, p0, Lfe/b;->e:Z

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    sget-object v1, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_CURRENT_OBJECT_IS_DESTROYED:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const v2, 0xea62

    .line 44
    .line 45
    .line 46
    const/4 v3, -0x1

    .line 47
    invoke-virtual {p0, v2, v1, v3}, Lfe/b;->trackingAdLoaded(ILjava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iput-boolean v0, p0, Lfe/b;->e:Z

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lfe/b;->m:Z

    .line 54
    .line 55
    return-void
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getAdRequestTimeout()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    mul-int/lit16 v0, v0, 0x3e8

    .line 14
    .line 15
    iput v0, p0, Lfe/b;->j:I

    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lfe/b;->j:I

    .line 18
    .line 19
    if-lez v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, Lfe/b;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    new-instance v0, Lcom/hisavana/common/utils/RunTimer;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/hisavana/common/utils/RunTimer;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lfe/b;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lfe/b;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->cancelTimeTask()V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lfe/b;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 38
    .line 39
    iget-object v1, p0, Lfe/b;->w:Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/hisavana/common/utils/RunTimer;->setTimeOutCallback(Lcom/hisavana/common/utils/RunTimer$TimeOutCallback;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lfe/b;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 45
    .line 46
    iget v1, p0, Lfe/b;->j:I

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/hisavana/common/utils/RunTimer;->setScheduleTime(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lfe/b;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->runTimerTask()V

    .line 54
    .line 55
    .line 56
    :cond_2
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfe/b;->d:Lee/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lee/c;->i0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final preload()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lfe/b;->loadAd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public q()V
    .locals 0

    .line 1
    return-void
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 2
    .line 3
    const-string v1, "TBaseAd"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "startLoadMediation codeSeat is null"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_UNIT_CONFIG_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "*----> TBaseAd - current cloudConfig is "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v3, "ad_flow"

    .line 46
    .line 47
    invoke-virtual {v0, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getNetworks()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p0}, Lfe/b;->g()Lee/c;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Lfe/b;->z:Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Lee/c;->g(Landroid/os/Bundle;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lfe/b;->b:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Lee/c;->q(Landroid/content/Context;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    const-string v0, "prepare for request failed"

    .line 85
    .line 86
    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_PREPARE_REQUEST_FAILED:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    return-void

    .line 95
    :cond_3
    :goto_0
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    const-string v2, "TBaseAd --> ad is empty "

    .line 100
    .line 101
    invoke-virtual {v0, v3, v2}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v0, "startLoadMediation,network is empty"

    .line 105
    .line 106
    invoke-static {v1, v0}, Lcom/hisavana/common/utils/MediaLogUtil;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_AD_SOURCE_LIST_IS_EMPTY:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lfe/b;->a(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfe/b;->d:Lee/c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lee/c;->m0()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfe/b;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/hisavana/common/utils/RunTimer;->cancelTimeTask()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lfe/b;->c:Lcom/hisavana/common/utils/RunTimer;

    .line 10
    .line 11
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

    .line 1
    iput-object p1, p0, Lfe/b;->r:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lfe/b;->s:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lfe/b;->t:Ljava/util/Map;

    .line 6
    .line 7
    return-void
.end method

.method public setCodeSeatType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lfe/b;->o:I

    .line 2
    .line 3
    return-void
.end method

.method public setContainVulgarContent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfe/b;->q:Z

    .line 2
    .line 3
    return-void
.end method

.method public setCurrActivityFullscreen(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfe/b;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method public setIsShowing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfe/b;->p:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLoaded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfe/b;->f:Z

    .line 2
    .line 3
    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lfe/b;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public setRequestBody(Lcom/hisavana/common/bean/TAdRequestBody;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lfe/b;->b()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody;->getScheduleTime()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lfe/b;->j:I

    .line 12
    .line 13
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody;->getAdListener()Lcom/hisavana/common/interfacz/TAdListener;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lee/s;->h(Lcom/hisavana/common/interfacz/TAdListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdRequestBody;->getAdditionalListener()Lcom/hisavana/common/interfacz/TAdditionalListener;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lee/s;->i(Lcom/hisavana/common/interfacz/TAdditionalListener;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .line 1
    new-instance v0, Lfe/b$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lfe/b$c;-><init>(Lfe/b;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/sdk/commonutil/util/Preconditions;->d(Lcom/cloud/sdk/commonutil/util/Preconditions$a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lfe/b;->h:Lee/s;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_TRIGGER_SHOW_ONLINE_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lfe/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lfe/b;->h:Lee/s;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lee/s;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v0, Lcom/hisavana/common/bean/TAdErrorCode;->ERROR_RIGGER_SHOW_OFFLINE_NO_AD:Lcom/hisavana/common/bean/TAdErrorCode;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lfe/b;->trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lfe/b;->h:Lee/s;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lee/s;->onShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public trackingAdLoaded(ILjava/lang/String;I)V
    .locals 26

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    const-string v2, "is_preload"

    .line 6
    .line 7
    const-string v3, "filling_ad_type"

    .line 8
    .line 9
    const-string v4, "request_num"

    .line 10
    .line 11
    const-string v5, "request_id"

    .line 12
    .line 13
    const-string v6, "is_retreatad"

    .line 14
    .line 15
    const-string v7, "ad_count"

    .line 16
    .line 17
    const-string v8, "priority"

    .line 18
    .line 19
    const-string v9, "biddingType"

    .line 20
    .line 21
    const-string v10, "request_type"

    .line 22
    .line 23
    const-string v11, "is_pre_trigger"

    .line 24
    .line 25
    const-string v12, "ad_type"

    .line 26
    .line 27
    const-string v13, "trigger_ts"

    .line 28
    .line 29
    const-string v14, "trigger_id"

    .line 30
    .line 31
    const-string v15, "bidding_price"

    .line 32
    .line 33
    const-string v0, "code_seat_id"

    .line 34
    .line 35
    move-object/from16 v16, v2

    .line 36
    .line 37
    const-string v2, "ad_trigger_status"

    .line 38
    .line 39
    move-object/from16 v17, v3

    .line 40
    .line 41
    :try_start_0
    iget-object v3, v1, Lfe/b;->z:Landroid/os/Bundle;

    .line 42
    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v2, "ad_flow"

    .line 50
    .line 51
    const-string v3, "mBundle is null"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3}, Lcom/cloud/sdk/commonutil/util/c;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto/16 :goto_b

    .line 59
    .line 60
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    .line 61
    .line 62
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 63
    .line 64
    .line 65
    move-object/from16 v18, v4

    .line 66
    .line 67
    iget-object v4, v1, Lfe/b;->z:Landroid/os/Bundle;

    .line 68
    .line 69
    invoke-virtual {v4, v14}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v3, v14, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v4, v1, Lfe/b;->z:Landroid/os/Bundle;

    .line 77
    .line 78
    move-object v14, v5

    .line 79
    invoke-virtual {v4, v13}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    invoke-virtual {v3, v13, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 84
    .line 85
    .line 86
    iget-object v4, v1, Lfe/b;->z:Landroid/os/Bundle;

    .line 87
    .line 88
    invoke-virtual {v4, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v3, v12, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 93
    .line 94
    .line 95
    iget-object v4, v1, Lfe/b;->z:Landroid/os/Bundle;

    .line 96
    .line 97
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-virtual {v3, v2, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    iget-object v4, v1, Lfe/b;->d:Lee/c;

    .line 105
    .line 106
    const/4 v5, 0x0

    .line 107
    if-eqz v4, :cond_1

    .line 108
    .line 109
    iget-object v13, v1, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 110
    .line 111
    if-eqz v13, :cond_1

    .line 112
    .line 113
    invoke-virtual {v4}, Lee/c;->G()Lcom/hisavana/common/bean/AdCache;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    iget-object v13, v1, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 118
    .line 119
    invoke-virtual {v13}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v13

    .line 123
    iget v12, v1, Lfe/b;->k:I

    .line 124
    .line 125
    move-object/from16 v20, v14

    .line 126
    .line 127
    iget-boolean v14, v1, Lfe/b;->q:Z

    .line 128
    .line 129
    invoke-virtual {v4, v13, v5, v12, v14}, Lcom/hisavana/common/bean/AdCache;->getCache(Ljava/lang/String;ZIZ)Lcom/hisavana/common/interfacz/ICacheAd;

    .line 130
    .line 131
    .line 132
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    goto :goto_0

    .line 134
    :cond_1
    move-object/from16 v20, v14

    .line 135
    .line 136
    const/4 v4, 0x0

    .line 137
    :goto_0
    const-string v12, "platform"

    .line 138
    .line 139
    if-eqz v4, :cond_5

    .line 140
    .line 141
    :try_start_1
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getEcpmPrice()D

    .line 142
    .line 143
    .line 144
    move-result-wide v13

    .line 145
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getNetwork()Lcom/hisavana/common/bean/Network;

    .line 146
    .line 147
    .line 148
    move-result-object v21

    .line 149
    instance-of v5, v4, Lcom/hisavana/common/base/BaseAd;

    .line 150
    .line 151
    if-eqz v5, :cond_2

    .line 152
    .line 153
    move-object v5, v4

    .line 154
    check-cast v5, Lcom/hisavana/common/base/BaseAd;

    .line 155
    .line 156
    iget-object v5, v5, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    instance-of v5, v4, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 160
    .line 161
    if-eqz v5, :cond_3

    .line 162
    .line 163
    move-object v5, v4

    .line 164
    check-cast v5, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 165
    .line 166
    invoke-virtual {v5}, Lcom/hisavana/common/bean/AdNativeInfo;->getNativeAdWrapper()Lcom/hisavana/common/bean/NativeAdWrapper;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-virtual {v5}, Lcom/hisavana/common/bean/NativeAdWrapper;->getAdImpl()Lcom/hisavana/common/base/BaseNative;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    iget-object v5, v5, Lcom/hisavana/common/base/BaseAd;->mBundle:Landroid/os/Bundle;

    .line 175
    .line 176
    :goto_1
    move-wide/from16 v22, v13

    .line 177
    .line 178
    goto :goto_2

    .line 179
    :cond_3
    move-wide/from16 v22, v13

    .line 180
    .line 181
    const/4 v5, 0x0

    .line 182
    :goto_2
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 183
    .line 184
    .line 185
    move-result-object v13

    .line 186
    const-string v14, "TBaseAd"

    .line 187
    .line 188
    move-object/from16 v24, v2

    .line 189
    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 191
    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .line 194
    .line 195
    move-object/from16 v25, v6

    .line 196
    .line 197
    const-string v6, "trackingAdLoaded --> isNative = "

    .line 198
    .line 199
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    instance-of v6, v4, Lcom/hisavana/common/bean/AdNativeInfo;

    .line 203
    .line 204
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    const-string v6, " \u8bbe\u7f6e\u6807\u8bc6\u7b26 contextBundle.PLATFORM="

    .line 208
    .line 209
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    if-eqz v5, :cond_4

    .line 213
    .line 214
    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    goto :goto_3

    .line 219
    :cond_4
    const/4 v6, 0x0

    .line 220
    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v13, v14, v2}, Lcom/cloud/sdk/commonutil/util/c;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v2, "is_offline_ad"

    .line 231
    .line 232
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    .line 233
    .line 234
    .line 235
    move-result v6

    .line 236
    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 237
    .line 238
    .line 239
    const-string v2, "mediator_source"

    .line 240
    .line 241
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    const-string v2, "mediator_code_seat_id"

    .line 249
    .line 250
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceUnitId()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    move-object/from16 v19, v21

    .line 258
    .line 259
    move-wide/from16 v13, v22

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :cond_5
    move-object/from16 v24, v2

    .line 263
    .line 264
    move-object/from16 v25, v6

    .line 265
    .line 266
    const-wide/16 v13, 0x0

    .line 267
    .line 268
    const/4 v5, 0x0

    .line 269
    const/16 v19, 0x0

    .line 270
    .line 271
    :goto_4
    invoke-virtual {v1, v3, v13, v14}, Lfe/b;->a(Landroid/os/Bundle;D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 272
    .line 273
    .line 274
    const-string v2, "app_id"

    .line 275
    .line 276
    if-eqz v5, :cond_8

    .line 277
    .line 278
    :try_start_2
    invoke-virtual {v5, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 279
    .line 280
    .line 281
    move-result v6

    .line 282
    invoke-virtual {v3, v11, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5, v10}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    invoke-virtual {v3, v10, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 293
    .line 294
    .line 295
    move-result v6

    .line 296
    invoke-virtual {v3, v12, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v5, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v6

    .line 303
    invoke-virtual {v3, v2, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v6

    .line 310
    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v5, v15}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 314
    .line 315
    .line 316
    move-result-wide v10

    .line 317
    invoke-virtual {v3, v15, v10, v11}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v5, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 321
    .line 322
    .line 323
    move-result v6

    .line 324
    invoke-virtual {v3, v9, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v5, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    invoke-virtual {v3, v8, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v5, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 335
    .line 336
    .line 337
    move-result v6

    .line 338
    invoke-virtual {v3, v7, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 339
    .line 340
    .line 341
    move-object/from16 v6, v25

    .line 342
    .line 343
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 344
    .line 345
    .line 346
    move-result v7

    .line 347
    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 348
    .line 349
    .line 350
    move-object/from16 v6, v20

    .line 351
    .line 352
    invoke-virtual {v5, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    new-instance v6, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    const-string v7, "adTrackingFilling code_seat_id:"

    .line 365
    .line 366
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    const-string v0, ",platform:"

    .line 377
    .line 378
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v5, v12}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    const-string v0, ",bidding_price:"

    .line 389
    .line 390
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v5, v15}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 394
    .line 395
    .line 396
    move-result-wide v7

    .line 397
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    move-object/from16 v0, v18

    .line 408
    .line 409
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 410
    .line 411
    .line 412
    move-result v6

    .line 413
    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 414
    .line 415
    .line 416
    move-object/from16 v0, v24

    .line 417
    .line 418
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    move-result v0

    .line 422
    const/4 v6, 0x1

    .line 423
    if-ne v0, v6, :cond_7

    .line 424
    .line 425
    const/4 v6, 0x3

    .line 426
    :cond_6
    :goto_5
    move-object/from16 v0, v17

    .line 427
    .line 428
    goto :goto_6

    .line 429
    :cond_7
    invoke-interface {v4}, Lcom/hisavana/common/interfacz/ICacheAd;->isOfflineAd()Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_6

    .line 434
    .line 435
    const/4 v6, 0x2

    .line 436
    goto :goto_5

    .line 437
    :goto_6
    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {v5, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 441
    .line 442
    .line 443
    move-object/from16 v0, v16

    .line 444
    .line 445
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    move-result v4

    .line 449
    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 450
    .line 451
    .line 452
    :cond_8
    const-string v0, "adTrackingFilling"

    .line 453
    .line 454
    invoke-static {v0}, Lcom/hisavana/common/mock/RecordTestInfo;->record(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    const-string v0, "cld_app_id"

    .line 458
    .line 459
    iget-object v4, v1, Lfe/b;->z:Landroid/os/Bundle;

    .line 460
    .line 461
    invoke-virtual {v4, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    const-string v0, "cld_code_seat_id"

    .line 469
    .line 470
    iget-object v2, v1, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 471
    .line 472
    const-string v4, ""

    .line 473
    .line 474
    if-nez v2, :cond_9

    .line 475
    .line 476
    move-object v2, v4

    .line 477
    goto :goto_7

    .line 478
    :cond_9
    :try_start_3
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getCodeSeatId()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    :goto_7
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    const-string v0, "is_timeout"

    .line 486
    .line 487
    const/4 v2, 0x0

    .line 488
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 489
    .line 490
    .line 491
    const-string v0, "error_code"

    .line 492
    .line 493
    move/from16 v5, p1

    .line 494
    .line 495
    invoke-virtual {v3, v0, v5}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 496
    .line 497
    .line 498
    const-string v0, "error_message"

    .line 499
    .line 500
    invoke-static/range {p2 .. p2}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 501
    .line 502
    .line 503
    move-result-object v6

    .line 504
    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    const-string v0, "filling_source"

    .line 508
    .line 509
    move/from16 v6, p3

    .line 510
    .line 511
    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 512
    .line 513
    .line 514
    const-string v0, "filling_ts"

    .line 515
    .line 516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 517
    .line 518
    .line 519
    move-result-wide v6

    .line 520
    invoke-virtual {v3, v0, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 521
    .line 522
    .line 523
    const-string v0, "installed_facebook"

    .line 524
    .line 525
    sget-boolean v6, Lcom/hisavana/common/constant/ComConstants;->isFbAppExist:Z

    .line 526
    .line 527
    invoke-virtual {v3, v0, v6}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 528
    .line 529
    .line 530
    const-string v0, "filter_count"

    .line 531
    .line 532
    iget-object v6, v1, Lfe/b;->d:Lee/c;

    .line 533
    .line 534
    if-nez v6, :cond_a

    .line 535
    .line 536
    goto :goto_8

    .line 537
    :cond_a
    invoke-virtual {v6}, Lee/c;->M()I

    .line 538
    .line 539
    .line 540
    move-result v2

    .line 541
    :goto_8
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 542
    .line 543
    .line 544
    const-string v0, "optimize_status"

    .line 545
    .line 546
    iget-object v2, v1, Lfe/b;->z:Landroid/os/Bundle;

    .line 547
    .line 548
    const-string v6, "optimize_status"

    .line 549
    .line 550
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 555
    .line 556
    .line 557
    const-string v0, "priority_code"

    .line 558
    .line 559
    iget-object v2, v1, Lfe/b;->z:Landroid/os/Bundle;

    .line 560
    .line 561
    const-string v6, "priority_code"

    .line 562
    .line 563
    invoke-virtual {v2, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    move-result v2

    .line 567
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 568
    .line 569
    .line 570
    iget-object v0, v1, Lfe/b;->d:Lee/c;

    .line 571
    .line 572
    if-eqz v0, :cond_b

    .line 573
    .line 574
    const-string v2, "max_price"

    .line 575
    .line 576
    invoke-virtual {v0}, Lee/c;->S()D

    .line 577
    .line 578
    .line 579
    move-result-wide v6

    .line 580
    invoke-virtual {v3, v2, v6, v7}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 581
    .line 582
    .line 583
    :cond_b
    sget-boolean v0, Lcom/hisavana/common/base/LogSwitch;->isDebug:Z

    .line 584
    .line 585
    if-eqz v0, :cond_c

    .line 586
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    .line 588
    .line 589
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 590
    .line 591
    .line 592
    const-string v2, "fill result code : "

    .line 593
    .line 594
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    sget v2, Lcom/hisavana/common/mock/RecordTestInfo;->LOG_CODE7:I

    .line 605
    .line 606
    invoke-static {v0, v2}, Lcom/hisavana/common/mock/RecordTestInfo;->LogMsg(Ljava/lang/String;I)V

    .line 607
    .line 608
    .line 609
    :cond_c
    const-string v0, "is_contain_vulgar"

    .line 610
    .line 611
    iget-boolean v2, v1, Lfe/b;->q:Z

    .line 612
    .line 613
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 614
    .line 615
    .line 616
    if-eqz v19, :cond_d

    .line 617
    .line 618
    const-string v0, "price_coefficient"

    .line 619
    .line 620
    invoke-virtual/range {v19 .. v19}, Lcom/hisavana/common/bean/Network;->getShowPriceCoefficient()Ljava/math/BigDecimal;

    .line 621
    .line 622
    .line 623
    move-result-object v2

    .line 624
    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    .line 625
    .line 626
    .line 627
    move-result-wide v5

    .line 628
    invoke-virtual {v3, v0, v5, v6}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 629
    .line 630
    .line 631
    invoke-virtual/range {v19 .. v19}, Lcom/hisavana/common/bean/Network;->getSource()Ljava/lang/Integer;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    invoke-virtual {v3, v12, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 640
    .line 641
    .line 642
    :cond_d
    const-string v0, "traffic_group_id"

    .line 643
    .line 644
    iget-object v2, v1, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 645
    .line 646
    if-nez v2, :cond_e

    .line 647
    .line 648
    move-object v2, v4

    .line 649
    goto :goto_9

    .line 650
    :cond_e
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v2

    .line 654
    :goto_9
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    const-string v0, "experiment_group_id"

    .line 658
    .line 659
    iget-object v2, v1, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 660
    .line 661
    if-nez v2, :cond_f

    .line 662
    .line 663
    goto :goto_a

    .line 664
    :cond_f
    invoke-virtual {v2}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v4

    .line 668
    :goto_a
    invoke-virtual {v3, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    invoke-static {v3}, Lcom/hisavana/common/tracking/TrackingManager;->trackingAdLoaded(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 672
    .line 673
    .line 674
    goto :goto_c

    .line 675
    :goto_b
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 676
    .line 677
    .line 678
    move-result-object v2

    .line 679
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v0

    .line 683
    invoke-virtual {v2, v0}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;)V

    .line 684
    .line 685
    .line 686
    :goto_c
    return-void
.end method

.method public trackingTriggerShowError(Lcom/hisavana/common/bean/TAdErrorCode;)V
    .locals 7

    .line 1
    const-string v0, "platform"

    .line 2
    .line 3
    const-string v1, "bidding_price"

    .line 4
    .line 5
    new-instance v2, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v3, p0, Lfe/b;->z:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    const-string v4, "trigger_ts"

    .line 13
    .line 14
    const-string v5, "trigger_id"

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-virtual {v3, v5}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v3, p0, Lfe/b;->z:Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v5

    .line 31
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    iget-object v3, p0, Lfe/b;->z:Landroid/os/Bundle;

    .line 35
    .line 36
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lfe/b;->z:Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception p1

    .line 54
    goto/16 :goto_1

    .line 55
    .line 56
    :cond_0
    invoke-static {}, Lcom/hisavana/common/tracking/TrackingUtil;->getTriggerId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    invoke-virtual {v2, v4, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 68
    .line 69
    .line 70
    :goto_0
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 71
    .line 72
    if-nez v0, :cond_1

    .line 73
    .line 74
    iget-object v0, p0, Lfe/b;->a:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0}, Lee/h;->a(Ljava/lang/String;)Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 81
    .line 82
    :cond_1
    const-string v0, "cld_app_id"

    .line 83
    .line 84
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "app_id"

    .line 92
    .line 93
    invoke-static {}, Lcom/hisavana/mediation/config/TAdManager;->getAppId()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    const-string v0, "code_seat_id"

    .line 101
    .line 102
    iget-object v1, p0, Lfe/b;->a:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    const-string v0, "cld_code_seat_id"

    .line 108
    .line 109
    iget-object v1, p0, Lfe/b;->a:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string v0, "ad_type"

    .line 115
    .line 116
    invoke-virtual {p0}, Lfe/b;->e()I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 124
    .line 125
    if-eqz v0, :cond_2

    .line 126
    .line 127
    const-string v1, "traffic_group_id"

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getTrafficGroupId()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v2, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v0, "experiment_group_id"

    .line 137
    .line 138
    iget-object v1, p0, Lfe/b;->g:Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;

    .line 139
    .line 140
    invoke-virtual {v1}, Lcom/hisavana/mediation/bean/CloudControlConfig$CodeSeat;->getExperimentGroupId()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_2
    if-eqz p1, :cond_3

    .line 148
    .line 149
    const-string v0, "error_code"

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorCode()I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string v0, "error_message"

    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->getErrorMessage()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p1}, Lcom/hisavana/common/bean/TAdErrorCode;->simpleErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    :cond_3
    const-string p1, "is_offline"

    .line 176
    .line 177
    const/4 v0, 0x0

    .line 178
    invoke-static {v0}, Lcom/cloud/hisavana/sdk/manager/NetStateManager;->checkNetworkState(Z)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    xor-int/lit8 v0, v0, 0x1

    .line 183
    .line 184
    invoke-virtual {v2, p1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lfe/b;->i()Lcom/hisavana/common/interfacz/ICacheAd;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_4

    .line 192
    .line 193
    const-string v0, "mediator_source"

    .line 194
    .line 195
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceName()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    const-string v0, "mediator_code_seat_id"

    .line 203
    .line 204
    invoke-interface {p1}, Lcom/hisavana/common/interfacz/ICacheAd;->getMediatorSourceUnitId()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-virtual {v2, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_4
    invoke-static {v2}, Lcom/hisavana/common/tracking/TrackingManager;->trackingTriggerShow(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    .line 213
    .line 214
    goto :goto_2

    .line 215
    :goto_1
    invoke-static {}, Lcom/hisavana/common/utils/AdLogUtil;->Log()Lcom/hisavana/common/utils/AdLogUtil;

    .line 216
    .line 217
    .line 218
    move-result-object v0

    .line 219
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    const-string v1, "ad_flow"

    .line 224
    .line 225
    invoke-virtual {v0, v1, p1}, Lcom/cloud/sdk/commonutil/util/c;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :goto_2
    return-void
.end method
