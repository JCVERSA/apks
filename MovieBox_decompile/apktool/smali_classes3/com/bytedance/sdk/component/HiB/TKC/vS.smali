.class public Lcom/bytedance/sdk/component/HiB/TKC/vS;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private Dq:Ljava/util/concurrent/ExecutorService;

.field private EjP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/HiB/TzV;",
            ">;"
        }
    .end annotation
.end field

.field private HiB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/HiB/TKC;",
            ">;"
        }
    .end annotation
.end field

.field private Jcg:Lcom/bytedance/sdk/component/HiB/aa;

.field private Sj:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/HiB/TKC/TKC;",
            ">;>;"
        }
    .end annotation
.end field

.field private TKC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/HiB/dNu;",
            ">;"
        }
    .end annotation
.end field

.field private final sP:Lcom/bytedance/sdk/component/HiB/Fmk;

.field private vS:Lcom/bytedance/sdk/component/HiB/EjP;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/Fmk;)V
    .locals 1

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
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Sj:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->TKC:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->EjP:Ljava/util/Map;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->HiB:Ljava/util/Map;

    .line 31
    .line 32
    invoke-static {p2}, Lcom/bytedance/sdk/component/HiB/TKC/Jcg;->Sj(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/bytedance/sdk/component/HiB/Fmk;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP:Lcom/bytedance/sdk/component/HiB/Fmk;

    .line 39
    .line 40
    invoke-interface {p2}, Lcom/bytedance/sdk/component/HiB/Fmk;->Dq()Lcom/bytedance/sdk/component/HiB/sP;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/component/HiB/sP;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private EjP(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/dNu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP:Lcom/bytedance/sdk/component/HiB/Fmk;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/Fmk;->HiB()Lcom/bytedance/sdk/component/HiB/dNu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/Sj;->Sj(Lcom/bytedance/sdk/component/HiB/dNu;)Lcom/bytedance/sdk/component/HiB/dNu;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/sP;->sP()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/Sj;->Sj(I)Lcom/bytedance/sdk/component/HiB/dNu;

    move-result-object p1

    return-object p1
.end method

.method private HiB(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TzV;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP:Lcom/bytedance/sdk/component/HiB/Fmk;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/Fmk;->vS()Lcom/bytedance/sdk/component/HiB/TzV;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/sP;->sP()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/sP/HiB;->Sj(I)Lcom/bytedance/sdk/component/HiB/TzV;

    move-result-object p1

    return-object p1
.end method

.method private TEQ()Lcom/bytedance/sdk/component/HiB/aa;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP:Lcom/bytedance/sdk/component/HiB/Fmk;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/Fmk;->Sj()Lcom/bytedance/sdk/component/HiB/aa;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/HiB/Sj/sP;->Sj()Lcom/bytedance/sdk/component/HiB/aa;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private Ym()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP:Lcom/bytedance/sdk/component/HiB/Fmk;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/Fmk;->sP()Ljava/util/concurrent/ExecutorService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/HiB/Sj/TKC;->Sj()Ljava/util/concurrent/ExecutorService;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method private uA()Lcom/bytedance/sdk/component/HiB/EjP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP:Lcom/bytedance/sdk/component/HiB/Fmk;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/Fmk;->EjP()Lcom/bytedance/sdk/component/HiB/EjP;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lcom/bytedance/sdk/component/HiB/sP/Sj;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/sP/Sj;-><init>()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method

.method private vS(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TKC;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP:Lcom/bytedance/sdk/component/HiB/Fmk;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/Fmk;->Jcg()Lcom/bytedance/sdk/component/HiB/TKC;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/sP;->Dq()Ljava/io/File;

    move-result-object v1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/sP;->Sj()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Jcg()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj/sP;-><init>(Ljava/io/File;JLjava/util/concurrent/ExecutorService;)V

    return-object v0
.end method


# virtual methods
.method public Dq()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/HiB/TKC/TKC;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Sj:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public EjP()Lcom/bytedance/sdk/component/HiB/EjP;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->vS:Lcom/bytedance/sdk/component/HiB/EjP;

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->uA()Lcom/bytedance/sdk/component/HiB/EjP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->vS:Lcom/bytedance/sdk/component/HiB/EjP;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->vS:Lcom/bytedance/sdk/component/HiB/EjP;

    return-object v0
.end method

.method public HiB()Lcom/bytedance/sdk/component/HiB/dx;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP:Lcom/bytedance/sdk/component/HiB/Fmk;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/Fmk;->uA()Lcom/bytedance/sdk/component/HiB/dx;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public Jcg()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->sP:Lcom/bytedance/sdk/component/HiB/Fmk;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/Fmk;->TKC()Lcom/bytedance/sdk/component/HiB/sU;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/component/HiB/sU;->Sj()Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Dq:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Ym()Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Dq:Ljava/util/concurrent/ExecutorService;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Dq:Ljava/util/concurrent/ExecutorService;

    .line 27
    .line 28
    return-object v0
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/TKC/sP/Sj;
    .locals 8

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->EjP()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 10
    sget-object v0, Lcom/bytedance/sdk/component/HiB/TKC/sP/Sj;->Sj:Landroid/widget/ImageView$ScaleType;

    :cond_0
    move-object v4, v0

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Ym()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/bytedance/sdk/component/HiB/TKC/sP/Sj;->sP:Landroid/graphics/Bitmap$Config;

    :cond_1
    move-object v5, v0

    .line 13
    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/sP/Sj;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sP()I

    move-result v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TKC()I

    move-result v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->vS()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Jcg()I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/component/HiB/TKC/sP/Sj;-><init>(IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;II)V

    return-object v0
.end method

.method public Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/HiB/TKC;
    .locals 1

    .line 7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj;->Sj(Ljava/io/File;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->TKC(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TKC;

    move-result-object p1

    return-object p1
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/dNu;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj;->TEQ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/sP;->Dq()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->TKC:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/HiB/dNu;

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->EjP(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/dNu;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->TKC:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public Sj()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/HiB/dNu;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->TKC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public TKC(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TKC;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj;->TEQ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/sP;->Dq()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->HiB:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/HiB/TKC;

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->vS(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TKC;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->HiB:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public TKC()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/HiB/TKC;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->HiB:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public sP(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TzV;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj;->TEQ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/HiB/sP;->Dq()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->EjP:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/HiB/TzV;

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->HiB(Lcom/bytedance/sdk/component/HiB/sP;)Lcom/bytedance/sdk/component/HiB/TzV;

    move-result-object v1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->EjP:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public sP()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/bytedance/sdk/component/HiB/TzV;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->EjP:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public vS()Lcom/bytedance/sdk/component/HiB/aa;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Jcg:Lcom/bytedance/sdk/component/HiB/aa;

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->TEQ()Lcom/bytedance/sdk/component/HiB/aa;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Jcg:Lcom/bytedance/sdk/component/HiB/aa;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Jcg:Lcom/bytedance/sdk/component/HiB/aa;

    return-object v0
.end method
