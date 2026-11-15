.class public Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;
.implements Lcom/bytedance/sdk/component/adexpress/sP/Dq;
.implements Lcom/bytedance/sdk/component/adexpress/sP/Zq;
.implements Lcom/bytedance/sdk/openadsdk/core/Dq/sef;
.implements Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;


# static fields
.field public static zR:I = 0x1f4


# instance fields
.field private Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

.field private Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

.field protected final Dq:Landroid/content/Context;

.field private EZ:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

.field private final Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private EjP:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field private FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

.field private Fm:Z

.field protected Fmk:Z

.field private HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

.field private HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

.field private IOh:Lcom/bytedance/sdk/component/adexpress/sP/uvD;

.field private Ir:J

.field private JcM:F

.field private Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

.field private LD:Ljava/lang/String;

.field protected LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

.field private Mts:Ljava/lang/String;

.field private MuB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/sP/TEQ;",
            ">;"
        }
    .end annotation
.end field

.field protected RiZ:Ljava/lang/String;

.field private Sj:Z

.field protected TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private TKC:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

.field protected TzV:I

.field private UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

.field private Uc:F

.field private WMZ:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

.field private Wjd:Ljava/lang/String;

.field public Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/adexpress/sP/EjP<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field protected Zq:Lcom/bytedance/sdk/component/adexpress/sP/TKC;

.field private aNB:I

.field private aZ:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

.field public aa:Landroid/widget/FrameLayout;

.field private final cX:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field dNu:Z

.field private final db:Ljava/lang/Runnable;

.field private dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

.field protected dx:Landroid/view/ViewGroup;

.field private fF:F

.field private gR:F

.field private gY:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

.field public ib:Z

.field private jb:Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

.field kF:I

.field private kb:F

.field ley:J

.field private final ndK:Ljava/lang/Runnable;

.field private pfr:Lcom/bytedance/sdk/component/adexpress/sP/vS;

.field private final qRN:Ljava/lang/Runnable;

.field private sP:I

.field protected sU:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

.field protected sef:Z

.field protected uA:Ljava/lang/String;

.field uP:Z

.field protected uvD:Z

.field private vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

.field public wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field private xD:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

.field private final xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private xu:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP:I

    .line 4
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    .line 6
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sef:Z

    .line 7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uvD:Z

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dNu:Z

    const/4 v2, -0x1

    .line 9
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    .line 10
    const-string v3, ""

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Mts:Ljava/lang/String;

    .line 11
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    .line 12
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fm:Z

    .line 13
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    const-wide/16 v2, 0x0

    .line 15
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ley:J

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->db:Ljava/lang/Runnable;

    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ndK:Ljava/lang/Runnable;

    .line 20
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->qRN:Ljava/lang/Runnable;

    const/16 v0, 0x8

    .line 21
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aNB:I

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->cX:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    .line 23
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kb:F

    .line 24
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Uc:F

    .line 25
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xu:F

    .line 26
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gR:F

    .line 27
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ir:J

    .line 28
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 29
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 31
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 32
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    .line 33
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;ZZ)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj:Z

    const/4 v1, 0x0

    .line 36
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP:I

    .line 37
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const/4 v2, 0x0

    .line 38
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    .line 39
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sef:Z

    .line 40
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uvD:Z

    .line 41
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dNu:Z

    const/4 v2, -0x1

    .line 42
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV:I

    .line 43
    const-string v3, ""

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Mts:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    .line 45
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fm:Z

    .line 46
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    .line 47
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    const-wide/16 v2, 0x0

    .line 48
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ley:J

    .line 49
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 51
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->db:Ljava/lang/Runnable;

    .line 52
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ndK:Ljava/lang/Runnable;

    .line 53
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->qRN:Ljava/lang/Runnable;

    const/16 v0, 0x8

    .line 54
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aNB:I

    .line 55
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->cX:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    .line 56
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kb:F

    .line 57
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Uc:F

    .line 58
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xu:F

    .line 59
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gR:F

    .line 60
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ir:J

    .line 61
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 64
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 65
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    .line 66
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fm:Z

    .line 67
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS()V

    return-void
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)F
    .locals 0

    .line 2
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->JcM:F

    return p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)Lcom/bytedance/sdk/openadsdk/core/Dq/dx;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->jb:Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    return-object p0
.end method

.method private Jcg()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "embeded_ad"

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->aa()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v0, "width"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const-string v2, "height"

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    int-to-float v1, v1

    .line 51
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->JcM:F

    .line 52
    .line 53
    int-to-float v0, v0

    .line 54
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->fF:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    :catch_0
    :cond_0
    return-void
.end method

.method private RiZ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fF()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP:I

    .line 8
    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sU()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dx()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    const-string v1, "NativeExpressView"

    .line 18
    .line 19
    const-string v2, "NativeExpressView dynamicRender fail"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->JcM()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x1

    .line 31
    if-ne v0, v1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj:Z

    .line 36
    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 44
    .line 45
    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/vS;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 53
    .line 54
    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/sP/Sj;)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->pfr:Lcom/bytedance/sdk/component/adexpress/sP/vS;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 65
    .line 66
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/sP/aa;

    .line 70
    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 72
    .line 73
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    .line 74
    .line 75
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/aa;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/sP/uA;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    .line 79
    .line 80
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/Dq/dx;)Lcom/bytedance/sdk/openadsdk/core/Dq/dx;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->jb:Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Mts:Ljava/lang/String;

    return-object p1
