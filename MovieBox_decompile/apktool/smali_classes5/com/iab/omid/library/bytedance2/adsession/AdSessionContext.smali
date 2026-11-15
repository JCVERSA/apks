.class public final Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final adSessionContextType:Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;

.field private final contentUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final customReferenceData:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final injectedResourcesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/bytedance2/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field private final omidJsScriptContent:Ljava/lang/String;

.field private final partner:Lcom/iab/omid/library/bytedance2/adsession/Partner;

.field private final verificationScriptResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/iab/omid/library/bytedance2/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Lcom/iab/omid/library/bytedance2/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;)V
    .locals 2
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/bytedance2/adsession/Partner;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/bytedance2/adsession/VerificationScriptResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->verificationScriptResources:Ljava/util/List;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->injectedResourcesMap:Ljava/util/Map;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->partner:Lcom/iab/omid/library/bytedance2/adsession/Partner;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->webView:Landroid/webkit/WebView;

    .line 21
    .line 22
    iput-object p3, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->omidJsScriptContent:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p7, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->adSessionContextType:Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;

    .line 25
    .line 26
    if-eqz p4, :cond_0

    .line 27
    .line 28
    invoke-interface {v0, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    .line 30
    .line 31
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_0

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Lcom/iab/omid/library/bytedance2/adsession/VerificationScriptResource;

    .line 46
    .line 47
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    iget-object p4, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->injectedResourcesMap:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iput-object p5, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->contentUrl:Ljava/lang/String;

    .line 62
    .line 63
    iput-object p6, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->customReferenceData:Ljava/lang/String;

    .line 64
    .line 65
    return-void
.end method

.method public static createHtmlAdSessionContext(Lcom/iab/omid/library/bytedance2/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "Partner is null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "WebView is null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x100

    .line 14
    .line 15
    const-string v1, "CustomReferenceData is greater than 256 characters"

    .line 16
    .line 17
    invoke-static {p3, v0, v1}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;

    .line 21
    .line 22
    sget-object v9, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;->HTML:Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v2, v0

    .line 27
    move-object v3, p0

    .line 28
    move-object v4, p1

    .line 29
    move-object v7, p2

    .line 30
    move-object v8, p3

    .line 31
    invoke-direct/range {v2 .. v9}, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;-><init>(Lcom/iab/omid/library/bytedance2/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public static createJavascriptAdSessionContext(Lcom/iab/omid/library/bytedance2/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "Partner is null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "WebView is null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    const/16 v0, 0x100

    .line 14
    .line 15
    const-string v1, "CustomReferenceData is greater than 256 characters"

    .line 16
    .line 17
    invoke-static {p3, v0, v1}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;

    .line 21
    .line 22
    sget-object v9, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;->JAVASCRIPT:Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    move-object v2, v0

    .line 27
    move-object v3, p0

    .line 28
    move-object v4, p1

    .line 29
    move-object v7, p2

    .line 30
    move-object v8, p3

    .line 31
    invoke-direct/range {v2 .. v9}, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;-><init>(Lcom/iab/omid/library/bytedance2/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public static createNativeAdSessionContext(Lcom/iab/omid/library/bytedance2/adsession/Partner;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;
    .locals 10
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/iab/omid/library/bytedance2/adsession/Partner;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/bytedance2/adsession/VerificationScriptResource;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;"
        }
    .end annotation

    .line 1
    const-string v0, "Partner is null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "OM SDK JS script content is null"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "VerificationScriptResources is null"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x100

    .line 19
    .line 20
    const-string v1, "CustomReferenceData is greater than 256 characters"

    .line 21
    .line 22
    invoke-static {p4, v0, v1}, Lcom/iab/omid/library/bytedance2/utils/g;->a(Ljava/lang/String;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    new-instance v0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;

    .line 26
    .line 27
    sget-object v9, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;->NATIVE:Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    move-object v2, v0

    .line 31
    move-object v3, p0

    .line 32
    move-object v5, p1

    .line 33
    move-object v6, p2

    .line 34
    move-object v7, p3

    .line 35
    move-object v8, p4

    .line 36
    invoke-direct/range {v2 .. v9}, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;-><init>(Lcom/iab/omid/library/bytedance2/adsession/Partner;Landroid/webkit/WebView;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method


# virtual methods
.method public getAdSessionContextType()Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->adSessionContextType:Lcom/iab/omid/library/bytedance2/adsession/AdSessionContextType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->contentUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomReferenceData()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->customReferenceData:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getInjectedResourcesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/iab/omid/library/bytedance2/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->injectedResourcesMap:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getOmidJsScriptContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->omidJsScriptContent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPartner()Lcom/iab/omid/library/bytedance2/adsession/Partner;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->partner:Lcom/iab/omid/library/bytedance2/adsession/Partner;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVerificationScriptResources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/iab/omid/library/bytedance2/adsession/VerificationScriptResource;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->verificationScriptResources:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iab/omid/library/bytedance2/adsession/AdSessionContext;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object v0
.end method
