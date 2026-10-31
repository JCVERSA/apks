.class public Lo/vq6;
.super Ljava/lang/Object;

# interfaces
.implements Lo/kh3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/vq6$g;
    }
.end annotation


# static fields
.field public static volatile m:Lo/kh3; = null

.field public static n:Ljava/lang/String; = "user_profile"

.field public static o:Ljava/lang/String; = "profile_update_time"

.field public static p:Ljava/lang/String; = "user_info_profile"


# instance fields
.field public a:Ljava/text/SimpleDateFormat;

.field public final b:Landroid/app/Application;

.field public final c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public volatile f:Z

.field public g:Ljava/lang/String;

.field h:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lo/ti3;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Lo/xb3;

.field public j:Lo/tu;

.field public volatile k:Z

.field public l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/vq6;->e:Z

    iput-boolean v0, p0, Lo/vq6;->f:Z

    const-string v1, "INVALID"

    iput-object v1, p0, Lo/vq6;->g:Ljava/lang/String;

    new-instance v1, Lo/n62;

    invoke-direct {v1}, Lo/n62;-><init>()V

    iput-object v1, p0, Lo/vq6;->i:Lo/xb3;

    iput-boolean v0, p0, Lo/vq6;->k:Z

    new-instance v0, Lo/vq6$d;

    invoke-direct {v0, p0}, Lo/vq6$d;-><init>(Lo/vq6;)V

    iput-object v0, p0, Lo/vq6;->l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    new-instance v0, Lo/vq6$a;

    invoke-direct {v0, p0, p1}, Lo/vq6$a;-><init>(Lo/vq6;Landroid/app/Application;)V

    invoke-static {v0}, Lo/xq1;->a(Lo/z96;)Ldagger/Lazy;

    move-result-object v0

    iput-object v0, p0, Lo/vq6;->h:Ldagger/Lazy;

    iput-object p1, p0, Lo/vq6;->b:Landroid/app/Application;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/vq6;->c:Ljava/lang/String;

    new-instance v0, Lo/qg4;

    invoke-direct {v0, p1}, Lo/qg4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/vq6;->j:Lo/tu;

    new-instance v0, Lo/mq6;

    invoke-direct {v0, p0, p1}, Lo/mq6;-><init>(Lo/vq6;Landroid/app/Application;)V

    invoke-static {v0}, Lo/zq6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static H()Z
    .locals 3

    const/4 v0, 0x1

    const-string v1, "is_first_time_use_app"

    invoke-static {v1, v0}, Lo/p57;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/p57;->g(Ljava/lang/String;Z)V

    :cond_0
    return v0
.end method

.method public static K()Lo/kh3;
    .locals 1

    invoke-static {}, Lo/vq6;->P()Lo/kh3;

    move-result-object v0

    return-object v0
.end method

.method public static P()Lo/kh3;
    .locals 3

    sget-object v0, Lo/vq6;->m:Lo/kh3;

    if-nez v0, :cond_1

    const-class v0, Lo/vq6;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/vq6;->m:Lo/kh3;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v1

    new-instance v2, Lo/vq6;

    invoke-direct {v2, v1}, Lo/vq6;-><init>(Landroid/app/Application;)V

    sput-object v2, Lo/vq6;->m:Lo/kh3;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lo/vq6;->m:Lo/kh3;

    return-object v0
.end method

