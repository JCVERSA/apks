.class public Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;
.super Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$Sj;
    }
.end annotation


# instance fields
.field private Ei:I

.field private final FPG:Z

.field private Fm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lw5/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private HpB:I

.field private JcM:J

.field private final Mts:Ljava/lang/String;

.field private MuB:Z

.field private final UHs:Ljava/lang/Runnable;

.field private final WMZ:Z

.field private final Wjd:Z

.field private db:Lcom/bytedance/sdk/openadsdk/core/aa/sP/sP;

.field private final dwU:Lcom/bytedance/sdk/component/utils/wE$Sj;

.field private fF:J

.field private jb:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private final ndK:Lv5/a$a;

.field private qRN:I

.field private sdp:I

.field private xD:Z

.field private xhi:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ZZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p3, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/view/ViewGroup;)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->fF:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->JcM:J

    .line 9
    .line 10
    const/4 p3, 0x1

    .line 11
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xD:Z

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Ei:I

    .line 15
    .line 16
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->HpB:I

    .line 17
    .line 18
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->ndK:Lv5/a$a;

    .line 24
    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->qRN:I

    .line 26
    .line 27
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$4;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->UHs:Ljava/lang/Runnable;

    .line 33
    .line 34
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$6;

    .line 35
    .line 36
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->dwU:Lcom/bytedance/sdk/component/utils/wE$Sj;

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->MuB:Z

    .line 42
    .line 43
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sdp:I

    .line 48
    .line 49
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Z)V

    .line 50
    .line 51
    .line 52
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Mts:Ljava/lang/String;

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 55
    .line 56
    .line 57
    move-result p4

    .line 58
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Ei:I

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->HpB:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    :catchall_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->WMZ:Z

    .line 70
    .line 71
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->FPG:Z

    .line 72
    .line 73
    iput-boolean p7, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Wjd:Z

    .line 74
    .line 75
    if-eqz p8, :cond_0

    .line 76
    .line 77
    iput-object p8, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xhi:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method static synthetic AVc(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Bml(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Chv(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic EZ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Ei(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    return-object p0
.end method

.method private EjP(I)V
    .locals 1

    .line 14
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sdp:I

    if-ne v0, p1, :cond_0

    return-void

    .line 15
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sdp:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TzV:Z

    .line 17
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TzV:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->FPG:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 18
    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TKC(II)Z

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->jb:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->jb:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$Sj;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sdp:I

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$Sj;->Sj(I)V

    :cond_3
    return-void
.end method

.method private EjP(II)Z
    .locals 2

    .line 1
    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method static synthetic FPG(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lw5/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    return-object p0
.end method

.method private FPG()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Fmk:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dx()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LD:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uvD:Z

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(ZJZ)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley()V

    :cond_3
    return-void
.end method

.method static synthetic Fm(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic Fmk(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic GMp(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic HS(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic HcZ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method private HiB(I)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->EjP(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dNu:Z

    :cond_0
    return-void
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Mts()V

    return-void
.end method

.method static synthetic HpB(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic IOh(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Ir(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic JcM(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method static synthetic LD(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic LqL(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->WMZ:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic Mts(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    return-object p0
.end method

.method private Mts()V
    .locals 8

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->qRN:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->qRN:I

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    if-eqz v0, :cond_1

    .line 6
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->JcM:J

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    invoke-static {v4, v5, v6, v7}, Le6/a;->a(JJ)I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Lw5/b$b;->Sj(JI)V

    .line 7
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->fF:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->JcM:J

    .line 8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xD:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/ref/WeakReference;Z)V

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dx:Z

    if-nez v0, :cond_3

    .line 11
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dx:Z

    .line 12
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    invoke-direct {p0, v3, v4, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sP(JJ)V

    .line 13
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xhi:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 15
    :cond_3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB(Lw5/c;Landroid/view/View;)V

    .line 17
    :cond_4
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sef:Z

    return-void
.end method

.method static synthetic MuB(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Wjd()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Ph(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic QZ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic RiZ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic RrR(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic SP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->fF:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private Sj(Landroid/content/Context;)V
    .locals 9

    .line 16
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/sef/sef;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/sef/sef;-><init>(Landroid/content/Context;)V

    :goto_0
    move-object v3, v0

    goto :goto_1

    .line 18
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/sef/Fmk;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/sef/Fmk;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 19
    :goto_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    if-eqz v0, :cond_1

    .line 20
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ib()Z

    move-result v8

    const/4 v4, 0x1

    const/16 v5, 0x11

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/sU;Lw5/b;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    goto :goto_2

    .line 21
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x11

    move-object v1, v0

    move-object v2, p1

    move-object v7, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/EjP;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;ZILcom/bytedance/sdk/openadsdk/core/model/sU;Lw5/b;Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 22
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lw5/a;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->HiB(I)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;JJ)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(JJ)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;La6/a;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(La6/a;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;II)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->EjP(II)Z

    move-result p0

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->kF:Z

    return p1
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic TFd(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    return-object p0
.end method

.method private TKC(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 3

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(I)V

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-virtual {v1, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->fF:J

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(I)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(I)V

    .line 9
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Ljava/lang/Runnable;)V

    .line 10
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TzV()V

    :cond_0
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method private TKC(II)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj()V

    .line 14
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dNu:Z

    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v2, :cond_0

    .line 16
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/ref/WeakReference;Z)V

    :cond_0
    const/4 v2, 0x4

    if-eq p2, v2, :cond_2

    if-eqz p2, :cond_2

    .line 17
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p2, :cond_1

    .line 18
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj()V

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj()V

    .line 20
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dNu:Z

    .line 21
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TzV:Z

    .line 22
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p2, :cond_3

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Wjd:Z

    invoke-virtual {p2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(ILa6/b;Z)Z

    move-result p1

    return p1

    :cond_2
    if-ne p2, v2, :cond_3

    .line 24
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dNu:Z

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_3

    .line 26
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Zq()V

    :cond_3
    return v1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->kF:Z

    return p1
.end method

.method static synthetic TO(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic TzV(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->fF()V

    return-void
.end method

.method static synthetic UHs(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Uc(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic WMZ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    return-object p0
.end method

.method static synthetic Wjd(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->JcM:J

    return-wide v0
.end method

.method private Wjd()V
    .locals 8

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xD()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->EjP()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->HiB()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 6
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v2, :cond_9

    if-lez v3, :cond_9

    if-lez v1, :cond_9

    if-gtz v0, :cond_1

    goto :goto_4

    :cond_1
    if-ne v0, v1, :cond_3

    if-le v2, v3, :cond_2

    move v0, v3

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/high16 v6, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_4

    int-to-float v0, v0

    mul-float/2addr v0, v6

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-double v6, v2

    mul-double/2addr v6, v4

    float-to-double v0, v0

    div-double/2addr v6, v0

    double-to-int v0, v6

    move v1, v2

    goto :goto_1

    :cond_4
    int-to-float v1, v1

    mul-float/2addr v1, v6

    int-to-float v0, v0

    div-float/2addr v1, v0

    int-to-double v6, v3

    mul-double/2addr v6, v4

    float-to-double v0, v1

    div-double/2addr v6, v0

    double-to-int v0, v6

    move v1, v0

    move v0, v3

    :goto_1
    if-gt v0, v3, :cond_6

    if-gtz v0, :cond_5

    goto :goto_2

    :cond_5
    move v3, v0

    :cond_6
    :goto_2
    if-gt v1, v2, :cond_8

    if-gtz v1, :cond_7

    goto :goto_3

    :cond_7
    move v2, v1

    .line 7
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$5;

    invoke-direct {v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_9
    :goto_4
    return-void

    .line 8
    :cond_a
    :goto_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Ym:Landroid/content/Context;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xD()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 9
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method

.method static synthetic Xqg(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Yf(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->UHs:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Zq(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic aNB(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic aZ(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic cX(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic dLt(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic dNu(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic db(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic dwU(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic dx(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic eI(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic eMB(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic fF(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic gR(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic gY(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic gq(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ib(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic jb(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lw5/b$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic kF(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Fm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic kb(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ley(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic liH(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic mZN(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic mj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xD()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic nP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ndK(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic nru(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oWa(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic pfr(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic qRN(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method private sP(JJ)V
    .locals 8

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(J)V

    .line 16
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 17
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf:J

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(JJ)V

    .line 19
    invoke-static {p1, p2, p3, p4}, Le6/a;->a(JJ)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(I)V

    .line 21
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->ley:Lw5/b$b;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1, p2, p3, p4}, Lw5/b$b;->Sj(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    const-string v2, "onProgressUpdate error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    move-result-object v2

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-wide v3, p1

    move-wide v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(JJLcom/bytedance/sdk/openadsdk/core/Ym/vS;)V

    :cond_1
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;JJ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sP(JJ)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->kF:Z

    return p1
.end method

.method static synthetic sU(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sdp(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic sef(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic tY(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic tz(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic uP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic uvD(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->jb:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    return-object p0
.end method

.method static synthetic wE(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic xD(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    return-wide v0
.end method

.method private xD()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Ym:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Fmk()Lcom/bykv/vk/openvk/Sj/Sj/Sj/vS/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic xhi(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic xu(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic zR(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/EjP/Jcg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xhi:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic zwV(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;)Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public EjP()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa()V

    .line 5
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xD:Z

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    const-string v0, "embeded_ad"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Mts:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/ref/WeakReference;Z)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sU()V

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TKC:Lcom/bytedance/sdk/component/utils/LqL;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->aa:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    if-eqz v0, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->JcM()V

    :cond_3
    return-void
.end method

.method public JcM()V
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->MuB:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->MuB:Z

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->dwU:Lcom/bytedance/sdk/component/utils/wE$Sj;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/wE;->Sj(Lcom/bytedance/sdk/component/utils/wE$Sj;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Jcg(Z)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TzV()V

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->FPG()V

    return-void
.end method

.method public Sj(Landroid/view/View;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;)",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/vS;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-nez v0, :cond_0

    .line 25
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->sef()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Landroid/view/View;Ljava/util/Set;)V

    if-eqz p2, :cond_3

    .line 27
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 28
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    if-eqz p2, :cond_1

    .line 29
    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v0, :cond_2

    sget-object v0, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;->OTHER:Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    goto :goto_1

    :cond_2
    check-cast v0, Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;

    .line 30
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Landroid/view/View;

    invoke-virtual {v1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(Landroid/view/View;Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;)V

    goto :goto_0

    .line 31
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj(II)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Ei:I

    .line 14
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->HpB:I

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 1

    .line 11
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    :cond_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$Sj;)V
    .locals 1

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->jb:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/sP;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->db:Lcom/bytedance/sdk/openadsdk/core/aa/sP/sP;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V
    .locals 2

    .line 9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Zq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    .line 10
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V

    :cond_0
    return-void
.end method

.method public Sj(Lw5/b$a;)V
    .locals 1

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Fm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public Sj(Lw5/c;Landroid/view/View;)V
    .locals 2

    .line 78
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj()V

    .line 81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(ZZ)V

    .line 82
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->vS()V

    return-void

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Jcg()Z

    move-result p1

    if-nez p1, :cond_3

    .line 84
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_2

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(Landroid/view/ViewGroup;)V

    .line 86
    :cond_2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->EjP(J)V

    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_4

    .line 88
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(ZZ)V

    return-void

    .line 89
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Jcg(Z)V

    .line 90
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_4

    .line 91
    invoke-virtual {p1, p2, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(ZZ)V

    :cond_4
    return-void
.end method

.method public Sj(Lw5/c;Landroid/view/View;Z)V
    .locals 0

    .line 92
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB(Z)V

    .line 93
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Ym:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_0

    return-void

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz p1, :cond_1

    .line 95
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->sP(Landroid/view/ViewGroup;)V

    .line 96
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(Z)V

    .line 97
    :cond_1
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(I)V

    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->wE:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw5/b$d;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 99
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ:Z

    invoke-interface {p1, p2}, Lw5/b$d;->Sj(Z)V

    :cond_3
    return-void
.end method

.method public Sj(ZI)V
    .locals 2

    .line 65
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dx:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 66
    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    .line 67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->HiB()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    .line 68
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Dq()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    .line 69
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    .line 70
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(I)V

    .line 71
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->EjP(I)V

    .line 72
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xhi:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    invoke-static {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->Sj(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    const/4 p1, 0x0

    .line 73
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dx:Z

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL()V

    .line 75
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->EjP()V

    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz p1, :cond_2

    .line 77
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->EjP()V

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z
    .locals 9

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 34
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v0, ""

    const-string v2, "twice playVideoUrl"

    invoke-static {v0, v2, p1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 36
    :cond_1
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Z)V

    .line 37
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Yf()V

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    .line 41
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(ZF)V

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Mts:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_4

    .line 43
    :cond_3
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 44
    :cond_4
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gtz v0, :cond_5

    .line 45
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dx:Z

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Jcg()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uA:J

    .line 48
    iget-wide v7, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->TEQ:J

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_7

    .line 50
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj()V

    .line 51
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->qRN:I

    if-nez v0, :cond_6

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Jcg()V

    .line 53
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB()I

    move-result v5

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(II)V

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->uP:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(Landroid/view/ViewGroup;)V

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->HiB()I

    move-result v5

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->vS()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(II)V

    .line 56
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    if-nez v0, :cond_8

    .line 57
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->vS:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;

    .line 58
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->ndK:Lv5/a$a;

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/aa/EjP/TKC;->Sj(Lv5/a$a;)V

    .line 59
    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->RiZ()V

    .line 60
    iput-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->JcM:J

    .line 61
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TKC(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    .line 62
    new-instance v0, La6/a;

    const/16 v1, -0xa

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, La6/a;-><init>(IILjava/lang/String;)V

    .line 63
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj(La6/a;)V

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Sj:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "[video] invoke NativeVideoController#playVideo cause exception :"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public TKC()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(ZI)V

    return-void
.end method

.method public TKC(I)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->EjP(I)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 28
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->dNu:Z

    .line 29
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->sP()V

    :cond_0
    return-void
.end method

.method public TzV()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->MuB:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->MuB:Z

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->dwU:Lcom/bytedance/sdk/component/utils/wE$Sj;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/wE;->Sj(Lcom/bytedance/sdk/component/utils/wE$Sj;Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public WMZ()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->LqL:Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    .line 3
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Ym/vS;->Sj(I)V

    :cond_0
    return-void
.end method

.method public sP()V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj()V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TzV()V

    .line 14
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->FPG()V

    return-void
.end method

.method public sP(II)V
    .locals 1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(II)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->TKC(II)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->Jcg:Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;->Sj(II)V

    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Wjd()V

    :cond_0
    return-void
.end method

.method public vS(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->xD:Z

    return-void
.end method