.end method

.method public static Sj(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x2

    .line 98
    :try_start_0
    new-array v0, v0, [I

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 100
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 101
    const-string v2, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 102
    const-string v2, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string p0, "left"

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    const-string p0, "top"

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->zR()V

    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)F
    .locals 0

    .line 2
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->fF:F

    return p0
.end method

.method private TzV()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ph()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 23
    .line 24
    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    .line 25
    .line 26
    .line 27
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/vS;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 32
    .line 33
    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/sP/Sj;)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->pfr:Lcom/bytedance/sdk/component/adexpress/sP/vS;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/sP/aa;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    .line 48
    .line 49
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/aa;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/sP/uA;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    .line 53
    .line 54
    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->RiZ()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sU()V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 73
    .line 74
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 75
    .line 76
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->WMZ:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    .line 77
    .line 78
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 79
    .line 80
    move-object v1, v0

    .line 81
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 82
    .line 83
    .line 84
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 85
    .line 86
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 89
    .line 90
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 91
    .line 92
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/HiB/Sj;Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V

    .line 93
    .line 94
    .line 95
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->IOh:Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    .line 96
    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string v1, "NativeExpressView"

    .line 105
    .line 106
    const-string v2, "NativeExpressView dynamicRender fail"

    .line 107
    .line 108
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 116
    .line 117
    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/vS;

    .line 121
    .line 122
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 123
    .line 124
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 125
    .line 126
    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/sP/Sj;)V

    .line 127
    .line 128
    .line 129
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->pfr:Lcom/bytedance/sdk/component/adexpress/sP/vS;

    .line 130
    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/sP/aa;

    .line 137
    .line 138
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 139
    .line 140
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    .line 141
    .line 142
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/aa;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/sP/uA;)V

    .line 143
    .line 144
    .line 145
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    .line 146
    .line 147
    return-void
.end method

