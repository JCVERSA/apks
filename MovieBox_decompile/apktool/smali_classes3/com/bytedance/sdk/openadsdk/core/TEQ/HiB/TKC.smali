.class public Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/Fmk;
.implements Lcom/bytedance/adsdk/ugeno/core/aa;
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;
.implements Lcom/bytedance/sdk/component/adexpress/sP/EjP;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/ugeno/core/Fmk;",
        "Lcom/bytedance/adsdk/ugeno/core/aa;",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/EjP;",
        "Lcom/bytedance/sdk/component/adexpress/sP/EjP<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# static fields
.field private static LD:F = 0.0f

.field private static LqL:F = 0.0f

.field private static Yf:F = 0.0f

.field private static fF:F = 0.0f

.field private static ley:J = 0x0L

.field protected static sU:I = 0x18


# instance fields
.field protected Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

.field protected EjP:Lorg/json/JSONObject;

.field private final FPG:Lcom/bytedance/sdk/component/Dq/Dq;

.field protected Fmk:F

.field protected HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field private JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

.field protected Jcg:Landroid/widget/FrameLayout;

.field private Mts:Ljava/lang/String;

.field protected RiZ:Z

.field protected Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

.field protected TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ugeno/sP/TKC<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected TzV:J

.field private WMZ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

.field private final Wjd:Ljava/lang/Runnable;

.field protected Ym:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field protected Zq:F

.field protected aa:Lcom/bytedance/adsdk/ugeno/sP/TKC;

.field protected dNu:J

.field protected dx:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public ib:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;",
            ">;"
        }
    .end annotation
.end field

.field protected kF:Lorg/json/JSONObject;

.field protected sP:Landroid/content/Context;

.field protected sef:F

.field protected uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

.field private uP:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

.field protected uvD:F

.field protected vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

.field private final wE:Z

.field private xD:Z

