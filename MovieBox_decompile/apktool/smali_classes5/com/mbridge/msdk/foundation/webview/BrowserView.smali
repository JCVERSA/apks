.class public Lcom/mbridge/msdk/foundation/webview/BrowserView;
.super Landroid/widget/LinearLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/webview/BrowserView$e;
    }
.end annotation


# instance fields
.field private a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

.field private b:Ljava/lang/String;

.field private c:Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

.field private d:Landroid/webkit/WebView;

.field private e:Lcom/mbridge/msdk/foundation/webview/ProgressBar;

.field private f:Lcom/mbridge/msdk/foundation/webview/ToolBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 3
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->init()V

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Landroid/webkit/WebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic a(Lcom/mbridge/msdk/foundation/webview/BrowserView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 3
    new-instance v0, Lcom/mbridge/msdk/foundation/webview/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->e:Lcom/mbridge/msdk/foundation/webview/ProgressBar;

    .line 4
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d:Landroid/webkit/WebView;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 9
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 10
    :goto_1
    const-string v1, "BrowserView"

    const-string v2, "webview is error"

    invoke-static {v1, v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    :goto_2
    new-instance v0, Lcom/mbridge/msdk/foundation/webview/ToolBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/webview/ToolBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->f:Lcom/mbridge/msdk/foundation/webview/ToolBar;

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42200000    # 40.0f

    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->f:Lcom/mbridge/msdk/foundation/webview/ToolBar;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->f:Lcom/mbridge/msdk/foundation/webview/ToolBar;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 15
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->e:Lcom/mbridge/msdk/foundation/webview/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 16
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->f:Lcom/mbridge/msdk/foundation/webview/ToolBar;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/ToolBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->f:Lcom/mbridge/msdk/foundation/webview/ToolBar;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/BrowserView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->c:Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/mbridge/msdk/foundation/webview/BrowserView;)Lcom/mbridge/msdk/foundation/webview/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->e:Lcom/mbridge/msdk/foundation/webview/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const-string v2, "BrowserView"

    .line 4
    .line 5
    new-instance v3, Landroid/webkit/WebView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-direct {v3, v4}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    :try_start_0
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 19
    .line 20
    .line 21
    const/4 v5, -0x1

    .line 22
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 50
    .line 51
    .line 52
    sget-object v5, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    .line 53
    .line 54
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 55
    .line 56
    .line 57
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    .line 59
    const/16 v6, 0x1a

    .line 60
    .line 61
    if-lt v5, v6, :cond_0

    .line 62
    .line 63
    :try_start_1
    invoke-static {v4, v0}, Lcom/mbridge/msdk/foundation/webview/d;->a(Landroid/webkit/WebSettings;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v5

    .line 68
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v2, v5}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_1
    move-exception v0

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    :goto_0
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 85
    .line 86
    .line 87
    :try_start_3
    invoke-virtual {v4, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catch_0
    move-exception v5

    .line 92
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    invoke-static {v2, v5}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_1
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    const-string v6, "database"

    .line 107
    .line 108
    invoke-virtual {v5, v6, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 123
    .line 124
    .line 125
    :try_start_5
    const-class v5, Landroid/webkit/WebSettings;

    .line 126
    .line 127
    const-string v6, "setDisplayZoomControls"

    .line 128
    .line 129
    new-array v7, v1, [Ljava/lang/Class;

    .line 130
    .line 131
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 132
    .line 133
    aput-object v8, v7, v0

    .line 134
    .line 135
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v5, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 140
    .line 141
    .line 142
    new-array v1, v1, [Ljava/lang/Object;

    .line 143
    .line 144
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 145
    .line 146
    aput-object v6, v1, v0

    .line 147
    .line 148
    invoke-virtual {v5, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 149
    .line 150
    .line 151
    goto :goto_3

    .line 152
    :catch_1
    move-exception v0

    .line 153
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-static {v2, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    :goto_3
    new-instance v0, Lcom/mbridge/msdk/foundation/same/webview/a;

    .line 169
    .line 170
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->a:Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    .line 171
    .line 172
    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/webview/a;-><init>(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;

    .line 179
    .line 180
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/webview/BrowserView$b;-><init>(Lcom/mbridge/msdk/foundation/webview/BrowserView;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 184
    .line 185
    .line 186
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/k0;->r()I

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    const/16 v1, 0xa

    .line 191
    .line 192
    if-gt v0, v1, :cond_1

    .line 193
    .line 194
    new-instance v0, Lcom/mbridge/msdk/foundation/webview/BrowserView$c;

    .line 195
    .line 196
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/webview/BrowserView$c;-><init>(Lcom/mbridge/msdk/foundation/webview/BrowserView;)V

    .line 197
    .line 198
    .line 199
    goto :goto_4

    .line 200
    :cond_1
    new-instance v0, Lcom/mbridge/msdk/foundation/webview/BrowserView$d;

    .line 201
    .line 202
    invoke-direct {v0, p0}, Lcom/mbridge/msdk/foundation/webview/BrowserView$d;-><init>(Lcom/mbridge/msdk/foundation/webview/BrowserView;)V

    .line 203
    .line 204
    .line 205
    :goto_4
    invoke-virtual {v3, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 206
    .line 207
    .line 208
    return-object v3
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d:Landroid/webkit/WebView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d:Landroid/webkit/WebView;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "BrowserView"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-void
.end method

.method public init()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    .line 4
    .line 5
    const/16 v1, 0x11

    .line 6
    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/webview/BrowserView;->a()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->e:Lcom/mbridge/msdk/foundation/webview/ProgressBar;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/webview/ProgressBar;->initResource(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->f:Lcom/mbridge/msdk/foundation/webview/ToolBar;

    .line 19
    .line 20
    const-string v1, "backward"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->f:Lcom/mbridge/msdk/foundation/webview/ToolBar;

    .line 31
    .line 32
    const-string v2, "forward"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/mbridge/msdk/foundation/webview/ToolBar;->getItem(Ljava/lang/String;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->f:Lcom/mbridge/msdk/foundation/webview/ToolBar;

    .line 42
    .line 43
    new-instance v1, Lcom/mbridge/msdk/foundation/webview/BrowserView$a;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/foundation/webview/BrowserView$a;-><init>(Lcom/mbridge/msdk/foundation/webview/BrowserView;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/foundation/webview/ToolBar;->setOnItemClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d:Landroid/webkit/WebView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setListener(Lcom/mbridge/msdk/foundation/webview/BrowserView$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->c:Lcom/mbridge/msdk/foundation/webview/BrowserView$e;

    .line 2
    .line 3
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/webview/BrowserView;->d:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-void
.end method