.method private dNu()V
    .locals 12

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->WMZ:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    .line 12
    .line 13
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 18
    .line 19
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {v1, v0, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;-><init>(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->db()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Ym()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-nez v5, :cond_0

    .line 51
    .line 52
    new-instance v5, Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v4, "render_delay_time"

    .line 58
    .line 59
    invoke-virtual {v5, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    :cond_0
    move-wide v4, v1

    .line 65
    :goto_0
    const/4 v6, 0x0

    .line 66
    :try_start_1
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 67
    .line 68
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_1

    .line 73
    .line 74
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->Fmk(Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 84
    if-ne v7, v3, :cond_1

    .line 85
    .line 86
    move v7, v3

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move v7, v6

    .line 89
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    .line 94
    .line 95
    invoke-interface {v8, v9}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sef(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v8

    .line 99
    if-eqz v8, :cond_2

    .line 100
    .line 101
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 102
    .line 103
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    const/4 v9, 0x5

    .line 108
    if-eq v8, v9, :cond_2

    .line 109
    .line 110
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 111
    .line 112
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    const/4 v9, 0x6

    .line 117
    if-eq v8, v9, :cond_2

    .line 118
    .line 119
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 120
    .line 121
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    .line 122
    .line 123
    .line 124
    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    const/4 v9, 0x3

    .line 126
    if-ne v8, v9, :cond_3

    .line 127
    .line 128
    :cond_2
    move v7, v3

    .line 129
    goto :goto_2

    .line 130
    :catch_1
    move v7, v6

    .line 131
    :catch_2
    :cond_3
    :goto_2
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    .line 132
    .line 133
    .line 134
    move-result-wide v1

    .line 135
    const-wide/16 v4, 0x2710

    .line 136
    .line 137
    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    .line 138
    .line 139
    .line 140
    move-result-wide v1

    .line 141
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getRenderTimeout()I

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 146
    .line 147
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    if-eqz v5, :cond_4

    .line 152
    .line 153
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 154
    .line 155
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v5}, La6/b;->K()D

    .line 160
    .line 161
    .line 162
    move-result-wide v8

    .line 163
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 164
    .line 165
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5}, La6/b;->N()I

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    int-to-double v10, v5

    .line 174
    mul-double/2addr v8, v10

    .line 175
    goto :goto_3

    .line 176
    :cond_4
    const-wide/16 v8, 0x0

    .line 177
    .line 178
    :goto_3
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    .line 179
    .line 180
    const/4 v10, -0x1

    .line 181
    if-eq v5, v10, :cond_5

    .line 182
    .line 183
    double-to-int v10, v8

    .line 184
    if-ge v5, v10, :cond_5

    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_5
    move v3, v6

    .line 188
    :goto_4
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uP:Z

    .line 189
    .line 190
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 191
    .line 192
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_7

    .line 197
    .line 198
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 199
    .line 200
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    if-eqz v3, :cond_6

    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_6
    new-instance v3, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 208
    .line 209
    invoke-direct {v3}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;-><init>()V

    .line 210
    .line 211
    .line 212
    goto :goto_6

    .line 213
    :cond_7
    :goto_5
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;

    .line 214
    .line 215
    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;-><init>()V

    .line 216
    .line 217
    .line 218
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 219
    .line 220
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 221
    .line 222
    .line 223
    move-result v5

    .line 224
    if-eqz v5, :cond_8

    .line 225
    .line 226
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 227
    .line 228
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 229
    .line 230
    invoke-static {v5, v6}, Lcom/bytedance/sdk/openadsdk/core/TEQ/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)Lorg/json/JSONObject;

    .line 231
    .line 232
    .line 233
    move-result-object v5

    .line 234
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;

    .line 235
    .line 236
    .line 237
    :cond_8
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    .line 238
    .line 239
    check-cast v5, Lcom/bytedance/adsdk/ugeno/core/Zq;

    .line 240
    .line 241
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->Sj(Lcom/bytedance/adsdk/ugeno/core/Zq;)Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;

    .line 242
    .line 243
    .line 244
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->fF:F

    .line 245
    .line 246
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;

    .line 247
    .line 248
    .line 249
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->JcM:F

    .line 250
    .line 251
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj$Sj;

    .line 252
    .line 253
    .line 254
    :goto_6
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->HiB(Z)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 255
    .line 256
    .line 257
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 258
    .line 259
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 264
    .line 265
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 270
    .line 271
    .line 272
    move-result-object v5

    .line 273
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 274
    .line 275
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v6

    .line 279
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 284
    .line 285
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 290
    .line 291
    .line 292
    move-result-object v5

    .line 293
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    .line 294
    .line 295
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/uA;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 300
    .line 301
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dU()I

    .line 302
    .line 303
    .line 304
    move-result v6

    .line 305
    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->EjP(I)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-virtual {v5, v4}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(I)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 314
    .line 315
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->RrR()Z

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->sP(Z)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fm:Z

    .line 324
    .line 325
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->TKC(Z)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 330
    .line 331
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Mts()I

    .line 332
    .line 333
    .line 334
    move-result v5

    .line 335
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->sP(I)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-virtual {v4, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(J)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 344
    .line 345
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sdp()I

    .line 346
    .line 347
    .line 348
    move-result v2

    .line 349
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->TKC(I)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 354
    .line 355
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/util/Map;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(Ljava/util/Map;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->EjP(Z)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 364
    .line 365
    .line 366
    move-result-object v1

    .line 367
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    .line 368
    .line 369
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->HiB(I)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uP:Z

    .line 374
    .line 375
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(Z)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-virtual {v1, v8, v9}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(D)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 384
    .line 385
    .line 386
    move-result-object v2

    .line 387
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->gR()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v2

    .line 391
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->vS(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 396
    .line 397
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fAj()Lcom/bytedance/sdk/openadsdk/core/model/sP;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sP;->Sj()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Jcg(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 406
    .line 407
    .line 408
    move-result-object v1

    .line 409
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 410
    .line 411
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fAj()Lcom/bytedance/sdk/openadsdk/core/model/sP;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sP;->sP()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;

    .line 424
    .line 425
    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Z)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/HiB;)Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;

    .line 429
    .line 430
    .line 431
    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;->Sj()Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 439
    .line 440
    return-void
.end method

.method private dx()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKa()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ley()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x2

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/vS/Sj/Sj;

    .line 23
    .line 24
    invoke-direct {v9}, Lcom/bytedance/sdk/openadsdk/core/vS/Sj/Sj;-><init>()V

    .line 25
    .line 26
    .line 27
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP:I

    .line 28
    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    const/4 v1, 0x3

    .line 32
    if-eq v0, v1, :cond_3

    .line 33
    .line 34
    const/4 v1, 0x7

    .line 35
    if-eq v0, v1, :cond_2

    .line 36
    .line 37
    const/16 v1, 0x9

    .line 38
    .line 39
    if-eq v0, v1, :cond_4

    .line 40
    .line 41
    const/16 v1, 0xa

    .line 42
    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 52
    .line 53
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    .line 54
    .line 55
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 56
    .line 57
    move-object v6, v1

    .line 58
    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    .line 59
    .line 60
    move-object v2, v0

    .line 61
    move-object v7, p0

    .line 62
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;Landroid/view/ViewGroup;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    .line 66
    .line 67
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 68
    .line 69
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 70
    .line 71
    invoke-direct {v1, v2, v0, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Lcom/bytedance/sdk/component/adexpress/sP/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    .line 72
    .line 73
    .line 74
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EZ:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 77
    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 83
    .line 84
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 85
    .line 86
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 87
    .line 88
    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    .line 89
    .line 90
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 91
    .line 92
    move-object v6, v1

    .line 93
    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    .line 94
    .line 95
    move-object v2, v0

    .line 96
    move-object v7, p0

    .line 97
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;Landroid/view/ViewGroup;)V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gY:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 101
    .line 102
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    .line 103
    .line 104
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 105
    .line 106
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 107
    .line 108
    invoke-direct {v1, v2, v0, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Lcom/bytedance/sdk/component/adexpress/sP/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;)V

    .line 109
    .line 110
    .line 111
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EZ:Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/Jcg;

    .line 112
    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 114
    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :cond_3
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Jcg;

    .line 120
    .line 121
    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/HiB/Jcg;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/sP;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 127
    .line 128
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 129
    .line 130
    .line 131
    move-result-object v10

    .line 132
    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 133
    .line 134
    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 135
    .line 136
    iget-boolean v13, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    .line 137
    .line 138
    new-instance v14, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;

    .line 139
    .line 140
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 141
    .line 142
    move-object v2, v14

    .line 143
    move-object v4, v12

    .line 144
    move v5, v13

    .line 145
    move-object v6, v0

    .line 146
    move-object v7, v11

    .line 147
    move-object v8, v9

    .line 148
    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/Dq/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/HiB/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;)V

    .line 149
    .line 150
    .line 151
    move-object v2, v1

    .line 152
    move-object v3, v10

    .line 153
    move-object v4, v11

    .line 154
    move-object v5, v12

    .line 155
    move v6, v13

    .line 156
    move-object v7, v0

    .line 157
    move-object v8, p0

    .line 158
    move-object v10, v14

    .line 159
    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/component/adexpress/sP/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/HiB/Dq;Lcom/bytedance/sdk/component/adexpress/sP/Dq;Lcom/bytedance/sdk/component/adexpress/dynamic/vS/Sj;Lcom/bytedance/sdk/component/adexpress/dynamic/Sj/Sj;)V

    .line 160
    .line 161
    .line 162
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    .line 163
    .line 164
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 165
    .line 166
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 171
    .line 172
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 173
    .line 174
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 175
    .line 176
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 177
    .line 178
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->WMZ:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    .line 179
    .line 180
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 181
    .line 182
    move-object v2, v0

    .line 183
    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 184
    .line 185
    .line 186
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 187
    .line 188
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    .line 189
    .line 190
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 191
    .line 192
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Bml:Lcom/bytedance/sdk/component/adexpress/sP/Fmk;

    .line 193
    .line 194
    invoke-direct {v1, v2, v3, v0, p0}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/sP/Fmk;Lcom/bytedance/sdk/component/adexpress/HiB/Sj;Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V

    .line 195
    .line 196
    .line 197
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->IOh:Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    .line 198
    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 200
    .line 201
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    :goto_0
    return-void
.end method

.method private getAdSlotType()I
    .locals 6

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v5

    .line 14
    sparse-switch v5, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :sswitch_0
    const-string v5, "interaction"

    .line 19
    .line 20
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v4, 0x4

    .line 28
    goto :goto_0

    .line 29
    :sswitch_1
    const-string v5, "fullscreen_interstitial_ad"

    .line 30
    .line 31
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v4, v0

    .line 39
    goto :goto_0

    .line 40
    :sswitch_2
    const-string v5, "open_ad"

    .line 41
    .line 42
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move v4, v1

    .line 50
    goto :goto_0

    .line 51
    :sswitch_3
    const-string v5, "rewarded_video"

    .line 52
    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move v4, v2

    .line 61
    goto :goto_0

    .line 62
    :sswitch_4
    const-string v5, "banner_ad"

    .line 63
    .line 64
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-nez v3, :cond_4

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    const/4 v4, 0x0

    .line 72
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 73
    .line 74
    .line 75
    const/4 v0, 0x5

    .line 76
    return v0

    .line 77
    :pswitch_0
    return v1

    .line 78
    :pswitch_1
    const/16 v0, 0x8

    .line 79
    .line 80
    :pswitch_2
    return v0

    .line 81
    :pswitch_3
    const/4 v0, 0x7

    .line 82
    return v0

    .line 83
    :pswitch_4
    return v2

    .line 84
    nop

    .line 85
    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_4
        -0x514cfef6 -> :sswitch_3
        -0x4b4ad1c8 -> :sswitch_2
        -0x2d935a6e -> :sswitch_1
        0x6deace12 -> :sswitch_0
    .end sparse-switch

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ib()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method private kF()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)Ljava/lang/Runnable;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->db:Ljava/lang/Runnable;

    return-object p0
.end method

.method private sU()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->HiB()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Dq/aa;->Sj()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private uP()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method private wE()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "fullscreen_interstitial_ad"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "rewarded_video"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string v0, "open_ad"

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 40
    .line 41
    const-string v1, "embeded_ad"

    .line 42
    .line 43
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    return v0

    .line 52
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 53
    return v0
.end method

.method private zR()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/LD;->Sj(Landroid/view/View;)F

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/Jcg;->Sj(JF)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public Dq()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 4
    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Dq()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sef()Lcom/bytedance/sdk/openadsdk/core/model/dNu;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/dNu;->EjP()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v0, 0x5

    .line 29
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/uA;->sP()Landroid/os/Handler;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$6;

    .line 34
    .line 35
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v3, 0x3e8

    .line 39
    .line 40
    int-to-long v5, v0

    .line 41
    mul-long/2addr v5, v3

    .line 42
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-wide/16 v1, 0x0

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->Sj(J)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 83
    .line 84
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 89
    .line 90
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_4

    .line 95
    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    return-void
.end method

.method public EjP()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public Fmk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public HiB()V
    .locals 0

    .line 1
    return-void
.end method

.method public HiB(I)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(I)V

    :cond_0
    return-void
.end method

.method public Sj(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lorg/json/JSONObject;
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    .line 139
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 140
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getRenderEngineCacheType()I

    move-result v0

    if-eqz p2, :cond_3

    .line 141
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "engine_version"

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->sef()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->xhi()Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU$Sj;->Fmk()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ndK()Lcom/bytedance/sdk/openadsdk/core/model/LqL;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 144
    const-string p2, "v3"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 145
    :cond_2
    const-string p2, "v1"

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    :cond_3
    :goto_0
    const-string p2, "engine_type"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 147
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_2
    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public Sj()V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(I)V
    .locals 0

    .line 2
    return-void
.end method

.method public Sj(ILcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 0

    .line 3
    return-void
.end method

.method public Sj(ILjava/lang/String;)V
    .locals 0

    .line 4
    return-void
.end method

.method public Sj(IZZ)V
    .locals 2

    .line 13
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dNu:Z

    .line 14
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->qRN:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ndK:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x32

    if-nez p1, :cond_1

    if-eqz p3, :cond_0

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ndK:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ndK:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->qRN:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 19
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->qRN:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    .line 20
    const-string v0, "click_type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "trigger Class2 method1"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v4, v5, v6

    const-string v4, "ClickCreativeListener"

    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, -0x1

    if-eq v3, v4, :cond_17

    if-nez p3, :cond_0

    goto/16 :goto_7

    .line 21
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 22
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v5

    const-string v8, "click_scence"

    if-eqz v5, :cond_1

    const/4 v5, 0x3

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 24
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :goto_0
    move-object/from16 v5, p3

    check-cast v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;

    .line 26
    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 27
    :try_start_0
    iget-object v8, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->dNu:Lorg/json/JSONObject;

    if-eqz v8, :cond_2

    .line 28
    invoke-virtual {v8, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 29
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 30
    invoke-virtual {v9, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    const-string v0, "pag_json_data"

    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v0, v8}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP(I)V

    .line 35
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    .line 36
    :cond_3
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    if-eqz v0, :cond_4

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->EjP(I)V

    .line 38
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/util/Map;)V

    .line 39
    :cond_4
    iget v10, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Sj:F

    .line 40
    iget v11, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->sP:F

    .line 41
    iget v12, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TKC:F

    .line 42
    iget v13, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->EjP:F

    .line 43
    iget-boolean v15, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Zq:Z

    .line 44
    iget-object v0, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->sef:Landroid/util/SparseArray;

    if-eqz v0, :cond_6

    .line 45
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    move-object v14, v0

    goto :goto_4

    .line 46
    :cond_6
    :goto_3
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->cX:Landroid/util/SparseArray;

    goto :goto_2

    .line 47
    :goto_4
    iget-object v0, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Ym:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v2, :cond_7

    move-object v9, v1

    goto :goto_5

    :cond_7
    if-eq v2, v1, :cond_8

    .line 48
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    :cond_8
    move-object v9, v2

    .line 49
    :goto_5
    iput v3, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->aa:I

    if-eqz v4, :cond_9

    .line 50
    iget-object v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Fmk:Lorg/json/JSONObject;

    if-nez v2, :cond_9

    .line 51
    iput-object v4, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->Fmk:Lorg/json/JSONObject;

    :cond_9
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_7

    .line 52
    :pswitch_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 53
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj()V

    return-void

    .line 54
    :pswitch_2
    iget-boolean v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    xor-int/2addr v0, v6

    const-string v2, "dynamicClick"

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(ZLjava/lang/String;)V

    return-void

    .line 55
    :pswitch_3
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_a

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 56
    invoke-static/range {v16 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    :cond_a
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ib()I

    move-result v2

    if-ne v2, v6, :cond_b

    if-nez v15, :cond_b

    return-void

    .line 58
    :cond_b
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 59
    const-string v2, "embeded_ad"

    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Fmk:Z

    if-nez v2, :cond_c

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 60
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    if-eqz v2, :cond_d

    .line 61
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sef;)V

    .line 62
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/lang/String;)V

    .line 63
    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    goto :goto_6

    .line 64
    :cond_c
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    if-eqz v2, :cond_d

    .line 65
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/Dq/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sef;)V

    .line 66
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/lang/String;)V

    .line 67
    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 68
    :cond_d
    :goto_6
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v0, :cond_17

    iget-boolean v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TzV:Z

    if-nez v2, :cond_17

    .line 69
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    return-void

    .line 70
    :pswitch_4
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EjP:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_e

    .line 71
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    .line 72
    :cond_e
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    if-eqz v0, :cond_f

    .line 73
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TKC/TKC;->Sj()V

    return-void

    .line 74
    :cond_f
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Wjd:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    return-void

    .line 75
    :pswitch_5
    iget v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->uvD:I

    if-lez v2, :cond_10

    .line 76
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Z)V

    .line 77
    :cond_10
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    if-eqz v2, :cond_12

    .line 78
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sef;)V

    .line 79
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/lang/String;)V

    .line 80
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 81
    iget-object v0, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->dNu:Lorg/json/JSONObject;

    if-eqz v0, :cond_11

    .line 82
    const-string v2, "is_ceiling_page"

    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->EjP(Z)V

    .line 84
    :cond_11
    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    invoke-virtual/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 85
    :cond_12
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v0, :cond_13

    iget-boolean v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TzV:Z

    if-nez v2, :cond_13

    .line 86
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    .line 87
    :cond_13
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/fF;->Sj(Z)V

    .line 88
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    return-void

    .line 89
    :pswitch_6
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_14

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 90
    invoke-static/range {v16 .. v23}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 91
    :cond_14
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->ib()I

    move-result v2

    if-ne v2, v6, :cond_15

    if-nez v15, :cond_15

    return-void

    .line 92
    :cond_15
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    if-eqz v2, :cond_16

    .line 93
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/Dq/uA;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sef;)V

    .line 94
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Ljava/lang/String;)V

    .line 95
    iget-object v8, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    invoke-virtual/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 96
    :cond_16
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v0, :cond_17

    iget-boolean v2, v5, Lcom/bytedance/sdk/openadsdk/core/model/sef;->TzV:Z

    if-nez v2, :cond_17

    .line 97
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/api/PAGAdWrapperListener;->onAdClicked()V

    :cond_17
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;)V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    :try_start_0
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;

    if-eqz v0, :cond_2

    .line 150
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dx:Landroid/view/ViewGroup;

    if-eqz p1, :cond_2

    .line 151
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj()V

    .line 152
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->sP()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dx:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/EjP;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/adexpress/sP/EjP<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/sP/sef;",
            ")V"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 107
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aNB:I

    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS(I)V

    .line 109
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    .line 110
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB(I)V

    .line 112
    :cond_1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v0

    if-eq v0, v1, :cond_7

    .line 113
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->HiB()Landroid/view/View;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 116
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 117
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 118
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_5

    .line 120
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v1, :cond_4

    .line 121
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->HiB()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 124
    :cond_6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->HiB()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 125
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_8

    .line 126
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->HiB()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ley:J

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/Zq/TKC;->Sj(JJLjava/lang/String;I)V

    .line 127
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    if-eqz p1, :cond_9

    .line 128
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Ym()V

    .line 129
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz p1, :cond_a

    .line 130
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->EjP()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->HiB()D

    move-result-wide v1

    double-to-float v1, v1

    .line 131
    invoke-interface {p1, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderSuccess(Landroid/view/View;FF)V

    .line 132
    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/HiB;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Zq;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 133
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uvD()V

    .line 134
    :cond_b
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 135
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getDynamicShowType()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TKC(I)Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;)V

    .line 136
    :cond_c
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->jb:Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    if-eqz p1, :cond_d

    .line 137
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    :cond_d
    return-void
