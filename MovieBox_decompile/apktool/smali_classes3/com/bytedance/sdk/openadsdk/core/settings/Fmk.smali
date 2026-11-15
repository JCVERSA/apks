.class public Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;
.implements Lcom/bytedance/sdk/openadsdk/core/settings/vS;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$Sj;
    }
.end annotation


# static fields
.field public static EjP:Ljava/lang/String;

.field public static HiB:Ljava/lang/String;

.field public static final Sj:Ljava/lang/String;

.field public static final TKC:Ljava/lang/String;

.field private static final Ym:Lcom/bytedance/sdk/component/Dq/Dq;

.field private static aa:Z

.field private static final dx:Lcom/bytedance/sdk/openadsdk/core/settings/Dq;

.field public static final sP:Ljava/lang/String;

.field private static final sU:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/bytedance/sdk/openadsdk/core/settings/aa$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private static final uA:Ljava/lang/String;

.field static final vS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field Dq:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP<",
            "Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;",
            ">;"
        }
    .end annotation
.end field

.field private final Fmk:Lcom/bytedance/sdk/openadsdk/core/settings/Sj;

.field final Jcg:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private RiZ:Z

.field private TEQ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private TzV:I

.field private final Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private dNu:I

.field private final ib:Ljava/lang/Runnable;

.field private final kF:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private ley:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

.field private final uP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile uvD:Z

