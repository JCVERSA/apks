.class public Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/aa/uA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$Sj;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$sP;,
        Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$EjP;
    }
.end annotation


# instance fields
.field private Bml:Z

.field private Chv:Lcom/bytedance/sdk/openadsdk/common/EjP;

.field protected Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

.field private EZ:Z

.field private Ei:Z

.field protected EjP:Ljava/lang/String;

.field private final FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

.field private Fm:Z

.field private Fmk:I

.field HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

.field private HpB:Z

.field private volatile IOh:I

.field private JcM:F

.field Jcg:Ljava/lang/String;

.field private LD:Z

.field private LqL:J

.field private Mts:Z

.field private volatile MuB:I

.field private RiZ:Z

.field Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field public TEQ:Z

.field protected TKC:Z

.field private TzV:Lcom/bytedance/sdk/component/uA/vS;

.field private UHs:I

.field private WMZ:Lcom/bytedance/sdk/openadsdk/common/Fmk;

.field private Wjd:Z

.field private Yf:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field private final Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private Zq:I

.field private aNB:Ljava/lang/String;

.field private final aa:Ljava/lang/String;

.field private cX:Z

.field private dNu:Lcom/bytedance/sdk/component/uA/vS;

.field private db:J

.field private dwU:Ljava/lang/String;

.field private dx:Z

.field private fF:F

.field private gY:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

.field private ib:Z

.field private jb:Z

.field private kF:Landroid/view/View;

.field private kb:I

.field private ley:F

.field private volatile ndK:I

.field private pfr:J

.field private qRN:I

.field sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

.field private final sU:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

.field private final sef:Z

.field uA:Z

.field private uP:Landroid/view/View;

.field private uvD:I

.field vS:I

.field private wE:F

.field private xD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

.field private xhi:J

.field private zR:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TKC:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->RiZ:Z

    .line 9
    .line 10
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->vS:I

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Jcg:Ljava/lang/String;

    .line 22
    .line 23
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uA:Z

    .line 24
    .line 25
    new-instance v2, Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Yf:Landroid/util/SparseArray;

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LD:Z

    .line 33
    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    .line 35
    .line 36
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->fF:F

    .line 37
    .line 38
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->JcM:F

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Wjd:Z

    .line 41
    .line 42
    const-wide/16 v2, -0x1

    .line 43
    .line 44
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    .line 45
    .line 46
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ndK:I

    .line 47
    .line 48
    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->UHs:I

    .line 50
    .line 51
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->MuB:I

    .line 52
    .line 53
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->IOh:I

    .line 54
    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->pfr:J

    .line 58
    .line 59
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TEQ:Z

    .line 60
    .line 61
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kb:I

    .line 62
    .line 63
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 64
    .line 65
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 68
    .line 69
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HiB:Ljava/lang/String;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    .line 72
    .line 73
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->EjP:Z

    .line 74
    .line 75
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sef:Z

    .line 76
    .line 77
    return-void
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EZ:Z

    return p0
.end method

