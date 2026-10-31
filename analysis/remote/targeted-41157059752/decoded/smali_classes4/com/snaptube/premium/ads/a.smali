.class public Lcom/snaptube/premium/ads/a;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ca3;
.implements Lo/cj0$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snaptube/premium/ads/a$d;
    }
.end annotation


# static fields
.field public static g:Ljava/lang/String;

.field public static final h:Lcom/snaptube/ads_log_v2/AdLogAttributionCache$c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/content/SharedPreferences;

.field c:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/bg5;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "app"
    .end annotation
.end field

.field public d:Lo/wu7;

.field public final e:Ljava/util/HashMap;

.field public final f:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snaptube/premium/ads/a$a;

    invoke-direct {v0}, Lcom/snaptube/premium/ads/a$a;-><init>()V

    sput-object v0, Lcom/snaptube/premium/ads/a;->h:Lcom/snaptube/ads_log_v2/AdLogAttributionCache$c;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/snaptube/premium/ads/a$c;

    invoke-direct {v0, p0}, Lcom/snaptube/premium/ads/a$c;-><init>(Lcom/snaptube/premium/ads/a;)V

    iput-object v0, p0, Lcom/snaptube/premium/ads/a;->f:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-static {p1}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/app/a;

    invoke-interface {v0, p0}, Lcom/snaptube/premium/app/a;->i0(Lcom/snaptube/premium/ads/a;)V

    const-string v0, "pref.fan"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0x8

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object p1, p0, Lcom/snaptube/premium/ads/a;->e:Ljava/util/HashMap;

    return-void
.end method

