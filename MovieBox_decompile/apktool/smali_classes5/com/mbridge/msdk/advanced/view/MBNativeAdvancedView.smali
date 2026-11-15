.class public Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;
.super Landroid/widget/RelativeLayout;
.source "source.java"


# static fields
.field private static i:Ljava/lang/String; = "MBAdvancedNativeView"


# instance fields
.field private a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

.field private b:Landroid/view/View;

.field private c:Z

.field private d:Z

.field private e:Z

.field f:Lcom/mbridge/msdk/widget/MBAdChoice;

.field private g:Lcom/mbridge/msdk/advanced/signal/b;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->h:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;)Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->i:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 12
    .line 13
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->c()V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->b:Landroid/view/View;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/high16 v2, 0x41e00000    # 28.0f

    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/high16 v3, 0x41800000    # 16.0f

    .line 52
    .line 53
    invoke-static {v2, v3}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 58
    .line 59
    .line 60
    const/16 v1, 0xa

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 63
    .line 64
    .line 65
    const/16 v1, 0xb

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    const/high16 v2, 0x40000000    # 2.0f

    .line 75
    .line 76
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1, v2}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 91
    .line 92
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->b:Landroid/view/View;

    .line 93
    .line 94
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->b:Landroid/view/View;

    .line 99
    .line 100
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->f:Lcom/mbridge/msdk/widget/MBAdChoice;

    .line 104
    .line 105
    if-nez v0, :cond_3

    .line 106
    .line 107
    new-instance v0, Lcom/mbridge/msdk/widget/MBAdChoice;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-direct {v0, v1}, Lcom/mbridge/msdk/widget/MBAdChoice;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->f:Lcom/mbridge/msdk/widget/MBAdChoice;

    .line 117
    .line 118
    new-instance v1, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView$a;

    .line 119
    .line 120
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView$a;-><init>(Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/widget/MBAdChoice;->setFeedbackDialogEventListener(Lcom/mbridge/msdk/foundation/feedback/a;)V

    .line 124
    .line 125
    .line 126
    :cond_3
    return-void
.end method

.method private c()V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aget v2, v0, v2

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    aget v0, v0, v3

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-static {v1, v2, v0, v3, v4}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->transInfoForMraid(Landroid/webkit/WebView;IIII)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 31
    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->g:Lcom/mbridge/msdk/advanced/signal/b;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 40
    .line 41
    new-instance v1, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView$b;

    .line 42
    .line 43
    invoke-direct {v1, p0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView$b;-><init>(Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public static transInfoForMraid(Landroid/webkit/WebView;IIII)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "true"

    .line 4
    .line 5
    sget-object v2, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->i:Ljava/lang/String;

    .line 6
    .line 7
    const-string v7, "transInfoForMraid"

    .line 8
    .line 9
    invoke-static {v2, v7}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 29
    .line 30
    new-instance v3, Lorg/json/JSONObject;

    .line 31
    .line 32
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "orientation"

    .line 36
    .line 37
    const/4 v5, 0x2

    .line 38
    if-ne v2, v5, :cond_0

    .line 39
    .line 40
    const-string v2, "landscape"

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :cond_0
    const/4 v5, 0x1

    .line 47
    if-ne v2, v5, :cond_1

    .line 48
    .line 49
    const-string v2, "portrait"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string v2, "undefined"

    .line 53
    .line 54
    :goto_0
    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    const-string v2, "locked"

    .line 58
    .line 59
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->n(Landroid/content/Context;)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    int-to-float v8, v2

    .line 75
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->m(Landroid/content/Context;)I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    int-to-float v9, v2

    .line 88
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/k0;->v(Landroid/content/Context;)Ljava/util/HashMap;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const-string v4, "width"

    .line 101
    .line 102
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    check-cast v4, Ljava/lang/Integer;

    .line 107
    .line 108
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 109
    .line 110
    .line 111
    move-result v10

    .line 112
    const-string v4, "height"

    .line 113
    .line 114
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Ljava/lang/Integer;

    .line 119
    .line 120
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    new-instance v12, Ljava/util/HashMap;

    .line 125
    .line 126
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v2, "placementType"

    .line 130
    .line 131
    const-string v4, "inline"

    .line 132
    .line 133
    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    const-string v2, "state"

    .line 137
    .line 138
    const-string v4, "default"

    .line 139
    .line 140
    invoke-virtual {v12, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const-string v2, "viewable"

    .line 144
    .line 145
    invoke-virtual {v12, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    const-string v1, "currentAppOrientation"

    .line 149
    .line 150
    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    move/from16 v2, p1

    .line 158
    .line 159
    int-to-float v13, v2

    .line 160
    move/from16 v2, p2

    .line 161
    .line 162
    int-to-float v14, v2

    .line 163
    move/from16 v2, p3

    .line 164
    .line 165
    int-to-float v15, v2

    .line 166
    move/from16 v2, p4

    .line 167
    .line 168
    int-to-float v6, v2

    .line 169
    move-object/from16 v2, p0

    .line 170
    .line 171
    move v3, v13

    .line 172
    move v4, v14

    .line 173
    move v5, v15

    .line 174
    move/from16 v16, v6

    .line 175
    .line 176
    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Landroid/webkit/WebView;FFFF)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    move-object/from16 v2, p0

    .line 184
    .line 185
    move v3, v13

    .line 186
    move v4, v14

    .line 187
    move v5, v15

    .line 188
    move/from16 v6, v16

    .line 189
    .line 190
    invoke-virtual/range {v1 .. v6}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;FFFF)V

    .line 191
    .line 192
    .line 193
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1, v0, v8, v9}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->b(Landroid/webkit/WebView;FF)V

    .line 198
    .line 199
    .line 200
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    int-to-float v2, v10

    .line 205
    int-to-float v3, v11

    .line 206
    invoke-virtual {v1, v0, v2, v3}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;FF)V

    .line 207
    .line 208
    .line 209
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v1, v0, v12}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    .line 214
    .line 215
    .line 216
    invoke-static {}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a()Lcom/mbridge/msdk/mbsignalcommon/mraid/a;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/mbsignalcommon/mraid/a;->a(Landroid/webkit/WebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :goto_1
    sget-object v1, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->i:Ljava/lang/String;

    .line 225
    .line 226
    invoke-static {v1, v7, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    .line 228
    .line 229
    :goto_2
    return-void
.end method


# virtual methods
.method public changeCloseBtnState(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne p1, v1, :cond_0

    .line 7
    .line 8
    const/16 p1, 0x8

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public clearResState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->e:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->d:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->c:Z

    .line 7
    .line 8
    return-void
.end method

.method public clearResStateAndRemoveClose()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->clearResState()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->b:Landroid/view/View;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->b:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->f:Lcom/mbridge/msdk/widget/MBAdChoice;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->f:Lcom/mbridge/msdk/widget/MBAdChoice;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public destroy()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->isDestoryed()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->release()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 20
    .line 21
    const-string v1, "onSystemDestory"

    .line 22
    .line 23
    const-string v2, ""

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lcom/mbridge/msdk/advanced/signal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->h:Landroid/content/Context;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->h:Landroid/content/Context;

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public getAdvancedNativeSignalCommunicationImpl()Lcom/mbridge/msdk/advanced/signal/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->g:Lcom/mbridge/msdk/advanced/signal/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdvancedNativeWebview()Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCloseView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->b:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public isEndCardReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public isH5Ready()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public isVideoReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public resetLoadState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->e:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->d:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->c:Z

    .line 7
    .line 8
    return-void
.end method

.method public setAdChoiceCampaign(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->f:Lcom/mbridge/msdk/widget/MBAdChoice;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/widget/MBAdChoice;->setCampaign(Lcom/mbridge/msdk/out/Campaign;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->f:Lcom/mbridge/msdk/widget/MBAdChoice;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 17
    .line 18
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/high16 v1, 0x40c00000    # 6.0f

    .line 27
    .line 28
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-static {v2, v1}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0xb

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 50
    .line 51
    .line 52
    const/16 v0, 0xc

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->f:Lcom/mbridge/msdk/widget/MBAdChoice;

    .line 58
    .line 59
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->f:Lcom/mbridge/msdk/widget/MBAdChoice;

    .line 64
    .line 65
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method public setAdvancedNativeSignalCommunicationImpl(Lcom/mbridge/msdk/advanced/signal/b;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->g:Lcom/mbridge/msdk/advanced/signal/b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setAdvancedNativeWebview(Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->a:Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedWebview;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->g:Lcom/mbridge/msdk/advanced/signal/b;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/mbsignalcommon/windvane/WindVaneWebView;->setObject(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setCloseView(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->b:Landroid/view/View;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const-string v0, "closeButton"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setEndCardReady(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method public setH5Ready(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->c:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoReady(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->b()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mbridge/msdk/advanced/view/MBNativeAdvancedView;->clearResState()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
