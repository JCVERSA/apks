.class public Lcom/mgmi/platform/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/mgmi/net/bean/SdkConfigData; = null

.field public static s:Ljava/lang/String; = ""

.field public static t:Ljava/lang/String; = ""

.field public static u:Ljava/lang/String; = ""

.field private static v:Lcom/mgmi/platform/b;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:Z

.field private F:Z

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:J

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Lcom/mgmi/thirdparty/IpdxManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgmi/platform/b;->w:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mgmi/platform/b;->x:Z

    iput-boolean v1, p0, Lcom/mgmi/platform/b;->y:Z

    iput v1, p0, Lcom/mgmi/platform/b;->e:I

    iput-boolean v0, p0, Lcom/mgmi/platform/b;->f:Z

    iput-boolean v0, p0, Lcom/mgmi/platform/b;->g:Z

    iput-boolean v0, p0, Lcom/mgmi/platform/b;->h:Z

    iput-boolean v0, p0, Lcom/mgmi/platform/b;->i:Z

    iput-boolean v0, p0, Lcom/mgmi/platform/b;->j:Z

    iput-boolean v0, p0, Lcom/mgmi/platform/b;->A:Z

    iput-boolean v1, p0, Lcom/mgmi/platform/b;->k:Z

    iput-boolean v0, p0, Lcom/mgmi/platform/b;->l:Z

    iput-boolean v0, p0, Lcom/mgmi/platform/b;->m:Z

    iput v1, p0, Lcom/mgmi/platform/b;->n:I

    iput v1, p0, Lcom/mgmi/platform/b;->o:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/mgmi/platform/b;->p:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/mgmi/platform/b;->q:I

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/mgmi/platform/b;->r:J

    const/4 v1, -0x1

    iput v1, p0, Lcom/mgmi/platform/b;->B:I

    iput v0, p0, Lcom/mgmi/platform/b;->C:I

    iput v0, p0, Lcom/mgmi/platform/b;->D:I

    iput-boolean v0, p0, Lcom/mgmi/platform/b;->F:Z

    invoke-direct {p0}, Lcom/mgmi/platform/b;->l()V

    return-void
.end method

.method public static a()Lcom/mgmi/platform/b;
    .locals 2

    .line 4
    sget-object v0, Lcom/mgmi/platform/b;->v:Lcom/mgmi/platform/b;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/mgmi/platform/b;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/mgmi/platform/b;->v:Lcom/mgmi/platform/b;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/mgmi/platform/b;

    invoke-direct {v1}, Lcom/mgmi/platform/b;-><init>()V

    sput-object v1, Lcom/mgmi/platform/b;->v:Lcom/mgmi/platform/b;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_2
    sget-object v0, Lcom/mgmi/platform/b;->v:Lcom/mgmi/platform/b;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 1

    .line 38
    iget v0, p0, Lcom/mgmi/platform/b;->n:I

    if-eq v0, p2, :cond_0

    .line 39
    iput p2, p0, Lcom/mgmi/platform/b;->n:I

    .line 40
    const-string p0, "mgmi_ssp_package_value"

    invoke-static {p1, p0, p2}, Lu3d;->c(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/mgmi/net/bean/SdkConfigData;)V
    .locals 4

    .line 10
    iget v0, p2, Lcom/mgmi/net/bean/SdkConfigData;->lm_mid_bl:I

    const-string v1, "mgmi_ssp_black"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 11
    iput-boolean v3, p0, Lcom/mgmi/platform/b;->m:Z

    .line 12
    invoke-static {p1, v1, v3}, Lu3d;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 13
    :cond_0
    iput-boolean v2, p0, Lcom/mgmi/platform/b;->m:Z

    .line 14
    invoke-static {p1, v1, v2}, Lu3d;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 15
    :goto_0
    iget v0, p2, Lcom/mgmi/net/bean/SdkConfigData;->is_use_ad_cache:I

    if-ne v0, v3, :cond_1

    .line 16
    iput-boolean v3, p0, Lcom/mgmi/platform/b;->w:Z

    goto :goto_1

    .line 17
    :cond_1
    iput-boolean v2, p0, Lcom/mgmi/platform/b;->w:Z

    .line 18
    :goto_1
    iget v0, p2, Lcom/mgmi/net/bean/SdkConfigData;->is_new_feature:I

    const-string v1, "mgmi_switch_newfeature"

    if-ne v0, v3, :cond_2

    .line 19
    invoke-static {p1, v1, v3}, Lu3d;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    goto :goto_2

    .line 20
    :cond_2
    invoke-static {p1, v1, v2}, Lu3d;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 21
    :goto_2
    iget p1, p2, Lcom/mgmi/net/bean/SdkConfigData;->retry_status:I

    if-ne p1, v3, :cond_3

    .line 22
    iput p1, p0, Lcom/mgmi/platform/b;->o:I

    goto :goto_3

    .line 23
    :cond_3
    iput v2, p0, Lcom/mgmi/platform/b;->o:I

    .line 24
    :goto_3
    iget p1, p2, Lcom/mgmi/net/bean/SdkConfigData;->is_use_ipdx:I

    iput p1, p0, Lcom/mgmi/platform/b;->e:I

    return-void
