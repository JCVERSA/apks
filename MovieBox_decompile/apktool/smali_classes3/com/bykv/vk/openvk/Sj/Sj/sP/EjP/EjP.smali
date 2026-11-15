.class public Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lv5/a;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$a;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$b;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$c;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$d;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$e;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$f;
.implements Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$g;
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;
    }
.end annotation


# static fields
.field private static jb:Z

.field private static final kF:Landroid/util/SparseIntArray;


# instance fields
.field private Dq:Z

.field private EjP:I

.field private volatile FPG:Z

.field private Fm:Z

.field private Fmk:Lcom/bytedance/sdk/component/utils/LqL;

.field private HiB:Z

.field private JcM:Landroid/view/Surface;

.field private final Jcg:Z

.field private volatile LD:I

.field private LqL:Z

.field private final Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

.field private RiZ:J

.field private Sj:Landroid/graphics/SurfaceTexture;

.field private TEQ:Z

.field private TKC:I

.field private TzV:J

.field private final WMZ:Ljava/lang/Runnable;

.field private Wjd:J

.field private Yf:Ljava/util/concurrent/CountDownLatch;

.field private volatile Ym:I

.field private Zq:J

.field private aa:J

.field private dNu:J

.field private dx:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private fF:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ib:Ljava/lang/String;

.field private ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

.field private sP:Landroid/view/SurfaceHolder;

.field private sU:Z

.field private sef:Z

.field private uA:Z

.field private uP:Z

.field private uvD:J

.field private volatile vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

.field private final wE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lv5/a$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private xD:J

