.class public final Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;",
        "",
        "()V",
        "parseBaseCSStyle",
        "",
        "argsJo",
        "Lcom/google/gson/JsonObject;",
        "com.cloud.tmc.kernel"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;->INSTANCE:Lcom/cloud/tmc/kernel/minicover/NativeCSSParser;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final parseBaseCSStyle(Lcom/google/gson/JsonObject;)V
    .locals 8

    .line 1
    const-string v0, "argsJo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "viewId"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "style"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v2, v3

    .line 31
    :goto_0
    const-string v4, "position"

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object p1, v3

    .line 45
    :goto_1
    if-eqz v2, :cond_2

    .line 46
    .line 47
    const-string v4, "bgColor"

    .line 48
    .line 49
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :cond_2
    const/4 v2, 0x0

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    const-string v4, "width"

    .line 63
    .line 64
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-eqz v4, :cond_3

    .line 69
    .line 70
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    goto :goto_2

    .line 75
    :cond_3
    move v4, v2

    .line 76
    :goto_2
    if-eqz p1, :cond_4

    .line 77
    .line 78
    const-string v5, "height"

    .line 79
    .line 80
    invoke-virtual {p1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    goto :goto_3

    .line 91
    :cond_4
    move v5, v2

    .line 92
    :goto_3
    if-eqz p1, :cond_5

    .line 93
    .line 94
    const-string v6, "left"

    .line 95
    .line 96
    invoke-virtual {p1, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    if-eqz v6, :cond_5

    .line 101
    .line 102
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    goto :goto_4

    .line 107
    :cond_5
    move v6, v2

    .line 108
    :goto_4
    if-eqz p1, :cond_6

    .line 109
    .line 110
    const-string v7, "top"

    .line 111
    .line 112
    invoke-virtual {p1, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsFloat()F

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    :cond_6
    sget-object p1, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->INSTANCE:Lcom/cloud/tmc/integration/minicover/NativeComponentManager;

    .line 123
    .line 124
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lcom/cloud/tmc/integration/minicover/NativeComponentManager;->getComponentView(Ljava/lang/String;)Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    if-eqz p1, :cond_8

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/cloud/tmc/kernel/minicover/base/BaseNativeComponent;->getComponentView()Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    if-eqz p1, :cond_8

    .line 138
    .line 139
    if-eqz v3, :cond_7

    .line 140
    .line 141
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 146
    .line 147
    .line 148
    :cond_7
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 149
    .line 150
    invoke-static {v4}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 151
    .line 152
    .line 153
    move-result v1

    .line 154
    invoke-static {v5}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    invoke-static {v6}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    invoke-static {v2}, Lcom/cloud/tmc/miniutils/util/SizeUtils;->dp2px(F)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    invoke-direct {v0, v1, v3, v4, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    .line 171
    .line 172
    :cond_8
    return-void
.end method
