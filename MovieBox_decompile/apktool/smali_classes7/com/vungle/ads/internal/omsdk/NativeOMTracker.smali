.class public final Lcom/vungle/ads/internal/omsdk/NativeOMTracker;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private adEvents:Lcom/iab/omid/library/vungle/adsession/a;

.field private adSession:Lcom/iab/omid/library/vungle/adsession/b;

.field private final json:Lkotlinx/serialization/json/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "omSdkData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "omSdkJS"

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
    sget-object v0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker$json$1;->INSTANCE:Lcom/vungle/ads/internal/omsdk/NativeOMTracker$json$1;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-static {v2, v0, v1, v2}, Lkotlinx/serialization/json/n;->b(Lkotlinx/serialization/json/a;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/a;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->json:Lkotlinx/serialization/json/a;

    .line 23
    .line 24
    :try_start_0
    sget-object v1, Lcom/iab/omid/library/vungle/adsession/CreativeType;->NATIVE_DISPLAY:Lcom/iab/omid/library/vungle/adsession/CreativeType;

    .line 25
    .line 26
    sget-object v3, Lcom/iab/omid/library/vungle/adsession/ImpressionType;->BEGIN_TO_RENDER:Lcom/iab/omid/library/vungle/adsession/ImpressionType;

    .line 27
    .line 28
    sget-object v4, Lcom/iab/omid/library/vungle/adsession/Owner;->NATIVE:Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 29
    .line 30
    sget-object v5, Lcom/iab/omid/library/vungle/adsession/Owner;->NONE:Lcom/iab/omid/library/vungle/adsession/Owner;

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-static {v1, v3, v4, v5, v6}, Lcom/iab/omid/library/vungle/adsession/c;->a(Lcom/iab/omid/library/vungle/adsession/CreativeType;Lcom/iab/omid/library/vungle/adsession/ImpressionType;Lcom/iab/omid/library/vungle/adsession/Owner;Lcom/iab/omid/library/vungle/adsession/Owner;Z)Lcom/iab/omid/library/vungle/adsession/c;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v3, "Vungle"

    .line 38
    .line 39
    const-string v4, "7.5.0"

    .line 40
    .line 41
    invoke-static {v3, v4}, Lcom/iab/omid/library/vungle/adsession/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/f;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {p1, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_0

    .line 50
    .line 51
    new-instance v4, Ljava/lang/String;

    .line 52
    .line 53
    sget-object v5, Lkotlin/text/Charsets;->b:Ljava/nio/charset/Charset;

    .line 54
    .line 55
    invoke-direct {v4, p1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 56
    .line 57
    .line 58
    invoke-interface {v0}, Lkotlinx/serialization/e;->a()Lty/c;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-class v5, Lcom/vungle/ads/internal/model/f;

    .line 63
    .line 64
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->m(Ljava/lang/Class;)Lkotlin/reflect/KType;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-static {p1, v5}, Lkotlinx/serialization/h;->b(Lty/c;Lkotlin/reflect/KType;)Lkotlinx/serialization/b;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const-string v5, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>"

    .line 73
    .line 74
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v0, p1, v4}, Lkotlinx/serialization/j;->b(Lkotlinx/serialization/a;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lcom/vungle/ads/internal/model/f;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception p1

    .line 85
    goto :goto_4

    .line 86
    :cond_0
    move-object p1, v2

    .line 87
    :goto_0
    if-eqz p1, :cond_1

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/f;->getVendorKey()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move-object v0, v2

    .line 95
    :goto_1
    new-instance v4, Ljava/net/URL;

    .line 96
    .line 97
    if-eqz p1, :cond_2

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/f;->getVendorURL()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move-object v5, v2

    .line 105
    :goto_2
    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/vungle/ads/internal/model/f;->getParams()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    goto :goto_3

    .line 115
    :cond_3
    move-object p1, v2

    .line 116
    :goto_3
    invoke-static {v0, v4, p1}, Lcom/iab/omid/library/vungle/adsession/g;->a(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/g;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    const-string v0, "verificationScriptResource"

    .line 121
    .line 122
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v3, p2, p1, v2, v2}, Lcom/iab/omid/library/vungle/adsession/d;->b(Lcom/iab/omid/library/vungle/adsession/f;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/iab/omid/library/vungle/adsession/d;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {v1, p1}, Lcom/iab/omid/library/vungle/adsession/b;->a(Lcom/iab/omid/library/vungle/adsession/c;Lcom/iab/omid/library/vungle/adsession/d;)Lcom/iab/omid/library/vungle/adsession/b;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iput-object p1, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adSession:Lcom/iab/omid/library/vungle/adsession/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :goto_4
    sget-object p2, Lcom/vungle/ads/internal/util/o;->Companion:Lcom/vungle/ads/internal/util/o$a;

    .line 141
    .line 142
    const-string v0, "NativeOMTracker"

    .line 143
    .line 144
    const-string v1, "error occured when create omsdk adSession:"

    .line 145
    .line 146
    invoke-virtual {p2, v0, v1, p1}, Lcom/vungle/ads/internal/util/o$a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .line 148
    .line 149
    :goto_5
    return-void
.end method


# virtual methods
.method public final impressionOccurred()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adEvents:Lcom/iab/omid/library/vungle/adsession/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/a;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final start(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lue/a;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adSession:Lcom/iab/omid/library/vungle/adsession/b;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/iab/omid/library/vungle/adsession/b;->c(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/b;->d()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lcom/iab/omid/library/vungle/adsession/a;->a(Lcom/iab/omid/library/vungle/adsession/b;)Lcom/iab/omid/library/vungle/adsession/a;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adEvents:Lcom/iab/omid/library/vungle/adsession/a;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/iab/omid/library/vungle/adsession/a;->c()V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adSession:Lcom/iab/omid/library/vungle/adsession/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/iab/omid/library/vungle/adsession/b;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/vungle/ads/internal/omsdk/NativeOMTracker;->adSession:Lcom/iab/omid/library/vungle/adsession/b;

    .line 10
    .line 11
    return-void
.end method
