.class public Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/HiB/uA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;,
        Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;
    }
.end annotation


# instance fields
.field private Dq:I

.field private EjP:Ljava/lang/String;

.field private volatile Fmk:Z

.field private HiB:Lcom/bytedance/sdk/component/HiB/uvD;

.field private Jcg:Landroid/graphics/Bitmap$Config;

.field private LqL:Lcom/bytedance/sdk/component/HiB/sef;

.field private RiZ:Z

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

.field private final TzV:Landroid/os/Handler;

.field private Yf:[B

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

.field private dx:I

.field private ib:Lcom/bytedance/sdk/component/HiB/sP;

.field private kF:I

.field private ley:Z

.field private sP:Ljava/lang/String;

.field private sU:Lcom/bytedance/sdk/component/HiB/Jcg;

.field private sef:Z

.field private uA:I

.field private uP:I

.field private uvD:Lcom/bytedance/sdk/component/HiB/RiZ;

.field private vS:Landroid/widget/ImageView$ScaleType;

.field private wE:Ljava/util/concurrent/ExecutorService;

.field private zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TzV:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->RiZ:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Yf:[B

    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sP:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->sP(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/uvD;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$Sj;-><init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;Lcom/bytedance/sdk/component/HiB/uvD;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->TKC(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->EjP(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->vS:Landroid/widget/ImageView$ScaleType;

    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->HiB(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Jcg:Landroid/graphics/Bitmap$Config;

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->vS(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Dq:I

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Jcg(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA:I

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Dq(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Ym:I

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->uA(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dNu:I

    .line 15
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->TEQ(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/RiZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uvD:Lcom/bytedance/sdk/component/HiB/RiZ;

    .line 16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->ib:Lcom/bytedance/sdk/component/HiB/sP;

    .line 17
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Ym(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Ym(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sP(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Ym(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj(Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->aa(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sef:Z

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Fmk(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Zq:Z

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->sef(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->Zq(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/Dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ:Lcom/bytedance/sdk/component/HiB/Dq;

    .line 24
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->uvD(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uP:I

    .line 25
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->dNu(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->kF:I

    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->TzV(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->wE:Ljava/util/concurrent/ExecutorService;

    .line 27
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->RiZ(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->ley:Z

    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->sU(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sef;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->LqL:Lcom/bytedance/sdk/component/HiB/sef;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;-><init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)V

    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dNu:I

    return p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Ym:I

    return p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/Dq;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ:Lcom/bytedance/sdk/component/HiB/Dq;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/RiZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uvD:Lcom/bytedance/sdk/component/HiB/RiZ;

    return-object p0
.end method

.method private Sj(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->dx(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->dx(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->zR(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;->zR(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$sP;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->Sj(Ljava/io/File;)Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/Sj/sP;->TEQ()Lcom/bytedance/sdk/component/HiB/sP;

    move-result-object p1

    return-object p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Lcom/bytedance/sdk/component/HiB/uA;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dx()Lcom/bytedance/sdk/component/HiB/uA;

    move-result-object p0

    return-object p0
.end method

.method private dx()Lcom/bytedance/sdk/component/HiB/uA;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

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
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj()Ljava/lang/String;

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
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

    .line 32
    .line 33
    const-string v2, "url is empty"

    .line 34
    .line 35
    const/16 v3, 0x7d0

    .line 36
    .line 37
    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/HiB/uvD;->Sj(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->HiB()Lcom/bytedance/sdk/component/HiB/dx;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "http://"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    const-string v3, "https://"

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    const-string v3, "url is not validate "

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/16 v3, 0x3ee

    .line 72
    .line 73
    invoke-interface {v2, v3, v0}, Lcom/bytedance/sdk/component/HiB/dx;->Sj(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->wE:Ljava/util/concurrent/ExecutorService;

    .line 77
    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;->EjP()Ljava/util/concurrent/ExecutorService;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC$1;-><init>(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)V

    .line 89
    .line 90
    .line 91
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->ley:Z

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->wE:Ljava/util/concurrent/ExecutorService;

    .line 100
    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj:Ljava/util/concurrent/Future;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    if-eqz v1, :cond_7

    .line 111
    .line 112
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Sj:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :goto_1
    const-string v1, "ImageRequest"

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_2
    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Fmk:Z

    return p0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TKC:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TzV:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public Dq()Lcom/bytedance/sdk/component/HiB/uvD;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->HiB:Lcom/bytedance/sdk/component/HiB/uvD;

    return-object v0
.end method

.method public EjP()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->vS:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public Fmk()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->RiZ:Z

    .line 2
    .line 3
    return v0
.end method

.method public HiB()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Jcg:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public Jcg()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uP:I

    return v0
.end method

.method public RiZ()Lcom/bytedance/sdk/component/HiB/sef;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->LqL:Lcom/bytedance/sdk/component/HiB/sef;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sP:Ljava/lang/String;

    return-object v0
.end method

.method public Sj(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dx:I

    return-void
.end method

.method public Sj(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->EjP:Ljava/lang/String;

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->RiZ:Z

    return-void
.end method

.method public Sj([B)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Yf:[B

    return-void
.end method

.method public TEQ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TKC:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public TKC()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->uA:I

    return v0
.end method

.method public TzV()Lcom/bytedance/sdk/component/HiB/sP;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->ib:Lcom/bytedance/sdk/component/HiB/sP;

    .line 2
    .line 3
    return-object v0
.end method

.method public Ym()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Jcg:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public Zq()Lcom/bytedance/sdk/component/HiB/Jcg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->sU:Lcom/bytedance/sdk/component/HiB/Jcg;

    .line 2
    .line 3
    return-object v0
.end method

.method public aa()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Ym:I

    .line 2
    .line 3
    return v0
.end method

.method public dNu()Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->zR:Lcom/bytedance/sdk/component/HiB/EjP/TKC/vS;

    .line 2
    .line 3
    return-object v0
.end method

.method public sP()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Dq:I

    return v0
.end method

.method public sP(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->aa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x413c0901

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TKC:Ljava/lang/String;

    return-void
.end method

.method public sU()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->TEQ()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->aa()I

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

.method public sef()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->Yf:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public uA()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public uvD()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->dx:I

    .line 2
    .line 3
    return v0
.end method

.method public vS()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/HiB/EjP/TKC/TKC;->kF:I

    return v0
.end method
