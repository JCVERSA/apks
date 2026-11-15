.class public Lcom/mgmi/platform/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Landroid/content/Context; = null

.field private static c:Ljava/lang/String; = ""

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static f:Ljava/lang/String; = ""

.field private static g:I

.field private static h:I

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 0

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

.method public static a()Landroid/content/Context;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgmi/platform/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(I)V
    .locals 0

    .line 3
    sput p0, Lcom/mgmi/platform/e;->g:I

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 4
    sput-boolean p0, Lcom/mgmi/platform/e;->i:Z

    return-void
.end method

.method public static b()I
    .locals 1

    .line 2
    sget v0, Lcom/mgmi/platform/e;->g:I

    return v0
.end method

.method public static b(Landroid/content/Context;)I
    .locals 0

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

.method public static b(I)V
    .locals 0

    .line 3
    sput p0, Lcom/mgmi/platform/e;->h:I

    return-void
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lcom/mgmi/platform/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object p0, Lcom/mgmi/platform/e;->c:Ljava/lang/String;

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

    sput-object p0, Lcom/mgmi/platform/e;->c:Ljava/lang/String;

    .line 7
    :cond_1
    sget-object p0, Lcom/mgmi/platform/e;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static c()V
    .locals 0

    .line 1
    return-void
.end method

.method public static d()I
    .locals 2

    .line 7
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgmi/platform/e;->a(Landroid/content/Context;)I

    move-result v0

    .line 8
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/platform/e;->b(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgmi/platform/e;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/mgmi/platform/e;->d:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lmpd;->v(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    const-string v0, "MGtv!@$123AdGoodBoy"

    invoke-static {p0, v0}, Ln4d;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mgmi/platform/e;->d:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/mgmi/platform/e;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static e()I
    .locals 2

    .line 7
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgmi/platform/e;->a(Landroid/content/Context;)I

    move-result v0

    .line 8
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/platform/e;->b(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgmi/platform/e;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/mgmi/platform/e;->e:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lmpd;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    const-string v0, "MGtv!@$123AdGoodBoy"

    invoke-static {p0, v0}, Ln4d;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/mgmi/platform/e;->e:Ljava/lang/String;

    return-object p0

    .line 6
    :cond_1
    sget-object p0, Lcom/mgmi/platform/e;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static f()I
    .locals 2

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mgmi/platform/e;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mgmi/platform/e;->b(Landroid/content/Context;)I

    move-result v1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method
