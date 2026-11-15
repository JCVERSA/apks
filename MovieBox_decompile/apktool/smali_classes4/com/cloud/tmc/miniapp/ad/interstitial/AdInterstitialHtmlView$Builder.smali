.class public final Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;
.super Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;
.source "source.java"

# interfaces
.implements Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;
.implements Lcom/cloud/tmc/kernel/render/WebviewPageCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder$CheckMaterial;
    }
.end annotation


# instance fields
.field public OooO:Lcom/cloud/tmc/kernel/render/IWebView;

.field public final OooO0oO:Ljava/lang/String;

.field public OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

.field public OooOO0:Landroid/widget/FrameLayout;

.field public OooOO0O:Landroid/widget/ImageView;

.field public OooOO0o:Landroid/widget/ImageView;

.field public OooOOO:Z

.field public OooOOO0:Landroid/widget/ImageView;

.field public OooOOOO:Z

.field public OooOOOo:Z

.field public OooOOo:F

.field public OooOOo0:F

.field public OooOOoo:F

.field public final OooOo0:Landroid/view/ViewGroup$LayoutParams;

.field public OooOo00:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/cloud/tmc/ad/interface/AdEventListener;)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "context"

    .line 4
    .line 5
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "triggerId"

    .line 9
    .line 10
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v2, "htmlData"

    .line 14
    .line 15
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v2, "scale"

    .line 19
    .line 20
    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0, p1}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    .line 27
    .line 28
    iput-object p5, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 29
    .line 30
    const-string p2, "<script>\n\twindow.addEventListener(\'error\', function(e) {\n\t\tvar target = e.srcElement;\n\t\tvar tagName = target.tagName;\n\t\tif (tagName && tagName.toUpperCase() === \'IMG\' && target) {\n\t\t\tconst {\n\t\t\t\twidth,\n\t\t\t\theight\n\t\t\t} = target.getBoundingClientRect();\n\t\t\tvar isShow = window.getComputedStyle(target).getPropertyValue(\'display\').toUpperCase() !== \"NONE\" ||\n\t\t\t\tfalse;\n\t\t\tvar isShow1 = window.getComputedStyle(target).getPropertyValue(\'visibility\').toUpperCase() !==\n\t\t\t\t\"HIDDEN\" || false;\n\t\t\tif (typeof width == \"number\" && width > 1 && isShow && isShow1) {\n\t\t\t\twindow.loadError && window.loadError.loadMaterialError && window.loadError.loadMaterialError(target\n\t\t\t\t\t.src)\n\t\t\t}\n\t\t}\n\t}, true)\n</script>"

    .line 31
    .line 32
    new-instance p4, Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    const/4 p5, -0x2

    .line 35
    const/4 v2, -0x1

    .line 36
    invoke-direct {p4, v2, p5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOo0:Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    :try_start_0
    sget p4, Lcom/cloud/tmc/ad/R$layout;->view_interstitial_html_style:I

    .line 42
    .line 43
    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setContentView(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v1}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setCanceledOnTouchOutside(Z)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v2}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setAnimStyle(I)Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;

    .line 50
    .line 51
    .line 52
    sget p4, Lcom/cloud/tmc/miniapp/R$id;->iv_close:I

    .line 53
    .line 54
    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p4

    .line 58
    check-cast p4, Landroid/widget/ImageView;

    .line 59
    .line 60
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0O:Landroid/widget/ImageView;

    .line 61
    .line 62
    sget p4, Lcom/cloud/tmc/miniapp/R$id;->fl_wb:I

    .line 63
    .line 64
    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p4

    .line 68
    check-cast p4, Landroid/widget/FrameLayout;

    .line 69
    .line 70
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    sget p4, Lcom/cloud/tmc/ad/R$id;->iv_ad:I

    .line 73
    .line 74
    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p4

    .line 78
    check-cast p4, Landroid/widget/ImageView;

    .line 79
    .line 80
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0o:Landroid/widget/ImageView;

    .line 81
    .line 82
    sget p4, Lcom/cloud/tmc/ad/R$id;->iv_homepage:I

    .line 83
    .line 84
    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p4

    .line 88
    check-cast p4, Landroid/widget/ImageView;

    .line 89
    .line 90
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOO0:Landroid/widget/ImageView;

    .line 91
    .line 92
    iget-object p4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    if-eqz p4, :cond_0

    .line 95
    .line 96
    invoke-virtual {p4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 97
    .line 98
    .line 99
    move-result-object p4

    .line 100
    if-eqz p4, :cond_0

    .line 101
    .line 102
    new-instance p5, Lcom/cloud/tmc/miniapp/ad/interstitial/b;

    .line 103
    .line 104
    invoke-direct {p5, p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/b;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p4, p5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 108
    .line 109
    .line 110
    :cond_0
    const-class p4, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    .line 111
    .line 112
    invoke-static {p4}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    check-cast p4, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;

    .line 117
    .line 118
    invoke-interface {p4, p1}, Lcom/cloud/tmc/kernel/proxy/render/IWebViewFactory;->createWebView(Landroid/content/Context;)Lcom/cloud/tmc/kernel/render/IWebView;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    const/4 p4, 0x0

    .line 123
    if-eqz p1, :cond_1

    .line 124
    .line 125
    invoke-interface {p1, p0}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageEventCallback(Lcom/cloud/tmc/kernel/render/WebviewPageEventCallback;)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p1, p0}, Lcom/cloud/tmc/kernel/render/IWebView;->registerPageCallback(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    move-object p1, p4

    .line 133
    :goto_0
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 134
    .line 135
    if-eqz p1, :cond_2

    .line 136
    .line 137
    const-string p5, "open AdInterstitialHtmlView"

    .line 138
    .line 139
    invoke-interface {p1, p5}, Lcom/cloud/tmc/kernel/render/IWebView;->setAppId(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_2
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 143
    .line 144
    if-eqz p1, :cond_3

    .line 145
    .line 146
    new-instance p5, Lcom/cloud/tmc/integration/structure/node/PageNode;

    .line 147
    .line 148
    const-string v4, ""

    .line 149
    .line 150
    const-string v5, ""

    .line 151
    .line 152
    const/4 v6, 0x0

    .line 153
    const/4 v7, 0x0

    .line 154
    const/4 v3, 0x0

    .line 155
    move-object v2, p5

    .line 156
    invoke-direct/range {v2 .. v7}, Lcom/cloud/tmc/integration/structure/node/PageNode;-><init>(Lcom/cloud/tmc/integration/structure/App;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V

    .line 157
    .line 158
    .line 159
    invoke-interface {p1, p5}, Lcom/cloud/tmc/kernel/render/IWebView;->setNode(Lcom/cloud/tmc/kernel/node/Node;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 163
    .line 164
    if-eqz p1, :cond_4

    .line 165
    .line 166
    invoke-interface {p1}, Lcom/cloud/tmc/kernel/render/IWebView;->create()V

    .line 167
    .line 168
    .line 169
    :cond_4
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 170
    .line 171
    instance-of p5, p1, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 172
    .line 173
    if-eqz p5, :cond_5

    .line 174
    .line 175
    move-object p4, p1

    .line 176
    check-cast p4, Lcom/cloud/tmc/render/system/SystemWebView;

    .line 177
    .line 178
    :cond_5
    if-eqz p4, :cond_6

    .line 179
    .line 180
    invoke-virtual {p4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 185
    .line 186
    .line 187
    invoke-static {p4}, Lcom/cloud/tmc/integration/utils/ext/ViewExtKt;->removeSelf(Landroid/view/View;)V

    .line 188
    .line 189
    .line 190
    new-instance p1, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder$CheckMaterial;

    .line 191
    .line 192
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder$CheckMaterial;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;)V

    .line 193
    .line 194
    .line 195
    const-string p5, "loadError"

    .line 196
    .line 197
    invoke-virtual {p4, p1, p5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance p1, Lcom/cloud/tmc/miniapp/ad/interstitial/c;

    .line 201
    .line 202
    invoke-direct {p1, p0}, Lcom/cloud/tmc/miniapp/ad/interstitial/c;-><init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p4, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 206
    .line 207
    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    const-string v5, "text/html"

    .line 224
    .line 225
    const-string v6, "utf-8"

    .line 226
    .line 227
    const/4 v7, 0x0

    .line 228
    const/4 v3, 0x0

    .line 229
    move-object v2, p4

    .line 230
    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    .line 234
    .line 235
    if-eqz p1, :cond_6

    .line 236
    .line 237
    invoke-virtual {p1, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 238
    .line 239
    .line 240
    :cond_6
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0O:Landroid/widget/ImageView;

    .line 241
    .line 242
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0o:Landroid/widget/ImageView;

    .line 243
    .line 244
    iget-object p3, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOO0:Landroid/widget/ImageView;

    .line 245
    .line 246
    const/4 p4, 0x3

    .line 247
    new-array p4, p4, [Landroid/view/View;

    .line 248
    .line 249
    aput-object p1, p4, v1

    .line 250
    .line 251
    aput-object p2, p4, v0

    .line 252
    .line 253
    const/4 p1, 0x2

    .line 254
    aput-object p3, p4, p1

    .line 255
    .line 256
    invoke-virtual {p0, p4}, Lcom/cloud/tmc/miniapp/dialog/OooO0O0$OooO00o;->setOnClickListener([Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .line 258
    .line 259
    :catchall_0
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    .line 2
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOO:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOO:Z

    .line 4
    invoke-static {}, Lcom/cloud/tmc/miniutils/util/ScreenUtils;->getScreenHeight()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe147ae147ae148L    # 0.54

    mul-double/2addr v1, v3

    double-to-int v1, v1

    if-le v0, v1, :cond_2

    .line 5
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOo0:Landroid/view/ViewGroup$LayoutParams;

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 6
    iget-object p0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public static final OooO00o(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOoo:F

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOo00:F

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOo0:F

    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOo:F

    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public OooO00o()I
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public OooO00o(Lcom/cloud/tmc/ad/bean/AdShowBean;)V
    .locals 3

    const-string v0, "adShowBean"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, p1}, Lcom/cloud/tmc/ad/interface/AdEventListener;->showResult(Ljava/lang/String;ZLcom/cloud/tmc/ad/bean/AdShowBean;)V

    :cond_0
    return-void
.end method

.method public OooO0O0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final OooO0Oo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/cloud/tmc/kernel/render/IWebView;->destroy()V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO:Lcom/cloud/tmc/kernel/render/IWebView;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 16
    .line 17
    .line 18
    :cond_1
    iput-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 19
    .line 20
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/cloud/tmc/integration/utils/FastClickUtil;->isFastDoubleClick()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0O:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 22
    .line 23
    if-eqz p1, :cond_5

    .line 24
    .line 25
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    .line 26
    .line 27
    new-instance v8, Lcom/cloud/tmc/ad/bean/AdClickBean;

    .line 28
    .line 29
    const/4 v6, 0x7

    .line 30
    const/4 v7, 0x0

    .line 31
    const/4 v2, 0x0

    .line 32
    const-wide/16 v3, 0x0

    .line 33
    .line 34
    const/4 v5, 0x0

    .line 35
    move-object v1, v8

    .line 36
    invoke-direct/range {v1 .. v7}, Lcom/cloud/tmc/ad/bean/AdClickBean;-><init>(IJLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdBaseDialog;->OooO0O0:I

    .line 40
    .line 41
    invoke-virtual {v8, v1}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowTimes(I)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    invoke-virtual {v8}, Lcom/cloud/tmc/ad/bean/AdClickBean;->getShowDuration()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    sub-long/2addr v1, v3

    .line 53
    invoke-virtual {v8, v1, v2}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowDuration(J)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    move-object v1, v2

    .line 71
    :goto_0
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    .line 72
    .line 73
    if-eqz v3, :cond_2

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, "*"

    .line 92
    .line 93
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v8, v1}, Lcom/cloud/tmc/ad/bean/AdClickBean;->setShowArea(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    invoke-interface {p1, v0, v8}, Lcom/cloud/tmc/ad/interface/AdEventListener;->closeAd(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/AdClickBean;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0o:Landroid/widget/ImageView;

    .line 113
    .line 114
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_4

    .line 119
    .line 120
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 121
    .line 122
    if-eqz p1, :cond_5

    .line 123
    .line 124
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    .line 125
    .line 126
    invoke-interface {p1, v0}, Lcom/cloud/tmc/ad/interface/AdEventListener;->clickPersonalization(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_4
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOO0:Landroid/widget/ImageView;

    .line 131
    .line 132
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_5

    .line 137
    .line 138
    iget-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 139
    .line 140
    if-eqz p1, :cond_5

    .line 141
    .line 142
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    .line 143
    .line 144
    invoke-interface {p1, v0}, Lcom/cloud/tmc/ad/interface/AdEventListener;->clickHomePage(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    :goto_1
    return-void
.end method

.method public onConsoleMessage(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1

    .line 1
    const/16 p1, 0x64

    .line 2
    .line 3
    if-eq p2, p1, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOOO:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-ne p2, p1, :cond_1

    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOOO:Z

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOOO:Z

    .line 17
    .line 18
    iget-boolean p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOOo:Z

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 23
    .line 24
    if-eqz p2, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {p2, v0, p1}, Lcom/cloud/tmc/ad/interface/AdEventListener;->fillingResult(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public synthetic onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/cloud/tmc/kernel/render/d;->a(Lcom/cloud/tmc/kernel/render/WebviewPageCallback;Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public onRequestFocus()V
    .locals 0

    .line 1
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Ljava/lang/Boolean;
    .locals 7

    .line 1
    iget v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOo0:F

    .line 2
    .line 3
    iget v2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOo:F

    .line 4
    .line 5
    iget v3, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOOoo:F

    .line 6
    .line 7
    iget v4, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOo00:F

    .line 8
    .line 9
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    move v6, p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v6, v0

    .line 21
    :goto_0
    iget-object p2, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooOO0:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    move v5, p2

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move v5, v0

    .line 32
    :goto_1
    new-instance p2, Lcom/cloud/tmc/ad/bean/DownUpPointBean;

    .line 33
    .line 34
    move-object v0, p2

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/cloud/tmc/ad/bean/DownUpPointBean;-><init>(FFFFII)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oo:Lcom/cloud/tmc/ad/interface/AdEventListener;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO0oO:Ljava/lang/String;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    :goto_2
    invoke-interface {v0, v1, p2, p1}, Lcom/cloud/tmc/ad/interface/AdEventListener;->click(Ljava/lang/String;Lcom/cloud/tmc/ad/bean/DownUpPointBean;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    return-object p1
.end method
