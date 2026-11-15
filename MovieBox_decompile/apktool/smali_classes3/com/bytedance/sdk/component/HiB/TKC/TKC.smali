.class public Lcom/bytedance/sdk/component/HiB/TKC/TKC;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/uA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;,
        Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;
    }
.end annotation


# instance fields
.field private Dq:I

.field private EjP:Ljava/lang/String;

.field private volatile Fmk:Z

.field private HiB:Lcom/bytedance/sdk/component/HiB/uvD;

.field private Jcg:Landroid/graphics/Bitmap$Config;

.field private LD:Z

.field private LqL:Z

.field private final RiZ:Landroid/os/Handler;

.field Sj:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private TEQ:Lcom/bytedance/sdk/component/HiB/Dq;

.field private TKC:Ljava/lang/String;

.field private TzV:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/component/HiB/HiB/uA;",
            ">;"
        }
    .end annotation
.end field

.field private Yf:Ljava/util/concurrent/ExecutorService;

.field private Ym:I

.field private Zq:Z

.field private aa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private dNu:I

.field private dx:Lcom/bytedance/sdk/component/HiB/Jcg;

.field private fF:Lcom/bytedance/sdk/component/HiB/sef;

.field private ib:Lcom/bytedance/sdk/component/HiB/TKC/vS;

.field private kF:Lcom/bytedance/sdk/component/HiB/TKC/Sj;

.field private ley:I

.field private sP:Ljava/lang/String;

.field private sU:Z

.field private sef:Z

.field private uA:I

.field private uP:Lcom/bytedance/sdk/component/HiB/sP;

.field private uvD:Lcom/bytedance/sdk/component/HiB/RiZ;

.field private vS:Landroid/widget/ImageView$ScaleType;

.field private wE:I