.field private final wE:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final zR:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 7
    .line 8
    const-string v3, "bus_con_collect"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v0, v2, v3

    .line 15
    .line 16
    const-string v0, "_"

    .line 17
    .line 18
    invoke-static {v0, v2}, Ll6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Sj:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->ib()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const-string v6, "bus_con"

    .line 33
    .line 34
    const/4 v7, 0x4

    .line 35
    new-array v8, v7, [Ljava/lang/CharSequence;

    .line 36
    .line 37
    aput-object v6, v8, v4

    .line 38
    .line 39
    aput-object v2, v8, v3

    .line 40
    .line 41
    aput-object v5, v8, v1

    .line 42
    .line 43
    const-string v2, "timeout"

    .line 44
    .line 45
    const/4 v5, 0x3

    .line 46
    aput-object v2, v8, v5

    .line 47
    .line 48
    invoke-static {v0, v8}, Ll6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sP:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->kF()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->ib()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    new-array v7, v7, [Ljava/lang/CharSequence;

    .line 63
    .line 64
    aput-object v6, v7, v4

    .line 65
    .line 66
    aput-object v2, v7, v3

    .line 67
    .line 68
    aput-object v8, v7, v1

    .line 69
    .line 70
    const-string v1, "alpha"

    .line 71
    .line 72
    aput-object v1, v7, v5

    .line 73
    .line 74
    invoke-static {v0, v7}, Ll6/a;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TKC:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->dNu()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uA:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$1;

    .line 87
    .line 88
    const-string v1, "TemplateReInitTask"

    .line 89
    .line 90
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$1;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Ym:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 94
    .line 95
    const-string v0, ""

    .line 96
    .line 97
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->EjP:Ljava/lang/String;

    .line 98
    .line 99
    const-string v0, "IABTCF_TCString"

    .line 100
    .line 101
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->HiB:Ljava/lang/String;

    .line 102
    .line 103
    sput-boolean v4, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->aa:Z

    .line 104
    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 108
    .line 109
    .line 110
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sU:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 111
    .line 112
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Dq;

    .line 113
    .line 114
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Dq;-><init>()V

    .line 115
    .line 116
    .line 117
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->dx:Lcom/bytedance/sdk/openadsdk/core/settings/Dq;

    .line 118
    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 122
    .line 123
    .line 124
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->vS:Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    .line 126
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TEQ:Ljava/util/Set;

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Sj;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Sj;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Fmk:Lcom/bytedance/sdk/openadsdk/core/settings/Sj;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/aa$Sj;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uvD:Z

    const/16 v0, 0x1388

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->dNu:I

    const/16 v0, 0xa

    .line 9
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TzV:I

    .line 10
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->zR:Landroid/content/BroadcastReceiver;

    .line 11
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$10;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ib:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$11;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Jcg:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    .line 13
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$12;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->kF:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    .line 14
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uP:Ljava/util/Set;

    .line 15
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->wE:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    .line 16
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Dq:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    .line 18
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    .line 19
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    const-string v3, "_dataChanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    const/4 v3, 0x4

    .line 22
    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 24
    :goto_0
    const-string v1, "TTAD.SdkSettings"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;-><init>()V

    return-void
.end method

.method private Aw()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uP:Ljava/util/Set;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->wE:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    .line 6
    .line 7
    const-string v3, "perf_con_applog_send"

    .line 8
    .line 9
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Set;

    .line 14
    .line 15
    return-object v0
.end method

.method private static EjP(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic Grp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uA:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TzV:I

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    return-object p0
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/settings/aa$Sj;)V
    .locals 2

    .line 73
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sU:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static TKC(Z)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    const/16 p0, 0x14

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method public static TKC(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    const-string v0, ""

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->EjP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->HiB:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static TX()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->aa:Z

    .line 2
    .line 3
    return v0
.end method

.method public static gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v1, "context is null"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "TTAD.SdkSettings"

    .line 15
    .line 16
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->dx:Lcom/bytedance/sdk/openadsdk/core/settings/Dq;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$Sj;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;

    .line 26
    .line 27
    return-object v0
.end method

.method public static mj()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string v2, "_dataChanged"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    const-string v1, "TTAD.SdkSettings"

    .line 37
    .line 38
    const-string v2, ""

    .line 39
    .line 40
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public static sP(Landroid/content/Context;)I
    .locals 3

    if-eqz p0, :cond_1

    .line 10
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->EjP(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 11
    const-string v0, "IABTCF_CmpSdkID"

    const/high16 v1, -0x80000000

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 12
    const-string v2, "IABTCF_CmpSdkVersion"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v1, :cond_0

    if-eq v2, v1, :cond_1

    .line 13
    :cond_0
    const-string v0, "IABTCF_gdprApplies"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->dNu:I

    return p1
.end method

.method private static sP(IZ)V
    .locals 3

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    const-string v2, "_tryFetRemoDat"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    const-string v2, "_force"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    const-string p1, "_source"

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic sP(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->aa:Z

    return p0
.end method

.method private tX()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "force_language"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static synthetic vb()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sU:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public AVc()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_video_keep_screen_on"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public Bml()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "perf_con_thread_stack_size"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public Chv()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "perf_con_apm_native"

    .line 4
    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method public Dq()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "if_both_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public Dq(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->sef:I

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public EZ()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/EjP/sP;->Sj(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 14
    .line 15
    const-string v2, "support_rtl"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public Ei()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Fmk:Lcom/bytedance/sdk/openadsdk/core/settings/Sj;

    .line 2
    .line 3
    const-string v1, "perf_con_apm"

    .line 4
    .line 5
    const/16 v2, 0x64

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v3, 0x1

    .line 16
    if-ltz v0, :cond_3

    .line 17
    .line 18
    if-lt v0, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 26
    .line 27
    mul-double/2addr v4, v6

    .line 28
    double-to-int v2, v4

    .line 29
    if-le v0, v2, :cond_2

    .line 30
    .line 31
    return v3

    .line 32
    :cond_2
    return v1

    .line 33
    :cond_3
    :goto_0
    return v3
.end method

.method public EjP()I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "max_tpl_cnts"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public EjP(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/core/settings/TTSdkSettings$FETCH_REQUEST_SOURCE;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Sj(IZ)V

    return-void
.end method

.method public EjP(Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 4
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->Yf:Z

    return p1
.end method

.method public FPG()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "dc"

    .line 4
    .line 5
    const-string v2, "TX"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public Fm()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "privacy_ad_enable"

    .line 4
    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->RiZ()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v0, v3, :cond_2

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    if-eq v0, v3, :cond_2

    .line 31
    .line 32
    return v2

    .line 33
    :cond_2
    return v1
.end method

.method public Fmk()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Aw()Ljava/util/Set;

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TzV:I

    return v0
.end method

.method public Fmk(Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 4
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->Dq:I

    return p1
.end method

.method public GMp()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "last_req_time"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public HS()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "dual_event_url"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public HcZ()Lorg/json/JSONObject;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    .line 9
    .line 10
    const-string v3, "perf_con_thread_pool_config"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/json/JSONObject;

    .line 17
    .line 18
    return-object v0
.end method

.method public HiB()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const/4 v1, 0x0

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/HiB;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    const-string v3, "digest"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public HiB(Ljava/lang/String;)Z
    .locals 3

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->HiB:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    return v2

    .line 4
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    .line 5
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TzV;->EjP(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public HpB()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_sec_type"

    .line 4
    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public IOh()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "blank_detect_rate"

    .line 4
    .line 5
    const/16 v2, 0x1e

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public Ir()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_behavior_count"

    .line 4
    .line 5
    const/16 v2, 0x12c

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public JcM()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "policy_url"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public Jcg(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->TzV:I

    return p1
.end method

.method public Jcg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj()Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    move-result-object v0

    const-string v1, "tt_sdk_settings"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    move-result-object v0

    const-string v1, "ab_test_param"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj()V

    return-void
.end method

.method public LD()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "settings_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LD(Ljava/lang/String;)Z
    .locals 5

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/settings/HiB;->sP:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    const-string v4, "token_adx_ids"

    invoke-virtual {v0, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public LqL()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->sP()Z

    move-result v0

    return v0
.end method

.method public LqL(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/HiB;->sP:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    const-string v3, "privacy_fields_allowed"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->RiZ()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v3

    .line 5
    :cond_0
    const-string v0, "mcc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mnc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v1

    .line 6
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public Mts()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "dyn_draw_engine_url"

    .line 4
    .line 5
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uA:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public MuB()[Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TEQ:Ljava/util/Set;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 16
    .line 17
    const-string v4, "gecko_hosts"

    .line 18
    .line 19
    invoke-virtual {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    move v3, v2

    .line 33
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ge v3, v4, :cond_1

    .line 38
    .line 39
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TEQ:Ljava/util/Set;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TEQ:Ljava/util/Set;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;->Sj(Ljava/util/Set;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TEQ:Ljava/util/Set;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TEQ:Ljava/util/Set;

    .line 69
    .line 70
    new-array v2, v2, [Ljava/lang/String;

    .line 71
    .line 72
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    return-object v1

    .line 79
    :catchall_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public Ph()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "req_inter_min"

    .line 4
    .line 5
    const-wide/32 v2, 0x927c0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v4, v0, v4

    .line 15
    .line 16
    if-ltz v4, :cond_1

    .line 17
    .line 18
    const-wide/32 v4, 0x5265c00

    .line 19
    .line 20
    .line 21
    cmp-long v4, v0, v4

    .line 22
    .line 23
    if-lez v4, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-wide v2, v0

    .line 27
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public QZ()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_check_clz"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public RiZ(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->sU:I

    return p1
.end method

.method public RiZ()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "ab_test_param"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public RrR()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/HiB;->sP:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    .line 8
    .line 9
    const-string v3, "perf_con_drop2rt_skip_label_list"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Set;

    .line 16
    .line 17
    return-object v0
.end method

.method public SP()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj()Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "settings_url"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public Sj(I)I
    .locals 0

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 31
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->WMZ:I

    return p1
.end method

.method public Sj(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 25
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 26
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->RiZ:I

    return p1
.end method

.method public Sj(Ljava/lang/String;Z)I
    .locals 1

    if-nez p1, :cond_0

    .line 27
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TKC(Z)I

    move-result p1

    return p1

    .line 28
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 29
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->uP:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TKC(Z)I

    move-result p1

    return p1
.end method

.method public Sj()V
    .locals 7

    .line 3
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/TKC;->Sj()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->TKC()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Fmk:Lcom/bytedance/sdk/openadsdk/core/settings/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->TKC()V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "shared_prefs"

    const/16 v3, 0x18

    if-lt v1, v3, :cond_0

    .line 8
    :try_start_1
    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    const-string v4, "1"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 10
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v5, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v4, v5

    .line 11
    :goto_0
    new-instance v2, Ljava/io/File;

    const-string v5, "tt_sdk_settings.xml"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 14
    const-string v5, ".xml"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    if-lt v1, v3, :cond_1

    .line 15
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/common/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 17
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 18
    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/Jcg;->TKC(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public Sj(IZ)V
    .locals 9
    .param p1    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/core/settings/TTSdkSettings$FETCH_REQUEST_SOURCE;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 33
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->HiB()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eq p1, v2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eqz p2, :cond_0

    .line 34
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->RiZ:Z

    :cond_0
    return-void

    .line 35
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->EjP()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 36
    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->RiZ:Z

    if-eqz v1, :cond_3

    .line 37
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->RiZ:Z

    if-nez p2, :cond_3

    move p2, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 38
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->GMp()J

    move-result-wide v3

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Ph()J

    move-result-wide v7

    sub-long/2addr v5, v3

    if-nez p2, :cond_4

    cmp-long v1, v5, v7

    if-gez v1, :cond_4

    return-void

    .line 41
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj()Z

    move-result v1

    if-nez v1, :cond_5

    .line 42
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sP(IZ)V

    return-void

    .line 43
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 44
    :cond_6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Fmk:Lcom/bytedance/sdk/openadsdk/core/settings/Sj;

    new-array v2, v2, [Lcom/bytedance/sdk/openadsdk/core/settings/HiB;

    aput-object v1, v2, v0

    invoke-direct {p1, p0, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Ym$Sj;Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;[Lcom/bytedance/sdk/openadsdk/core/settings/HiB;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ib:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 46
    :goto_1
    const-string p2, "settings request error"

    const-string v0, "settings"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Sj(J)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj()Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    move-result-object v0

    const-string v1, "last_req_time"

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj()V

    return-void
.end method

.method public Sj(Landroid/content/Context;)V
    .locals 3

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    const-string v1, "_tryFetRemoDat"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->zR:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/a;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->zR:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 64
    :goto_0
    const-string v0, "TTAD.SdkSettings"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ndK()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->EjP(I)V

    .line 67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->hzV()V

    :cond_1
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 19
    const-string v0, "dyn_draw_engine_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uA:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 22
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$7;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;Ljava/lang/String;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :cond_1
    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    :cond_2
    :goto_0
    return-void
.end method

.method public Sj(Z)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Zq:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->hzV()V

    if-eqz p1, :cond_2

    .line 49
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->dLt()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const-string v1, "fields_allowed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Fmk()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 55
    const-string v1, "key_transfer_host"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_1
    const-string v0, "target-idc"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->oWa()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA/sP;->sP()Lcom/bytedance/sdk/openadsdk/core/uA/sP;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/uA/sP;->Sj(Ljava/util/Map;)V

    .line 58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->mj()V

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z
    .locals 2

    .line 68
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->GET_ADS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->BIDDING_TOKEN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    if-ne p1, v0, :cond_1

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v0, "perf_con_crypt_V4_applog"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v0, "perf_con_crypt_V4"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 72
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v0, "perf_con_crypt_V4_get_ad"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public TEQ()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "load_callback_strategy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public TEQ(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->Ym:I

    return p1
.end method

.method public TFd()Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;->Sj:Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Dq:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    .line 6
    .line 7
    const-string v3, "perf_con_track_url_strategy"

    .line 8
    .line 9
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/bytedance/sdk/openadsdk/EjP/Sj/sef;

    .line 14
    .line 15
    return-object v0
.end method

.method public TKC(I)I
    .locals 0

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 9
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->uA:I

    return p1
.end method

.method public TKC()Ljava/lang/String;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "aes_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public TKC(Ljava/lang/String;)Z
    .locals 1

    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 7
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->TKC:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public TO()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->TKC:Ljava/lang/String;

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;F)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public TzV()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "loadedCallbackOpportunity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public TzV(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "core_settings"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->Mts:Lorg/json/JSONObject;

    .line 6
    const-string v0, "ad_slot_setting"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "getCoreSettingJsonObj"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string p1, "TTAD.SdkSettings"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method public UHs()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "read_video_from_cache"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public Uc()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "perf_con_adlog_turn_off_retry_stats"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public WMZ()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "ivrv_downward"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public Wjd()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "isGdprUser"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public Xqg()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "token_enable"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public Yf(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->kF:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    const-string v3, "perf_con_applog_rate"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public Yf()Ljava/lang/String;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "ads_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Ym()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "splash_video_load_strategy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public Ym(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->aa:I

    return p1
.end method

.method public Zq(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->TEQ:I

    return p1
.end method

.method public Zq()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "allow_blind_mode_request_ad"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public aNB()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_adshow_check_enable"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public aZ()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "perf_con_use_new_thread_pool"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public aa()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Aw()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public aa(Ljava/lang/String;)Z
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->ib:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public cX()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "perf_con_adlog_expire_time"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public dLt()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/HiB;->sP:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    .line 8
    .line 9
    const-string v3, "privacy_fields_allowed"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Set;

    .line 16
    .line 17
    return-object v0
.end method

.method public dNu()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "ad_revenue_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public dNu(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->TEQ(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 4
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->Fmk:I

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public db()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "privacy_debug_unlock"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public dwU()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "perf_con_webview_cache_count"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    return v0
.end method

.method public dx(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->wE:I

    return p1
.end method

.method public dx()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "duration"

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public eI()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_rewardedfull_link"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public eMB()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sP:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v2, 0x2710

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public fF()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "app_log_url"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public gR()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_express_host"

    .line 4
    .line 5
    const-string v2, "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public gY()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_send_log_type"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method hzV()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Ym;->Sj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ib:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Ph()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ib:Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public ib(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->LqL:I

    return p1
.end method

.method public ib()Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$8;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)V

    const-string v3, "insert_js_config"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/settings/Jcg;

    return-object v0
.end method

.method public jb()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "privacy_personalized_ad"

    .line 4
    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->RiZ()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return v0

    .line 30
    :cond_1
    return v1

    .line 31
    :cond_2
    return v2
.end method

.method public kF()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "playableLoadH5Url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public kF(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->fF:Z

    return p1
.end method

.method public kb()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "perf_con_adlog_turn_off_retry_ad"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/TKC;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    return-object p1
.end method

.method public ley()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->tX()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    const-string v1, "zh-Hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    const-string v1, "zh"

    const-string v2, "tw"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/aa;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/utils/aa;->Sj(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->onResourceUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    const-string v1, "TTAD.SdkSettings"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public liH()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "perf_con_close_button_delay_check_time"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public mZN()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "perf_con_drawable_code"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public nP()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_url_check"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public ndK()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uvD:Z

    .line 2
    .line 3
    return v0
.end method

.method public nru()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Sj:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public oWa()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "target_region"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public pfr()Lorg/json/JSONObject;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/HiB;->Sj:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    .line 5
    .line 6
    const-string v3, "video_cache_config"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lorg/json/JSONObject;

    .line 13
    .line 14
    return-object v0
.end method

.method public qRN()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "global_rate"

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;F)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    cmpl-float v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public sP(I)I
    .locals 0

    .line 30
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 31
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->sP:I

    return p1
.end method

.method public sP(Ljava/lang/String;)I
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->vS:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Jcg:Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;

    const-string v3, "perf_con_stats_rate"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$sP;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public declared-synchronized sP()V
    .locals 5

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uvD:Z

    const/4 v1, 0x1

    xor-int/lit8 v2, v0, 0x1

    .line 16
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Fmk:Lcom/bytedance/sdk/openadsdk/core/settings/Sj;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uvD:Z

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Z)V

    .line 17
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uvD:Z

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Z)V

    .line 18
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/TKC;->Sj(Z)V

    .line 19
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->uvD:Z

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sP(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;)V
    .locals 2

    .line 23
    const-string v0, "is_gdpr_user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 25
    :goto_0
    const-string p1, "isGdprUser"

    invoke-interface {p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;->Sj(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/HiB$Sj;

    return-void
.end method

.method public sU()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "landingpage_new_style"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sU(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->dx:Z

    return p1
.end method

.method public sdp()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "perf_con_webview_cache_count_v3"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    return v0
.end method

.method public sef()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Aw()Ljava/util/Set;

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->dNu:I

    return v0
.end method

.method public sef(Ljava/lang/String;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->Fmk(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public tY()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "perf_con_is_new_net_thread"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public tz()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_auto_click_delay"

    .line 4
    .line 5
    const/16 v2, 0xbb8

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v0

    .line 15
    :goto_0
    return v2
.end method

.method public uA(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x5dc

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->uvD:I

    return p1
.end method

.method public uA()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "ab_test_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uP()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "fetch_tpl_timeout_ctrl"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method public uP(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->JcM:I

    return p1
.end method

.method public uvD()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "support_gzip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public uvD(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->zR:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public vS()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "data_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public vS(Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->Jcg:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public wE()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "fetch_tpl_second"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method public wE(Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->Zq:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public xD()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "vbtt"

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public xhi()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_dislike_report_raw"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public xu()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "bus_con_token_thread_count"

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x1e

    .line 13
    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v0

    .line 18
    :cond_1
    :goto_0
    return v2
.end method

.method public zR()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    const-string v1, "max"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public zR(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->ley(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/sP;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/sP;->ley:I

    return p1
.end method

.method public zwV()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->sef:Lcom/bytedance/sdk/openadsdk/core/settings/TEQ;

    .line 2
    .line 3
    const-string v1, "privacy_app_reg"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/aa;->Sj(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method
