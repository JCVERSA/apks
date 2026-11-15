.class Lcom/mbridge/msdk/splash/view/MBSplashView$a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/splash/view/MBSplashView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/splash/view/MBSplashView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/splash/view/MBSplashView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$a;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const-string v0, "webviewshow"

    .line 2
    .line 3
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    const/4 v4, 0x2

    .line 15
    :try_start_1
    new-array v5, v4, [I

    .line 16
    .line 17
    iget-object v6, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$a;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 18
    .line 19
    invoke-static {v6}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 24
    .line 25
    .line 26
    invoke-static {}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v8, "coordinate:"

    .line 36
    .line 37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    aget v8, v5, v3

    .line 41
    .line 42
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v8, "--"

    .line 46
    .line 47
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    aget v8, v5, v2

    .line 51
    .line 52
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-static {v6, v7}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v6, Lorg/json/JSONObject;

    .line 63
    .line 64
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v7, "startX"

    .line 68
    .line 69
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 70
    .line 71
    .line 72
    move-result-object v8

    .line 73
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    aget v9, v5, v3

    .line 78
    .line 79
    int-to-float v9, v9

    .line 80
    invoke-static {v8, v9}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Landroid/content/Context;F)I

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    const-string v7, "startY"

    .line 88
    .line 89
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v8

    .line 97
    aget v5, v5, v2

    .line 98
    .line 99
    int-to-float v5, v5

    .line 100
    invoke-static {v8, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Landroid/content/Context;F)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    goto :goto_0

    .line 112
    :catchall_0
    move-exception v5

    .line 113
    :try_start_2
    invoke-static {}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-static {v6, v7, v5}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    :goto_0
    new-array v5, v4, [I

    .line 125
    .line 126
    iget-object v6, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$a;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 127
    .line 128
    invoke-static {v6}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 133
    .line 134
    .line 135
    iget-object v6, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$a;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 136
    .line 137
    invoke-static {v6}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    aget v3, v5, v3

    .line 142
    .line 143
    aget v2, v5, v2

    .line 144
    .line 145
    iget-object v5, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$a;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 146
    .line 147
    invoke-static {v5}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    iget-object v7, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$a;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 156
    .line 157
    invoke-static {v7}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    invoke-static {v6, v3, v2, v5, v7}, Lcom/mbridge/msdk/splash/view/MBSplashView;->transInfoForMraid(Landroid/webkit/WebView;IIII)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    iget-object v3, p0, Lcom/mbridge/msdk/splash/view/MBSplashView$a;->a:Lcom/mbridge/msdk/splash/view/MBSplashView;

    .line 185
    .line 186
    invoke-static {v3}, Lcom/mbridge/msdk/splash/view/MBSplashView;->a(Lcom/mbridge/msdk/splash/view/MBSplashView;)Lcom/mbridge/msdk/splash/view/MBSplashWebview;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v2, v3, v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    .line 197
    .line 198
    :goto_1
    return-void
.end method