.end method

.method protected Sj(Lcom/bytedance/sdk/component/adexpress/sP/Fmk$Sj;)V
    .locals 0

    .line 5
    return-void
.end method

.method public Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 6
    return-void
.end method

.method protected Sj(Lorg/json/JSONObject;)V
    .locals 0

    .line 7
    return-void
.end method

.method public Sj(ZLjava/lang/String;)V
    .locals 0

    .line 8
    return-void
.end method

.method protected Sj(Lcom/bytedance/sdk/component/adexpress/sP/sef;)Z
    .locals 0

    .line 9
    const/4 p1, 0x1

    return p1
.end method

.method public TEQ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/HiB/Sj;->sP()Lcom/bytedance/sdk/component/uA/vS;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->vS()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public TKC()J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected TKC(I)Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;
    .locals 1

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB$Sj;-><init>(I)V

    return-object v0
.end method

.method public Ym()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->sP()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sef()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Landroid/view/ViewGroup;

    .line 28
    .line 29
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/bytedance/sdk/component/adexpress/sP/TEQ;

    .line 51
    .line 52
    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ;->Sj()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    .line 68
    .line 69
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EjP:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 72
    .line 73
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 74
    .line 75
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    .line 76
    .line 77
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    .line 78
    .line 79
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Zq:Lcom/bytedance/sdk/component/adexpress/sP/TKC;

    .line 80
    .line 81
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    .line 82
    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    .line 84
    .line 85
    if-eqz v0, :cond_3

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->TKC()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void

    .line 91
    :goto_2
    const-string v1, "NativeExpressView"

    .line 92
    .line 93
    const-string v2, "detach error"

    .line 94
    .line 95
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/sU;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public Zq()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ei:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public a_(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->Dq()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/uA;->uA()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Chv:Lcom/bytedance/sdk/component/adexpress/sP/uA;

    .line 18
    .line 19
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/Fmk;->Ym()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Dq;->Sj(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-interface {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->jb:Lcom/bytedance/sdk/openadsdk/core/Dq/dx;

    .line 36
    .line 37
    if-eqz p1, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/dx;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    return-void
.end method

.method public aa()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aa:Landroid/widget/FrameLayout;

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :catchall_0
    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TKC(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->sP(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->Sj(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/sP/sP;->TKC(I)V

    .line 58
    .line 59
    .line 60
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_7

    .line 65
    .line 66
    const/4 v1, 0x3

    .line 67
    const/4 v2, 0x1

    .line 68
    if-eq v0, v2, :cond_2

    .line 69
    .line 70
    const/4 v3, 0x2

    .line 71
    if-eq v0, v3, :cond_4

    .line 72
    .line 73
    if-eq v0, v1, :cond_3

    .line 74
    .line 75
    const/4 v1, -0x1

    .line 76
    :cond_2
    :goto_0
    move v5, v1

    .line 77
    goto :goto_1

    .line 78
    :cond_3
    const/4 v1, 0x4

    .line 79
    goto :goto_0

    .line 80
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xu:F

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kb:F

    .line 87
    .line 88
    sub-float/2addr v1, v4

    .line 89
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    add-float/2addr v0, v1

    .line 94
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xu:F

    .line 95
    .line 96
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gR:F

    .line 97
    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Uc:F

    .line 103
    .line 104
    sub-float/2addr v1, v4

    .line 105
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    add-float/2addr v0, v1

    .line 110
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gR:F

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kb:F

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Uc:F

    .line 123
    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ir:J

    .line 129
    .line 130
    sub-long/2addr v0, v4

    .line 131
    const-wide/16 v4, 0xc8

    .line 132
    .line 133
    cmp-long v0, v0, v4

    .line 134
    .line 135
    if-lez v0, :cond_6

    .line 136
    .line 137
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xu:F

    .line 138
    .line 139
    const/high16 v1, 0x41000000    # 8.0f

    .line 140
    .line 141
    cmpl-float v0, v0, v1

    .line 142
    .line 143
    if-gtz v0, :cond_5

    .line 144
    .line 145
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gR:F

    .line 146
    .line 147
    cmpl-float v0, v0, v1

    .line 148
    .line 149
    if-lez v0, :cond_6

    .line 150
    .line 151
    :cond_5
    move v5, v2

    .line 152
    goto :goto_1

    .line 153
    :cond_6
    move v5, v3

    .line 154
    goto :goto_1

    .line 155
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kb:F

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Uc:F

    .line 166
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 168
    .line 169
    .line 170
    move-result-wide v2

    .line 171
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ir:J

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->cX:Landroid/util/SparseArray;

    .line 175
    .line 176
    if-eqz v0, :cond_8

    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    .line 185
    .line 186
    .line 187
    move-result v3

    .line 188
    float-to-double v6, v3

    .line 189
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    float-to-double v8, v3

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 195
    .line 196
    .line 197
    move-result-wide v10

    .line 198
    move-object v4, v2

    .line 199
    invoke-direct/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;-><init>(IDDJ)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    :cond_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    return p1
.end method

.method public getAdShowTime()Lcom/bytedance/sdk/openadsdk/EjP/Jcg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->wE:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBrandBannerController()Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickCreativeListener()Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickListener()Lcom/bytedance/sdk/openadsdk/core/Dq/uA;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClosedListenerKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Wjd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDynamicShowType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->TKC()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getExpectExpressHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->JcM:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getExpectExpressWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->fF:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getRenderEngineCacheType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Zq()Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TEQ;->Sj()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method protected getRenderTimeout()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->uP()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getUgenTemplateErrorReason()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Mts:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getVideoProgress()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aZ:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;->getVideoProgress()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public getWebView()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj()Lcom/bytedance/sdk/component/uA/vS;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->zR()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Wjd:Ljava/lang/String;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xD:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/uA;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Wjd:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->vS(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uP()V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x8

    .line 26
    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-virtual {p0, v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(IZZ)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->zR()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v1, 0x1c

    .line 7
    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->onWindowVisibilityChanged(I)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->zR()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 27
    .line 28
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)V

    .line 29
    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 34
    .line 35
    const/4 v0, 0x4

    .line 36
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 41
    .line 42
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/kF/sP/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;I)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Sj(IZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onvideoComplate()V
    .locals 0

    .line 1
    return-void
.end method

.method public sP()V
    .locals 0

    .line 1
    return-void
.end method

.method public sP(I)V
    .locals 0

    .line 2
    return-void
.end method

.method protected sP(II)V
    .locals 9

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v1, "banner_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    const-string v1, "open_ad"

    const/4 v2, 0x0

    if-lt p2, v0, :cond_1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uP:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EjP()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v2

    .line 8
    :goto_0
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    if-gt p2, v1, :cond_6

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 10
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    int-to-double v3, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v1

    invoke-virtual {v1}, La6/b;->K()D

    move-result-wide v5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v1

    invoke-virtual {v1}, La6/b;->N()I

    move-result v1

    int-to-double v7, v1

    mul-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    int-to-double v5, p2

    sub-double/2addr v3, v5

    double-to-int p2, v3

    goto :goto_1

    .line 11
    :cond_5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    sub-int p2, v1, p2

    goto :goto_1

    :cond_6
    move p2, v2

    .line 12
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0, p2, v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;->setTime(Ljava/lang/CharSequence;IIZ)V

    .line 14
    :cond_7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    instance-of v3, v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    if-eqz v3, :cond_8

    .line 15
    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->setTime(Ljava/lang/CharSequence;IIZ)V

    :cond_8
    return-void
.end method

.method public sP(ILjava/lang/String;)V
    .locals 3

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v1, :cond_1

    .line 18
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->uvD()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 19
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 20
    :try_start_0
    const-string v2, "time"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    const-string p1, "flag"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string p1, "onVideoPaused"

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public sef()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getVideoProgress()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->HiB(J)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public setBackupListener(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Zq:Lcom/bytedance/sdk/component/adexpress/sP/TKC;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->pfr:Lcom/bytedance/sdk/component/adexpress/sP/vS;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/sP/vS;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/TKC;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setBannerClickClosedListener(Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->xD:Lcom/bytedance/sdk/openadsdk/core/TKC/EjP$Sj;

    .line 2
    .line 3
    return-void
.end method

.method public setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->vS:Lcom/bytedance/sdk/openadsdk/core/Dq/Dq;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/sP/Sj;->Sj(Lcom/bytedance/sdk/openadsdk/core/sP/Sj$Sj;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setClickListener(Lcom/bytedance/sdk/openadsdk/core/Dq/uA;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg:Lcom/bytedance/sdk/openadsdk/core/Dq/uA;

    .line 2
    .line 3
    return-void
.end method

.method public setClosedListenerKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Wjd:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDislike(Lcom/bytedance/sdk/openadsdk/TKC/TKC;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->HiB()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->setDislikeInner(Lcom/bytedance/sdk/openadsdk/core/uP;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/uP;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TKC:Lcom/bytedance/sdk/openadsdk/TKC/TKC;

    .line 28
    .line 29
    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HiB:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setJsbLandingPageOpenListener(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->gY:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/sU;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/EjP;->HiB()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/Sj;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->EjP:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 28
    .line 29
    return-void
.end method

.method public setSoundMute(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ib:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LqL:Lcom/bytedance/sdk/component/adexpress/sP/sP;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/sP;->sP()Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;->setSoundMute(Z)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    .line 23
    .line 24
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->setSoundMute(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;IIZ)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sP(II)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    :cond_0
    return-void
.end method

.method public setTimeUpdate(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public setVastVideoHelper(Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aZ:Lcom/bytedance/sdk/openadsdk/core/TKC/Jcg;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoFrameChangeListener(Lcom/bytedance/sdk/openadsdk/aa/Jcg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/Jcg;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public uA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->ley:J

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x6a

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->a_(I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Zq;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;->Sj()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->WMZ:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    .line 40
    .line 41
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->Sj()V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj(Lcom/bytedance/sdk/component/adexpress/sP/Zq;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sdp:Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;

    .line 52
    .line 53
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/sP/TEQ$Sj;->Sj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    :catchall_0
    return-void
.end method

.method public uvD()V
    .locals 3

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/Dq/sef;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->FPG:Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;

    .line 16
    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$7;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/sP;->Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/TKC/Sj;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method protected vS()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->sU:Ljava/util/HashSet;

    .line 2
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->UHs:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->fF:F

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->JcM:F

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Jcg()V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TEQ:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v1, "fullscreen_interstitial_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj()I

    move-result v0

    if-ltz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->RiZ(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    move-result v0

    if-ltz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    goto :goto_1

    .line 15
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TEQ(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    goto :goto_1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    const-string v1, "open_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC()I

    move-result v0

    if-ltz v0, :cond_4

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->LD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->zR(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    .line 20
    :goto_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    if-gez v0, :cond_5

    const/4 v0, 0x5

    .line 21
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->kF:I

    :cond_5
    :goto_1
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hzV()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Dq:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->HpB:Lcom/bytedance/sdk/openadsdk/core/Dq/TKC;

    return-void

    .line 25
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dNu()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->MuB:Ljava/util/List;

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->TzV()V

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->IOh:Lcom/bytedance/sdk/component/adexpress/sP/uvD;

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/uvD;->sP()Lcom/bytedance/sdk/component/adexpress/HiB/Sj;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->dwU:Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    .line 30
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 31
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->uA:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->vS(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public vS(I)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->Yf:Lcom/bytedance/sdk/component/adexpress/sP/EjP;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    if-eqz v1, :cond_0

    .line 33
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->Sj(I)V

    .line 34
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;->aNB:I

    :cond_0
    return-void
.end method
