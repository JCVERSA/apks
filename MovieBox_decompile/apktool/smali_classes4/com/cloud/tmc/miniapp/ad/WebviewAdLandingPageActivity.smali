.class public final Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;
.super Lcom/cloud/tmc/miniapp/ui/WebViewActivity;
.source "source.java"


# instance fields
.field public OooO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

.field public final OooO00o:Ljava/lang/String;

.field public OooO0O0:Ljava/lang/String;

.field public OooO0OO:Ljava/lang/String;

.field public OooO0Oo:Ljava/lang/String;

.field public OooO0o:Ljava/lang/String;

.field public OooO0o0:Ljava/lang/String;

.field public OooO0oO:Landroid/os/Bundle;

.field public OooO0oo:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

.field public OooOO0:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "WebviewAdLandingPageActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO00o:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0oO:Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooOO0:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0oO:Landroid/os/Bundle;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooOO0:J

    sub-long/2addr v1, v3

    const-string v3, "web_duration"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0oO:Landroid/os/Bundle;

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooOO0:J

    const-string v3, "event_ts"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0oO:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0O0:Ljava/lang/String;

    const-string v2, "web_url"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 5
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0o:Ljava/lang/String;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->ad_web_callback:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0oO:Landroid/os/Bundle;

    const-string v4, ""

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 5

    .line 6
    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    const-string v2, "landingPage"

    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getCodeSeatType()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 10
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getClickTrackingUrls()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->R0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->l()Ljava/util/List;

    move-result-object p1

    :goto_1
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    .line 11
    :cond_3
    :goto_2
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_3
    const-string p1, "ad_click"

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setData(Ljava/util/Map;)V

    .line 13
    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 14
    const-string v0, "adLandingPage"

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_4
    return-void
.end method

.method public getViewThemeMode()Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public initData()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ad_landingPage_url"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0O0:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 20
    .line 21
    .line 22
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "adInfo"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0OO:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "adsDTO"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0Oo:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "pointData"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0o0:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "appId"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0o:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v0, Lcom/google/gson/GsonBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity$initData$gson$1;

    .line 76
    .line 77
    invoke-direct {v1}, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity$initData$gson$1;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;

    .line 85
    .line 86
    invoke-direct {v2}, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0OO:Ljava/lang/String;

    .line 102
    .line 103
    new-instance v2, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity$initData$_dataMap$1;

    .line 104
    .line 105
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity$initData$_dataMap$1;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Ljava/util/Map;

    .line 117
    .line 118
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0o0:Ljava/lang/String;

    .line 119
    .line 120
    const-class v2, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 121
    .line 122
    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 127
    .line 128
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0Oo:Ljava/lang/String;

    .line 131
    .line 132
    const-class v2, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 133
    .line 134
    invoke-static {v1, v2}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    check-cast v1, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 139
    .line 140
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 141
    .line 142
    sget-object v1, Lcom/cloud/tmc/integration/utils/BundleUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/BundleUtil;

    .line 143
    .line 144
    const-string v2, "_dataMap"

    .line 145
    .line 146
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0oO:Landroid/os/Bundle;

    .line 150
    .line 151
    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/BundleUtil;->parse(Ljava/util/Map;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    .line 153
    .line 154
    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO00o:Ljava/lang/String;

    .line 157
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    const-string v3, "parse LandingPage info fail: "

    .line 164
    .line 165
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getWb()Lcom/cloud/tmc/kernel/render/IWebView;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    instance-of v1, v0, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 183
    .line 184
    if-eqz v1, :cond_1

    .line 185
    .line 186
    check-cast v0, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_1
    const/4 v0, 0x0

    .line 190
    :goto_1
    const/4 v1, 0x1

    .line 191
    const/4 v2, 0x0

    .line 192
    if-eqz v0, :cond_2

    .line 193
    .line 194
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 219
    .line 220
    .line 221
    move-result-object v3

    .line 222
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v3, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 244
    .line 245
    .line 246
    new-instance v3, Lcom/cloud/tmc/render/method/ShellGameJsInterface;

    .line 247
    .line 248
    invoke-direct {v3}, Lcom/cloud/tmc/render/method/ShellGameJsInterface;-><init>()V

    .line 249
    .line 250
    .line 251
    const-string v4, "dltms"

    .line 252
    .line 253
    invoke-virtual {v0, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_2
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 257
    .line 258
    if-eqz v0, :cond_7

    .line 259
    .line 260
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 261
    .line 262
    if-nez v0, :cond_3

    .line 263
    .line 264
    goto :goto_3

    .line 265
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0O0:Ljava/lang/String;

    .line 266
    .line 267
    const-string v3, ""

    .line 268
    .line 269
    if-nez v0, :cond_4

    .line 270
    .line 271
    move-object v0, v3

    .line 272
    :cond_4
    invoke-static {v0}, Lcom/cloud/tmc/ad/TrackingManager;->isEagllwinLink(Ljava/lang/String;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_6

    .line 277
    .line 278
    sget-object v0, Lcom/cloud/tmc/ad/TrackingManager;->INSTANCE:Lcom/cloud/tmc/ad/TrackingManager;

    .line 279
    .line 280
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0oo:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 281
    .line 282
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 286
    .line 287
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    new-instance v6, Lcom/cloud/tmc/ad/bean/AdExtraBean;

    .line 291
    .line 292
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0o:Ljava/lang/String;

    .line 293
    .line 294
    if-nez v7, :cond_5

    .line 295
    .line 296
    goto :goto_2

    .line 297
    :cond_5
    move-object v3, v7

    .line 298
    :goto_2
    const-class v7, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 299
    .line 300
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    check-cast v7, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 305
    .line 306
    invoke-interface {v7}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getSDKVersion()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    const-string v8, "get(\n                   \u2026             ).sdkVersion"

    .line 311
    .line 312
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-direct {v6, v3, v2, v7}, Lcom/cloud/tmc/ad/bean/AdExtraBean;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/cloud/tmc/ad/TrackingManager;->reportServerJoinField(Lcom/cloud/tmc/ad/bean/DownUpPointBean;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Lcom/cloud/tmc/ad/bean/AdExtraBean;Z)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0O0:Ljava/lang/String;

    .line 323
    .line 324
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0O0:Ljava/lang/String;

    .line 329
    .line 330
    const-string v2, "pageUri"

    .line 331
    .line 332
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    .line 334
    .line 335
    goto :goto_4

    .line 336
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/base/BaseActivity;->finish()V

    .line 337
    .line 338
    .line 339
    :goto_4
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->initData()V

    .line 340
    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO00o()V

    .line 343
    .line 344
    .line 345
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0O0:Ljava/lang/String;

    .line 346
    .line 347
    if-eqz v0, :cond_8

    .line 348
    .line 349
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO00o(Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :cond_8
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO0o:Ljava/lang/String;

    .line 13
    .line 14
    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-class v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 19
    .line 20
    invoke-static {v1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    .line 25
    .line 26
    invoke-interface {v1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    .line 33
    .line 34
    const-string v2, "landingPage"

    .line 35
    .line 36
    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v2, "finish"

    .line 40
    .line 41
    const-string v3, "true"

    .line 42
    .line 43
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-static {v2}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setData(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    const-string v2, "adLandingPage"

    .line 57
    .line 58
    invoke-interface {v0, v2, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->onReceivedTitle(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO00o()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "it.toString()"

    .line 33
    .line 34
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdLandingPageActivity;->OooO00o(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string p2, "super.shouldOverrideUrlLoading(view, request)"

    .line 45
    .line 46
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-object p1
.end method
