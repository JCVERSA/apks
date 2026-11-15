.class public abstract Lcom/yandex/mobile/ads/impl/g9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/jo2;

.field private b:Lcom/yandex/mobile/ads/impl/p3;

.field private c:Lcom/yandex/mobile/ads/impl/dw0;

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/g9;->g()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/jo2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/impl/jo2;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final a(F)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    .line 3
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wo2;->a(Landroid/webkit/WebView;F)V

    return-void
.end method

.method public final a(Landroid/webkit/WebView;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/jo2;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/impl/jo2;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/c9;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    .line 7
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/c9;->d()Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wo2;->a(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/dw0;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g9;->c:Lcom/yandex/mobile/ads/impl/dw0;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/p3;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/g9;->b:Lcom/yandex/mobile/ads/impl/p3;

    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/impl/vn2;Lcom/yandex/mobile/ads/impl/d9;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lcom/yandex/mobile/ads/impl/g9;->a(Lcom/yandex/mobile/ads/impl/vn2;Lcom/yandex/mobile/ads/impl/d9;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/vn2;Lcom/yandex/mobile/ads/impl/d9;Lorg/json/JSONObject;)V
    .locals 5

    .line 10
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/vn2;->i()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "environment"

    const-string v2, "app"

    invoke-static {v0, v1, v2}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d9;->a()Lcom/yandex/mobile/ads/impl/e9;

    move-result-object v1

    const-string v3, "adSessionType"

    invoke-static {v0, v3, v1}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/yn2;->a()Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "deviceInfo"

    invoke-static {v0, v3, v1}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v3, "clid"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "vlid"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v3, "supports"

    invoke-static {v0, v3, v1}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d9;->f()Lcom/yandex/mobile/ads/impl/fg1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/fg1;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "partnerName"

    invoke-static {v1, v4, v3}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d9;->f()Lcom/yandex/mobile/ads/impl/fg1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/fg1;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "partnerVersion"

    invoke-static {v1, v4, v3}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "omidNativeInfo"

    invoke-static {v0, v3, v1}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "libraryVersion"

    const-string v4, "1.3.26-Yandex"

    invoke-static {v1, v3, v4}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/yandex/mobile/ads/impl/ro2;->a()Lcom/yandex/mobile/ads/impl/ro2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/mobile/ads/impl/ro2;->b()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "appId"

    invoke-static {v1, v4, v3}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d9;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d9;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentUrl"

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d9;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d9;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "customReferenceData"

    invoke-static {v0, v2, v1}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lcom/yandex/mobile/ads/impl/d9;->g()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/impl/eb2;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/eb2;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/impl/eb2;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/yandex/mobile/ads/impl/io2;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    .line 12
    invoke-static {p0, p1, v0, v1, p3}, Lcom/yandex/mobile/ads/impl/wo2;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .line 13
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    const/4 v0, 0x0

    .line 14
    invoke-static {p0, p1, v0}, Lcom/yandex/mobile/ads/impl/wo2;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/g9;->e:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    const/4 p2, 0x2

    iput p2, p0, Lcom/yandex/mobile/ads/impl/g9;->d:I

    .line 16
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    .line 17
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wo2;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    .line 19
    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/wo2;->a(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 20
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    .line 21
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wo2;->b(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 23
    const-string p1, "foregrounded"

    goto :goto_0

    :cond_0
    const-string p1, "backgrounded"

    .line 24
    :goto_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    .line 25
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wo2;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public final b(Ljava/lang/String;J)V
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/yandex/mobile/ads/impl/g9;->e:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    iget p2, p0, Lcom/yandex/mobile/ads/impl/g9;->d:I

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    iput p3, p0, Lcom/yandex/mobile/ads/impl/g9;->d:I

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    .line 4
    invoke-static {p0, p1}, Lcom/yandex/mobile/ads/impl/wo2;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final c()Lcom/yandex/mobile/ads/impl/p3;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->b:Lcom/yandex/mobile/ads/impl/p3;

    return-object p0
.end method

.method public final d()Lcom/yandex/mobile/ads/impl/dw0;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->c:Lcom/yandex/mobile/ads/impl/dw0;

    return-object p0
.end method

.method public final e()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wo2;->a(Landroid/webkit/WebView;)V

    return-void
.end method

.method public final f()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/g9;->a:Lcom/yandex/mobile/ads/impl/jo2;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wo2;->b(Landroid/webkit/WebView;)V

    return-void
.end method

.method public final g()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yandex/mobile/ads/impl/g9;->e:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/yandex/mobile/ads/impl/g9;->d:I

    return-void
.end method