.method static synthetic Dq(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->RiZ:Z

    return p1
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->JcM:F

    return p1
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/model/sU;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    return-object p0
.end method

.method static synthetic EjP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR:Z

    return p1
.end method

.method static synthetic Fmk(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->MuB:I

    return p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->gY:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    return-object p0
.end method

.method static synthetic HiB(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Bml:Z

    return p1
.end method

.method static synthetic JcM(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sef:Z

    return p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    return-object p0
.end method

.method static synthetic Jcg(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LD:Z

    return p1
.end method

.method static synthetic LD(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uP:Landroid/view/View;

    return-object p0
.end method

.method static synthetic LqL(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->RiZ:Z

    return p0
.end method

.method static synthetic RiZ(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/common/EjP;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Chv:Lcom/bytedance/sdk/openadsdk/common/EjP;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->wE:F

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kb:I

    return p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LqL:J

    return-wide p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Yf:Landroid/util/SparseArray;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uP:Landroid/view/View;

    return-object p1
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/component/uA/vS;
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    return-object p0
.end method

.method private static Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;III)Ljava/lang/String;
    .locals 4

    .line 80
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->tY()F

    move-result v0

    .line 81
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 82
    const-string v2, "&"

    const-string v3, "?"

    if-ne p2, v1, :cond_1

    .line 83
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 84
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 85
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 86
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "orientation=portrait"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 88
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 89
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "height="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&width="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "&aspect_ratio="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 91
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 92
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HiB;->Sj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method private Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$EjP;)V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 107
    new-instance v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$7;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$7;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->UHs:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/sU;Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/EjP/TEQ;I)V

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Z)Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 109
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->gY:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/vS$Sj;

    .line 110
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result v2

    const-string v3, "landingpage_endcard"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->sP(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->TKC(Z)V

    .line 113
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$8;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$8;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 115
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    if-eqz v2, :cond_1

    .line 116
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP()Lcom/bytedance/sdk/openadsdk/sU/Dq;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(Lcom/bytedance/sdk/openadsdk/sU/Dq;)V

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    invoke-static {v2, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/uA/vS;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/EjP;

    move-result-object v2

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Chv:Lcom/bytedance/sdk/openadsdk/common/EjP;

    if-eqz v2, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object p1, v3

    :cond_2
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/common/EjP;->Sj(Ljava/lang/String;)V

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 120
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/component/uA/vS;)V

    .line 121
    :cond_4
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$9;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Chv:Lcom/bytedance/sdk/openadsdk/common/EjP;

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 122
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v2

    const/4 v12, 0x0

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    move v10, v12

    goto :goto_2

    :cond_6
    :goto_1
    move v10, v1

    :goto_2
    move-object v3, p1

    move-object v4, p0

    move-object v11, p2

    invoke-direct/range {v3 .. v11}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$9;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/EjP;Lcom/bytedance/sdk/openadsdk/EjP/Ym;ZLcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$EjP;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    .line 123
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 124
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 125
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xD:Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sef:Z

    if-eqz v2, :cond_7

    const-string v2, "rewarded_video"

    goto :goto_3

    :cond_7
    const-string v2, "fullscreen_interstitial_ad"

    :goto_3
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/HiB;->Sj(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 127
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$10;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz p1, :cond_9

    .line 129
    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$11;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Chv:Lcom/bytedance/sdk/openadsdk/common/EjP;

    move-object v2, v8

    move-object v3, p0

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$11;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Lcom/bytedance/sdk/openadsdk/common/EjP;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$EjP;)V

    invoke-virtual {p1, v8}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 130
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    const/16 p1, 0x18

    if-lt v0, p1, :cond_a

    .line 131
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    const/4 p2, 0x0

    invoke-virtual {p1, v1, p2}, Lcom/bytedance/sdk/component/uA/vS;->setLayerType(ILandroid/graphics/Paint;)V

    .line 132
    :cond_a
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/uA/vS;->setBackgroundColor(I)V

    .line 133
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p1, v12}, Lcom/bytedance/sdk/component/uA/vS;->setDisplayZoomControls(Z)V

    :cond_b
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Ljava/lang/String;)Z
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Wjd:Z

    return p1
.end method

.method private Sj(Ljava/lang/String;)Z
    .locals 2

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ".mp4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic TEQ(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->qRN:I

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->fF:F

    return p1
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Wjd:Z

    return p0
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HpB:Z

    return p1
.end method

.method static synthetic TzV(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic Yf(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LD:Z

    return p0
.end method

.method static synthetic Ym(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ndK:I

    return p0
.end method

.method static synthetic Zq(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    return-object p0
.end method

.method static synthetic aa(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->IOh:I

    return p0
.end method

.method static synthetic dNu(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ndK:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ndK:I

    return v0
.end method

.method private db()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 2
    .line 3
    const-string v1, "showPlayableEndCardOverlay"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    .line 12
    .line 13
    const/16 v1, 0x258

    .line 14
    .line 15
    const-wide/16 v2, 0x3e8

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    .line 23
    .line 24
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$5;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    const-wide/16 v1, 0x0

    .line 39
    .line 40
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method static synthetic dx(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->wE:F

    return p0
.end method

.method static synthetic fF(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kF:Landroid/view/View;

    return-object p0
.end method

.method static synthetic ib(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->fF:F

    return p0
.end method

.method static synthetic kF(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->JcM:F

    return p0
.end method

.method static synthetic ley(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Yf:Landroid/util/SparseArray;

    return-object p0
.end method

.method private ndK()Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    :goto_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/EjP/dNu;

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sef:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    const-string v2, "rewarded_video"

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const-string v2, "fullscreen_interstitial_ad"

    .line 22
    .line 23
    :goto_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 24
    .line 25
    invoke-direct {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/EjP/dNu;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ley:F

    return p1
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EZ:Z

    return p1
.end method

.method static synthetic sU(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->LqL:J

    return-wide v0
.end method

.method static synthetic sef(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->MuB:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->MuB:I

    return v0
.end method

.method static synthetic uA(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dwU:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic uP(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Mts:Z

    return p0
.end method

.method static synthetic uvD(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->IOh:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->IOh:I

    return v0
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi()V

    return-void
.end method

.method static synthetic vS(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx:Z

    return p1
.end method

.method static synthetic wE(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)Lcom/bytedance/sdk/openadsdk/common/Fmk;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/common/Fmk;

    return-object p0
.end method

.method private xhi()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fm:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->cX:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 8
    .line 9
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    .line 10
    .line 11
    const/16 v3, 0x258

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 17
    .line 18
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    .line 19
    .line 20
    const/16 v3, 0x2bc

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 26
    .line 27
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    .line 28
    .line 29
    const/16 v3, 0x384

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 35
    .line 36
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->EjP(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 42
    .line 43
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->RiZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->Zq()V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UmR()Z

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UmR()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->Dq(I)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Landroid/view/View$OnClickListener;

    .line 97
    .line 98
    if-eqz v1, :cond_0

    .line 99
    .line 100
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$Sj;

    .line 101
    .line 102
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    .line 103
    .line 104
    invoke-direct {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$Sj;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    .line 112
    .line 113
    :cond_0
    return-void
.end method

.method static synthetic zR(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ley:F

    return p0
.end method


# virtual methods
.method public Dq()V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR:Z

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db()V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Mts:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/sef;->TKC(Z)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    sget v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->TKC:I

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Jcg(I)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->uvD()V

    .line 13
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR:Z

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->ndK:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->TKC(Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->kb:Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/sP/sP;->kF()V

    goto :goto_0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj(I)V

    .line 23
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/HiB;->EjP()V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Dq:I

    int-to-long v3, v0

    invoke-interface {v1, v3, v4}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    .line 25
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->cX:Z

    return-void
.end method

.method public Ei()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fm:Z

    .line 2
    .line 3
    return v0
.end method

.method public EjP(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB(Z)V

    return-void
.end method

.method public EjP()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ei:Z

    return v0
.end method

.method public FPG()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public Fm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

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
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public Fmk()Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-object v0
.end method

.method public HiB()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->vS()V

    return-void
.end method

.method public HiB(Z)V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->HiB(Z)V

    .line 7
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    const-string v1, "endcard_mute"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string v1, "volumeChange"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method public HpB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TEQ:Z

    .line 2
    .line 3
    return v0
.end method

.method public JcM()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/TKC;->TEQ()V

    :cond_0
    return-void
.end method

.method public Jcg()V
    .locals 9

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, La6/b;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aNB:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aNB:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fmk:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uvD:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Zq:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aNB:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$3;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v1

    const/4 v8, 0x1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v7, v8

    :goto_1
    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/Yf;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/EjP/Ym;Z)V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$4;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    invoke-direct {v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Lcom/bytedance/sdk/openadsdk/core/Yf;Lcom/bytedance/sdk/openadsdk/EjP/Ym;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aNB:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V

    .line 12
    iput-boolean v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->zR:Z

    return-void
.end method

.method public Jcg(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->cX:Z

    return-void
.end method

.method public LD()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uA:Z

    return v0
.end method

.method public LqL()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/TKC;->Jcg()V

    :cond_0
    return-void
.end method

.method public Mts()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public RiZ()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx:Z

    return v0
.end method

.method public Sj()V
    .locals 4

    .line 9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ib:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ib:Z

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sdp:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fmk:I

    .line 12
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->IOh:I

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Zq:I

    .line 13
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->pfr:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uvD:I

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP()V

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->pfr:J

    return-void
.end method

.method public Sj(F)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;F)V

    return-void
.end method

.method public Sj(I)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setLandingPage(Z)V

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v1, "landingpage_endcard"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setTag(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hif()Lcom/bytedance/sdk/component/uA/sP/Sj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMaterialMeta(Lcom/bytedance/sdk/component/uA/sP/Sj;)V

    :cond_3
    if-nez p1, :cond_4

    .line 100
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 101
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Jcg()V

    :cond_4
    return-void
.end method

.method public Sj(II)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 76
    const-string p1, "height"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 77
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string p2, "resize"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 78
    const-string p2, "TTAD.RFWVM"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Landroid/webkit/DownloadListener;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/uA/vS;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/uA/vS;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/Sj/TKC;->Sj(Landroid/webkit/WebView;)V

    .line 139
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/16 v2, 0x1bca

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/TzV;->Sj(Landroid/webkit/WebView;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/uA/vS;->setUserAgentString(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMixedContentMode(I)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    .locals 9

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-nez v0, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "click_scence"

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 27
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->ndK()Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    .line 29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-direct {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 30
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    .line 31
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Lip()Ljava/lang/String;

    move-result-object v1

    .line 32
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 33
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 34
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 35
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 36
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x7

    if-eqz v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    new-instance v5, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$sP;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {v5, v8}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$sP;-><init>(Landroid/view/View;)V

    .line 37
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/Sj;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    .line 38
    invoke-virtual {v4, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    .line 39
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result v5

    const-string v8, "landingpage_endcard"

    if-eqz v5, :cond_3

    move-object v5, v8

    goto :goto_2

    :cond_3
    move-object v5, p2

    :goto_2
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v4

    .line 41
    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    .line 42
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    new-instance v4, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$16;

    invoke-direct {v4, p0, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$16;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    .line 43
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$15;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$15;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    .line 44
    invoke-virtual {p3, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf$Sj;)V

    .line 45
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 49
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->jb:Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    .line 50
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 51
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 52
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->TKC(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 53
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->EjP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 54
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TT()Z

    move-result v2

    if-eqz v2, :cond_5

    move v6, v7

    :cond_5
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(I)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$sP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$sP;-><init>(Landroid/view/View;)V

    .line 55
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/Sj;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    .line 56
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/component/uA/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    .line 57
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object p2, v8

    :cond_6
    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    .line 59
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    .line 60
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$18;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$18;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    .line 61
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$17;

    invoke-direct {p3, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$17;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    .line 62
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf$Sj;)V

    .line 63
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x0

    invoke-direct {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;-><init>(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$1;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/Ym;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 64
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    new-instance p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-direct {p3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$TKC;-><init>(Lcom/bytedance/sdk/component/uA/vS;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$1;)V

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/Ym;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 65
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Chv:Z

    .line 66
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p2

    .line 67
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/vS;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    .line 68
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Ym()Lcom/bytedance/sdk/openadsdk/aa/HiB;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/HiB;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$19;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$19;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    .line 69
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/TKC;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->jb:Z

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->HiB(Z)V

    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Wjd:Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/TEQ;->TEQ()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    .line 72
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Lcom/bytedance/sdk/openadsdk/aa/TKC;)Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/common/Fmk;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/common/Fmk;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    :cond_1
    :goto_0
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V
    .locals 2

    .line 142
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    const-string v1, "endcard_mute"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 144
    const-string p2, "endcard_show"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 145
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HS:Lcom/bytedance/sdk/openadsdk/activity/vS;

    if-eqz p2, :cond_0

    .line 146
    const-string v1, "multi_ads_show"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/vS;->uP()Lcom/bytedance/sdk/openadsdk/activity/sP;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/sP;->Dq()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    :cond_0
    const-string p2, "endcard_control_event"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz p3, :cond_1

    .line 148
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 149
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EZ:Z

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 150
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EZ:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$12;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$12;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$EjP;)V

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TzV(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/component/uA/vS;)V

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$13;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$13;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj(Landroid/webkit/DownloadListener;)V

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Chv:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->TKC(Z)V

    .line 22
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$14;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$14;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;Lcom/bytedance/sdk/openadsdk/core/aa/EjP/sP;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public Sj(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TKC:Z

    return-void
.end method

.method public Sj(ZILjava/lang/String;)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 152
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->sP()V

    return-void

    .line 153
    :cond_1
    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/EjP;->Sj(ILjava/lang/String;)V

    return-void
.end method

.method public Sj(ZZ)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    return-void
.end method

.method public TEQ()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    return-object v0
.end method

.method public TKC(Z)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    return-void
.end method

.method public TKC()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HpB:Z

    return v0
.end method

.method public TzV()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public WMZ()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->uA()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public Wjd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public Yf()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(J)V

    :cond_0
    return-void
.end method

.method public Ym()Lcom/bytedance/sdk/component/uA/vS;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    return-object v0
.end method

.method public Zq()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, La6/b;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Fmk(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fmk:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uvD:I

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Zq:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;III)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    const-string v1, "use_second_endcard=1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->jb:Z

    :cond_2
    return-void
.end method

.method public aa()Lcom/bytedance/sdk/openadsdk/core/Yf;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    return-object v0
.end method

.method public dNu()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    const-string v2, "show_landingpage"

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public dx()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->Zq()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->Zq()V

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 7
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db:J

    .line 8
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    .line 13
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    :cond_4
    return-void
.end method

.method public fF()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/sP;->TKC()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/TKC;->EjP()V

    :cond_0
    return-void
.end method

.method public ib()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->vS:I

    return v0
.end method

.method public jb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->HiB()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public kF()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Jcg:Ljava/lang/String;

    return-object v0
.end method

.method public ley()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/TKC;->Dq()V

    :cond_0
    return-void
.end method

.method sP()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Fm:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kF:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Jcg:Z

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Mts:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->WMZ:Lcom/bytedance/sdk/openadsdk/common/Fmk;

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/common/Fmk;->EjP()Lcom/bytedance/sdk/component/uA/vS;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->sef:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/uA/vS;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->HiB()V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xD:Lcom/bytedance/sdk/openadsdk/component/reward/view/Jcg;

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/Zq;->uvD:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/uA/vS;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->HiB()V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setDisplayZoomControls(Z)V

    goto :goto_1

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 17
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_3

    .line 18
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 19
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 20
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setLandingPage(Z)V

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v1, "landingpage_endcard"

    :goto_2
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setTag(Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    new-instance v1, Lcom/bytedance/sdk/component/uA/vS$Sj;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/uA/vS$Sj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->hif()Lcom/bytedance/sdk/component/uA/sP/Sj;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/uA/vS;->setMaterialMeta(Lcom/bytedance/sdk/component/uA/sP/Sj;)V

    :cond_5
    return-void
.end method

.method public sP(I)V
    .locals 1

    .line 30
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kb:I

    if-gtz v0, :cond_0

    if-lez p1, :cond_0

    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP(Z)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    if-nez p1, :cond_1

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP(Z)V

    .line 33
    :cond_1
    :goto_0
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->kb:I

    return-void
.end method

.method public sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V
    .locals 2

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->EjP(Z)V

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 28
    const-string v1, "viewStatus"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string p2, "viewableChange"

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public sP(Z)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    return-void
.end method

.method public sU()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/TKC;->uA()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Dq()V

    :cond_1
    return-void
.end method

.method public sef()Lcom/bytedance/sdk/openadsdk/EjP/Ym;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    return-object v0
.end method

.method public uA()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string v1, "showPlayableEndCardOverlay"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    const/16 v1, 0x258

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->HpB:Lcom/bytedance/sdk/component/utils/LqL;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    :cond_0
    return-void
.end method

.method public uP()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    return-object v0
.end method

.method public uvD()V
    .locals 12

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/JcM;->Sj(Landroid/webkit/WebView;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/JcM;->Sj(Landroid/webkit/WebView;)V

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-lez v4, :cond_4

    .line 7
    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    cmp-long v2, v6, v2

    if-lez v2, :cond_2

    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    sub-long/2addr v2, v6

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db:J

    .line 9
    :cond_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 10
    :try_start_0
    const-string v0, "endcard_overlay_render_type"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    goto :goto_0

    :cond_3
    move v1, v5

    :goto_0
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    const-string v8, "second_endcard_duration"

    iget-wide v10, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db:J

    invoke-static/range {v6 .. v11}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;J)V

    :cond_4
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->EjP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;->Sj(Z)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Dq:Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/EjP/EjP/HiB;->aa()V

    .line 16
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa()V

    .line 18
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_7

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->aa()V

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_a

    .line 21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ei()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    move v5, v1

    :cond_9
    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP(Z)V

    .line 22
    :cond_a
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils$AudioInfoReceiver;->sP(Lcom/bytedance/sdk/openadsdk/aa/uA;)V

    return-void
.end method

.method public vS()V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Ei:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Za()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->eMB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dwU:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->sP()Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj()Lcom/bytedance/sdk/openadsdk/Jcg/sP;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dwU:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/Jcg/sP;->Sj(Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->qRN:I

    if-lez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9
    :goto_0
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->UHs:I

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dwU:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_2

    .line 12
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->UHs:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Sj(I)V

    .line 13
    :cond_2
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->pfr:J

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sdp:Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dwU:Ljava/lang/String;

    const-string v5, "landingpage_endcard"

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/EjP/TKC$Sj;->Sj(JLcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lcom/bykv/vk/openvk/preload/falconx/loader/ILoader;Ljava/lang/String;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    const-string v2, "play.google.com/store"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 15
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->vS(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/TzV;->HiB(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_1

    .line 16
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "preLoadEndCardForce: return mShouldPreloadEndCard "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TKC:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",webViewIsLoading "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Bml:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TKC:Z

    if-eqz v0, :cond_a

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 19
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Bml:Z

    if-eqz v0, :cond_6

    return-void

    .line 20
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->EjP:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&is_pre_render=1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v2, :cond_7

    .line 22
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->EjP()V

    .line 23
    :cond_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Jcg(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/aa/TKC/Sj;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 25
    :cond_8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/sU;->Sj(Lcom/bytedance/sdk/component/uA/vS;Ljava/lang/String;)V

    .line 26
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->uP:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Dq;->Sj(Ljava/lang/String;)V

    .line 27
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Bml:Z

    return-void

    .line 28
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->TKC()V

    :cond_a
    return-void

    .line 30
    :cond_b
    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uA:Z

    return-void
.end method

.method public vS(Z)V
    .locals 4

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ei:Z

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    :try_start_0
    const-string v1, "endcard_overlay_render_type"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :catchall_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    const-string v3, "use_second_endcard"

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    .line 36
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    .line 37
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->Dq()V

    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->aa:Ljava/lang/String;

    const-string v2, "endcard_close_skip"

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/EjP/TKC;->sP(Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const-string v0, "click_endcard_close"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Sj(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    :catch_0
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->xu:Lcom/bytedance/sdk/openadsdk/utils/Fmk;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->Dq:I

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/Fmk;->Sj(J)V

    return-void
.end method

.method public wE()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->TKC(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->jb:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ei:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->WMZ:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Zq;->aa()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->jb:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ei:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dx:Z

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public xD()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->cX:Z

    .line 2
    .line 3
    return v0
.end method

.method public zR()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->Fmk()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/uA/vS;->Fmk()V

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->xhi:J

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Ym()V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->dNu:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_4

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->TEQ(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fm:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UmR()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->uA()V

    goto :goto_0

    .line 18
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    .line 21
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Ym:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/uP;->Dq(Lcom/bytedance/sdk/openadsdk/core/model/sU;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Yf;->Ym()V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->TzV:Lcom/bytedance/sdk/component/uA/vS;

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    .line 28
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Fm:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->FPG:Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/Sj;->sP:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UmR()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->db()V

    goto :goto_1

    .line 30
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Yf;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/Yf;

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP(Lcom/bytedance/sdk/openadsdk/core/Yf;Z)V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->sP:Lcom/bytedance/sdk/openadsdk/core/Yf;

    invoke-virtual {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->Sj(Lcom/bytedance/sdk/openadsdk/core/Yf;ZZ)V

    .line 33
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/Sj/TzV;->HiB:Lcom/bytedance/sdk/openadsdk/EjP/Ym;

    if-eqz v0, :cond_7

    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/EjP/Ym;->Jcg()V

    :cond_7
    return-void
.end method
