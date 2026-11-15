.class public Lcom/mgtv/ssp/utils/language/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/mgtv/ssp/utils/language/b;


# instance fields
.field private a:Lcom/mgtv/ssp/utils/language/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mgtv/ssp/utils/language/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/ssp/utils/language/b;->b:Lcom/mgtv/ssp/utils/language/b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/mgtv/ssp/utils/language/b;

    invoke-direct {v0}, Lcom/mgtv/ssp/utils/language/b;-><init>()V

    sput-object v0, Lcom/mgtv/ssp/utils/language/b;->b:Lcom/mgtv/ssp/utils/language/b;

    .line 3
    :cond_0
    sget-object v0, Lcom/mgtv/ssp/utils/language/b;->b:Lcom/mgtv/ssp/utils/language/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/mgtv/ssp/utils/language/b;->a:Lcom/mgtv/ssp/utils/language/a;

    if-nez v0, :cond_0

    .line 11
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ssp_api_cache"

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/ssp/utils/language/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/b;->a:Lcom/mgtv/ssp/utils/language/a;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/utils/language/a;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {p1, p2}, Lcom/mgtv/ssp/utils/language/a;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/mgtv/ssp/utils/language/a;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/ssp/utils/language/b;->a:Lcom/mgtv/ssp/utils/language/a;

    .line 5
    const-string p2, "key_api_cache_version"

    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/utils/language/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 6
    const-string v0, "1.3"

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/mgtv/ssp/utils/language/b;->a:Lcom/mgtv/ssp/utils/language/a;

    invoke-virtual {p1}, Lcom/mgtv/ssp/utils/language/a;->a()V

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/b;->a:Lcom/mgtv/ssp/utils/language/a;

    invoke-virtual {p0, p2, v0}, Lcom/mgtv/ssp/utils/language/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/mgtv/ssp/utils/language/b;->a:Lcom/mgtv/ssp/utils/language/a;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/ssp/utils/language/a;->a(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
