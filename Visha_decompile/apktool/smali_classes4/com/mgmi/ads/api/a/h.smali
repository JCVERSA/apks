.class public Lcom/mgmi/ads/api/a/h;
.super Lcom/mgmi/ads/api/a/g;
.source "SourceFile"


# instance fields
.field k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTChannelAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/mgmi/model/VASTChannelAd;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTChannelAd;",
            ">;",
            "Lcom/mgmi/model/VASTChannelAd;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p3, p4}, Lcom/mgmi/ads/api/a/g;-><init>(Landroid/content/Context;Lcom/mgmi/model/VASTChannelAd;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/mgmi/ads/api/a/h;->k:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/mgmi/model/VASTChannelAd;)V
    .locals 3

    .line 7
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->m()Lcom/mgmi/ads/api/a/d;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 8
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mgmi/model/VASTAd;->setDisplayWdith(I)V

    .line 9
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/mgmi/model/VASTAd;->setDisplayHeight(I)V

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/mgmi/ads/api/a/g;->c:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 11
    new-instance p2, Lcom/mgtv/a/b/a;

    invoke-direct {p2}, Lcom/mgtv/a/b/a;-><init>()V

    iput-object p2, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    .line 12
    invoke-virtual {p2, p0}, Lcom/mgtv/a/b/a/a;->a(Lcom/mgtv/a/b/a/b;)V

    .line 13
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->j()Lcom/mgmi/ads/api/a;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 14
    iget-object p2, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->j()Lcom/mgmi/ads/api/a;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mgtv/a/b/a/a;->a(Lcom/mgmi/ads/api/a;)V

    .line 15
    :cond_1
    new-instance p2, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;-><init>(Landroid/content/Context;)V

    .line 16
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BANNER containerLayout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    iget-object v1, p0, Lcom/mgmi/ads/api/a/g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lcom/mgtv/a/b/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    if-eqz p1, :cond_2

    .line 18
    invoke-interface {p1}, Lcom/mgmi/ads/api/a/d;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz p1, :cond_3

    .line 20
    iget-object p2, p0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {p1, p2}, Lcom/mgtv/a/b/a/a;->b(Ljava/lang/Object;)Z

    goto :goto_0

    .line 21
    :cond_2
    new-instance p1, Lcom/mgmi/ads/api/a/h$1;

    invoke-direct {p1, p0, p2}, Lcom/mgmi/ads/api/a/h$1;-><init>(Lcom/mgmi/ads/api/a/h;Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;)V

    invoke-virtual {p2, p1}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->setAttachedToWindowListener(Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout$a;)V

    .line 22
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mgmi/ads/api/a/g;->j:Ljava/util/List;

    if-nez p1, :cond_4

    .line 23
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mgmi/ads/api/a/g;->j:Ljava/util/List;

    .line 24
    :cond_4
    iget-object p1, p0, Lcom/mgmi/ads/api/a/g;->j:Ljava/util/List;

    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/mgmi/model/VASTChannelAd;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getStaticResources()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getStaticResources()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 26
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->isZipResource()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 29
    :try_start_0
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mgmi/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 32
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getRoolTime()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/g;->b(I)V

    return-void

    :cond_0
    const/4 p1, 0x0

    const v0, 0x497d2

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/mgmi/ads/api/a/g;->a(ZI)V

    goto :goto_2

    .line 36
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mgmi/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    :goto_1
    invoke-virtual {p0, v2}, Lcom/mgmi/ads/api/a/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 39
    invoke-static {}, Lcom/mgmi/ads/api/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mgmi/ads/api/a/g;->a(Lcom/mgmi/model/VASTChannelAd;Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static a(Ljava/util/List;)Z
    .locals 0
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTChannelAd;",
            ">;)Z"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/mgmi/ads/api/e/a;->a(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lcom/mgmi/model/VASTChannelAd;)Z
    .locals 0

    .line 16
    invoke-static {p0}, Lcom/mgmi/ads/api/e/a;->a(Lcom/mgmi/model/VASTChannelAd;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(ILjava/lang/Object;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mgmi/ads/api/a/g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/mgtv/a/b/a/a;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Z

    .line 4
    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    invoke-virtual {p0}, Lcom/mgtv/a/b/a/a;->g_()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->j()Lcom/mgmi/ads/api/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    sget-object p1, Lcom/mgmi/ads/api/a$a;->AD_RENDER_FAIL:Lcom/mgmi/ads/api/a$a;

    .line 52
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->j()Lcom/mgmi/ads/api/a;

    move-result-object p0

    new-instance p3, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v0, ""

    invoke-direct {p3, v0}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;->setErrorCode(I)Lcom/mgmi/ads/api/render/AdWidgetInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method

.method public a(ZLcom/mgmi/e/a;)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/b/a/a;->a(ZLcom/mgmi/e/a;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 43
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 45
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 46
    iget-object p1, p0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getRoolTime()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/g;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return v1

    .line 48
    :goto_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ccc  e "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public b(Landroid/view/ViewGroup;)I
    .locals 1

    .line 3
    invoke-super {p0, p1}, Lcom/mgmi/ads/api/a/g;->b(Landroid/view/ViewGroup;)I

    .line 4
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->h()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x4

    return p0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/mgtv/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mgmi/ads/api/a/g;->i:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_5

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->a()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/mgmi/ads/api/a/g;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    invoke-direct {p0, p1, v0}, Lcom/mgmi/ads/api/a/h;->a(Landroid/content/Context;Lcom/mgmi/model/VASTChannelAd;)V

    .line 10
    iget-object p1, p0, Lcom/mgmi/ads/api/a/h;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/mgmi/ads/api/a/h;->a(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getRoolTime()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/g;->b(I)V

    goto :goto_0

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    invoke-static {p1}, Lcom/mgmi/ads/api/a/h;->b(Lcom/mgmi/model/VASTChannelAd;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getRoolTime()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mgmi/ads/api/a/g;->b(I)V

    goto :goto_0

    .line 14
    :cond_4
    :try_start_0
    iget-object p1, p0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    invoke-direct {p0, p1}, Lcom/mgmi/ads/api/a/h;->a(Lcom/mgmi/model/VASTChannelAd;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public b()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/mgtv/a/b/a;->d_()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/b/a;->d()V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    invoke-super {p0}, Lcom/mgmi/ads/api/a/g;->k()V

    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->a:Lcom/mgmi/model/VASTChannelAd;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mgmi/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mgmi/ads/api/a/h;->a(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public o()V
    .locals 3

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->j()Lcom/mgmi/ads/api/a;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_RENDER_SUCCESS:Lcom/mgmi/ads/api/a$a;

    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/mgmi/ads/api/a/g;->e:Lcom/mgtv/a/b/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/b/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->j()Lcom/mgmi/ads/api/a;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->IMAGE_AD_START:Lcom/mgmi/ads/api/a$a;

    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method

.method public r()V
    .locals 3

    invoke-virtual {p0}, Lcom/mgmi/ads/api/a/g;->j()Lcom/mgmi/ads/api/a;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/mgmi/ads/api/a$a;->AD_FINISH:Lcom/mgmi/ads/api/a$a;

    new-instance v1, Lcom/mgmi/ads/api/render/AdWidgetInfo;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/mgmi/ads/api/render/AdWidgetInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mgmi/ads/api/a;->onAdListener(Lcom/mgmi/ads/api/a$a;Lcom/mgmi/ads/api/AdWidgetInfoImp;)V

    :cond_0
    return-void
.end method
