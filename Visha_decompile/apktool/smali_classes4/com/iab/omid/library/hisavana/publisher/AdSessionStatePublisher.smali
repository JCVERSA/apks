.class public abstract Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ld7d;

.field public c:Lz5;

.field public d:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

.field public e:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a()V

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    new-instance p1, Ld7d;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ld7d;-><init>(Landroid/webkit/WebView;)V

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->b:Ld7d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lqed;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->e:J

    sget-object v0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->a:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    return-void
.end method

.method public b(F)V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->s()Landroid/webkit/WebView;

    move-result-object v1

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1}, Lcom/iab/omid/library/hisavana/internal/h;->c(Landroid/webkit/WebView;Ljava/lang/String;F)V

    return-void
.end method

.method public c(Lz5;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->c:Lz5;

    return-void
.end method

.method public d(Lt7;)V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->s()Landroid/webkit/WebView;

    move-result-object v1

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lt7;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p0, p1}, Lcom/iab/omid/library/hisavana/internal/h;->e(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public e(Le3d;Lu7;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->f(Le3d;Lu7;Lorg/json/JSONObject;)V

    return-void
.end method

.method public f(Le3d;Lu7;Lorg/json/JSONObject;)V
    .locals 6

    invoke-virtual {p1}, Le3d;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string p1, "environment"

    const-string v0, "app"

    invoke-static {v3, p1, v0}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lu7;->b()Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    move-result-object p1

    const-string v1, "adSessionType"

    invoke-static {v3, v1, p1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ly6d;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "deviceInfo"

    invoke-static {v3, v1, p1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lt1d;->a()Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/iab/omid/library/hisavana/adsession/DeviceCategory;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "deviceCategory"

    invoke-static {v3, v1, p1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    const-string v1, "clid"

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "vlid"

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v1, "supports"

    invoke-static {v3, v1, p1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lu7;->g()Lqx7;

    move-result-object v1

    invoke-virtual {v1}, Lqx7;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerName"

    invoke-static {p1, v4, v1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lu7;->g()Lqx7;

    move-result-object v1

    invoke-virtual {v1}, Lqx7;->c()Ljava/lang/String;

    move-result-object v1

    const-string v4, "partnerVersion"

    invoke-static {p1, v4, v1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "omidNativeInfo"

    invoke-static {v3, v1, p1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "libraryVersion"

    const-string v4, "1.5.4-Hisavana"

    invoke-static {p1, v1, v4}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lzfd;->c()Lzfd;

    move-result-object v1

    invoke-virtual {v1}, Lzfd;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "appId"

    invoke-static {p1, v4, v1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3, v0, p1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lu7;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lu7;->c()Ljava/lang/String;

    move-result-object p1

    const-string v0, "contentUrl"

    invoke-static {v3, v0, p1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Lu7;->d()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lu7;->d()Ljava/lang/String;

    move-result-object p1

    const-string v0, "customReferenceData"

    invoke-static {v3, v0, p1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2}, Lu7;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llob;

    invoke-virtual {p2}, Llob;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Llob;->e()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v0, p2}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->s()Landroid/webkit/WebView;

    move-result-object v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/iab/omid/library/hisavana/internal/h;->f(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public g(Landroid/webkit/WebView;)V
    .locals 1

    new-instance v0, Ld7d;

    invoke-direct {v0, p1}, Ld7d;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->b:Ld7d;

    return-void
.end method

.method public h(Ljava/lang/String;J)V
    .locals 2

    iget-wide v0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->e:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    iget-object p2, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    sget-object p3, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->c:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    if-eq p2, p3, :cond_0

    iput-object p3, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->s()Landroid/webkit/WebView;

    move-result-object p3

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {p2, p3, p0, p1}, Lcom/iab/omid/library/hisavana/internal/h;->l(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public i(Ljava/util/Date;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "timestamp"

    invoke-static {v0, v1, p1}, Lk8d;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    move-result-object p1

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->s()Landroid/webkit/WebView;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/iab/omid/library/hisavana/internal/h;->i(Landroid/webkit/WebView;Lorg/json/JSONObject;)V

    return-void
.end method

.method public j(Lorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->s()Landroid/webkit/WebView;

    move-result-object v1

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1}, Lcom/iab/omid/library/hisavana/internal/h;->m(Landroid/webkit/WebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public k(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "foregrounded"

    goto :goto_0

    :cond_0
    const-string p1, "backgrounded"

    :goto_0
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->s()Landroid/webkit/WebView;

    move-result-object v1

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1}, Lcom/iab/omid/library/hisavana/internal/h;->n(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public l()V
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->b:Ld7d;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->clear()V

    return-void
.end method

.method public m(Ljava/lang/String;J)V
    .locals 2

    iget-wide v0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->e:J

    cmp-long p2, p2, v0

    if-ltz p2, :cond_0

    sget-object p2, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;->b:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    iput-object p2, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->d:Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher$a;

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    move-result-object p2

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->s()Landroid/webkit/WebView;

    move-result-object p3

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {p2, p3, p0, p1}, Lcom/iab/omid/library/hisavana/internal/h;->l(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public n(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "locked"

    goto :goto_0

    :cond_0
    const-string p1, "unlocked"

    :goto_0
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->s()Landroid/webkit/WebView;

    move-result-object v1

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1}, Lcom/iab/omid/library/hisavana/internal/h;->d(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public o()Lz5;
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->c:Lz5;

    return-object p0
.end method

.method public p()Z
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->b:Ld7d;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public q()V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->s()Landroid/webkit/WebView;

    move-result-object v1

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/iab/omid/library/hisavana/internal/h;->b(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public r()V
    .locals 2

    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->s()Landroid/webkit/WebView;

    move-result-object v1

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/iab/omid/library/hisavana/internal/h;->k(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public s()Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->b:Ld7d;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/webkit/WebView;

    return-object p0
.end method

.method public t()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->j(Lorg/json/JSONObject;)V

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method
