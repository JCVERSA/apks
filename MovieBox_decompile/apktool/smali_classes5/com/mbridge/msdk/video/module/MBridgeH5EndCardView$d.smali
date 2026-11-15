.class Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->webviewshow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;


# direct methods
.method constructor <init>(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

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
    .locals 11

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "webviewshow"

    .line 4
    .line 5
    const-string v2, "MBridgeBaseView"

    .line 6
    .line 7
    :try_start_0
    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/o0;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    :try_start_1
    new-array v5, v3, [I

    .line 13
    .line 14
    iget-object v6, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 15
    .line 16
    iget-object v6, v6, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 17
    .line 18
    invoke-virtual {v6, v5}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 19
    .line 20
    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v7, "coordinate:"

    .line 27
    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    aget v7, v5, v4

    .line 32
    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v7, "--"

    .line 37
    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    aget v8, v5, v7

    .line 43
    .line 44
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-static {v2, v6}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v6, Lorg/json/JSONObject;

    .line 55
    .line 56
    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-virtual {v8}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    if-eqz v8, :cond_0

    .line 68
    .line 69
    const-string v9, "startX"

    .line 70
    .line 71
    aget v10, v5, v4

    .line 72
    .line 73
    int-to-float v10, v10

    .line 74
    invoke-static {v8, v10}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Landroid/content/Context;F)I

    .line 75
    .line 76
    .line 77
    move-result v10

    .line 78
    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    const-string v9, "startY"

    .line 82
    .line 83
    aget v5, v5, v7

    .line 84
    .line 85
    int-to-float v5, v5

    .line 86
    invoke-static {v8, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->b(Landroid/content/Context;F)I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v6, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    .line 92
    .line 93
    sget-object v5, Lcom/mbridge/msdk/foundation/same/a;->l:Ljava/lang/String;

    .line 94
    .line 95
    invoke-static {v8}, Lcom/mbridge/msdk/foundation/tools/t0;->d(Landroid/content/Context;)F

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    float-to-double v7, v7

    .line 100
    invoke-virtual {v6, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catchall_0
    move-exception v5

    .line 105
    goto :goto_1

    .line 106
    :cond_0
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    goto :goto_2

    .line 111
    :goto_1
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-static {v2, v6, v5}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    .line 117
    .line 118
    move-object v2, v0

    .line 119
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    iget-object v5, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 136
    .line 137
    iget-object v5, v5, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 138
    .line 139
    invoke-virtual {v3, v5, v1, v2}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 143
    .line 144
    iget-object v1, v1, Lcom/mbridge/msdk/video/module/MBridgeBaseView;->notifyListener:Lcom/mbridge/msdk/video/module/listener/a;

    .line 145
    .line 146
    const/16 v2, 0x6d

    .line 147
    .line 148
    invoke-interface {v1, v2, v0}, Lcom/mbridge/msdk/video/module/listener/a;->a(ILjava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->f(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->startCounterEndCardShowTimer()V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a()Lcom/mbridge/msdk/mbsignalcommon/windvane/f;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 166
    .line 167
    iget-object v2, v1, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->p:Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;

    .line 168
    .line 169
    const-string v3, "oncutoutfetched"

    .line 170
    .line 171
    invoke-static {v1}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->g(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v1, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v0, v2, v3, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/f;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView$d;->a:Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;

    .line 187
    .line 188
    invoke-static {v0}, Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;->h(Lcom/mbridge/msdk/video/module/MBridgeH5EndCardView;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    .line 190
    .line 191
    goto :goto_3

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    .line 195
    .line 196
    :goto_3
    return-void
.end method
