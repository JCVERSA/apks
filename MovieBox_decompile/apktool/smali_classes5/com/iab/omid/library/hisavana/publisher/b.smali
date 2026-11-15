.class public Lcom/iab/omid/library/hisavana/publisher/b;
.super Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;
.source "source.java"


# instance fields
.field private f:Landroid/webkit/WebView;

.field private g:Ljava/lang/Long;

.field private final h:Ljava/util/Map;

.field private final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/iab/omid/library/hisavana/publisher/b;->g:Ljava/lang/Long;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/iab/omid/library/hisavana/publisher/b;->h:Ljava/util/Map;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/iab/omid/library/hisavana/publisher/b;->i:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic v(Lcom/iab/omid/library/hisavana/publisher/b;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iab/omid/library/hisavana/publisher/b;->f:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public f(Lcom/iab/omid/library/hisavana/adsession/h;Lcom/iab/omid/library/hisavana/adsession/d;)V
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/iab/omid/library/hisavana/adsession/d;->e()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/String;

    .line 29
    .line 30
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Lcom/iab/omid/library/hisavana/adsession/g;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/iab/omid/library/hisavana/adsession/g;->f()Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-static {v0, v3, v4}, Lle/c;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->g(Lcom/iab/omid/library/hisavana/adsession/h;Lcom/iab/omid/library/hisavana/adsession/d;Lorg/json/JSONObject;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public l()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->l()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/publisher/b;->g:Ljava/lang/Long;

    .line 5
    .line 6
    const-wide/16 v1, 0xfa0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    move-wide v3, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    .line 14
    invoke-static {}, Lle/f;->b()J

    .line 15
    .line 16
    .line 17
    move-result-wide v3

    .line 18
    iget-object v5, p0, Lcom/iab/omid/library/hisavana/publisher/b;->g:Ljava/lang/Long;

    .line 19
    .line 20
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    sub-long/2addr v3, v5

    .line 25
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 26
    .line 27
    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    :goto_0
    sub-long/2addr v1, v3

    .line 32
    const-wide/16 v3, 0x7d0

    .line 33
    .line 34
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    new-instance v2, Landroid/os/Handler;

    .line 39
    .line 40
    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 41
    .line 42
    .line 43
    new-instance v3, Lcom/iab/omid/library/hisavana/publisher/b$b;

    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/iab/omid/library/hisavana/publisher/b$b;-><init>(Lcom/iab/omid/library/hisavana/publisher/b;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/publisher/b;->f:Landroid/webkit/WebView;

    .line 53
    .line 54
    return-void
.end method

.method public u()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->u()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/iab/omid/library/hisavana/publisher/b;->w()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method w()V
    .locals 5

    .line 1
    new-instance v0, Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/g;->c()Lcom/iab/omid/library/hisavana/internal/g;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/iab/omid/library/hisavana/internal/g;->a()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/publisher/b;->f:Landroid/webkit/WebView;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/publisher/b;->f:Landroid/webkit/WebView;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/publisher/b;->f:Landroid/webkit/WebView;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/publisher/b;->f:Landroid/webkit/WebView;

    .line 44
    .line 45
    new-instance v1, Lcom/iab/omid/library/hisavana/publisher/b$a;

    .line 46
    .line 47
    invoke-direct {v1, p0}, Lcom/iab/omid/library/hisavana/publisher/b$a;-><init>(Lcom/iab/omid/library/hisavana/publisher/b;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/publisher/b;->f:Landroid/webkit/WebView;

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Lcom/iab/omid/library/hisavana/publisher/AdSessionStatePublisher;->c(Landroid/webkit/WebView;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/iab/omid/library/hisavana/publisher/b;->f:Landroid/webkit/WebView;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/iab/omid/library/hisavana/publisher/b;->i:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {v0, v1, v2}, Lcom/iab/omid/library/hisavana/internal/h;->o(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/iab/omid/library/hisavana/publisher/b;->h:Ljava/util/Map;

    .line 70
    .line 71
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/String;

    .line 90
    .line 91
    iget-object v2, p0, Lcom/iab/omid/library/hisavana/publisher/b;->h:Ljava/util/Map;

    .line 92
    .line 93
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lcom/iab/omid/library/hisavana/adsession/g;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/iab/omid/library/hisavana/adsession/g;->c()Ljava/net/URL;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-static {}, Lcom/iab/omid/library/hisavana/internal/h;->a()Lcom/iab/omid/library/hisavana/internal/h;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iget-object v4, p0, Lcom/iab/omid/library/hisavana/publisher/b;->f:Landroid/webkit/WebView;

    .line 112
    .line 113
    invoke-virtual {v3, v4, v2, v1}, Lcom/iab/omid/library/hisavana/internal/h;->p(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lle/f;->b()J

    .line 118
    .line 119
    .line 120
    move-result-wide v0

    .line 121
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    iput-object v0, p0, Lcom/iab/omid/library/hisavana/publisher/b;->g:Ljava/lang/Long;

    .line 126
    .line 127
    return-void
.end method
