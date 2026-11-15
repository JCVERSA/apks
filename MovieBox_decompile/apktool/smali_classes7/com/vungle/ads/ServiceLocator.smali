.class public final Lcom/vungle/ads/ServiceLocator;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/ServiceLocator$a;,
        Lcom/vungle/ads/ServiceLocator$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/vungle/ads/ServiceLocator$Companion;

.field private static volatile INSTANCE:Lcom/vungle/ads/ServiceLocator;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final creators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/vungle/ads/ServiceLocator$a;",
            ">;"
        }
    .end annotation
.end field

.field private final ctx:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/ServiceLocator$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/vungle/ads/ServiceLocator;->ctx:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/vungle/ads/ServiceLocator;->cache:Ljava/util/Map;

    .line 6
    invoke-direct {p0}, Lcom/vungle/ads/ServiceLocator;->buildCreators()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/ServiceLocator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getCtx$p(Lcom/vungle/ads/ServiceLocator;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/vungle/ads/ServiceLocator;->ctx:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/vungle/ads/ServiceLocator;
    .locals 1

    .line 1
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->INSTANCE:Lcom/vungle/ads/ServiceLocator;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getOrBuild(Lcom/vungle/ads/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/vungle/ads/ServiceLocator;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/vungle/ads/ServiceLocator;->INSTANCE:Lcom/vungle/ads/ServiceLocator;

    .line 2
    .line 3
    return-void
.end method

.method private final buildCreators()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/vungle/ads/ServiceLocator$h;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$h;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 6
    .line 7
    .line 8
    const-class v2, Lcom/vungle/ads/internal/task/b;

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v1, Lcom/vungle/ads/ServiceLocator$i;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$i;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 18
    .line 19
    .line 20
    const-class v2, Lcom/vungle/ads/internal/task/d;

    .line 21
    .line 22
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v1, Lcom/vungle/ads/ServiceLocator$j;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$j;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 30
    .line 31
    .line 32
    const-class v2, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 33
    .line 34
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 38
    .line 39
    new-instance v1, Lcom/vungle/ads/ServiceLocator$k;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$k;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 42
    .line 43
    .line 44
    const-class v2, Lcom/vungle/ads/internal/platform/d;

    .line 45
    .line 46
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 50
    .line 51
    new-instance v1, Lcom/vungle/ads/ServiceLocator$l;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$l;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 54
    .line 55
    .line 56
    const-class v2, Lcom/vungle/ads/internal/executor/a;

    .line 57
    .line 58
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 62
    .line 63
    new-instance v1, Lcom/vungle/ads/ServiceLocator$m;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$m;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 66
    .line 67
    .line 68
    const-class v2, Lcom/vungle/ads/internal/omsdk/b;

    .line 69
    .line 70
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 74
    .line 75
    new-instance v1, Lcom/vungle/ads/ServiceLocator$n;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$n;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 78
    .line 79
    .line 80
    const-class v2, Lcom/vungle/ads/internal/omsdk/c$b;

    .line 81
    .line 82
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 86
    .line 87
    new-instance v1, Lcom/vungle/ads/ServiceLocator$o;

    .line 88
    .line 89
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$o;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 90
    .line 91
    .line 92
    const-class v2, Lcom/vungle/ads/internal/persistence/b;

    .line 93
    .line 94
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 98
    .line 99
    new-instance v1, Lcom/vungle/ads/ServiceLocator$p;

    .line 100
    .line 101
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$p;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 102
    .line 103
    .line 104
    const-class v2, Lsx/a;

    .line 105
    .line 106
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 110
    .line 111
    new-instance v1, Lcom/vungle/ads/ServiceLocator$b;

    .line 112
    .line 113
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$b;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 114
    .line 115
    .line 116
    const-class v2, Lcom/vungle/ads/internal/bidding/BidTokenEncoder;

    .line 117
    .line 118
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 122
    .line 123
    new-instance v1, Lcom/vungle/ads/ServiceLocator$c;

    .line 124
    .line 125
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$c;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 126
    .line 127
    .line 128
    const-class v2, Lcom/vungle/ads/internal/util/p;

    .line 129
    .line 130
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 134
    .line 135
    new-instance v1, Lcom/vungle/ads/ServiceLocator$d;

    .line 136
    .line 137
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$d;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 138
    .line 139
    .line 140
    const-class v2, Lcom/vungle/ads/internal/downloader/Downloader;

    .line 141
    .line 142
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 146
    .line 147
    new-instance v1, Lcom/vungle/ads/ServiceLocator$e;

    .line 148
    .line 149
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$e;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 150
    .line 151
    .line 152
    const-class v2, Lcom/vungle/ads/internal/util/c;

    .line 153
    .line 154
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 158
    .line 159
    new-instance v1, Lcom/vungle/ads/ServiceLocator$f;

    .line 160
    .line 161
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$f;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 162
    .line 163
    .line 164
    const-class v2, Lcom/vungle/ads/internal/signals/SignalManager;

    .line 165
    .line 166
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 170
    .line 171
    new-instance v1, Lcom/vungle/ads/ServiceLocator$g;

    .line 172
    .line 173
    invoke-direct {v1, p0}, Lcom/vungle/ads/ServiceLocator$g;-><init>(Lcom/vungle/ads/ServiceLocator;)V

    .line 174
    .line 175
    .line 176
    const-class v2, Lcom/vungle/ads/internal/network/h;

    .line 177
    .line 178
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method private final getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/vungle/ads/ServiceLocator;->getServiceClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->cache:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/vungle/ads/ServiceLocator$a;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/vungle/ads/ServiceLocator$a;->create()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0}, Lcom/vungle/ads/ServiceLocator$a;->isSingleton()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->cache:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    :cond_0
    move-object v0, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string v0, "Unknown class"

    .line 43
    .line 44
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p1

    .line 48
    :cond_2
    :goto_0
    return-object v0
.end method

.method private final getServiceClass(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->creators:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    return-object v1

    .line 30
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "Unknown dependency for "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v0
.end method


# virtual methods
.method public final bindService$vungle_ads_release(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "serviceClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->cache:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final declared-synchronized getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "serviceClass"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/vungle/ads/ServiceLocator;->getOrBuild(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-object p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public final declared-synchronized isCreated(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "serviceClass"

    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator;->cache:Ljava/util/Map;

    .line 8
    .line 9
    invoke-direct {p0, p1}, Lcom/vungle/ads/ServiceLocator;->getServiceClass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit p0

    .line 18
    return p1

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw p1
.end method