.end method

.method private a(Lcom/mgmi/net/bean/SdkConfigData;Landroid/content/Context;Lcom/mgmi/platform/b/a;)V
    .locals 1
    .param p3    # Lcom/mgmi/platform/b/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 41
    sput-object p1, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    if-nez p2, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/mgmi/platform/b;->a(Landroid/content/Context;Lcom/mgmi/net/bean/SdkConfigData;)V

    .line 43
    sget-object p1, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget p1, p1, Lcom/mgmi/net/bean/SdkConfigData;->is_use_ipdx:I

    const/4 p3, 0x1

    if-ne p1, p3, :cond_2

    .line 44
    iget-object p1, p0, Lcom/mgmi/platform/b;->z:Lcom/mgmi/thirdparty/IpdxManager;

    if-nez p1, :cond_1

    .line 45
    invoke-static {p2}, Lcom/mgmi/thirdparty/IpdxManager;->a(Landroid/content/Context;)Lcom/mgmi/thirdparty/IpdxManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mgmi/platform/b;->z:Lcom/mgmi/thirdparty/IpdxManager;

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/mgmi/platform/b;->z:Lcom/mgmi/thirdparty/IpdxManager;

    sget-object p2, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object p3, p2, Lcom/mgmi/net/bean/SdkConfigData;->ipdx_url:Ljava/lang/String;

    iget-object v0, p2, Lcom/mgmi/net/bean/SdkConfigData;->ipdx_err_url:Ljava/util/List;

    iget p2, p2, Lcom/mgmi/net/bean/SdkConfigData;->ipdx_advance_time:I

    invoke-virtual {p1, p3, v0, p2}, Lcom/mgmi/thirdparty/IpdxManager;->a(Ljava/lang/String;Ljava/util/List;I)V

    .line 47
    iget-object p0, p0, Lcom/mgmi/platform/b;->z:Lcom/mgmi/thirdparty/IpdxManager;

    invoke-virtual {p0}, Lcom/mgmi/thirdparty/IpdxManager;->a()V

    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/mgmi/platform/b;Landroid/content/Context;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/mgmi/platform/b;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/platform/b;Lcom/mgmi/net/bean/SdkConfigData;Landroid/content/Context;Lcom/mgmi/platform/b/a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/mgmi/platform/b;->a(Lcom/mgmi/net/bean/SdkConfigData;Landroid/content/Context;Lcom/mgmi/platform/b/a;)V

    return-void
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/mgmi/net/bean/SdkConfigData;->cdn_dest:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object v0, v0, Lcom/mgmi/net/bean/SdkConfigData;->cdn_dest:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "http://d.da.mgtv.com/d/crash"

    return-object v0
.end method

.method private l()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/platform/b;->b:Ljava/util/List;

    const-string v1, "mobile2.da.mgtv.com"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mgmi/platform/b;->c:Ljava/util/List;

    const-string v1, "https"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "mobile.da.mgtv.com"

    iput-object v0, p0, Lcom/mgmi/platform/b;->d:Ljava/lang/String;

    return-void
.end method

