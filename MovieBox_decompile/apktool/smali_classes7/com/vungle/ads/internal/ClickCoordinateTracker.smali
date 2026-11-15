.class public final Lcom/vungle/ads/internal/ClickCoordinateTracker;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/ClickCoordinateTracker$c;,
        Lcom/vungle/ads/internal/ClickCoordinateTracker$a;,
        Lcom/vungle/ads/internal/ClickCoordinateTracker$d;,
        Lcom/vungle/ads/internal/ClickCoordinateTracker$b;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/internal/ClickCoordinateTracker$b;

.field private static final MACRO_DOWN_X:Ljava/lang/String;

.field private static final MACRO_DOWN_Y:Ljava/lang/String;

.field private static final MACRO_HEIGHT:Ljava/lang/String;

.field private static final MACRO_REQ_HEIGHT:Ljava/lang/String;

.field private static final MACRO_REQ_WIDTH:Ljava/lang/String;

.field private static final MACRO_UP_X:Ljava/lang/String;

.field private static final MACRO_UP_Y:Ljava/lang/String;

.field private static final MACRO_WIDTH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ClickCoordinateTracker"


# instance fields
.field private final advertisement:Lcom/vungle/ads/internal/model/AdPayload;

.field private final context:Landroid/content/Context;

.field private final currentClick:Lcom/vungle/ads/internal/ClickCoordinateTracker$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/ClickCoordinateTracker$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/ClickCoordinateTracker$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->Companion:Lcom/vungle/ads/internal/ClickCoordinateTracker$b;

    .line 8
    .line 9
    const-string v0, "{{{req_width}}}"

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_REQ_WIDTH:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "{{{req_height}}}"

    .line 18
    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_REQ_HEIGHT:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "{{{width}}}"

    .line 26
    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_WIDTH:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "{{{height}}}"

    .line 34
    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_HEIGHT:Ljava/lang/String;

    .line 40
    .line 41
    const-string v0, "{{{down_x}}}"

    .line 42
    .line 43
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_DOWN_X:Ljava/lang/String;

    .line 48
    .line 49
    const-string v0, "{{{down_y}}}"

    .line 50
    .line 51
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_DOWN_Y:Ljava/lang/String;

    .line 56
    .line 57
    const-string v0, "{{{up_x}}}"

    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_UP_X:Ljava/lang/String;

    .line 64
    .line 65
    const-string v0, "{{{up_y}}}"

    .line 66
    .line 67
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_UP_Y:Ljava/lang/String;

    .line 72
    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/model/AdPayload;)V
    .locals 2

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "advertisement"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 17
    .line 18
    new-instance p1, Lcom/vungle/ads/internal/ClickCoordinateTracker$a;

    .line 19
    .line 20
    new-instance p2, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    .line 21
    .line 22
    const/high16 v0, -0x80000000

    .line 23
    .line 24
    invoke-direct {p2, v0, v0}, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;-><init>(II)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    .line 28
    .line 29
    invoke-direct {v1, v0, v0}, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;-><init>(II)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, p2, v1}, Lcom/vungle/ads/internal/ClickCoordinateTracker$a;-><init>(Lcom/vungle/ads/internal/ClickCoordinateTracker$c;Lcom/vungle/ads/internal/ClickCoordinateTracker$c;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->currentClick:Lcom/vungle/ads/internal/ClickCoordinateTracker$a;

    .line 36
    .line 37
    return-void
.end method

.method public static synthetic getCurrentClick$vungle_ads_release$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method private final getDeviceHeight()I
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/ClickCoordinateTracker$d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/ClickCoordinateTracker$d;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ClickCoordinateTracker$d;->getDeviceHeight()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method private final getDeviceWidth()I
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/ClickCoordinateTracker$d;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/ClickCoordinateTracker$d;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/vungle/ads/internal/ClickCoordinateTracker$d;->getDeviceWidth()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method private final getRequestedHeight()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->adHeight()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/vungle/ads/internal/ClickCoordinateTracker;->getDeviceHeight()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lcom/vungle/ads/internal/util/w;->INSTANCE:Lcom/vungle/ads/internal/util/w;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Lcom/vungle/ads/internal/util/w;->dpToPixels(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method private final getRequestedWidth()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->adWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/vungle/ads/internal/ClickCoordinateTracker;->getDeviceWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lcom/vungle/ads/internal/util/w;->INSTANCE:Lcom/vungle/ads/internal/util/w;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v1, v2, v0}, Lcom/vungle/ads/internal/util/w;->dpToPixels(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    return v0
.end method

.method private final sendClickCoordinates()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 2
    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "video.clickCoordinates"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/vungle/ads/internal/model/AdPayload;->getTpatUrls$default(Lcom/vungle/ads/internal/model/AdPayload;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Ljava/util/Collection;

    .line 15
    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_1

    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lcom/vungle/ads/internal/ClickCoordinateTracker;->getRequestedWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {p0}, Lcom/vungle/ads/internal/ClickCoordinateTracker;->getRequestedHeight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-direct {p0}, Lcom/vungle/ads/internal/ClickCoordinateTracker;->getRequestedWidth()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    invoke-direct {p0}, Lcom/vungle/ads/internal/ClickCoordinateTracker;->getRequestedHeight()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    sget-object v5, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->context:Landroid/content/Context;

    .line 45
    .line 46
    sget-object v6, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 47
    .line 48
    new-instance v7, Lcom/vungle/ads/internal/ClickCoordinateTracker$sendClickCoordinates$$inlined$inject$1;

    .line 49
    .line 50
    invoke-direct {v7, v5}, Lcom/vungle/ads/internal/ClickCoordinateTracker$sendClickCoordinates$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v6, v7}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    check-cast v0, Ljava/lang/Iterable;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_1

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    check-cast v6, Ljava/lang/String;

    .line 74
    .line 75
    sget-object v7, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_REQ_WIDTH:Ljava/lang/String;

    .line 76
    .line 77
    const-string v8, "MACRO_REQ_WIDTH"

    .line 78
    .line 79
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v8, Lkotlin/text/Regex;

    .line 83
    .line 84
    invoke-direct {v8, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v8, v6, v7}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    sget-object v7, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_REQ_HEIGHT:Ljava/lang/String;

    .line 96
    .line 97
    const-string v8, "MACRO_REQ_HEIGHT"

    .line 98
    .line 99
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v8, Lkotlin/text/Regex;

    .line 103
    .line 104
    invoke-direct {v8, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v8, v6, v7}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    sget-object v7, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_WIDTH:Ljava/lang/String;

    .line 116
    .line 117
    const-string v8, "MACRO_WIDTH"

    .line 118
    .line 119
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    new-instance v8, Lkotlin/text/Regex;

    .line 123
    .line 124
    invoke-direct {v8, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    invoke-virtual {v8, v6, v7}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    sget-object v7, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_HEIGHT:Ljava/lang/String;

    .line 136
    .line 137
    const-string v8, "MACRO_HEIGHT"

    .line 138
    .line 139
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v8, Lkotlin/text/Regex;

    .line 143
    .line 144
    invoke-direct {v8, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    invoke-virtual {v8, v6, v7}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    sget-object v7, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_DOWN_X:Ljava/lang/String;

    .line 156
    .line 157
    const-string v8, "MACRO_DOWN_X"

    .line 158
    .line 159
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    new-instance v8, Lkotlin/text/Regex;

    .line 163
    .line 164
    invoke-direct {v8, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    iget-object v7, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->currentClick:Lcom/vungle/ads/internal/ClickCoordinateTracker$a;

    .line 168
    .line 169
    invoke-virtual {v7}, Lcom/vungle/ads/internal/ClickCoordinateTracker$a;->getDownCoordinate()Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    invoke-virtual {v7}, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->getX()I

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v7

    .line 181
    invoke-virtual {v8, v6, v7}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    sget-object v7, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_DOWN_Y:Ljava/lang/String;

    .line 186
    .line 187
    const-string v8, "MACRO_DOWN_Y"

    .line 188
    .line 189
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    new-instance v8, Lkotlin/text/Regex;

    .line 193
    .line 194
    invoke-direct {v8, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v7, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->currentClick:Lcom/vungle/ads/internal/ClickCoordinateTracker$a;

    .line 198
    .line 199
    invoke-virtual {v7}, Lcom/vungle/ads/internal/ClickCoordinateTracker$a;->getDownCoordinate()Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    .line 200
    .line 201
    .line 202
    move-result-object v7

    .line 203
    invoke-virtual {v7}, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->getY()I

    .line 204
    .line 205
    .line 206
    move-result v7

    .line 207
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {v8, v6, v7}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v6

    .line 215
    sget-object v7, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_UP_X:Ljava/lang/String;

    .line 216
    .line 217
    const-string v8, "MACRO_UP_X"

    .line 218
    .line 219
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance v8, Lkotlin/text/Regex;

    .line 223
    .line 224
    invoke-direct {v8, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    iget-object v7, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->currentClick:Lcom/vungle/ads/internal/ClickCoordinateTracker$a;

    .line 228
    .line 229
    invoke-virtual {v7}, Lcom/vungle/ads/internal/ClickCoordinateTracker$a;->getUpCoordinate()Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v7}, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->getX()I

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    invoke-virtual {v8, v6, v7}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    sget-object v7, Lcom/vungle/ads/internal/ClickCoordinateTracker;->MACRO_UP_Y:Ljava/lang/String;

    .line 246
    .line 247
    const-string v8, "MACRO_UP_Y"

    .line 248
    .line 249
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    new-instance v8, Lkotlin/text/Regex;

    .line 253
    .line 254
    invoke-direct {v8, v7}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    iget-object v7, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->currentClick:Lcom/vungle/ads/internal/ClickCoordinateTracker$a;

    .line 258
    .line 259
    invoke-virtual {v7}, Lcom/vungle/ads/internal/ClickCoordinateTracker$a;->getUpCoordinate()Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-virtual {v7}, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;->getY()I

    .line 264
    .line 265
    .line 266
    move-result v7

    .line 267
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-virtual {v8, v6, v7}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    new-instance v7, Lcom/vungle/ads/internal/network/f$a;

    .line 276
    .line 277
    invoke-direct {v7, v6}, Lcom/vungle/ads/internal/network/f$a;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    const-string v6, "coordinate"

    .line 281
    .line 282
    invoke-virtual {v7, v6}, Lcom/vungle/ads/internal/network/f$a;->tpatKey(Ljava/lang/String;)Lcom/vungle/ads/internal/network/f$a;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    invoke-virtual {v6}, Lcom/vungle/ads/internal/network/f$a;->build()Lcom/vungle/ads/internal/network/f;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    invoke-static {v5}, Lcom/vungle/ads/internal/ClickCoordinateTracker;->sendClickCoordinates$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/h;

    .line 291
    .line 292
    .line 293
    move-result-object v7

    .line 294
    const/4 v8, 0x2

    .line 295
    const/4 v9, 0x0

    .line 296
    const/4 v10, 0x0

    .line 297
    invoke-static {v7, v6, v10, v8, v9}, Lcom/vungle/ads/internal/network/h;->sendTpat$default(Lcom/vungle/ads/internal/network/h;Lcom/vungle/ads/internal/network/f;ZILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    goto/16 :goto_0

    .line 301
    .line 302
    :cond_1
    return-void

    .line 303
    :cond_2
    :goto_1
    new-instance v0, Lcom/vungle/ads/TpatError;

    .line 304
    .line 305
    sget-object v1, Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;->EMPTY_TPAT_ERROR:Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;

    .line 306
    .line 307
    const-string v2, "Empty urls for tpat: video.clickCoordinates"

    .line 308
    .line 309
    invoke-direct {v0, v1, v2}, Lcom/vungle/ads/TpatError;-><init>(Lcom/vungle/ads/internal/protos/Sdk$SDKError$Reason;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    iget-object v1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/AdPayload;->getLogEntry$vungle_ads_release()Lcom/vungle/ads/internal/util/n;

    .line 315
    .line 316
    .line 317
    move-result-object v1

    .line 318
    invoke-virtual {v0, v1}, Lcom/vungle/ads/VungleError;->setLogEntry$vungle_ads_release(Lcom/vungle/ads/internal/util/n;)Lcom/vungle/ads/VungleError;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {v0}, Lcom/vungle/ads/VungleError;->logErrorNoReturnValue$vungle_ads_release()V

    .line 323
    .line 324
    .line 325
    return-void
.end method

.method private static final sendClickCoordinates$lambda-0(Lkotlin/Lazy;)Lcom/vungle/ads/internal/network/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/vungle/ads/internal/network/h;",
            ">;)",
            "Lcom/vungle/ads/internal/network/h;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/network/h;

    .line 6
    .line 7
    return-object p0
.end method


# virtual methods
.method public final getCurrentClick$vungle_ads_release()Lcom/vungle/ads/internal/ClickCoordinateTracker$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->currentClick:Lcom/vungle/ads/internal/ClickCoordinateTracker$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final trackCoordinate(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->advertisement:Lcom/vungle/ads/internal/model/AdPayload;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/AdPayload;->isClickCoordinatesTrackingEnabled()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->currentClick:Lcom/vungle/ads/internal/ClickCoordinateTracker$a;

    .line 26
    .line 27
    new-instance v1, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    float-to-int v2, v2

    .line 34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    float-to-int p1, p1

    .line 39
    invoke-direct {v1, v2, p1}, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ClickCoordinateTracker$a;->setUpCoordinate(Lcom/vungle/ads/internal/ClickCoordinateTracker$c;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->currentClick:Lcom/vungle/ads/internal/ClickCoordinateTracker$a;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/vungle/ads/internal/ClickCoordinateTracker$a;->ready()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/vungle/ads/internal/ClickCoordinateTracker;->sendClickCoordinates()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/vungle/ads/internal/ClickCoordinateTracker;->currentClick:Lcom/vungle/ads/internal/ClickCoordinateTracker$a;

    .line 58
    .line 59
    new-instance v1, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    float-to-int v2, v2

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    float-to-int p1, p1

    .line 71
    invoke-direct {v1, v2, p1}, Lcom/vungle/ads/internal/ClickCoordinateTracker$c;-><init>(II)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/vungle/ads/internal/ClickCoordinateTracker$a;->setDownCoordinate(Lcom/vungle/ads/internal/ClickCoordinateTracker$c;)V

    .line 75
    .line 76
    .line 77
    :cond_3
    :goto_0
    return-void
.end method
