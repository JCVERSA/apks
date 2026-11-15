.class public final Lu7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lqx7;

.field public final b:Landroid/webkit/WebView;

.field public final c:Ljava/util/List;

.field public final d:Ljava/util/Map;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;


# direct methods
.method public constructor <init>(Lqx7;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu7;->c:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lu7;->d:Ljava/util/Map;

    iput-object p1, p0, Lu7;->a:Lqx7;

    iput-object p2, p0, Lu7;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lu7;->e:Ljava/lang/String;

    iput-object p7, p0, Lu7;->h:Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    if-eqz p4, :cond_0

    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llob;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p0, Lu7;->d:Ljava/util/Map;

    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Lu7;->g:Ljava/lang/String;

    iput-object p6, p0, Lu7;->f:Ljava/lang/String;

    return-void
.end method

.method public static a(Lqx7;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lu7;
    .locals 10

    const-string v0, "Partner is null"

    invoke-static {p0, v0}, Lagd;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OM SDK JS script content is null"

    invoke-static {p1, v0}, Lagd;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "VerificationScriptResources is null"

    invoke-static {p2, v0}, Lagd;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const/16 v0, 0x100

    const-string v1, "CustomReferenceData is greater than 256 characters"

    invoke-static {p4, v0, v1}, Lagd;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    new-instance v0, Lu7;

    sget-object v9, Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;->NATIVE:Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    const/4 v4, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lu7;-><init>(Lqx7;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;)V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;
    .locals 0

    iget-object p0, p0, Lu7;->h:Lcom/iab/omid/library/hisavana/adsession/AdSessionContextType;

    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu7;->g:Ljava/lang/String;

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu7;->f:Ljava/lang/String;

    return-object p0
.end method

.method public e()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lu7;->d:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lu7;->e:Ljava/lang/String;

    return-object p0
.end method

.method public g()Lqx7;
    .locals 0

    iget-object p0, p0, Lu7;->a:Lqx7;

    return-object p0
.end method

.method public h()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lu7;->c:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public i()Landroid/webkit/WebView;
    .locals 0

    iget-object p0, p0, Lu7;->b:Landroid/webkit/WebView;

    return-object p0
.end method
