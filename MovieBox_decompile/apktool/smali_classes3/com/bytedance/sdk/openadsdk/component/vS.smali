.class public Lcom/bytedance/sdk/openadsdk/component/vS;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/vS$Sj;,
        Lcom/bytedance/sdk/openadsdk/component/vS$EjP;,
        Lcom/bytedance/sdk/openadsdk/component/vS$sP;,
        Lcom/bytedance/sdk/openadsdk/component/vS$TKC;
    }
.end annotation


# static fields
.field private static Sj:Ljava/lang/String; = "/openad_image_cache"

.field private static volatile TKC:Lcom/bytedance/sdk/openadsdk/component/vS; = null

.field private static sP:Ljava/lang/String; = "openad_image_cache"


# instance fields
.field private final EjP:Lcom/bytedance/sdk/openadsdk/sP/sP;

.field private final HiB:Lcom/bytedance/sdk/openadsdk/core/RiZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/RiZ<",
            "Lcom/bytedance/sdk/openadsdk/EjP/Sj;",
            ">;"
        }
    .end annotation
.end field

.field private final Jcg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private final vS:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->Jcg:Ljava/util/Map;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->vS:Landroid/content/Context;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->vS:Landroid/content/Context;

    .line 25
    .line 26
    :goto_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/sP/sP;

    .line 27
    .line 28
    const/16 v0, 0x8

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    const/16 v2, 0xa

    .line 32
    .line 33
    invoke-direct {p1, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/sP/sP;-><init>(IIZ)V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->EjP:Lcom/bytedance/sdk/openadsdk/sP/sP;

    .line 37
    .line 38
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->HiB:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    .line 43
    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->sP()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, "_p"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sput-object p1, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj:Ljava/lang/String;

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/vS;->sP:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sput-object p1, Lcom/bytedance/sdk/openadsdk/component/vS;->sP:Ljava/lang/String;

    .line 89
    .line 90
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/vS$1;

    .line 91
    .line 92
    const-string v0, "tt_openad_materialMeta"

    .line 93
    .line 94
    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/component/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/vS;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/Sj$sP;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public static Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/vS;
    .locals 2

    .line 3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/vS;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

    if-nez v0, :cond_1

    .line 4
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/vS;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/vS;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/vS;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/vS;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/vS;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 8
    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/vS;->TKC:Lcom/bytedance/sdk/openadsdk/component/vS;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/vS;Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/vS;->sP(Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/vS;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    return-void
.end method

.method private Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 8
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 32
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v2

    .line 33
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/vS$5;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/vS$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/vS;ILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-virtual {p0, p1, p2, p3, v7}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$TKC;)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/vS$EjP;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/vS$EjP;I)V

    return-void
.end method

.method public static Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/vS$EjP;I)V
    .locals 3

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    invoke-virtual {v0}, La6/b;->r()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v2

    invoke-virtual {v2}, La6/b;->t()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v2

    invoke-virtual {v2}, La6/b;->C()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->sP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->HiB(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->EjP(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    const/4 v2, 0x2

    .line 17
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->TKC(I)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/vS$3;

    invoke-direct {v2, p2}, Lcom/bytedance/sdk/openadsdk/component/vS$3;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/Dq;)Lcom/bytedance/sdk/component/HiB/TEQ;

    move-result-object p2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/uA/sP;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/vS$2;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/component/vS$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/vS$EjP;)V

    invoke-direct {v1, p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/uA/sP;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bytedance/sdk/component/HiB/uvD;)V

    .line 18
    invoke-interface {p2, v1}, Lcom/bytedance/sdk/component/HiB/TEQ;->Sj(Lcom/bytedance/sdk/component/HiB/uvD;)Lcom/bytedance/sdk/component/HiB/uA;

    return-void
.end method

.method private TKC(Lcom/bytedance/sdk/openadsdk/AdSlot;)I
    .locals 5

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "material_expiration_time"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tt_openad"

    const-wide/16 v1, -0x1

    invoke-static {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic TKC()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/vS;->sP:Ljava/lang/String;

    return-object v0
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->Jcg:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->Jcg:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/vS$Sj;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/component/vS$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/component/vS;Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Lcom/bytedance/sdk/component/Dq/Dq;I)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/vS;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/component/vS;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V

    return-void
.end method

.method private sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/core/model/Sj;)V
    .locals 8
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v2

    .line 7
    new-instance v7, Lcom/bytedance/sdk/openadsdk/component/vS$6;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p4

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/vS$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/vS;ILcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/Sj;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    invoke-virtual {p0, p1, p3, v7}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$sP;)V

    return-void