.field private zR:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->kF:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->jb:Z

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->HiB:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Jcg:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq:Z

    .line 15
    .line 16
    const/16 v2, 0xc9

    .line 17
    .line 18
    iput v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 19
    .line 20
    const-wide/16 v2, -0x1

    .line 21
    .line 22
    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    .line 25
    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    .line 29
    .line 30
    const-wide/high16 v4, -0x8000000000000000L

    .line 31
    .line 32
    iput-wide v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD:J

    .line 33
    .line 34
    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    .line 35
    .line 36
    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TzV:J

    .line 37
    .line 38
    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->RiZ:J

    .line 39
    .line 40
    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    .line 41
    .line 42
    const-string v4, "0"

    .line 43
    .line 44
    iput-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ib:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 54
    .line 55
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LqL:Z

    .line 56
    .line 57
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 58
    .line 59
    const/4 v5, 0x1

    .line 60
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 61
    .line 62
    .line 63
    iput-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Yf:Ljava/util/concurrent/CountDownLatch;

    .line 64
    .line 65
    const/16 v4, 0xc8

    .line 66
    .line 67
    iput v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LD:I

    .line 68
    .line 69
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 72
    .line 73
    .line 74
    iput-object v4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->JcM:Landroid/view/Surface;

    .line 77
    .line 78
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$1;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    .line 84
    .line 85
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    .line 88
    .line 89
    .line 90
    iput-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    .line 91
    .line 92
    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Wjd:J

    .line 93
    .line 94
    iput-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->xD:J

    .line 95
    .line 96
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    .line 97
    .line 98
    const-string v0, "SSMediaPlayerWrapper"

    .line 99
    .line 100
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->e(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method static synthetic Dq(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    return-wide v0
.end method

.method static synthetic EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    return-wide p1
.end method

.method static synthetic EjP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LqL:Z

    return p1
.end method

.method static synthetic HiB(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LD:I

    return p0
.end method

.method static synthetic Jcg(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    return p0
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    return p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;)Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Lcom/bytedance/sdk/component/utils/LqL;)Lcom/bytedance/sdk/component/utils/LqL;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ib:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->l(II)V

    return-void
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;JJ)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->c(JJ)V

    return-void
.end method

.method static synthetic Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    return p1
.end method

.method static synthetic TEQ(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    return-wide v0
.end method

.method static synthetic TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD:J

    return-wide p1
.end method

.method public static TKC(Z)V
    .locals 0

    .line 8
    sput-boolean p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->jb:Z

    return-void
.end method

.method static synthetic TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    return p0
.end method

.method static synthetic TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    return p1
.end method

.method static synthetic Ym(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->h()V

    return-void
.end method

.method private a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uA:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uA:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Runnable;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uA:Z

    .line 43
    .line 44
    return-void
.end method

.method private c(JJ)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v2, v1

    .line 32
    check-cast v2, Lv5/a$a;

    .line 33
    .line 34
    move-object v3, p0

    .line 35
    move-wide v4, p1

    .line 36
    move-wide v6, p3

    .line 37
    invoke-interface/range {v2 .. v7}, Lv5/a$a;->Sj(Lv5/a;JJ)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method private d(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj()Lcom/bytedance/sdk/component/Dq/Sj/Sj;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v1, "csj_"

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/Dq/Sj/Sj;->Sj(Lcom/bytedance/sdk/component/utils/LqL$Sj;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/LqL;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->h()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private f(II)Z
    .locals 2

    .line 1
    const/16 v0, -0x3f2

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, -0x3ef

    .line 7
    .line 8
    if-eq p1, v0, :cond_0

    .line 9
    .line 10
    const/16 v0, -0x3ec

    .line 11
    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    const/16 v0, -0x6e

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/16 v0, 0x64

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    const/16 v0, 0xc8

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move p1, v1

    .line 29
    :goto_0
    if-eq p2, v1, :cond_1

    .line 30
    .line 31
    const/16 v0, 0x2bc

    .line 32
    .line 33
    if-eq p2, v0, :cond_1

    .line 34
    .line 35
    const/16 v0, 0x320

    .line 36
    .line 37
    if-eq p2, v0, :cond_1

    .line 38
    .line 39
    move v1, p1

    .line 40
    :cond_1
    return v1
.end method

.method private g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dx:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->b()V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$10;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->aa()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :catchall_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->d(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$f;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->h(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$c;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->b(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$d;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->c(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$a;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->e(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$e;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->j(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$b;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->a(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b$g;)V

    .line 45
    .line 46
    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Ym()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .line 51
    .line 52
    :catchall_1
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    .line 13
    .line 14
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$6;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$6;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$7;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$7;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private l(II)V
    .locals 7

    .line 1
    const/16 p2, 0x2bd

    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    if-ne p1, p2, :cond_2

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide p1

    .line 12
    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Wjd:J

    .line 13
    .line 14
    iget p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    .line 15
    .line 16
    add-int/lit8 p1, p1, 0x1

    .line 17
    .line 18
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    .line 19
    .line 20
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    check-cast p2, Lv5/a$a;

    .line 51
    .line 52
    const/4 v1, 0x0

    .line 53
    invoke-interface {p2, p0, v0, v1, v1}, Lv5/a$a;->Sj(Lv5/a;III)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-void

    .line 58
    :cond_2
    const/16 p2, 0x2be

    .line 59
    .line 60
    if-ne p1, p2, :cond_6

    .line 61
    .line 62
    iget-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Wjd:J

    .line 63
    .line 64
    const-wide/16 v1, 0x0

    .line 65
    .line 66
    cmp-long p1, p1, v1

    .line 67
    .line 68
    if-lez p1, :cond_3

    .line 69
    .line 70
    iget-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->xD:J

    .line 71
    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    iget-wide v5, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Wjd:J

    .line 77
    .line 78
    sub-long/2addr v3, v5

    .line 79
    add-long/2addr p1, v3

    .line 80
    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->xD:J

    .line 81
    .line 82
    iput-wide v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Wjd:J

    .line 83
    .line 84
    :cond_3
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_5

    .line 95
    .line 96
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    check-cast p2, Ljava/lang/ref/WeakReference;

    .line 101
    .line 102
    if-eqz p2, :cond_4

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    check-cast p2, Lv5/a$a;

    .line 115
    .line 116
    invoke-interface {p2, p0, v0}, Lv5/a$a;->Sj(Lv5/a;I)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    return-void

    .line 121
    :cond_6
    iget-boolean p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    .line 122
    .line 123
    if-eqz p2, :cond_7

    .line 124
    .line 125
    const/4 p2, 0x3

    .line 126
    if-ne p1, p2, :cond_7

    .line 127
    .line 128
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->g()V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->s()V

    .line 132
    .line 133
    .line 134
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LqL:Z

    .line 135
    .line 136
    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Z)V

    .line 137
    .line 138
    .line 139
    :cond_7
    return-void
.end method

.method private m(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;->Sj(J)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uP:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->p(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->d(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private n(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TEQ:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->d(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    :cond_2
    :goto_0
    return-void
.end method

.method private o(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/FileInputStream;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->f(Ljava/io/FileDescriptor;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private p(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method private q()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    .line 11
    .line 12
    const-wide/high16 v0, -0x8000000000000000L

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD:J

    .line 15
    .line 16
    return-void
.end method

.method private r()V
    .locals 3

    .line 1
    sget-object v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->kF:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    iget v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private s()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->RiZ:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lv5/a$a;

    .line 39
    .line 40
    invoke-interface {v3, p0, v0, v1}, Lv5/a$a;->Sj(Lv5/a;J)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->HiB:Z

    .line 46
    .line 47
    return-void
.end method

.method static synthetic sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD:J

    return-wide v0
.end method

.method static synthetic sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    return-wide p1
.end method

.method static synthetic sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq:Z

    return p1
.end method

.method private t()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$14;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$14;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic uA(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    return-object p0
.end method

.method static synthetic vS(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    return-wide v0
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TEQ:Z

    return v0
.end method

.method public EjP()I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Fmk()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Fmk()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 2
    .line 3
    const/16 v1, 0xcd

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public HiB()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->sef()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Jcg()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public RiZ()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public Sj(I)V
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 149
    :cond_0
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LD:I

    return-void
.end method

.method public Sj(J)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_2

    .line 31
    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$2;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;J)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public Sj(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Z)V

    .line 36
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$3;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$3;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 45
    iget v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 46
    iget v3, v1, Landroid/os/Message;->what:I

    .line 47
    iget-object v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-eqz v4, :cond_12

    .line 48
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v7, 0xcd

    const/16 v8, 0xca

    const/16 v9, 0xcb

    const/16 v10, 0xc9

    const-wide/16 v11, 0x1

    const/16 v13, 0xd0

    const/16 v14, 0xd1

    const/16 v15, 0xce

    const/4 v5, 0x1

    const/16 v6, 0xcf

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 49
    :pswitch_1
    :try_start_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 50
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->JcM:Landroid/view/Surface;

    .line 51
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->JcM:Landroid/view/Surface;

    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->g(Landroid/view/Surface;)V

    .line 52
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->sP(Z)V

    .line 53
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Yf:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v11, v12, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->g()V

    goto/16 :goto_5

    .line 55
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceHolder;

    .line 56
    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(Landroid/view/SurfaceHolder;)V

    .line 57
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1, v5}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->sP(Z)V

    .line 58
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Yf:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v11, v12, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 59
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_5

    .line 60
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->q()V

    .line 61
    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v4, v10, :cond_0

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v4, v9, :cond_d

    .line 62
    :cond_0
    :try_start_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    .line 63
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 64
    invoke-static {}, Lv5/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;)V

    .line 65
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sef()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 67
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    invoke-static {}, Lv5/b;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->o(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    .line 72
    sget-boolean v2, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->jb:Z

    if-nez v2, :cond_4

    iget v2, v1, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP:I

    .line 73
    :cond_4
    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 74
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Fmk()Ljava/lang/String;

    .line 75
    :goto_0
    iput v8, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    .line 76
    :pswitch_4
    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v4, v15, :cond_5

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v4, v6, :cond_5

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v4, v14, :cond_d

    .line 77
    :cond_5
    :try_start_2
    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->EjP:I

    invoke-interface {v2, v3, v4, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_5

    .line 78
    :pswitch_5
    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v7, :cond_6

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v15, :cond_6

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v13, :cond_6

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v6, :cond_6

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v1, v14, :cond_d

    .line 79
    :cond_6
    :try_start_3
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->vS()V

    .line 80
    iput v13, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_5

    .line 81
    :pswitch_6
    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v8, :cond_7

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v1, v13, :cond_d

    .line 82
    :cond_7
    :try_start_4
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Dq()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5

    .line 83
    :pswitch_7
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->i()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    :catchall_0
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_8

    .line 85
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 86
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv5/a$a;

    invoke-interface {v2, v0}, Lv5/a$a;->TKC(Lv5/a;)V

    goto :goto_1

    .line 87
    :cond_9
    iput v9, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    goto/16 :goto_5

    .line 88
    :pswitch_8
    :try_start_6
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->aa()V

    .line 89
    iput v10, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    .line 90
    :pswitch_9
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    if-eqz v1, :cond_a

    .line 91
    iget-wide v7, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    iget-wide v9, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    :cond_a
    const/4 v1, 0x0

    .line 92
    iput-boolean v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    const-wide/16 v7, 0x0

    .line 93
    iput-wide v7, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    const-wide/high16 v7, -0x8000000000000000L

    .line 94
    iput-wide v7, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uvD:J

    .line 95
    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v4, v15, :cond_b

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v4, v6, :cond_b

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v4, v14, :cond_d

    .line 96
    :cond_b
    :try_start_7
    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Jcg()V

    .line 97
    iput v6, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 98
    iput-boolean v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    .line 99
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_c

    .line 100
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 101
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv5/a$a;

    invoke-interface {v2, v0}, Lv5/a$a;->EjP(Lv5/a;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 102
    :pswitch_a
    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v7, :cond_10

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-eq v1, v6, :cond_10

    iget v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    if-ne v1, v14, :cond_d

    goto :goto_4

    :cond_d
    const/16 v1, 0xc8

    .line 103
    iput v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 104
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq:Z

    if-nez v1, :cond_12

    .line 105
    new-instance v1, La6/a;

    const/16 v4, 0x134

    invoke-direct {v1, v4, v3}, La6/a;-><init>(II)V

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, La6/a;->b(Ljava/lang/String;)V

    .line 107
    iget-object v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_e

    .line 108
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 109
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lv5/a$a;

    invoke-interface {v3, v0, v1}, Lv5/a$a;->Sj(Lv5/a;La6/a;)V

    goto :goto_3

    .line 110
    :cond_f
    iput-boolean v5, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq:Z

    goto :goto_5

    .line 111
    :cond_10
    :goto_4
    :try_start_8
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->HiB()V

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->RiZ:J

    .line 113
    iput v15, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 114
    iget-wide v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_11

    .line 115
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    iget-wide v2, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    iget v4, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->EjP:I

    invoke-interface {v1, v2, v3, v4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(JI)V

    const-wide/16 v1, -0x1

    .line 116
    iput-wide v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    .line 117
    :cond_11
    iget-object v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    if-eqz v1, :cond_12

    .line 118
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LqL:Z

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    :cond_12
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public Sj(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    .line 39
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Sj(Z)V

    .line 40
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$4;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$4;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    if-eqz p1, :cond_2

    .line 43
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->EjP()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    .line 44
    :cond_2
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$5;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$5;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->n(Ljava/lang/Runnable;)V

    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;)V
    .locals 2

    const/16 p1, 0xd1

    .line 123
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 124
    sget-object p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->kF:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 125
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv5/a$a;

    invoke-interface {v0, p0}, Lv5/a$a;->Sj(Lv5/a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;I)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-eq v0, p1, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv5/a$a;

    invoke-interface {v0, p0, p2}, Lv5/a$a;->sP(Lv5/a;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;IIII)V
    .locals 0

    .line 142
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_0

    .line 143
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 144
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lv5/a$a;

    invoke-interface {p4, p0, p2, p3}, Lv5/a$a;->Sj(Lv5/a;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Sj(Lv5/a$a;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 146
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public Sj(Z)V
    .locals 2

    .line 10
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 11
    :cond_0
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->uP:Z

    .line 12
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->Sj(Z)V

    return-void

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_2

    .line 15
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$9;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$9;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public Sj(ZJZ)V
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->h()V

    .line 18
    iput-boolean p4, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LqL:Z

    .line 19
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    .line 21
    invoke-virtual {p0, p4}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP(Z)V

    if-eqz p1, :cond_1

    .line 22
    iput-wide p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->aa:J

    .line 23
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->t()V

    goto :goto_0

    .line 24
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->m(J)V

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz p1, :cond_2

    .line 26
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    iget p3, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LD:I

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Yf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public Sj()Z
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->HiB:Z

    return v0
.end method

.method public Sj(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;II)Z
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->r()V

    const/16 p1, 0xc8

    .line 131
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 132
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->f(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->j()V

    .line 136
    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 138
    new-instance p1, La6/a;

    invoke-direct {p1, p2, p3}, La6/a;-><init>(II)V

    .line 139
    iget-object p2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_3

    .line 140
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 141
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lv5/a$a;

    invoke-interface {p3, p0, p1}, Lv5/a$a;->Sj(Lv5/a;La6/a;)V

    goto :goto_0

    :cond_4
    return v0
.end method

.method public TEQ()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$11;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$11;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public TKC(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;)V
    .locals 2

    .line 5
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv5/a$a;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lv5/a$a;->Sj(Lv5/a;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public TKC()Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Jcg()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public TzV()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sP:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public Ym()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_6

    const/16 v1, 0x64

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    .line 6
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    const/16 v1, 0x65

    if-nez v0, :cond_3

    .line 7
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sU:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->p(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$12;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$12;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->d(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 11
    :cond_3
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->HiB:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->p(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    new-instance v0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$13;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$13;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->d(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 13
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public Zq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TKC:I

    .line 2
    .line 3
    return v0
.end method

.method public aa()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TEQ:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->a()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    .line 27
    .line 28
    const/16 v1, 0x67

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->j()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->j()V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public dNu()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 11
    .line 12
    const/16 v3, 0xce

    .line 13
    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 17
    .line 18
    const/16 v3, 0xcf

    .line 19
    .line 20
    if-ne v0, v3, :cond_2

    .line 21
    .line 22
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->uA()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    return-wide v0

    .line 29
    :catchall_0
    :cond_2
    return-wide v1
.end method

.method public sP(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->EjP:I

    return-void
.end method

.method public sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;)V
    .locals 2

    .line 11
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xcd

    .line 12
    iput p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 13
    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->ley:Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;

    if-eqz p1, :cond_1

    .line 14
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->aa()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 15
    new-instance v0, Lv5/c;

    invoke-direct {v0}, Lv5/c;-><init>()V

    .line 16
    invoke-virtual {v0, p1}, Lv5/c;->b(F)V

    .line 17
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->i(Lv5/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz p1, :cond_3

    .line 19
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    if-eqz p1, :cond_2

    .line 20
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->k()V

    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 22
    :cond_3
    :goto_0
    sget-object p1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->kF:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->zR:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 23
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fm:Z

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sU:Z

    if-nez p1, :cond_4

    if-nez v0, :cond_4

    .line 24
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->s()V

    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sU:Z

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 27
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 28
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv5/a$a;

    invoke-interface {v0, p0}, Lv5/a$a;->sP(Lv5/a;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public sP(Z)V
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-nez v0, :cond_1

    return-void

    .line 31
    :cond_1
    new-instance v1, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$8;-><init>(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sP()Z
    .locals 2

    .line 4
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public sP(Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;II)Z
    .locals 4

    .line 5
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/16 p1, -0x3ec

    if-ne p3, p1, :cond_2

    .line 6
    new-instance p1, La6/a;

    invoke-direct {p1, p2, p3}, La6/a;-><init>(II)V

    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->wE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv5/a$a;

    invoke-interface {v2, p0, p1}, Lv5/a$a;->Sj(Lv5/a;La6/a;)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->l(II)V

    return v1
.end method

.method public sef()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->sef:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->dNu:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    .line 14
    .line 15
    add-long/2addr v2, v0

    .line 16
    return-wide v2

    .line 17
    :cond_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Zq:J

    .line 18
    .line 19
    return-wide v0
.end method

.method public uA()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Dq()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->fF:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->q()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    .line 8
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Mts:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP$Sj;->Sj(Z)V

    const-wide/16 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->m(J)V

    .line 10
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    iget-object v1, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->WMZ:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->LD:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Yf:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public uvD()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TzV:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 11
    .line 12
    const/16 v1, 0xce

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    .line 17
    .line 18
    const/16 v1, 0xcf

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->vS:Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/b;->TEQ()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TzV:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    :catchall_0
    :cond_2
    iget-wide v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->TzV:J

    .line 31
    .line 32
    return-wide v0
.end method

.method public vS()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Ym:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->Fmk:Lcom/bytedance/sdk/component/utils/LqL;

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/Sj/Sj/sP/EjP/EjP;->FPG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