.method public static synthetic W(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    new-instance v0, Lcom/snaptube/premium/log/ReportPropertyBuilder;

    invoke-direct {v0}, Lcom/snaptube/premium/log/ReportPropertyBuilder;-><init>()V

    const-string v1, "UserLogUpdate"

    invoke-virtual {v0, v1}, Lcom/snaptube/premium/log/ReportPropertyBuilder;->setEventName(Ljava/lang/String;)Lo/ah3;

    move-result-object v0

    invoke-interface {v0, p0}, Lo/ah3;->setAction(Ljava/lang/String;)Lo/ah3;

    move-result-object p0

    const-string v0, "data_source"

    const-string v1, "android"

    invoke-interface {p0, v0, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    move-result-object p0

    invoke-interface {p0, p1}, Lo/ah3;->addAllProperties(Lorg/json/JSONObject;)Lo/ah3;

    move-result-object p0

    invoke-interface {p0}, Lo/ah3;->reportEvent()V

    return-void
.end method

.method public static synthetic a(Lo/vq6;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/vq6;->e0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lo/vq6;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/vq6;->d0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Lo/vq6;Lo/ah3;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/vq6;->X(Lo/ah3;)V

    return-void
.end method

.method public static synthetic k(Lo/vq6;Landroid/app/Application;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/vq6;->V(Landroid/app/Application;)V

    return-void
.end method

.method public static synthetic l(Lo/vq6;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/vq6;->c0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lo/vq6;)V
    .locals 0

    invoke-virtual {p0}, Lo/vq6;->f0()V

    return-void
.end method

.method public static synthetic n(Lo/vq6;Lo/ah3;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/vq6;->a0(Lo/ah3;)V

    return-void
.end method

.method public static synthetic o(Lo/vq6;Lo/ah3;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo/vq6;->Z(Lo/ah3;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic p(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-static {p0, p1}, Lo/vq6;->W(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic q(Lo/vq6;Ljava/lang/String;Lo/ah3;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo/vq6;->b0(Ljava/lang/String;Lo/ah3;)V

    return-void
.end method

.method public static synthetic r(Lo/vq6;Lo/ah3;Ljava/lang/Long;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo/vq6;->Y(Lo/ah3;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic s(Lo/vq6;)V
    .locals 0

    invoke-virtual {p0}, Lo/vq6;->T()V

    return-void
.end method

.method public static bridge synthetic t(Lo/vq6;)Landroid/app/Application;
    .locals 0

    iget-object p0, p0, Lo/vq6;->b:Landroid/app/Application;

    return-object p0
.end method

.method public static bridge synthetic u(Lo/vq6;)Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
    .locals 0

    iget-object p0, p0, Lo/vq6;->l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    return-object p0
.end method

.method public static bridge synthetic v(Lo/vq6;Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lo/vq6;->i0(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static bridge synthetic w(Lo/vq6;)V
    .locals 0

    invoke-virtual {p0}, Lo/vq6;->l0()V

    return-void
.end method

.method public static bridge synthetic x(Lo/vq6;)V
    .locals 0

    invoke-virtual {p0}, Lo/vq6;->q0()V

    return-void
.end method

.method public static z(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lo/xi7;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object p0

    sget-object v0, Lo/eh4;->a:Lo/eh4;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lo/pq6;

    invoke-direct {v1, v0}, Lo/pq6;-><init>(Lo/eh4;)V

    invoke-virtual {p0, v1}, Lo/i02;->o(Lo/bc3;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final A(Lo/ah3;)V
    .locals 3

    invoke-interface {p1}, Lo/ah3;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lo/ah3;->getPropertyMap()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "ExtractVideoInfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "event_url"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v2, "Task"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "content_url"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v0}, Lo/hg7;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_logined"

    invoke-interface {p1, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_4
    return-void
.end method

.method public final B(Lo/ah3;)V
    .locals 2

    invoke-interface {p1}, Lo/ah3;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lo/ah3;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    const-string v1, "action_status"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "SATrackerManager"

    const-string v0, "action_status is not empty, so ignore update"

    invoke-static {p1, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lo/pa8;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    return-void
.end method

.method public final C(Lo/ah3;)V
    .locals 2

    invoke-interface {p1}, Lo/ah3;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/utils/WindowPlayUtils;->h()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_pip_supported"

    invoke-interface {p1, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    return-void
.end method

.method public final D(Lo/ah3;)V
    .locals 7

    invoke-interface {p1}, Lo/ah3;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lo/ah3;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lo/ah3;->getPropertyMap()Ljava/util/Map;

    move-result-object v4

    const-string v5, "ad_pos"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/String;

    if-nez v5, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lo/ah3;->getPropertyMap()Ljava/util/Map;

    move-result-object v5

    const-string v6, "real_ad_pos"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_3

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lo/vq6;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lo/vq6;->L(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    :cond_4
    invoke-static {v4}, Lcom/snaptube/premium/log/counter/EventCounterManager;->a(Ljava/lang/String;)Lo/wb3;

    move-result-object v4

    invoke-interface {v4}, Lo/wb3;->a()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_5

    cmp-long v6, v0, v4

    if-lez v6, :cond_6

    sub-long v2, v0, v4

    goto :goto_1

    :cond_5
    const-wide/16 v2, -0x1

    :cond_6
    :goto_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "scene_elapse"

    invoke-interface {p1, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    return-void
.end method

.method public final E(Lo/ah3;)V
    .locals 3

    invoke-interface {p1}, Lo/ah3;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lo/ah3;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExtractVideoInfo"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Task"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "fail"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/q55;->F(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_use_vpn"

    invoke-interface {p1, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_1
    return-void
.end method

.method public final F(Lo/ah3;)V
    .locals 2

    invoke-interface {p1}, Lo/ah3;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlay"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Search"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ExtractVideoInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Task"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/if9;->r(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_in_whitelist"

    invoke-interface {p1, v1, v0}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    :cond_1
    return-void
.end method

.method public final G(Lo/ah3;)V
    .locals 3

    invoke-interface {p1}, Lo/ah3;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exposure"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lo/ah3;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event has no property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lo/ah3;->build()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final I()V
    .locals 6

    const-string v0, "gandalf_tracker_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/p57;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "https://debuger.snaptube.app/debug?project=default"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lo/vq6;->O()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/snaptube/premium/configs/Config;->J1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Lo/vq6;->N()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/snaptube/premium/configs/Config;->I1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v3

    iget-object v4, p0, Lo/vq6;->b:Landroid/app/Application;

    invoke-static {}, Lcom/snaptube/util/ProductionEnv;->isLoggable()Z

    move-result v5

    invoke-virtual {v3, v4, v1, v2, v5}, Lo/i02;->i(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lo/i02;->g(Z)V

    :cond_1
    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v1

    new-instance v2, Lo/cf1;

    invoke-direct {v2}, Lo/cf1;-><init>()V

    invoke-virtual {v1, v2}, Lo/i02;->f(Lo/ki3;)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v1

    new-instance v2, Lo/lx0;

    iget-object v3, p0, Lo/vq6;->h:Ldagger/Lazy;

    iget-object v4, p0, Lo/vq6;->b:Landroid/app/Application;

    invoke-direct {v2, v3, v4}, Lo/lx0;-><init>(Ldagger/Lazy;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lo/i02;->f(Lo/ki3;)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v1

    new-instance v2, Lo/nr;

    invoke-direct {v2}, Lo/nr;-><init>()V

    invoke-virtual {v1, v2}, Lo/i02;->f(Lo/ki3;)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v1

    new-instance v2, Lo/tn;

    invoke-direct {v2}, Lo/tn;-><init>()V

    invoke-virtual {v1, v2}, Lo/i02;->f(Lo/ki3;)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v1

    new-instance v2, Lo/vq6$e;

    invoke-direct {v2, p0}, Lo/vq6$e;-><init>(Lo/vq6;)V

    invoke-virtual {v1, v2}, Lo/i02;->f(Lo/ki3;)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v1

    new-instance v2, Lcom/snaptube/premium/log/StrictModeLogInterceptor;

    invoke-direct {v2}, Lcom/snaptube/premium/log/StrictModeLogInterceptor;-><init>()V

    invoke-virtual {v1, v2}, Lo/i02;->f(Lo/ki3;)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v1

    new-instance v2, Lo/df1;

    invoke-direct {v2}, Lo/df1;-><init>()V

    invoke-virtual {v1, v2}, Lo/i02;->f(Lo/ki3;)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v1

    new-instance v2, Lo/g28;

    invoke-direct {v2}, Lo/g28;-><init>()V

    invoke-virtual {v1, v2}, Lo/i02;->f(Lo/ki3;)V

    if-nez v0, :cond_2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->h4()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v0

    new-instance v1, Lo/hq6;

    invoke-static {}, Lcom/snaptube/base/http/a;->a()Lcom/snaptube/base/http/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lo/hq6;-><init>(Lo/dq1;)V

    invoke-virtual {v0, v1}, Lo/i02;->n(Lcom/sensorsdata/analytics/android/sdk/Dns;)V

    :cond_2
    invoke-virtual {p0}, Lo/vq6;->y()V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v0

    iget-object v1, p0, Lo/vq6;->b:Landroid/app/Application;

    invoke-static {v1}, Lo/me8;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/r57;->identify(Ljava/lang/String;)V

    iget-object v0, p0, Lo/vq6;->b:Landroid/app/Application;

    invoke-virtual {p0, v0}, Lo/vq6;->R(Landroid/content/Context;)V

    invoke-virtual {p0}, Lo/vq6;->q0()V

    return-void
.end method

.method public final J()V
    .locals 1

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v0

    invoke-virtual {v0}, Lo/r57;->flush()V

    return-void
.end method

.method public final L(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->INTERSTITIAL_LAUNCH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "cold_splash_ads"

    return-object p1

    :cond_0
    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->HOT_SPLASH:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "hot_splash_ads"

    return-object p1

    :cond_1
    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->START_DOWNLOAD_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->DOWNLOAD_OUTSIDE_REWARD:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->BATCH_DOWNLOAD_REWARD:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->CLEAN_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "clean_junk"

    return-object p1

    :cond_3
    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->PHONE_BOOST_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "phone_boost"

    return-object p1

    :cond_4
    sget-object v0, Lcom/snaptube/ads/base/AdsPos;->BATTERY_SAVER_INTERSTITIAL:Lcom/snaptube/ads/base/AdsPos;

    invoke-virtual {v0}, Lcom/snaptube/ads/base/AdsPos;->pos()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "battery_saver"

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1

    :cond_6
    :goto_0
    const-string p1, "choose_format"

    return-object p1
.end method

.method public final M()Ljava/text/SimpleDateFormat;
    .locals 3

    iget-object v0, p0, Lo/vq6;->a:Ljava/text/SimpleDateFormat;

    if-nez v0, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd hh:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lo/vq6;->a:Ljava/text/SimpleDateFormat;

    :cond_0
    iget-object v0, p0, Lo/vq6;->a:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    const-string v0, "http://a.gdfsnt.com/config/?project=default"

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    const-string v0, "http://a.gdfsnt.com/sa?project=default"

    return-object v0
.end method

.method public Q()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v0

    invoke-virtual {v0}, Lo/r57;->getLastScreenUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    nop

    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context is null ? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final R(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, p1, v1}, Lo/vq6;->i0(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/r57;->registerSuperProperties(Lorg/json/JSONObject;)V

    sget-object p1, Lo/qd6;->e:Lo/qd6;

    invoke-virtual {p1, v1}, Lo/qd6;->d(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string v1, "initCommonProperty"

    invoke-virtual {p0, v1, v0, p1}, Lo/vq6;->h0(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public final S()Z
    .locals 3

    sget-object v0, Lo/qs;->a:Lo/qs$a;

    invoke-virtual {v0}, Lo/qs$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->p0()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :cond_1
    invoke-static {}, Lo/vq6;->H()Z

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public final T()V
    .locals 1

    iget-boolean v0, p0, Lo/vq6;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo/vq6;->I()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/vq6;->k:Z

    iget-object v0, p0, Lo/vq6;->b:Landroid/app/Application;

    invoke-virtual {p0, v0}, Lo/vq6;->m0(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public final U(Lo/ti3;Lorg/json/JSONObject;)V
    .locals 3

    invoke-interface {p1}, Lo/ti3;->c()Lo/ti3$b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p1}, Lo/ti3$b;->b()I

    move-result v1

    invoke-static {v1}, Lo/i3;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "platform"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "user_name"

    invoke-interface {p1}, Lo/ti3$b;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object p1, Lo/vq6;->p:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lo/p57;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lo/vq6;->p:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lo/p57;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lo/ar6;->l(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0, p2}, Lo/ar6;->k(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final synthetic V(Landroid/app/Application;)V
    .locals 2

    invoke-virtual {p0}, Lo/vq6;->S()Z

    move-result v0

    iput-boolean v0, p0, Lo/vq6;->d:Z

    const-string v0, "pref.content_config"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lo/vq6;->l:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {}, Lcom/wandoujia/base/utils/RxBus;->d()Lcom/wandoujia/base/utils/RxBus;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x7

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wandoujia/base/utils/RxBus;->c([I)Lrx/c;

    move-result-object p1

    invoke-static {}, Lo/zq6;->c()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lo/sh;->a(Landroid/os/Looper;)Lrx/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/c;->Y(Lrx/d;)Lrx/c;

    move-result-object p1

    new-instance v0, Lo/vq6$b;

    invoke-direct {v0, p0}, Lo/vq6$b;-><init>(Lo/vq6;)V

    new-instance v1, Lo/vq6$c;

    invoke-direct {v1, p0}, Lo/vq6$c;-><init>(Lo/vq6;)V

    invoke-virtual {p1, v0, v1}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    iget-object p1, p0, Lo/vq6;->h:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ti3;

    invoke-interface {p1}, Lo/ti3;->c()Lo/ti3$b;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/ti3$b;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/vq6;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public final synthetic X(Lo/ah3;)V
    .locals 5

    invoke-interface {p1}, Lo/ah3;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/vq6;->g0(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/snaptube/plugin/PluginId;->attachPluginInfo(Lo/ah3;)V

    :cond_0
    invoke-virtual {p0, p1}, Lo/vq6;->A(Lo/ah3;)V

    const-string v0, "app_start"

    invoke-interface {p1}, Lo/ah3;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lo/az7;->f0()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "arg_bool"

    invoke-interface {p1, v3, v2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRooted costTime "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SATrackerManager"

    invoke-static {v1, v0}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lo/vq6;->B(Lo/ah3;)V

    invoke-virtual {p0, p1}, Lo/vq6;->C(Lo/ah3;)V

    invoke-virtual {p0, p1}, Lo/vq6;->F(Lo/ah3;)V

    invoke-virtual {p0, p1}, Lo/vq6;->D(Lo/ah3;)V

    invoke-virtual {p0, p1}, Lo/vq6;->E(Lo/ah3;)V

    iget-object v0, p0, Lo/vq6;->i:Lo/xb3;

    invoke-interface {v0, p1}, Lo/xb3;->c(Lo/ah3;)Z

    move-result v0

    const-string v1, "sensor-tracker"

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackEvent sample not hit : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object v0, p0, Lo/vq6;->j:Lo/tu;

    invoke-virtual {v0, p1}, Lo/tu;->a(Lo/ah3;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intercept : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "$screen_name"

    invoke-virtual {p0}, Lo/vq6;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v0

    invoke-interface {p1}, Lo/ah3;->getEventName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lo/ah3;->build()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/r57;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {p1}, Lo/ar6;->j(Lo/ah3;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lo/vq6;->J()V

    :cond_4
    return-void
.end method

.method public final synthetic Y(Lo/ah3;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "video_count"

    invoke-interface {p1, v0, p2}, Lo/ah3;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Lo/ah3;

    invoke-virtual {p0, p1}, Lo/vq6;->k0(Lo/ah3;)V

    return-void
.end method

.method public final synthetic Z(Lo/ah3;Ljava/lang/Throwable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lo/vq6;->k0(Lo/ah3;)V

    return-void
.end method

.method public final synthetic a0(Lo/ah3;)V
    .locals 3

    invoke-virtual {p0}, Lo/vq6;->T()V

    invoke-virtual {p0, p1}, Lo/vq6;->G(Lo/ah3;)V

    invoke-interface {p1}, Lo/ah3;->getEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lo/z98;->a(Lo/ah3;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/snaptube/player/OnlineMediaQueueManager;->a:Lcom/snaptube/player/OnlineMediaQueueManager;

    invoke-virtual {v0}, Lcom/snaptube/player/OnlineMediaQueueManager;->B()Lrx/c;

    move-result-object v0

    invoke-static {}, Lo/zp6;->d()Lrx/c$c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/c;->g(Lrx/c$c;)Lrx/c;

    move-result-object v0

    new-instance v1, Lo/rq6;

    invoke-direct {v1, p0, p1}, Lo/rq6;-><init>(Lo/vq6;Lo/ah3;)V

    new-instance v2, Lo/sq6;

    invoke-direct {v2, p0, p1}, Lo/sq6;-><init>(Lo/vq6;Lo/ah3;)V

    invoke-virtual {v0, v1, v2}, Lrx/c;->u0(Lo/l3;Lo/l3;)Lo/wu7;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lo/vq6;->k0(Lo/ah3;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    new-instance v0, Lo/oq6;

    invoke-direct {v0, p0}, Lo/oq6;-><init>(Lo/vq6;)V

    invoke-static {v0}, Lo/zq6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic b0(Ljava/lang/String;Lo/ah3;)V
    .locals 4

    invoke-virtual {p0}, Lo/vq6;->T()V

    invoke-static {}, Lcom/dywx/dyapm/a;->d()Lcom/dywx/dyapm/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/dywx/dyapm/a;->g(Ljava/lang/String;)V

    invoke-static {}, Lcom/snaptube/util/ProductionEnv;->isLoggable()Z

    move-result v0

    const-string v1, "sensor-tracker"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lo/ah3;->getPropertyMap()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", full_url: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lo/ah3;->getPropertyMap()Ljava/util/Map;

    move-result-object v0

    const-string v3, "full_url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event: $AppViewScreen, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AppViewScreen"

    invoke-static {v2, v0}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lo/vq6;->i:Lo/xb3;

    invoke-interface {v0, p1}, Lo/xb3;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "trackScreenView sample not hit : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/snaptube/util/ProductionEnv;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v0

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_0

    :cond_3
    invoke-interface {p2}, Lo/ah3;->build()Lorg/json/JSONObject;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p1, p2}, Lo/r57;->trackViewScreen(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lo/nq6;

    invoke-direct {v0, p0, p1}, Lo/nq6;-><init>(Lo/vq6;Ljava/lang/String;)V

    invoke-static {v0}, Lo/zq6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic c0(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getFcmToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/wandoujia/base/config/GlobalConfig;->setFcmToken(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "fcm_token"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/r57;->profileSet(Lorg/json/JSONObject;)V

    const-string p1, "fcm_token_change"

    invoke-virtual {p0, p1, v0}, Lo/vq6;->j0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFcmTokenProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SATrackerManager"

    invoke-static {v0, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lo/tq6;

    invoke-direct {v0, p0, p1}, Lo/tq6;-><init>(Lo/vq6;Ljava/lang/String;)V

    invoke-static {v0}, Lo/zq6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic d0(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->l0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/snaptube/premium/configs/Config;->B5(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lang"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/r57;->profileSet(Lorg/json/JSONObject;)V

    const-string p1, "lang_change"

    invoke-virtual {p0, p1, v0}, Lo/vq6;->j0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateLangProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SATrackerManager"

    invoke-static {v0, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lo/lq6;

    invoke-direct {v0, p0, p1}, Lo/lq6;-><init>(Lo/vq6;Ljava/lang/String;)V

    invoke-static {v0}, Lo/zq6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final synthetic e0(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/snaptube/premium/configs/Config;->C()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/snaptube/premium/configs/Config;->l5(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "region"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/r57;->profileSet(Lorg/json/JSONObject;)V

    const-string p1, "region_change"

    invoke-virtual {p0, p1, v0}, Lo/vq6;->j0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRegionProfile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SATrackerManager"

    invoke-static {v0, p1}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lo/vq6;->e:Z

    return-void
.end method

.method public final synthetic f0()V
    .locals 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lo/vq6;->h:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/ti3;

    invoke-virtual {p0, v1, v0}, Lo/vq6;->U(Lo/ti3;Lorg/json/JSONObject;)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/r57;->profileSet(Lorg/json/JSONObject;)V

    const-string v1, "user_info_change"

    invoke-virtual {p0, v1, v0}, Lo/vq6;->j0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public g(Lo/ah3;)V
    .locals 1

    new-instance v0, Lo/qq6;

    invoke-direct {v0, p0, p1}, Lo/qq6;-><init>(Lo/vq6;Lo/ah3;)V

    invoke-static {v0}, Lo/zq6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g0(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "VideoPlay"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Search"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "AppError"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ExtractVideoInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "YouTubeWebviewPlaylist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Api"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Task"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Analysis"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SignatureScriptUrlFetcher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Publish"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public h(Ljava/lang/String;Lo/ah3;)V
    .locals 1

    new-instance v0, Lo/iq6;

    invoke-direct {v0, p0, p1, p2}, Lo/iq6;-><init>(Lo/vq6;Ljava/lang/String;Lo/ah3;)V

    invoke-static {v0}, Lo/zq6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final h0(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onTrackError:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SATrackerManager"

    invoke-static {p2, p1}, Lcom/snaptube/util/ProductionEnv;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final i0(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 3

    invoke-static {p1}, Lcom/snaptube/premium/app/PhoenixApplication;->T(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hook_"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, "version_code"

    invoke-static {p1}, Lo/az7;->P(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "$utm_source"

    invoke-static {}, Lo/p57;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id"

    invoke-static {p1}, Lo/me8;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lo/xi7;->b(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "signature"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "unique_id"

    invoke-static {p1}, Lo/az7;->O(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "android_sdk_int"

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "session_id"

    iget-object v0, p0, Lo/vq6;->c:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_first_time"

    iget-boolean v0, p0, Lo/vq6;->d:Z

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lo/vq6;->k:Z

    return v0
.end method

.method public j0(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    new-instance v0, Lo/uq6;

    invoke-direct {v0, p1, p2}, Lo/uq6;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lo/zq6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k0(Lo/ah3;)V
    .locals 1

    new-instance v0, Lo/kq6;

    invoke-direct {v0, p0, p1}, Lo/kq6;-><init>(Lo/vq6;Lo/ah3;)V

    invoke-static {v0}, Lo/zq6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final l0()V
    .locals 3

    const-string v0, "INVALID"

    iget-object v1, p0, Lo/vq6;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v0

    invoke-virtual {v0}, Lo/r57;->getLoginId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/vq6;->g:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lo/vq6;->h:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ti3;

    invoke-interface {v0}, Lo/ti3;->c()Lo/ti3$b;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lo/vq6;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lo/vq6;->g:Ljava/lang/String;

    invoke-interface {v0}, Lo/ti3$b;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lo/vq6;->g:Ljava/lang/String;

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v0

    invoke-virtual {v0}, Lo/r57;->logout()V

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lo/ti3$b;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/vq6;->g:Ljava/lang/String;

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v0

    iget-object v1, p0, Lo/vq6;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/r57;->login(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/vq6;->r0()V

    :goto_0
    invoke-static {}, Lo/hd7;->a()V

    invoke-virtual {p0}, Lo/vq6;->J()V

    return-void
.end method

.method public final m0(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0, p1}, Lo/vq6;->n0(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/vq6;->p0(Landroid/content/Context;Z)V

    iget-object v0, p0, Lo/vq6;->h:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ti3;

    invoke-static {p1, v0}, Lo/hd7;->b(Landroid/content/Context;Lo/ti3;)V

    return-void
.end method

.method public final n0(Landroid/content/Context;)V
    .locals 4

    const/4 p1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string p1, "$utm_source"

    invoke-static {}, Lo/p57;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    const-string v1, "first_use_time"

    invoke-virtual {p0}, Lo/vq6;->M()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "landing_id"

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/cm;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "landing_time"

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/cm;->q(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object p1

    const-string v1, "AppInstall"

    invoke-virtual {p1, v1, v0}, Lo/r57;->trackInstallation(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_0
    const-string v1, "trackInstall"

    invoke-virtual {p0, v1, v0, p1}, Lo/vq6;->h0(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public final o0()V
    .locals 2

    iget-object v0, p0, Lo/vq6;->b:Landroid/app/Application;

    new-instance v1, Lo/vq6$f;

    invoke-direct {v1, p0}, Lo/vq6$f;-><init>(Lo/vq6;)V

    invoke-static {v0, v1}, Lo/ze;->a(Landroid/content/Context;Lo/ze$b;)V

    return-void
.end method

.method public final p0(Landroid/content/Context;Z)V
    .locals 20

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "profile_set_once"

    invoke-static {v2, v0}, Lo/p57;->a(Ljava/lang/String;Z)Z

    move-result v0

    const-string v3, "first_cold_start"

    const-string v4, "landing_page_url"

    const-string v5, "landing_page_host"

    const-string v6, "st_utm_source"

    const-string v7, "network_country_iso"

    const-string v8, "gms_available"

    const-string v9, "fcm_token"

    const-string v10, "region"

    const-string v11, "os_lang"

    const-string v12, "lang"

    if-nez v0, :cond_0

    :try_start_0
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "$utm_source"

    invoke-static {}, Lo/p57;->b()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v0, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v14, "first_use_time"

    invoke-virtual/range {p0 .. p0}, Lo/vq6;->M()Ljava/text/SimpleDateFormat;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lo/b04;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lo/b04;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lo/g86;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getFcmToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lo/gg2;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lo/az7;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "random_id"

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->u1()I

    move-result v13

    invoke-virtual {v15, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "install_vc"

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->f0()I

    move-result v13

    invoke-virtual {v15, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/cm;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/cm;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/cm;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v13, 0x1

    invoke-static {v2, v13}, Lo/p57;->g(Ljava/lang/String;Z)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v0

    invoke-virtual {v0, v15}, Lo/r57;->profileSetOnce(Lorg/json/JSONObject;)V

    iput-boolean v13, v1, Lo/vq6;->f:Z

    invoke-virtual {v1, v3, v15}, Lo/vq6;->j0(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v15, 0x0

    :goto_0
    const-string v2, "profileSetOnce"

    invoke-virtual {v1, v2, v15, v0}, Lo/vq6;->h0(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_0
    const/4 v15, 0x0

    :goto_1
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->x3()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    sget-object v0, Lo/vq6;->o:Ljava/lang/String;

    const-wide/16 v13, 0x0

    invoke-static {v0, v13, v14}, Lo/p57;->c(Ljava/lang/String;J)J

    move-result-wide v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-wide/32 v18, 0x5265c00

    add-long v13, v13, v18

    cmp-long v0, v16, v13

    if-gez v0, :cond_2

    return-void

    :cond_2
    :goto_2
    :try_start_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    const-string v0, "vip"

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->C()Lcom/snaptube/premium/app/PhoenixApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/snaptube/premium/app/PhoenixApplication;->Q()Z

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v0, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lo/b04;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lo/b04;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lo/g86;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/wandoujia/base/config/GlobalConfig;->getFcmToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lo/gg2;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static/range {p1 .. p1}, Lo/az7;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "download_button_enable"

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->i0()Z

    move-result v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "gp_version_code"

    invoke-static/range {p1 .. p1}, Lo/an5;->a(Landroid/content/Context;)J

    move-result-wide v7

    invoke-virtual {v2, v0, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "storage_permission"

    invoke-static {}, Lo/sq5;->c()Z

    move-result v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "location_permission"

    invoke-static {}, Lo/sq5;->a()Z

    move-result v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "android_id"

    invoke-static/range {p1 .. p1}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "utm_source2"

    invoke-static/range {p1 .. p1}, Lo/cm;->I(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "utm_term2"

    invoke-static/range {p1 .. p1}, Lo/cm;->K(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "utm_content2"

    invoke-static/range {p1 .. p1}, Lo/cm;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "utm_medium2"

    invoke-static/range {p1 .. p1}, Lo/cm;->H(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "utm_campaign2"

    invoke-static/range {p1 .. p1}, Lo/cm;->D(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "share_user"

    invoke-static/range {p1 .. p1}, Lo/cm;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "share_count"

    invoke-static/range {p1 .. p1}, Lo/cm;->t(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/cm;->z(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/cm;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/cm;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0x18

    invoke-static {v0}, Lo/az7;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "daemon_on"

    invoke-static/range {p1 .. p1}, Lcom/snaptube/ads/keeper/DaemonCrashInspector;->j(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v0, "daemon_version"

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    :catch_2
    move-exception v0

    goto/16 :goto_5

    :catch_3
    move-exception v0

    move-object v15, v2

    goto/16 :goto_6

    :cond_3
    :goto_3
    const-string v0, "version_code"

    invoke-static/range {p1 .. p1}, Lo/az7;->P(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "device_id"

    invoke-static/range {p1 .. p1}, Lo/me8;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/cm;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lo/cm;->q(Landroid/content/Context;)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "landing_id"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    if-eqz v4, :cond_5

    const-string v0, "landing_time"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    sget-object v0, Lo/vq6;->n:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v4}, Lo/p57;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    return-void

    :cond_6
    sget-object v5, Lo/vq6;->n:Ljava/lang/String;

    invoke-static {v5, v4}, Lo/p57;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lo/ar6;->l(Ljava/lang/String;Lorg/json/JSONObject;)V

    iget-object v0, v1, Lo/vq6;->h:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ti3;

    invoke-virtual {v1, v0, v2}, Lo/vq6;->U(Lo/ti3;Lorg/json/JSONObject;)V

    sget-object v0, Lo/vq6;->o:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lo/p57;->h(Ljava/lang/String;J)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v0

    invoke-virtual {v0, v2}, Lo/r57;->profileSet(Lorg/json/JSONObject;)V

    iget-boolean v0, v1, Lo/vq6;->f:Z

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_7
    const-string v3, "everyday_update"

    :goto_4
    invoke-virtual {v1, v3, v2}, Lo/vq6;->j0(Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual/range {p0 .. p0}, Lo/vq6;->o0()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/AssertionError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :goto_5
    const-string v2, "SATrackerManager"

    invoke-static {v2, v0}, Lcom/snaptube/util/ProductionEnv;->errorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    :goto_6
    const-string v2, "profileSet"

    invoke-virtual {v1, v2, v15, v0}, Lo/vq6;->h0(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_7
    return-void
.end method

.method public final q0()V
    .locals 2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->H1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    const-class v1, Lcom/snaptube/premium/log/EventSampleConfig;

    invoke-static {v0, v1}, Lo/j23;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snaptube/premium/log/EventSampleConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/snaptube/util/ProductionEnv;->throwExceptForDebugging(Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lo/vq6;->i:Lo/xb3;

    invoke-interface {v1, v0}, Lo/xb3;->b(Lcom/snaptube/premium/log/EventSampleConfig;)V

    return-void
.end method

.method public r0()V
    .locals 1

    new-instance v0, Lo/jq6;

    invoke-direct {v0, p0}, Lo/jq6;-><init>(Lo/vq6;)V

    invoke-static {v0}, Lo/zq6;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final y()V
    .locals 3

    sget-object v0, Lo/qd6;->e:Lo/qd6;

    const-string v1, "key.qa_log_inspector_enable"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/p57;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/qd6;->e(Z)V

    invoke-static {}, Lo/i02;->h()Lo/i02;

    move-result-object v1

    invoke-virtual {v0}, Lo/qd6;->a()Lo/ki3;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/i02;->f(Lo/ki3;)V

    :cond_0
    return-void
.end method
