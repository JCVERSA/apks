.class public Lcom/mgmi/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z = true

.field private static b:Ljava/lang/String; = ""

.field private static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgmi/f/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, ""

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgmi/f/f;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/mgmi/f/f;->e:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lmpd;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    const-string v0, "MGtv!@$123AdGoodBoy"

    invoke-static {p0, v0}, Ln4d;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mgmi/f/f;->e:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_1
    sget-object p0, Lcom/mgmi/f/f;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lmpd;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 3
    :catchall_0
    const-string p0, "com.hunantv.imgo.activity"

    return-object p0
.end method

.method public static e(Landroid/content/Context;)I
    .locals 0

    .line 2
    invoke-static {p0}, Lmpd;->q(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static e()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imgotv-aphone-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/mgmi/f/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "7.5.4"

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgmi/f/f;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/mgmi/f/f;->c:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lmpd;->F(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    const-string v0, "MGtv!@$123AdGoodBoy"

    invoke-static {p0, v0}, Ln4d;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mgmi/f/f;->c:Ljava/lang/String;

    .line 7
    :cond_1
    sget-object p0, Lcom/mgmi/f/f;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "imgotv-aphone-7.5.4"

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgmi/f/f;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/mgmi/f/f;->d:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lmpd;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    const-string v0, "MGtv!@$123AdGoodBoy"

    invoke-static {p0, v0}, Ln4d;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mgmi/f/f;->d:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_1
    sget-object p0, Lcom/mgmi/f/f;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)I
    .locals 1

    .line 4
    invoke-static {}, Lcom/mgmi/ads/api/e/e;->a()Lcom/mgmi/ads/api/e/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ads/api/e/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 5
    :cond_0
    invoke-static {p0}, Lmpd;->y(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ssp/MGTVAdFactory;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/ssp/MGTVAdFactory;->getUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static i(Landroid/content/Context;)I
    .locals 0

    .line 2
    invoke-static {p0}, Lmpd;->A(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static i()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lmpd;->E(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lmpd;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 4
    invoke-static {p0}, Lmpd;->C(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, ""

    return-object v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->h(Landroid/content/Context;)Lcn/com/custommma/mobile/tracking/util/LocationCollector;

    move-result-object p0

    invoke-virtual {p0}, Lcn/com/custommma/mobile/tracking/util/LocationCollector;->i()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/mgmi/f/f;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ssp"

    return-object v0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-static {}, Lcom/mgmi/ssp/MGTVAdFactory;->getInstance()Lcom/mgmi/ssp/MGTVAdFactory;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mgmi/ssp/MGTVAdFactory;->getOaid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static o()I
    .locals 1

    sget v0, Lcom/mgmi/f/f;->h:I

    return v0
.end method

.method public static p()I
    .locals 1

    sget v0, Lcom/mgmi/f/f;->i:I

    return v0
.end method

.method public static q()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static r()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static t()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static u()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
