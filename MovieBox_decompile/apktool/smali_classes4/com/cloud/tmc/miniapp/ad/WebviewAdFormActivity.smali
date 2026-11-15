.class public final Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;
.super Lcom/cloud/tmc/miniapp/ui/WebViewActivity;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$OooO00o;,
        Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;
    }
.end annotation


# static fields
.field public static final OooOOo0:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$OooO00o;


# instance fields
.field public OooO:I

.field public final OooO00o:Ljava/lang/String;

.field public final OooO0O0:I

.field public OooO0OO:I

.field public final OooO0Oo:Ljava/lang/String;

.field public final OooO0o:Ljava/lang/String;

.field public final OooO0o0:Ljava/lang/String;

.field public final OooO0oO:I

.field public OooO0oo:Ljava/lang/String;

.field public OooOO0:Ljava/lang/String;

.field public OooOO0O:Ljava/lang/String;

.field public OooOO0o:Ljava/lang/String;

.field public OooOOO:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

.field public OooOOO0:Landroid/os/Bundle;

.field public OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

.field public OooOOOo:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOo0:Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "WebviewAdFormActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0O0:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0OO:I

    .line 13
    .line 14
    const-string v0, "sspWebView"

    .line 15
    .line 16
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0Oo:Ljava/lang/String;

    .line 17
    .line 18
    const-string v0, "height"

    .line 19
    .line 20
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0o0:Ljava/lang/String;

    .line 21
    .line 22
    const-string v0, "formId"

    .line 23
    .line 24
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0o:Ljava/lang/String;

    .line 25
    .line 26
    const/16 v0, 0x320

    .line 27
    .line 28
    iput v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oO:I

    .line 29
    .line 30
    new-instance v0, Landroid/os/Bundle;

    .line 31
    .line 32
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    .line 36
    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOo:J

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final OooO00o()V
    .locals 5

    .line 8
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOo:J

    sub-long/2addr v1, v3

    const-string v3, "web_duration"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 9
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOo:J

    const-string v3, "event_ts"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 10
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oo:Ljava/lang/String;

    const-string v2, "web_url"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-class v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;

    .line 12
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

    sget-object v2, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;->ad_web_callback:Lcom/cloud/tmc/kernel/proxy/performanceanalyse/AdAnalyseType;

    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    const-string v4, ""

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/cloud/tmc/kernel/proxy/performanceanalyse/PerformanceAnalyseProxy;->record(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/performanceanalyse/IPerformanceAnalyseType;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final OooO00o(Lcom/cloud/tmc/ad/bean/FormBean;)V
    .locals 8

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;

    .line 2
    invoke-static {}, Lcom/cloud/tmc/integration/net/UrlKt;->getURL_FORM()Ljava/lang/String;

    move-result-object v2

    .line 3
    const-string v0, "Accept-Timezone"

    const-string v3, "UTC"

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Lkotlin/Pair;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lkotlin/collections/MapsKt;->j([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v3

    .line 4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 5
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    new-instance v7, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;

    invoke-direct {v7, p0, p1}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$realSubmitForm$1;-><init>(Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;Lcom/cloud/tmc/ad/bean/FormBean;)V

    move-object v5, p1

    .line 7
    invoke-interface/range {v1 .. v7}, Lcom/cloud/tmc/kernel/proxy/network/INetWorkProxy;->postJson(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Boolean;Lcom/cloud/tmc/kernel/proxy/network/IResponseCallback;)V

    return-void
.end method

.method public final OooO00o(Ljava/lang/String;)V
    .locals 3

    .line 13
    const-class v0, Lcom/cloud/tmc/integration/structure/AppManager;

    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cloud/tmc/integration/structure/AppManager;

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/cloud/tmc/integration/structure/AppManager;->findApp(Ljava/lang/String;)Lcom/cloud/tmc/integration/structure/App;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;

    const-string v2, "formPage"

    invoke-direct {v1, v2}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    const-string p1, "ad_click"

    invoke-static {p1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/cloud/tmc/kernel/coreimpl/eventcenter/DefaultEvent;->setData(Ljava/util/Map;)V

    .line 18
    const-class p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-static {p1}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;

    invoke-interface {p1, v0}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenterFactory;->getEventCenterInstance(Lcom/cloud/tmc/kernel/node/Node;)Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 19
    const-string v0, "adFromPage"

    invoke-interface {p1, v0, v1}, Lcom/cloud/tmc/kernel/proxy/eventcenter/IEventCenter;->postEvent(Ljava/lang/String;Lcom/cloud/tmc/kernel/proxy/eventcenter/IEvent;)V

    :cond_0
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
    const-string v1, "ad_web_form_url"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oo:Ljava/lang/String;

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
    const-string v1, "ad_web_ad_info"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "adsDTO"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "pointData"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0O:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "appId"

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

    .line 67
    .line 68
    new-instance v1, Lcom/google/gson/GsonBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$initData$gson$1;

    .line 74
    .line 75
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$initData$gson$1;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    new-instance v3, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;

    .line 83
    .line 84
    invoke-direct {v3}, Lcom/cloud/tmc/integration/utils/ObjectTypeAdapter;-><init>()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    new-instance v2, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$initData$_dataMap$1;

    .line 100
    .line 101
    invoke-direct {v2}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$initData$_dataMap$1;-><init>()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Ljava/util/Map;

    .line 113
    .line 114
    sget-object v1, Lcom/cloud/tmc/integration/utils/BundleUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/BundleUtil;

    .line 115
    .line 116
    const-string v2, "_dataMap"

    .line 117
    .line 118
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO0:Landroid/os/Bundle;

    .line 122
    .line 123
    invoke-virtual {v1, v0, v2}, Lcom/cloud/tmc/integration/utils/BundleUtil;->parse(Ljava/util/Map;Landroid/os/Bundle;)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0O:Ljava/lang/String;

    .line 127
    .line 128
    const-class v1, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 129
    .line 130
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 137
    .line 138
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0:Ljava/lang/String;

    .line 139
    .line 140
    const-class v1, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 141
    .line 142
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniutils/util/GsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    check-cast v0, Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 147
    .line 148
    iput-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o:Ljava/lang/String;

    .line 153
    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string v3, "parse AdForm info fail: "

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-static {v1, v0}, Lcom/cloud/tmc/kernel/utils/TraceLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    :goto_0
    iget v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oO:I

    .line 175
    .line 176
    const/4 v1, 0x0

    .line 177
    :try_start_1
    iget-object v2, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oo:Ljava/lang/String;

    .line 178
    .line 179
    if-eqz v2, :cond_4

    .line 180
    .line 181
    sget-object v0, Lcom/cloud/tmc/integration/utils/UrlUtil;->INSTANCE:Lcom/cloud/tmc/integration/utils/UrlUtil;

    .line 182
    .line 183
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0o0:Ljava/lang/String;

    .line 184
    .line 185
    invoke-virtual {v0, v3, v2}, Lcom/cloud/tmc/integration/utils/UrlUtil;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    if-nez v3, :cond_1

    .line 190
    .line 191
    const-string v3, "0"

    .line 192
    .line 193
    :cond_1
    iget-object v4, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0o:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {v0, v4, v2}, Lcom/cloud/tmc/integration/utils/UrlUtil;->getParamValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    if-eqz v0, :cond_2

    .line 200
    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    goto :goto_1

    .line 206
    :cond_2
    move v0, v1

    .line 207
    :goto_1
    iput v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO:I

    .line 208
    .line 209
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_3

    .line 214
    .line 215
    iget v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oO:I

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_3
    int-to-float v0, v0

    .line 219
    invoke-static {p0, v0}, Lcom/cloud/tmc/integration/utils/DimensionUtil;->dip2px(Landroid/content/Context;F)I

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    :goto_2
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 232
    .line 233
    mul-int/lit8 v2, v2, 0x4

    .line 234
    .line 235
    div-int/lit8 v2, v2, 0x5

    .line 236
    .line 237
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 238
    .line 239
    .line 240
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 241
    goto :goto_3

    .line 242
    :catch_1
    iget v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oO:I

    .line 243
    .line 244
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMFlWb()Landroid/widget/FrameLayout;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    const/4 v3, 0x0

    .line 249
    if-eqz v2, :cond_5

    .line 250
    .line 251
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    goto :goto_4

    .line 256
    :cond_5
    move-object v2, v3

    .line 257
    :goto_4
    instance-of v4, v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 258
    .line 259
    if-eqz v4, :cond_6

    .line 260
    .line 261
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 262
    .line 263
    goto :goto_5

    .line 264
    :cond_6
    move-object v2, v3

    .line 265
    :goto_5
    if-eqz v2, :cond_8

    .line 266
    .line 267
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 276
    .line 277
    mul-int/lit8 v4, v4, 0x4

    .line 278
    .line 279
    div-int/lit8 v4, v4, 0x5

    .line 280
    .line 281
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 282
    .line 283
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 284
    .line 285
    const/16 v0, 0x11

    .line 286
    .line 287
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 288
    .line 289
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 290
    .line 291
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getMFlWb()Landroid/widget/FrameLayout;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    if-nez v0, :cond_7

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_7
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    .line 300
    .line 301
    :cond_8
    :goto_6
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->getWb()Lcom/cloud/tmc/kernel/render/IWebView;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    instance-of v2, v0, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 306
    .line 307
    if-eqz v2, :cond_9

    .line 308
    .line 309
    check-cast v0, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 310
    .line 311
    goto :goto_7

    .line 312
    :cond_9
    move-object v0, v3

    .line 313
    :goto_7
    const/4 v2, 0x1

    .line 314
    if-eqz v0, :cond_a

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 341
    .line 342
    .line 343
    move-result-object v4

    .line 344
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 348
    .line 349
    .line 350
    move-result-object v4

    .line 351
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-virtual {v4, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 366
    .line 367
    .line 368
    new-instance v4, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;

    .line 369
    .line 370
    iget v5, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO:I

    .line 371
    .line 372
    invoke-direct {v4, p0, v5}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity$SspWebWindow;-><init>(Landroid/app/Activity;I)V

    .line 373
    .line 374
    .line 375
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0Oo:Ljava/lang/String;

    .line 376
    .line 377
    invoke-virtual {v0, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    :cond_a
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 381
    .line 382
    if-eqz v0, :cond_10

    .line 383
    .line 384
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 385
    .line 386
    if-eqz v0, :cond_10

    .line 387
    .line 388
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    const-string v4, ""

    .line 393
    .line 394
    if-nez v0, :cond_b

    .line 395
    .line 396
    move-object v0, v4

    .line 397
    :cond_b
    invoke-static {v0}, Lcom/cloud/tmc/ad/TrackingManager;->isEagllwinLink(Ljava/lang/String;)Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_d

    .line 402
    .line 403
    sget-object v0, Lcom/cloud/tmc/ad/TrackingManager;->INSTANCE:Lcom/cloud/tmc/ad/TrackingManager;

    .line 404
    .line 405
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOO:Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 406
    .line 407
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 408
    .line 409
    .line 410
    iget-object v5, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 411
    .line 412
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 413
    .line 414
    .line 415
    new-instance v6, Lcom/cloud/tmc/ad/bean/AdExtraBean;

    .line 416
    .line 417
    iget-object v7, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

    .line 418
    .line 419
    if-nez v7, :cond_c

    .line 420
    .line 421
    goto :goto_8

    .line 422
    :cond_c
    move-object v4, v7

    .line 423
    :goto_8
    const-class v7, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 424
    .line 425
    invoke-static {v7}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v7

    .line 429
    check-cast v7, Lcom/cloud/tmc/kernel/intf/IPackageConfig;

    .line 430
    .line 431
    invoke-interface {v7}, Lcom/cloud/tmc/kernel/intf/IPackageConfig;->getSDKVersion()Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v7

    .line 435
    const-string v8, "get(\n                   \u2026             ).sdkVersion"

    .line 436
    .line 437
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    invoke-direct {v6, v4, v1, v7}, Lcom/cloud/tmc/ad/bean/AdExtraBean;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0, v3, v5, v6, v2}, Lcom/cloud/tmc/ad/TrackingManager;->reportServerJoinField(Lcom/cloud/tmc/ad/bean/DownUpPointBean;Lcom/cloud/tmc/ad/bean/response/AdsDTO;Lcom/cloud/tmc/ad/bean/AdExtraBean;Z)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    goto :goto_a

    .line 451
    :cond_d
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

    .line 452
    .line 453
    if-eqz v0, :cond_e

    .line 454
    .line 455
    invoke-virtual {v0}, Lcom/cloud/tmc/ad/bean/response/AdsProtocolBean;->getClickUrl()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    :cond_e
    if-nez v3, :cond_f

    .line 460
    .line 461
    goto :goto_9

    .line 462
    :cond_f
    move-object v4, v3

    .line 463
    :goto_9
    invoke-virtual {p0, v4}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Ljava/lang/String;)V

    .line 464
    .line 465
    .line 466
    :cond_10
    :goto_a
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO0oo:Ljava/lang/String;

    .line 471
    .line 472
    const-string v2, "pageUri"

    .line 473
    .line 474
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    .line 476
    .line 477
    invoke-super {p0}, Lcom/cloud/tmc/miniapp/ui/WebViewActivity;->initData()V

    .line 478
    .line 479
    .line 480
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o()V

    .line 481
    .line 482
    .line 483
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
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOO0o:Ljava/lang/String;

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
    const-string v2, "formPage"

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
    const-string v2, "adFromPage"

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
    invoke-virtual {p0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooOOOO:Lcom/cloud/tmc/ad/bean/response/AdsDTO;

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
    invoke-virtual {p0, v0}, Lcom/cloud/tmc/miniapp/ad/WebviewAdFormActivity;->OooO00o(Ljava/lang/String;)V

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