.field protected zR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->sP()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    .line 6
    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ib:Landroid/util/SparseArray;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Mts:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;

    .line 19
    .line 20
    const-string v1, "ugen_render_template"

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->FPG:Lcom/bytedance/sdk/component/Dq/Dq;

    .line 26
    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$2;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Wjd:Ljava/lang/Runnable;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->xD:Z

    .line 36
    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    .line 38
    .line 39
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->wE:Z

    .line 40
    .line 41
    new-instance p3, Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 42
    .line 43
    invoke-direct {p3, p1}, Lcom/bytedance/adsdk/ugeno/core/uA;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 49
    .line 50
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    .line 51
    .line 52
    new-instance p2, Landroid/widget/FrameLayout;

    .line 53
    .line 54
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    instance-of p1, p5, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 67
    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    check-cast p5, Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 71
    .line 72
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->WMZ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    .line 73
    .line 74
    :cond_0
    invoke-virtual {p4}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->zR:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP()Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    .line 85
    .line 86
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    .line 87
    .line 88
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    .line 89
    .line 90
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 91
    .line 92
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->zR:Ljava/lang/String;

    .line 93
    .line 94
    invoke-direct {p2, p3, p4, p5, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 95
    .line 96
    .line 97
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    .line 98
    .line 99
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->WMZ:Lcom/bytedance/sdk/openadsdk/core/Dq/RiZ;

    return-object p0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Mts:Ljava/lang/String;

    return-object p1
.end method

.method private Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V
    .locals 12

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 27
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    if-nez v6, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC()Lorg/json/JSONObject;

    move-result-object v6

    .line 29
    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 30
    const-string v7, "swiperLeft"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    if-eqz v7, :cond_1

    .line 31
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->sP()V

    return-void

    .line 32
    :cond_1
    const-string v7, "swiperRight"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    if-eqz v7, :cond_2

    .line 33
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->TKC()V

    return-void

    .line 34
    :cond_2
    const-string v7, "swiperClick"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    if-eqz v7, :cond_3

    .line 35
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)Z

    move-result v7

    .line 36
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->EjP()Lorg/json/JSONObject;

    move-result-object v8

    move v9, v5

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    move v7, v4

    move v9, v7

    .line 37
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v10, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v11, "creative"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v10, v0

    goto :goto_1

    :sswitch_1
    const-string v11, "video"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    move v10, v1

    goto :goto_1

    :sswitch_2
    const-string v11, "skip"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    move v10, v2

    goto :goto_1

    :sswitch_3
    const-string v11, "mute"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    move v10, v5

    goto :goto_1

    :sswitch_4
    const-string v11, "feedback"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    move v10, v3

    goto :goto_1

    :sswitch_5
    const-string v11, "privacy"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    move v10, v4

    :goto_1
    packed-switch v10, :pswitch_data_0

    move v0, v9

    goto :goto_2

    :pswitch_0
    move v0, v5

    goto :goto_2

    :pswitch_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_2

    :pswitch_3
    move v0, v2

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x7

    .line 38
    :goto_2
    :pswitch_5
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v1

    .line 39
    new-array v2, v5, [I

    .line 40
    new-array v5, v5, [I

    .line 41
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dx:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_b

    .line 42
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;)[I

    move-result-object v6

    if-eqz v6, :cond_a

    move-object v2, v6

    .line 43
    :cond_a
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dx:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/view/View;)[I

    move-result-object v6

    if-eqz v6, :cond_b

    move-object v5, v6

    .line 44
    :cond_b
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;-><init>()V

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Fmk:F

    .line 45
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sef:F

    .line 46
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Zq:F

    .line 47
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uvD:F

    .line 48
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(F)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    iget-wide v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dNu:J

    .line 49
    invoke-virtual {v6, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    iget-wide v9, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TzV:J

    .line 50
    invoke-virtual {v6, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(J)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    aget v9, v2, v4

    .line 51
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->TKC(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v6

    aget v2, v2, v3

    .line 52
    invoke-virtual {v6, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->EjP(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    aget v6, v5, v4

    .line 53
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->HiB(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    aget v5, v5, v3

    .line 54
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->vS(I)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ib:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    .line 56
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP()I

    move-result v5

    if-ne v5, v3, :cond_d

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    if-eqz v5, :cond_c

    goto :goto_3

    :cond_c
    move v3, v4

    :cond_d
    :goto_3
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v2

    if-nez v1, :cond_e

    const-string v1, ""

    goto :goto_4

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->WMZ()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->JcM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(Z)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->sP(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;

    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sef$Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/model/sef;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->Sj()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    invoke-interface {v2, p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Dq;->Sj(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/TKC;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12bedc78 -> :sswitch_5
        -0xb6a147b -> :sswitch_4
        0x335219 -> :sswitch_3
        0x35e57f -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x6c816faf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V

    return-void
.end method

.method private Sj(Ljava/lang/CharSequence;ZIZ)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 83
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v2, :cond_0

    return-void

    .line 84
    :cond_0
    const-string v3, "countdown"

    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 85
    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v2

    .line 86
    instance-of v3, v2, Landroid/widget/TextView;

    if-nez v3, :cond_2

    return-void

    .line 87
    :cond_2
    :try_start_0
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v3, 0x2

    .line 88
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "parse duration exception"

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    const-string v4, "UGenRender"

    invoke-static {v4, v3}, Lcom/bytedance/sdk/component/utils/sU;->sP(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v1

    :goto_0
    const/16 v4, 0x8

    if-nez p4, :cond_6

    if-lez v3, :cond_6

    .line 89
    iget-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->xD:Z

    if-eqz p4, :cond_3

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_4

    .line 91
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Sj()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/EjP/vS;->sP(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 92
    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/EjP;->Sj()Landroid/content/Context;

    move-result-object p1

    const-string p2, "tt_reward_full_skip"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ib;->Sj(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p2, p3, v1

    .line 94
    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 95
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->EjP()Ljava/lang/String;

    move-result-object p2

    const-string p3, "open_ad"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->Sj()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 96
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->xD:Z

    .line 97
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 98
    :cond_5
    check-cast v2, Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 99
    :cond_6
    :goto_1
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private Sj(Lorg/json/JSONObject;)V
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 19
    :cond_1
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    const-string v1, "nodeId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 22
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 23
    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 24
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    return-void

    .line 25
    :cond_3
    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    .line 26
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    :cond_4
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Lcom/bytedance/sdk/component/adexpress/sP/Jcg;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uP:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    return-object p0
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Wjd:Ljava/lang/Runnable;

    return-object p0
.end method

.method private sP(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->Sj()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    const/16 v1, 0x85

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ugen template is null real reason is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Mts:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 6
    const-string v0, "ugen data is null"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj()Z

    move-result v1

    const/16 v2, 0x8a

    if-eqz v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/uA;->sP()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    const-string v0, "unknow widget"

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unknow widget;"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 12
    const-string v1, "ugen render fail"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_e

    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(Z)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(I)V

    .line 17
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->wE:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->setSoundMute(Z)V

    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA()V

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Ym:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_5

    .line 20
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/sP;

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/sP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/sP/sP/sP;->EjP()Lcom/bytedance/adsdk/ugeno/uA/sP/Sj;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;->Sj(Landroid/widget/FrameLayout;)V

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    if-eqz v1, :cond_6

    .line 24
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj()V

    :cond_6
    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 26
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dx:Ljava/lang/ref/WeakReference;

    .line 27
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS()Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->aa:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-eqz v0, :cond_8

    .line 28
    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/uA/sP/sP;

    if-eqz v1, :cond_8

    .line 29
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/sP;->sP(Landroid/widget/FrameLayout;)V

    .line 30
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Mts()I

    move-result v0

    .line 31
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->FPG()I

    move-result v1

    .line 32
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->LqL()F

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->Yf()F

    move-result v1

    .line 35
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 36
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC()I

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x0

    if-ne v4, v5, :cond_a

    cmpg-float v4, v1, v6

    if-gtz v4, :cond_9

    .line 38
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v2, v2

    const/4 v5, -0x2

    invoke-direct {v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 39
    :cond_9
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-direct {v5, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 40
    :cond_a
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    cmpg-float v2, v1, v6

    if-lez v2, :cond_c

    cmpg-float v2, v0, v6

    if-gtz v2, :cond_b

    goto :goto_1

    .line 41
    :cond_b
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    float-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(D)V

    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(D)V

    goto :goto_2

    :cond_c
    :goto_1
    const/4 v0, 0x0

    .line 43
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 44
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 45
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->TKC(Landroid/content/Context;F)I

    move-result v1

    .line 48
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    int-to-double v3, v0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->Sj(D)V

    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/sP/sef;->sP(D)V

    .line 50
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x89

    .line 51
    const-string v1, "ugen render timeout"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void

    .line 52
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uA:Lcom/bytedance/sdk/component/adexpress/sP/sef;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/sP/sef;)V

    return-void

    .line 53
    :cond_e
    const-string v0, "ugen render error"

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/sP/Jcg;->Sj(ILjava/lang/String;)V

    return-void
.end method

.method private sP(Ljava/lang/CharSequence;ZIZ)V
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    if-nez p1, :cond_0

    return-void

    .line 56
    :cond_0
    const-string p3, "skip"

    invoke-virtual {p1, p3}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 57
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->Ym()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p3, 0x0

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    goto :goto_0

    :cond_4
    const/16 p3, 0x8

    .line 58
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private uA()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->rB()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 15
    .line 16
    const-string v1, "tvskip"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 30
    .line 31
    const-string v1, "skip"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/Fmk;->gq()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sef(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v2, 0x5

    .line 71
    if-eq v1, v2, :cond_3

    .line 72
    .line 73
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->dx()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/4 v2, 0x6

    .line 80
    if-eq v1, v2, :cond_3

    .line 81
    .line 82
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->DKj()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v2, 0x3

    .line 89
    if-ne v1, v2, :cond_4

    .line 90
    .line 91
    :cond_3
    move-object v1, v0

    .line 92
    check-cast v1, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    .line 93
    .line 94
    const-string v2, "local://tt_close_btn"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Dq(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP()V

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void
.end method


# virtual methods
.method protected Dq()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

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
    const-string v1, "feedback"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method protected EjP()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/aa;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lcom/bytedance/adsdk/ugeno/core/Fmk;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->EjP:Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/uA;->Sj(Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->sP()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->fF()Lcom/bytedance/adsdk/ugeno/core/Zq;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Zq;->TKC()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj:Lcom/bytedance/adsdk/ugeno/core/uA;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->kF:Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/uA;->sP(Lorg/json/JSONObject;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    return v0
.end method

.method public HiB()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Jcg:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method protected Jcg()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

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
    const-string v1, "video"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method protected Sj()Lorg/json/JSONObject;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/sP/Fmk;->TKC()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;Lcom/bytedance/adsdk/ugeno/core/aa$sP;Lcom/bytedance/adsdk/ugeno/core/aa$Sj;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 13
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V

    .line 14
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->sP()I

    move-result p3

    const/16 v0, 0xa

    if-ne p3, v0, :cond_3

    .line 15
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->TKC()Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Lorg/json/JSONObject;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 16
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->EjP()Lcom/bytedance/adsdk/ugeno/core/TEQ;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/TEQ;->EjP()Lcom/bytedance/adsdk/ugeno/core/TEQ;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/adsdk/ugeno/core/aa$sP;->Sj(Lcom/bytedance/adsdk/ugeno/core/TEQ;)V

    :cond_4
    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Landroid/view/MotionEvent;)V
    .locals 11

    .line 62
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, -0x1

    if-eq p1, v1, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    :goto_0
    move v4, v2

    goto/16 :goto_2

    .line 63
    :cond_0
    sget p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->LD:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v4, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->LqL:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr p1, v2

    sput p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->LD:F

    .line 64
    sget p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->fF:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v4, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Yf:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr p1, v2

    sput p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->fF:F

    .line 65
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->LqL:F

    .line 66
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Yf:F

    .line 67
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ley:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    .line 68
    sget p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->LD:F

    sget v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    int-to-float v4, v2

    cmpl-float p1, p1, v4

    if-gtz p1, :cond_2

    sget p1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->fF:F

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 69
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Fmk:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sef:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_4

    .line 70
    :cond_3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    :cond_4
    move v2, v1

    .line 71
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Zq:F

    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uvD:F

    .line 73
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Zq:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Fmk:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_6

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uvD:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sef:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sU:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_7

    .line 74
    :cond_6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    .line 75
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TzV:J

    goto/16 :goto_0

    .line 76
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->dNu:J

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Fmk:F

    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sef:F

    .line 79
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->RiZ:Z

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ley:J

    .line 81
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/uA/TKC;->Sj(Landroid/view/MotionEvent;)V

    move v4, v0

    .line 82
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->ib:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    float-to-double v5, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    float-to-double v7, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/sP/TKC$Sj;-><init>(IDDJ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/adsdk/ugeno/sP/TKC;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/EjP/vS$Sj;)V
    .locals 0

    .line 1
    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Dq;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Dq:Lcom/bytedance/sdk/component/adexpress/sP/Dq;

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/component/adexpress/sP/Jcg;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->uP:Lcom/bytedance/sdk/component/adexpress/sP/Jcg;

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->FPG:Lcom/bytedance/sdk/component/Dq/Dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->sP(Lcom/bytedance/sdk/component/Dq/Dq;)V

    return-void
.end method

.method public Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->JcM:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/EjP;->Sj(Lcom/bytedance/sdk/openadsdk/core/widget/HiB;)V

    :cond_0
    return-void
.end method

.method public Sj(Z)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TEQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public TKC()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->HiB:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->fF()I

    move-result v0

    return v0
.end method

.method public onvideoComplate()V
    .locals 0

    .line 1
    return-void
.end method

.method protected sP()Lorg/json/JSONObject;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->vS:Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/Sj;->LD()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public setSoundMute(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "mute"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->TKC(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    move-object p1, v0

    .line 17
    check-cast p1, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    .line 18
    .line 19
    const-string v1, "local://tt_reward_full_mute"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Dq(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object p1, v0

    .line 26
    check-cast p1, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;

    .line 27
    .line 28
    const-string v1, "local://tt_reward_full_unmute"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/ugeno/uA/EjP/TKC;->Dq(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->sP()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->Sj(Ljava/lang/CharSequence;ZIZ)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->sP(Ljava/lang/CharSequence;ZIZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setTimeUpdate(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public vS()Lcom/bytedance/adsdk/ugeno/sP/TKC;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/TEQ/HiB/TKC;->TKC:Lcom/bytedance/adsdk/ugeno/sP/TKC;

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
    const-string v1, "PlayableComponent"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/sP/TKC;->EjP(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/sP/TKC;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
