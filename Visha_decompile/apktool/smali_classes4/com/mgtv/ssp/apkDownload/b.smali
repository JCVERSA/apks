.class public Lcom/mgtv/ssp/apkDownload/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgtv/ssp/apkDownload/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mgtv/ssp/apkDownload/e;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/hunantv/imgo/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mgtv/ssp/apkDownload/b;->b:Landroid/content/Context;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mgtv/ssp/apkDownload/b;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mgtv/ssp/apkDownload/b$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mgtv/ssp/apkDownload/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/mgtv/ssp/apkDownload/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgtv/ssp/apkDownload/b$a;->a:Lcom/mgtv/ssp/apkDownload/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/mgtv/ssp/apkDownload/e;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/apkDownload/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/b;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/apkDownload/e;

    return-object p0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 6
    iget-object v3, p0, Lcom/mgtv/ssp/apkDownload/b;->b:Landroid/content/Context;

    if-eqz v3, :cond_2

    .line 7
    new-instance v1, Lcom/mgtv/ssp/apkDownload/e;

    iget-object v3, p0, Lcom/mgtv/ssp/apkDownload/b;->b:Landroid/content/Context;

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-direct {v1, v3, v2}, Lcom/mgtv/ssp/apkDownload/e;-><init>(Landroid/content/Context;I)V

    .line 8
    iput v0, v1, Lcom/mgtv/ssp/apkDownload/e;->b:I

    .line 9
    invoke-virtual {v1}, Lcom/mgtv/ssp/apkDownload/e;->a()V

    .line 10
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/b;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v1
.end method

.method public a(Ljava/lang/String;I)Lcom/mgtv/ssp/apkDownload/e;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/mgtv/ssp/apkDownload/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/b;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgtv/ssp/apkDownload/e;

    return-object p0

    .line 14
    :cond_1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 15
    new-instance v1, Lcom/mgtv/ssp/apkDownload/e;

    iget-object v2, p0, Lcom/mgtv/ssp/apkDownload/b;->b:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/mgtv/ssp/apkDownload/e;-><init>(Landroid/content/Context;I)V

    .line 16
    iput v0, v1, Lcom/mgtv/ssp/apkDownload/e;->b:I

    .line 17
    invoke-virtual {v1}, Lcom/mgtv/ssp/apkDownload/e;->a()V

    .line 18
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/b;->a:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/b;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/ssp/apkDownload/b;->a:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