.field private zR:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TzV:Ljava/util/Queue;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->RiZ:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sU:Z

    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sP:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->sP(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$Sj;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/TKC;Lcom/bytedance/sdk/component/HiB/uvD;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->TKC(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->EjP(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->vS:Landroid/widget/ImageView$ScaleType;

    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->HiB(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Jcg:Landroid/graphics/Bitmap$Config;

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->vS(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Dq:I

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->Jcg(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->uA:I

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->Dq(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Ym:I

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->uA(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->dNu:I

    .line 15
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->TEQ(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/RiZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->uvD:Lcom/bytedance/sdk/component/HiB/RiZ;

    .line 16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->uP:Lcom/bytedance/sdk/component/HiB/sP;

    .line 17
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->Ym(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->Ym(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sP(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->Ym(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->aa(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sef:Z

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->Fmk(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Zq:Z

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->sef(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/TKC/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->ib:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->Zq(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/Dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TEQ:Lcom/bytedance/sdk/component/HiB/Dq;

    .line 24
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->uvD(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->ley:I

    .line 25
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->dNu(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->wE:I

    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->TzV(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Yf:Ljava/util/concurrent/ExecutorService;

    .line 27
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->RiZ(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->LqL:Z

    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->sU(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->LD:Z

    .line 29
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->dx(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sef;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->fF:Lcom/bytedance/sdk/component/HiB/sef;

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TzV:Ljava/util/Queue;

    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/TKC;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/HiB/HiB/TKC;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;Lcom/bytedance/sdk/component/HiB/TKC/TKC$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)V

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/Dq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TEQ:Lcom/bytedance/sdk/component/HiB/Dq;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/uA;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->ib()Lcom/bytedance/sdk/component/HiB/uA;

    move-result-object p0

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->RiZ:Landroid/os/Handler;

    return-object p0
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->zR(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->zR(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->ib(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;->ib(Lcom/bytedance/sdk/component/HiB/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj;->Sj(Ljava/io/File;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/HiB/TKC/Sj/Sj;->TEQ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    return-object p1
.end method

.method private Sj(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 16
    new-instance v0, Lcom/bytedance/sdk/component/HiB/HiB/Dq;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/HiB/Dq;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/HiB/HiB/Dq;->Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TzV:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Fmk:Z

    return p0
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TKC:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/RiZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->uvD:Lcom/bytedance/sdk/component/HiB/RiZ;

    return-object p0
.end method

.method private ib()Lcom/bytedance/sdk/component/HiB/uA;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->ib:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "not init !"

    .line 11
    .line 12
    const/16 v3, 0x3ed

    .line 13
    .line 14
    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    return-object p0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string v2, "url is empty"

    .line 36
    .line 37
    const/16 v3, 0x7d0

    .line 38
    .line 39
    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-object p0

    .line 43
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->ib:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->HiB()Lcom/bytedance/sdk/component/HiB/dx;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "http://"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_4

    .line 56
    .line 57
    const-string v3, "https://"

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_4

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    const-string v3, "url is not validate "

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/16 v3, 0x3ee

    .line 74
    .line 75
    invoke-interface {v2, v3, v0}, Lcom/bytedance/sdk/component/HiB/dx;->Sj(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Yf:Ljava/util/concurrent/ExecutorService;

    .line 79
    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->ib:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/TKC/vS;->Jcg()Ljava/util/concurrent/ExecutorService;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/component/HiB/TKC/TKC$1;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC$1;-><init>(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)V

    .line 91
    .line 92
    .line 93
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->LD:Z

    .line 94
    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Yf:Ljava/util/concurrent/ExecutorService;

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj:Ljava/util/concurrent/Future;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    if-eqz v1, :cond_8

    .line 113
    .line 114
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Sj:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :goto_1
    const-string v1, "ImageRequest"

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_8
    :goto_2
    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TzV:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->dNu:I

    return p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/component/HiB/TKC/TKC;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Ym:I

    return p0
.end method


# virtual methods
.method public Dq()Lcom/bytedance/sdk/component/HiB/uvD;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

    return-object v0
.end method

.method public EjP()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->vS:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public Fmk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sef:Z

    .line 2
    .line 3
    return v0
.end method

.method public HiB()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Jcg:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public Jcg()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->ley:I

    return v0
.end method

.method public RiZ()Lcom/bytedance/sdk/component/HiB/sP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->uP:Lcom/bytedance/sdk/component/HiB/sP;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->zR:I

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/Jcg;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->dx:Lcom/bytedance/sdk/component/HiB/Jcg;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/TKC/Sj;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->kF:Lcom/bytedance/sdk/component/HiB/TKC/Sj;

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->EjP:Ljava/lang/String;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sU:Z

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/HiB/HiB/uA;)Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Fmk:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TzV:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public TEQ()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TKC:Ljava/lang/String;

    return-object v0
.end method

.method public TKC()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->uA:I

    return v0
.end method

.method public TzV()Lcom/bytedance/sdk/component/HiB/TKC/vS;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->ib:Lcom/bytedance/sdk/component/HiB/TKC/vS;

    .line 2
    .line 3
    return-object v0
.end method

.method public Ym()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Jcg:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public Zq()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->sU:Z

    .line 2
    .line 3
    return v0
.end method

.method public aa()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Ym:I

    .line 2
    .line 3
    return v0
.end method

.method public dNu()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->zR:I

    .line 2
    .line 3
    return v0
.end method

.method public dx()Lcom/bytedance/sdk/component/HiB/sef;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->fF:Lcom/bytedance/sdk/component/HiB/sef;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Dq:I

    return v0
.end method

.method public sP(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x413c0901

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TKC:Ljava/lang/String;

    return-void
.end method

.method public sU()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->LqL:Z

    .line 2
    .line 3
    return v0
.end method

.method public sef()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->Zq:Z

    .line 2
    .line 3
    return v0
.end method

.method public uA()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public uvD()Lcom/bytedance/sdk/component/HiB/Jcg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->dx:Lcom/bytedance/sdk/component/HiB/Jcg;

    .line 2
    .line 3
    return-object v0
.end method

.method public vS()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->wE:I

    return v0
.end method

.method public zR()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->TEQ()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/TKC/TKC;->aa()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