.method public static synthetic S(Lcom/snaptube/premium/ads/a;Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/ads/a;->k0(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public static synthetic T(Ljava/util/Map$Entry;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/premium/ads/a;->i0(Ljava/util/Map$Entry;)V

    return-void
.end method

.method public static synthetic U(Lcom/snaptube/premium/ads/a;)V
    .locals 0

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/a;->j0()V

    return-void
.end method

.method public static synthetic V(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcom/snaptube/premium/ads/a;->l0(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic W(Lcom/snaptube/premium/ads/a;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/snaptube/premium/ads/a;->f0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static a0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snaptube/premium/ads/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic i0(Ljava/util/Map$Entry;)V
    .locals 1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/fc1;->a(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/sn;

    invoke-interface {v0}, Lo/sn;->H0()Lo/gb;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lo/jb;->e(Ljava/lang/String;)Lo/jb;

    move-result-object p0

    invoke-interface {v0, p0}, Lo/gb;->c(Lo/jb;)V

    return-void
.end method

.method public static synthetic l0(Ljava/lang/Throwable;)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static p0(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/snaptube/premium/ads/a;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/block_config/user_tags"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public B()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/vungle/block_normal_replacements"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/mintegral/meta_white_list"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public D()I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/tracker/ad_track_video_visibility_polling_interval"

    const/16 v2, 0xc8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public E()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/mintegral/meta_black_list"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public F(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/impression_quota/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public G(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ad_unit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public H()D
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/start_download_interstitial/preload_block_percentage"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public I(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/max_stale/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x36ee80

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public J()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/vungle/catch_checkpoint0_url"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public K()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/ad_client_bidding_strategy"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public L(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/should_show_loading_on_web_click"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public M()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/impression_frequency_control_strategy/is_remove_cache"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public N()J
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/banner/auto_refresh_interval"

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public O(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/impression_timeout_quota/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/a;->Y()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public P()I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/tracker/ad_track_visibility_polling_interval"

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Q()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/tracker/ad_track_enable_impression_realtime"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public R()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/vungle/normal_replacements"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public X(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final Y()I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/impression_timeout_quota/default"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Z(Ljava/lang/String;)Lcom/snaptube/premium/ads/a$d;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/snaptube/premium/ads/a;->e:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/snaptube/premium/ads/a$d;

    if-nez v2, :cond_0

    new-instance v2, Lcom/snaptube/premium/ads/a$d;

    iget-object v3, v0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/start_pos"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v3, v0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/step"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iget-object v3, v0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/steps"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v3, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v3, v0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/placements_num"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    iget-object v3, v0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/twice_confirm"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v11, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    iget-object v3, v0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "/sub_items_num"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    iget-object v3, v0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/stagger_small_layouts"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v3, v13, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-object v3, v0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "flavor"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v3, v14, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v14

    iget-object v3, v0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "flavors"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v3, v0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/impression_gap"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x5

    invoke-interface {v3, v6, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    iget-object v3, v0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/display_interval"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    invoke-interface {v3, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    move-object v3, v2

    move v5, v7

    move-object v6, v8

    move v7, v10

    move v8, v11

    move v9, v12

    move-object v10, v13

    move v11, v14

    move-object v12, v15

    move/from16 v13, v16

    move v14, v1

    invoke-direct/range {v3 .. v14}, Lcom/snaptube/premium/ads/a$d;-><init>(IILjava/lang/String;IZILjava/lang/String;ILjava/lang/String;II)V

    :cond_0
    return-object v2
.end method

.method public a()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/infomobi1/enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/vungle/vm_urls"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public b0(Ljava/lang/String;)I
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const-string v0, "small_screen_pixels"

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {p0, p1, v0, v1}, Lcom/snaptube/premium/ads/a;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-eqz v2, :cond_1

    if-lez v0, :cond_1

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-gt v2, v0, :cond_1

    const-string v0, "small_screen_flavor"

    invoke-virtual {p0, p1, v0, v1}, Lcom/snaptube/premium/ads/a;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    const-string v0, "flavor"

    invoke-virtual {p0, p1, v0, v1}, Lcom/snaptube/premium/ads/a;->d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/ad_frequency_control_rules/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c0(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public d()J
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/new_water_fall/banner_show_delay"

    const/16 v2, 0x8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public d0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    const-class v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    const-string v2, "/"

    if-eq p3, v0, :cond_4

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_0

    goto :goto_1

    :cond_0
    const-class v0, Ljava/lang/Boolean;

    if-eq p3, v0, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    const-class v0, Ljava/lang/String;

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_0
    iget-object p3, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    iget-object p3, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)J
    .locals 2

    sget-object v0, Lcom/snaptube/plugin/extension/DownloadEventLocalRecorder;->a:Lcom/snaptube/plugin/extension/DownloadEventLocalRecorder;

    invoke-virtual {v0, p1}, Lcom/snaptube/plugin/extension/DownloadEventLocalRecorder;->g(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final e0()V
    .locals 15

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_FEEDSTREAM:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/snaptube/premium/ads/a$d;

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "26,26,26"

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/snaptube/premium/ads/a$d;-><init>(IILjava/lang/String;IZILjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_YOUTUBE_DETAILS_BANNER:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/snaptube/premium/ads/a$d;

    const/4 v13, 0x3

    const/4 v4, 0x3

    const-string v11, "18,18,18"

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/snaptube/premium/ads/a$d;-><init>(IILjava/lang/String;IZILjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->NATIVE_MYFILE_ALL_PLAY_LIST:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/snaptube/premium/ads/a$d;

    const/16 v13, 0x8

    const/4 v3, 0x2

    const/16 v4, 0x8

    const-string v11, "25,25,25"

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/snaptube/premium/ads/a$d;-><init>(IILjava/lang/String;IZILjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->e:Ljava/util/HashMap;

    sget-object v1, Lcom/snaptube/ads/base/AdsPos;->SEARCH_VIDEO_RESULT:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v1}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v1

    new-instance v14, Lcom/snaptube/premium/ads/a$d;

    const/16 v13, 0xa

    const/16 v4, 0xa

    const/4 v11, 0x0

    move-object v2, v14

    invoke-direct/range {v2 .. v13}, Lcom/snaptube/premium/ads/a$d;-><init>(IILjava/lang/String;IZILjava/lang/String;ILjava/lang/String;II)V

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public f()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/ad_error_stack_log/enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final f0(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v2, "/ad_analytics_report/rate"

    const/16 v3, 0x64

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->u1()I

    move-result v2

    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v2, "/ad_analytics_report/enabled"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method public g()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/ad_cache_strategy"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public g0()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/locker_music_player/enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/tracker/ad_track_impression_mapping_field"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h0()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/app_upload/enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/hot_splash/background_delayed_preload_enable"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/splash_ad_from_push/enable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final synthetic j0()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.snaptube.premium.ad.analytics.REPORT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lo/z54;->b(Landroid/content/Context;)Lo/z54;

    move-result-object v1

    iget-object v2, p0, Lcom/snaptube/premium/ads/a;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lo/z54;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/z54;->b(Landroid/content/Context;)Lo/z54;

    move-result-object v0

    new-instance v1, Lcom/snaptube/premium/ads/splash/AdClickEventReceiver;

    invoke-direct {v1}, Lcom/snaptube/premium/ads/splash/AdClickEventReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "event_internal_ad_click"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lo/z54;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "log.apk.downloaded"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "log.apk.installed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "log.apk.start.download"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver;

    invoke-direct {v1}, Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver;-><init>()V

    new-instance v2, Lcom/snaptube/ads/selfbuild/c;

    invoke-direct {v2}, Lcom/snaptube/ads/selfbuild/c;-><init>()V

    invoke-virtual {v1, v2}, Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver;->a(Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver$a;)V

    invoke-static {}, Lcom/snaptube/ads/selfbuild/b;->c()Lcom/snaptube/ads/selfbuild/b;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver;->a(Lcom/snaptube/ads/selfbuild/ApkBroadCastReceiver$a;)V

    iget-object v2, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lo/z54;->b(Landroid/content/Context;)Lo/z54;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lo/z54;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public k(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/cumulative_show_timestamp_quota/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic k0(Lcom/wandoujia/base/utils/RxBus$d;)V
    .locals 2

    iget v0, p1, Lcom/wandoujia/base/utils/RxBus$d;->a:I

    const/16 v1, 0x41c

    if-ne v0, v1, :cond_1

    invoke-static {}, Lo/s5;->f()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object p1, p1, Lcom/wandoujia/base/utils/RxBus$d;->e:Ljava/lang/Object;

    check-cast p1, Lnet/pubnative/mediation/request/model/PubnativeAdModel;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/snaptube/premium/ads/a;->m0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V

    :cond_0
    const p1, 0x7f110041

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lo/yh7;->b(Landroid/app/Activity;II)Lo/yh7$c;

    move-result-object p1

    invoke-virtual {p1}, Lo/yh7$c;->f()V

    :cond_1
    return-void
.end method

.method public l()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/vungle/catch_all_normal_replacement"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m()Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/impression_frequency_control_strategy/is_cancel_request"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public final m0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Lcom/snaptube/premium/ads/a$b;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/snaptube/premium/ads/a$b;-><init>(Lcom/snaptube/premium/ads/a;Lnet/pubnative/mediation/request/model/PubnativeAdModel;J)V

    invoke-static {v2}, Lcom/wandoujia/base/utils/ThreadPool;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public n()J
    .locals 2

    sget-object v0, Lcom/snaptube/plugin/extension/DownloadEventLocalRecorder;->a:Lcom/snaptube/plugin/extension/DownloadEventLocalRecorder;

    invoke-virtual {v0}, Lcom/snaptube/plugin/extension/DownloadEventLocalRecorder;->f()J

    move-result-wide v0

    return-wide v0
.end method

.method public n0()V
    .locals 6

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->k1()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->M()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lo/xd;

    invoke-direct {v3, v1}, Lo/xd;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lo/ua;->a:Lo/ua;

    invoke-virtual {v0, p1}, Lo/ua;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final o0()V
    .locals 1

    new-instance v0, Lo/ae;

    invoke-direct {v0, p0}, Lo/ae;-><init>(Lcom/snaptube/premium/ads/a;)V

    invoke-static {v0}, Lo/y48;->k(Ljava/lang/Runnable;)V

    return-void
.end method

.method public p()J
    .locals 5

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/banner/scroll_refresh_interval"

    const/16 v2, 0x3c

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public q()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/fullscreen_joint_frequency_control"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public q0()V
    .locals 3

    sget-object v0, Lcom/snaptube/ad/tracker/TrackManager;->a:Lcom/snaptube/ad/tracker/TrackManager;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lo/ca;->a:Lo/ca;

    new-instance v1, Lcom/snaptube/ads/base/network/DoHEnabledAdNetworkConfig;

    iget-object v2, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/snaptube/ads/base/network/DoHEnabledAdNetworkConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lo/ca;->c(Lo/ba;)V

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lo/cj0;->k(Landroid/content/Context;)Lo/cj0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/cj0;->f(Lo/cj0$d;)V

    :cond_0
    invoke-virtual {p0}, Lcom/snaptube/premium/ads/a;->o0()V

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/a;->r0()V

    invoke-static {}, Lcom/snaptube/ads_log_v2/b;->g()Lcom/snaptube/ads_log_v2/b;

    invoke-static {}, Lo/s7;->y()Lo/s7;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/s7;->B(Lo/ca3;)V

    invoke-static {}, Lcom/snaptube/adLog/AdLogDiskCache;->b()Lcom/snaptube/adLog/AdLogDiskCache;

    invoke-static {}, Lcom/snaptube/premium/ads/SplashAdManager;->d0()Lcom/snaptube/premium/ads/SplashAdManager;

    invoke-static {}, Lcom/snaptube/ads_log_v2/AdLogAttributionCache;->j()Lcom/snaptube/ads_log_v2/AdLogAttributionCache;

    move-result-object v0

    sget-object v1, Lcom/snaptube/premium/ads/a;->h:Lcom/snaptube/ads_log_v2/AdLogAttributionCache$c;

    invoke-virtual {v0, v1}, Lcom/snaptube/ads_log_v2/AdLogAttributionCache;->g(Lcom/snaptube/ads_log_v2/AdLogAttributionCache$c;)V

    invoke-static {}, Lcom/snaptube/ads/feedback/AdFeedbackDataManager;->p()Lcom/snaptube/ads/feedback/AdFeedbackDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/snaptube/premium/ads/a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/snaptube/ads/feedback/AdFeedbackDataManager;->t(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/snaptube/premium/ads/a;->e0()V

    sget-object v0, Lcom/snaptube/premium/ads/DownloadedPackageNameCache;->a:Lcom/snaptube/premium/ads/DownloadedPackageNameCache;

    invoke-virtual {v0}, Lcom/snaptube/premium/ads/DownloadedPackageNameCache;->f()V

    return-void
.end method

.method public r()I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/tracker/ad_track_attach_polling_interval"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public final r0()V
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->d:Lo/wu7;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/wu7;->unsubscribe()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snaptube/premium/ads/a;->d:Lo/wu7;

    :cond_0
    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    const/16 v1, 0x41c

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object v0

    sget-object v1, Lcom/wandoujia/base/utils/RxBus;->f:Lcom/wandoujia/base/utils/RxBus$e;

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/yd;

    invoke-direct {v1, p0}, Lo/yd;-><init>(Lcom/snaptube/premium/ads/a;)V

    new-instance v2, Lo/zd;

    invoke-direct {v2}, Lo/zd;-><init>()V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    move-result-object v0

    iput-object v0, p0, Lcom/snaptube/premium/ads/a;->d:Lo/wu7;

    return-void
.end method

.method public s()I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/tracker/ad_track_video_viewable_min_duration"

    const/16 v2, 0x7d0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public s0(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/show_cta_action"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public t()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/block_config/user_ad_acceptances"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public u()F
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/tracker/ad_track_viewable_area_percentage"

    const/16 v2, 0x32

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public v()V
    .locals 3

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object v0

    new-instance v1, Lcom/wandoujia/base/utils/RxBus$d;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/wandoujia/base/utils/RxBus$d;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/wandoujia/base/utils/RxBus;->i(Lcom/wandoujia/base/utils/RxBus$d;)V

    return-void
.end method

.method public w(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/max_age_to_refill_on_cache_expired"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7fffffff

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public x()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/vungle/waterfall_bidding_block_adpos"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/util/Set;
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/block_config/block_rules"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public z()I
    .locals 3

    iget-object v0, p0, Lcom/snaptube/premium/ads/a;->b:Landroid/content/SharedPreferences;

    const-string v1, "/tracker/ad_track_viewable_min_duration"

    const/16 v2, 0x3e8

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