.method private m()V
    .locals 1

    iget-boolean v0, p0, Lcom/mgmi/platform/b;->E:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mgmi/platform/b;->E:Z

    invoke-static {}, Lcom/mgmi/platform/e;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 27
    sget-object v0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    const/4 v1, 0x0

    const-string v2, "mgadlog"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/mgmi/net/bean/SdkConfigData;->lm_pkg_wl:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 28
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object v0, v0, Lcom/mgmi/net/bean/SdkConfigData;->lm_pkg_wl:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 29
    invoke-direct {p0, p1, v3}, Lcom/mgmi/platform/b;->a(Landroid/content/Context;I)V

    .line 30
    invoke-direct {p0}, Lcom/mgmi/platform/b;->m()V

    .line 31
    const-string p0, "111111 true "

    invoke-static {v2, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 32
    :cond_0
    const-string p2, "22222 true "

    invoke-static {v2, p2}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1, v1}, Lcom/mgmi/platform/b;->a(Landroid/content/Context;I)V

    return v1

    .line 34
    :cond_1
    iget p1, p0, Lcom/mgmi/platform/b;->n:I

    if-ne p1, v3, :cond_2

    .line 35
    invoke-direct {p0}, Lcom/mgmi/platform/b;->m()V

    .line 36
    const-string p0, "33333 true "

    invoke-static {v2, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 37
    :cond_2
    const-string p0, "44444 false "

    invoke-static {v2, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 25
    sget-object p0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/mgmi/net/bean/SdkConfigData;->lm_pid_bl:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 26
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 5

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 12
    const-string v2, "mgmi_switch_ima"

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Lu3d;->h(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mgmi/platform/b;->l:Z

    .line 13
    const-string v2, "mgmi_ssp_black"

    const/4 v4, 0x0

    invoke-static {p1, v2, v4}, Lu3d;->h(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mgmi/platform/b;->m:Z

    .line 14
    const-string v2, "mgmi_switch_newfeature"

    invoke-static {p1, v2, v3}, Lu3d;->h(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mgmi/platform/b;->k:Z

    .line 15
    const-string v2, "mgadlog"

    const-string v3, "initSwitch"

    invoke-static {v2, v3}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    const-string v2, "mgmi_ssp_package_value"

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lu3d;->f(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mgmi/platform/b;->n:I

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "time duration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "mgmi"

    invoke-static {p1, p0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iget-boolean v0, p0, Lcom/mgmi/platform/b;->F:Z

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lcom/mgmi/g/a;

    invoke-direct {v0}, Lcom/mgmi/g/a;-><init>()V

    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {v0, p2}, Lcom/mgmi/g/a;->a(Ljava/lang/String;)V

    .line 5
    sput-object p2, Lcom/mgmi/platform/b;->t:Ljava/lang/String;

    .line 6
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mgmi/platform/b;->a()Lcom/mgmi/platform/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/platform/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sdk/config"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p1}, Lfyd;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/mgmi/platform/b;->F:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v0, v2, v1}, Lcom/mgmi/f/b;->a(Landroid/content/Context;Lcom/mgmi/g/a;Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/mgadplus/netlib/a/a;

    invoke-direct {v1, p2}, Lcom/mgadplus/netlib/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/mgadplus/netlib/a/a;->a(Ljava/util/Map;)Lcom/mgadplus/netlib/a/a;

    move-result-object p2

    new-instance v0, Lcom/mgmi/platform/b$1;

    invoke-direct {v0, p0, p1}, Lcom/mgmi/platform/b$1;-><init>(Lcom/mgmi/platform/b;Landroid/content/Context;)V

    invoke-static {v2, p2, v0}, Lcom/mgadplus/netlib/a/e;->a(Landroid/content/Context;Lcom/mgadplus/netlib/a/a;Lcom/mgadplus/netlib/base/b;)V

    :cond_2
    return-void
.end method

.method public b()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/mgmi/platform/b;->m:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public d()Z
    .locals 1

    iget p0, p0, Lcom/mgmi/platform/b;->e:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mgmi/f/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/mgmi/net/bean/SdkConfigData;->host:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object p0, p0, Lcom/mgmi/net/bean/SdkConfigData;->schema:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object v0, v0, Lcom/mgmi/net/bean/SdkConfigData;->schema:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object v0, v0, Lcom/mgmi/net/bean/SdkConfigData;->host:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/mgmi/f/f;->o()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "https://oxnet.da.mgtv.com"

    return-object p0

    :cond_2
    const-string p0, "https://xnet.da.mgtv.com"

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/mgmi/f/a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/mgmi/net/bean/SdkConfigData;->live_host:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object p0, p0, Lcom/mgmi/net/bean/SdkConfigData;->live_schema:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object v0, v0, Lcom/mgmi/net/bean/SdkConfigData;->live_schema:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "://"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/mgmi/platform/b;->a:Lcom/mgmi/net/bean/SdkConfigData;

    iget-object v0, v0, Lcom/mgmi/net/bean/SdkConfigData;->live_host:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lcom/mgmi/f/f;->o()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    const-string p0, "https://oxnet.da.mgtv.com"

    return-object p0

    :cond_2
    const-string p0, "https://adlive.da.mgtv.com"

    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/mgmi/platform/b;->k:Z

    return p0
.end method

.method public i()I
    .locals 2

    iget p0, p0, Lcom/mgmi/platform/b;->p:I

    const/4 v0, 0x3

    const/4 v1, 0x4

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x8

    if-le p0, v0, :cond_1

    return v1

    :cond_1
    return p0
.end method

.method public j()I
    .locals 0

    iget p0, p0, Lcom/mgmi/platform/b;->q:I

    return p0
.end method

.method public k()I
    .locals 3

    iget v0, p0, Lcom/mgmi/platform/b;->C:I

    const-string v1, "BootAdsloader"

    if-nez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mgmi/platform/b;->C:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c2sPreloadTag = 0 use cache c2sPreload ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mgmi/platform/b;->B:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lcom/mgmi/platform/b;->B:I

    return p0

    :cond_0
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object p0

    const-string v0, "C2SPRELOAD"

    const/4 v2, -0x1

    invoke-static {p0, v0, v2}, Lu3d;->f(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c2sPreloadTag = 1 use net c2sPreload ="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mgadplus/mgutil/SourceKitLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method