.end method


# virtual methods
.method public EjP(I)Z
    .locals 2

    .line 1
    const-string v0, "image_has_cached"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    const-string v1, "tt_openad"

    .line 13
    .line 14
    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method public HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 10
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string v0, "tt_openad_materialMeta"

    .line 9
    .line 10
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/Sj;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/common/Sj;->Sj(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move-object v0, v1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/vS;->vS(I)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    const-string v2, "material_expiration_time"

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    const-string v3, "tt_openad"

    .line 47
    .line 48
    const-wide/16 v4, -0x1

    .line 49
    .line 50
    invoke-static {v3, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;J)J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v6

    .line 58
    const-wide/16 v8, 0x3e8

    .line 59
    .line 60
    div-long/2addr v6, v8

    .line 61
    cmp-long v6, v6, v2

    .line 62
    .line 63
    if-gez v6, :cond_2

    .line 64
    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    return-object v0

    .line 68
    :cond_2
    if-nez v0, :cond_3

    .line 69
    .line 70
    cmp-long v2, v2, v4

    .line 71
    .line 72
    if-eqz v2, :cond_4

    .line 73
    .line 74
    :cond_3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/vS;->Jcg(I)V

    .line 75
    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/EjP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-object v1
.end method

.method public Jcg(I)V
    .locals 3

    .line 1
    const-string v0, "material"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "tt_openad_materialMeta"

    .line 12
    .line 13
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "material_expiration_time"

    .line 17
    .line 18
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "tt_openad"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "video_has_cached"

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "image_has_cached"

    .line 45
    .line 46
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v1

    invoke-virtual {v1}, La6/b;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v1

    invoke-virtual {v1}, La6/b;->x()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object p1

    invoke-virtual {p1}, La6/b;->G()Ljava/lang/String;

    move-result-object p1

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->Sj(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 88
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public Sj()V
    .locals 4

    .line 103
    :try_start_0
    const-string v0, "tt_openad_materialMeta"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;)V

    .line 104
    const-string v0, "tt_openad"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->vS:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/vS$9;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/vS$9;-><init>(Lcom/bytedance/sdk/openadsdk/component/vS;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 109
    :try_start_2
    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/Jcg;->TKC(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_2
    :cond_0
    return-void
.end method

.method public Sj(I)V
    .locals 2

    .line 76
    const-string v0, "video_has_cached"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "tt_openad"

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->Jcg:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v0, :cond_1

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 22
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/vS;->TKC(Lcom/bytedance/sdk/openadsdk/AdSlot;)I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_2

    return-void

    .line 23
    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->Jcg:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/ley;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ley;-><init>()V

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(Lcom/bytedance/sdk/openadsdk/utils/WMZ;)V

    .line 27
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/ib;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ib;-><init>()V

    .line 28
    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/model/ib;->TEQ:Lcom/bytedance/sdk/openadsdk/core/model/ley;

    const/4 v2, 0x2

    .line 29
    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/ib;->EjP:I

    .line 30
    iput v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/ib;->Dq:I

    .line 31
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->HiB:Lcom/bytedance/sdk/openadsdk/core/RiZ;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/vS$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/vS$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/vS;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;)V

    const/4 v0, 0x3

    invoke-interface {v2, p1, v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ib;ILcom/bytedance/sdk/openadsdk/core/RiZ$Sj;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;)V
    .locals 4

    .line 77
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ODI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;->sP()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TO()J

    move-result-wide v0

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "material_expiration_time"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;->Sj()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "tt_openad"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/vS;->sP(Lcom/bytedance/sdk/openadsdk/component/HiB/Sj;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$TKC;)V
    .locals 9
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v3

    .line 35
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v2

    .line 36
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, La6/b;->x()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {v0}, La6/b;->G()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->Sj(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 41
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 42
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->Sj(Ljava/io/File;)V

    .line 43
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(I)V

    .line 44
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->EjP()J

    move-result-wide v0

    if-eqz p3, :cond_1

    .line 45
    invoke-virtual {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(J)V

    const/4 p2, 0x1

    .line 46
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(I)V

    .line 47
    :cond_1
    invoke-interface {p4}, Lcom/bytedance/sdk/openadsdk/component/vS$TKC;->Sj()V

    const/4 p2, 0x0

    .line 48
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/component/vS$EjP;)V

    return-void

    .line 49
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->wE(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->EjP(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 p1, 0x64

    .line 50
    const-string p2, "OnlyWifi"

    invoke-interface {p4, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/vS$TKC;->Sj(ILjava/lang/String;)V

    return-void

    .line 51
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v8

    .line 52
    const-string v0, "material_meta"

    invoke-virtual {v8, v0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string v0, "ad_slot"

    invoke-virtual {v8, v0, p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/vS$7;

    move-object v0, p2

    move-object v1, p0

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/vS$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/vS;ILcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$TKC;Ljava/io/File;)V

    invoke-static {v8, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/HiB/Sj;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;Lx5/a$a;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$sP;)V
    .locals 12

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->sP()Lcom/bytedance/sdk/openadsdk/utils/WMZ;

    move-result-object v3

    .line 56
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v2

    .line 57
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 58
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Jcg()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->sP()I

    move-result v7

    .line 61
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->TKC()I

    move-result v8

    .line 62
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v1

    .line 63
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz p3, :cond_1

    .line 64
    invoke-interface {p3}, Lcom/bytedance/sdk/openadsdk/component/vS$sP;->Sj()V

    :cond_1
    return-void

    .line 65
    :cond_2
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->sP(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 66
    invoke-virtual {p0, v4, v1}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/component/vS;->TKC(I)V

    .line 68
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/utils/WMZ;->EjP()J

    move-result-wide v0

    if-eqz p2, :cond_3

    .line 69
    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(J)V

    const/4 p1, 0x1

    .line 70
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/ley;->Sj(I)V

    :cond_3
    const/4 p1, 0x0

    .line 71
    invoke-interface {p3, p1}, Lcom/bytedance/sdk/openadsdk/component/vS$sP;->Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj/sP;)V

    return-void

    .line 72
    :cond_4
    new-instance v10, Lcom/bytedance/sdk/openadsdk/TzV/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Jcg()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v4, v0}, Lcom/bytedance/sdk/openadsdk/TzV/Sj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance v11, Lcom/bytedance/sdk/openadsdk/component/vS$8;

    move-object v0, v11

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/vS$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/vS;ILcom/bytedance/sdk/openadsdk/utils/WMZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/core/model/ley;Lcom/bytedance/sdk/openadsdk/component/vS$sP;)V

    .line 74
    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    .line 75
    invoke-static {v10, v7, v8, v11, p1}, Lcom/bytedance/sdk/openadsdk/utils/uvD;->Sj(Lcom/bytedance/sdk/openadsdk/TzV/Sj;IILcom/bytedance/sdk/openadsdk/utils/uvD$Sj;Ljava/lang/String;)V

    return-void
.end method

.method public Sj(Ljava/io/File;)V
    .locals 2

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/vS;->EjP:Lcom/bytedance/sdk/openadsdk/sP/sP;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/sP/Sj;->Sj(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 102
    const-string v0, "TTAppOpenAdCacheManager"

    const-string v1, "trimFileCache fail"

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Sj(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 90
    const-string v0, "TTAppOpenAdCacheManager"

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_5

    .line 91
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/Jcg/Sj;->sP(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 92
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 93
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_1
    move-exception v3

    .line 94
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move v3, v4

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_2
    if-nez v3, :cond_4

    .line 95
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, p2, v5}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_4

    .line 96
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/uA/EjP;->sP()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 97
    new-instance p1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 98
    :cond_3
    new-instance p1, Ljava/io/File;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".0"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 99
    :goto_3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v4, v3

    :goto_4
    return v4

    .line 100
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public TKC(I)V
    .locals 2

    .line 2
    const-string v0, "image_has_cached"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "tt_openad"

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public sP()Ljava/lang/String;
    .locals 3

    .line 15
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/sP;->TKC()Z

    move-result v1

    const-string v2, "/"

    if-eqz v1, :cond_0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/vS;->sP:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public sP(I)Z
    .locals 2

    .line 8
    const-string v0, "video_has_cached"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "tt_openad"

    invoke-static {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Bml()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/uvD;

    .line 12
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Jcg()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uvD;->Sj()Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/vS;->Sj(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public vS(I)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "material"

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "tt_openad_materialMeta"

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/EjP;->sP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->TKC()Lcom/bytedance/sdk/openadsdk/core/RiZ;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/RiZ;->Sj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v0, "creatives"

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->TKC(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/Sj;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Sj;->vS()Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/sP;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 57
    .line 58
    .line 59
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-object p1

    .line 61
    :goto_0
    const-string v0, "TTAppOpenAdCacheManager"

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    return-object v1
.end method
