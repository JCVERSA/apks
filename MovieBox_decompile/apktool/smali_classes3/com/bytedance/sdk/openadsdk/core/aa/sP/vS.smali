.class public Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;
.super Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;
.source "source.java"

# interfaces
.implements Lw5/b$b;
.implements Lcom/bytedance/sdk/component/utils/LqL$Sj;
.implements Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$Sj;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;,
        Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;
    }
.end annotation


# static fields
.field private static final dx:Ljava/lang/Integer;

.field private static final zR:Ljava/lang/Integer;


# instance fields
.field protected Dq:Landroid/widget/ImageView;

.field private Ei:Z

.field protected EjP:Z

.field private FPG:Landroid/view/View;

.field private final Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected Fmk:I

.field public HiB:Z

.field private final HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private JcM:J

.field protected Jcg:Landroid/widget/RelativeLayout;

.field private final LD:Landroid/os/Handler;

.field private LqL:J

.field private final Mts:Ljava/lang/String;

.field private RiZ:Z

.field protected final Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

.field protected TEQ:Landroid/widget/ImageView;

.field protected TKC:Landroid/widget/FrameLayout;

.field private TzV:Z

.field private WMZ:Z

.field private Wjd:Lw5/b$c;

.field private final Yf:Z

.field protected Ym:Z

.field public Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;

.field protected aa:Ljava/lang/String;

.field private dNu:Landroid/view/ViewGroup;

.field private fF:Z

.field private ib:Ljava/lang/String;

.field private final jb:Ljava/lang/Runnable;

.field private kF:Z

.field private ley:Z

.field protected sP:Lw5/b;

.field private sU:Ljava/lang/String;

.field sef:Z

.field protected uA:Landroid/widget/ImageView;

.field private uP:Z

.field private final uvD:Landroid/content/Context;

.field public vS:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

.field private wE:Z

.field private xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private final xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx:Ljava/lang/Integer;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->zR:Ljava/lang/Integer;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Lcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;ZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1
    const-string v4, "embeded_ad"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;ZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/sU;ZLjava/lang/String;ZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/sU;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/TKC;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ:Z

    .line 8
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HiB:Z

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF:Z

    .line 10
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP:Z

    .line 11
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE:Z

    .line 12
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ym:Z

    .line 13
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    const/16 v2, 0x32

    .line 14
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fmk:I

    .line 15
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley:Z

    .line 16
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Yf:Z

    .line 17
    new-instance v2, Lcom/bytedance/sdk/component/utils/LqL;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->sP()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/component/utils/LqL;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/LqL$Sj;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    .line 18
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->WMZ:Z

    .line 19
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Mts:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sef:Z

    .line 21
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$4;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->jb:Ljava/lang/Runnable;

    .line 23
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ei:Z

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 26
    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->rB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    move-result-object v0

    invoke-interface {v0}, Lz5/b;->sP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ib:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    if-eqz p7, :cond_1

    .line 28
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 29
    :cond_1
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 32
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ:Z

    .line 33
    const-string p1, "NativeVideoTsView"

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP:Z

    .line 35
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE:Z

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HiB()V

    return-void
.end method

.method private EjP()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(JI)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lw5/b$c;

    .line 9
    .line 10
    return-void
.end method

.method private HiB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private JcM()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->HiB(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private LD()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x5

    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method private LqL()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "key_video_is_update_flag"

    .line 17
    .line 18
    const-string v3, "sp_multi_native_video_data"

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 36
    .line 37
    invoke-interface {v0}, Lw5/b;->Dq()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 42
    .line 43
    invoke-interface {v0}, Lw5/b;->vS()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    add-long/2addr v6, v4

    .line 48
    const-string v0, "key_native_video_complete"

    .line 49
    .line 50
    invoke-static {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const-string v1, "key_video_current_play_position"

    .line 55
    .line 56
    const-wide/16 v8, 0x0

    .line 57
    .line 58
    invoke-static {v3, v1, v8, v9}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v8

    .line 62
    const-string v1, "key_video_total_play_duration"

    .line 63
    .line 64
    invoke-static {v3, v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    const-string v1, "key_video_duration"

    .line 69
    .line 70
    invoke-static {v3, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-static {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 80
    .line 81
    invoke-interface {v1, v0}, Lw5/b;->sP(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 85
    .line 86
    invoke-interface {v0, v8, v9}, Lw5/b;->Sj(J)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 90
    .line 91
    invoke-interface {v0, v6, v7}, Lw5/b;->sP(J)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 95
    .line 96
    invoke-interface {v0, v4, v5}, Lw5/b;->TKC(J)V

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method private RiZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    .line 7
    .line 8
    invoke-interface {v0, v1}, Lw5/b;->TKC(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 12
    .line 13
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC$Sj;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Lw5/b;->Sj(Lw5/b$b;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private Sj(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 9
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 11
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x8

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    .line 14
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TKC:Landroid/widget/FrameLayout;

    .line 20
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 22
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->FPG:Landroid/view/View;

    return-object v0
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method private Sj(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 25
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 26
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 27
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 28
    invoke-virtual {p2, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 29
    :cond_0
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V
    .locals 1

    .line 105
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->rB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ib:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu()V

    return-void
.end method

.method static synthetic Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;ZI)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZI)V

    return-void
.end method

.method private Sj(ZI)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP()Z

    move-result v0

    .line 55
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE()V

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 56
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {v2}, Lw5/b;->Zq()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 57
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1}, Lw5/b;->Zq()Z

    .line 58
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Z)V

    .line 59
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP()V

    return-void

    :cond_1
    if-eqz p1, :cond_8

    .line 60
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1}, Lw5/b;->Zq()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1}, Lw5/b;->Ym()Z

    move-result p1

    if-nez p1, :cond_8

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1}, Lw5/b;->aa()Lv5/a;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1}, Lw5/b;->aa()Lv5/a;

    move-result-object p1

    invoke-interface {p1}, Lv5/a;->Jcg()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 62
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    if-nez p1, :cond_2

    if-ne p2, v1, :cond_9

    .line 63
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    if-eqz p1, :cond_3

    .line 64
    invoke-interface {p1}, Lw5/b;->sef()Z

    move-result p1

    const-string p2, "changeVideoStatus"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZLjava/lang/String;)V

    .line 65
    :cond_3
    const-string p1, "ALP-AL00"

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Mts:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 66
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1}, Lw5/b;->sP()V

    goto :goto_0

    .line 67
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/uA;->dNu()Z

    move-result p1

    if-nez p1, :cond_5

    move v0, v1

    .line 68
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Jcg(Z)V

    .line 69
    :goto_0
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Z)V

    .line 70
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lw5/b$c;

    if-eqz p1, :cond_9

    .line 71
    invoke-interface {p1}, Lw5/b$c;->h_()V

    return-void

    .line 72
    :cond_6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1}, Lw5/b;->aa()Lv5/a;

    move-result-object p1

    if-nez p1, :cond_9

    .line 73
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    .line 74
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sU()V

    return-void

    .line 77
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1}, Lw5/b;->aa()Lv5/a;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 78
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1}, Lw5/b;->aa()Lv5/a;

    move-result-object p1

    invoke-interface {p1}, Lv5/a;->vS()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1}, Lw5/b;->Sj()V

    .line 80
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Z)V

    .line 81
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lw5/b$c;

    if-eqz p1, :cond_9

    .line 82
    invoke-interface {p1}, Lw5/b$c;->g_()V

    :cond_9
    :goto_1
    return-void
.end method

.method static synthetic TKC(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF:Z

    return p0
.end method

.method private TzV()V
    .locals 10

    .line 1
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TKC:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v5, v0, 0x1

    .line 16
    .line 17
    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP:Z

    .line 18
    .line 19
    iget-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE:Z

    .line 20
    .line 21
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->vS:Lcom/bytedance/sdk/openadsdk/EjP/Jcg;

    .line 22
    .line 23
    move-object v0, v9

    .line 24
    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/sU;Ljava/lang/String;ZZZLcom/bytedance/sdk/openadsdk/EjP/Jcg;)V

    .line 25
    .line 26
    .line 27
    iput-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private Yf()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method private dNu()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->JcM:J

    .line 10
    .line 11
    sub-long v3, v0, v3

    .line 12
    .line 13
    const-wide/16 v5, 0x1f4

    .line 14
    .line 15
    cmp-long v3, v3, v5

    .line 16
    .line 17
    if-lez v3, :cond_0

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->JcM:J

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private dx()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 5
    .line 6
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 17
    .line 18
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->JcM()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Z)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->zR()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private fF()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ:Z

    .line 2
    .line 3
    return v0
.end method

.method private ib()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ym()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->jb:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/JcM;->Sj(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private kF()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

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
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Ms()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private ley()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/sef;->TKC()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->jb:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static synthetic sP(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)Landroid/view/ViewGroup;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private sP(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 7

    .line 22
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;-><init>(Landroid/content/Context;)V

    .line 23
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/HiB/Jcg;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 28
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq:Landroid/widget/ImageView;

    .line 32
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;

    invoke-direct {v4, p1}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 34
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 35
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/HiB/EjP;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    const-string v1, "tt_new_play_video"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/ib;->TKC(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ:Landroid/widget/ImageView;

    .line 39
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 40
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private sU()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 20
    .line 21
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->TzV()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 27
    .line 28
    if-eqz v0, :cond_6

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_6

    .line 37
    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    const/16 v2, 0x8

    .line 56
    .line 57
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-interface {v0}, Lz5/b;->TKC()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 92
    .line 93
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    .line 107
    .line 108
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(I)V

    .line 113
    .line 114
    .line 115
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(I)V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 125
    .line 126
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-wide/16 v2, 0x0

    .line 134
    .line 135
    invoke-virtual {v0, v2, v3}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(J)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA()Z

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Z)V

    .line 143
    .line 144
    .line 145
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 146
    .line 147
    .line 148
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 149
    .line 150
    invoke-interface {v2, v0}, Lw5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 154
    .line 155
    invoke-interface {v0, v1}, Lw5/b;->sP(Z)V

    .line 156
    .line 157
    .line 158
    :cond_3
    return-void

    .line 159
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 160
    .line 161
    invoke-interface {v0}, Lw5/b;->Zq()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 168
    .line 169
    invoke-interface {v0}, Lw5/b;->Zq()Z

    .line 170
    .line 171
    .line 172
    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Z)V

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg()V

    .line 178
    .line 179
    .line 180
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    .line 181
    .line 182
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 183
    .line 184
    .line 185
    :cond_6
    return-void
.end method

.method private uP()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-string v0, "key_video_isfromvideodetailpage"

    .line 16
    .line 17
    const-string v2, "sp_multi_native_video_data"

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string v3, "key_video_is_from_detail_page"

    .line 24
    .line 25
    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v1

    .line 35
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_3
    :goto_1
    return v1
.end method

.method static synthetic uvD()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method private wE()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    const-string v1, "sp_multi_native_video_data"

    .line 17
    .line 18
    const-string v2, "key_video_isfromvideodetailpage"

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "key_video_is_from_detail_page"

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/EjP/Sj;->Sj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method private zR()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    invoke-interface {v0, v1, v2}, Lw5/b;->Sj(ZI)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public Dq()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    .line 2
    .line 3
    return v0
.end method

.method public Fmk()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lw5/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lw5/b;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->getNativeVideoController()Lw5/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/aa/Sj/Sj;->zR()Lcom/bytedance/sdk/openadsdk/core/aa/sP/HiB;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lw5/c;Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public Jcg()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->FPG:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->FPG:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->FPG:Landroid/view/View;

    .line 45
    .line 46
    invoke-direct {p0, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ym:Z

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ:Landroid/widget/ImageView;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, La6/b;->r()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, La6/b;->r()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, La6/b;->t()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, La6/b;->C()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq:Landroid/widget/ImageView;

    .line 116
    .line 117
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 118
    .line 119
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ:Landroid/widget/ImageView;

    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TEQ:Landroid/widget/ImageView;

    .line 131
    .line 132
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$2;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    :goto_0
    return-void
.end method

.method public Sj(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;)",
            "Lcom/bytedance/sdk/openadsdk/core/Ym/vS;"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Landroid/view/View;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/Ym/vS;

    move-result-object p1

    return-object p1

    :cond_0
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

    .line 86
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    return-void
.end method

.method public Sj(JI)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lw5/b$c;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lw5/b$c;->i_()V

    :cond_0
    return-void
.end method

.method public Sj(JJ)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lw5/b$c;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1, p2, p3, p4}, Lw5/b$c;->Sj(JJ)V

    :cond_0
    return-void
.end method

.method public Sj(Landroid/os/Message;)V
    .locals 1

    .line 51
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ib()V

    :cond_0
    return-void
.end method

.method protected Sj(Z)V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    .line 89
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/uA;->TzV()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/uA;->sP()Lcom/bytedance/sdk/openadsdk/core/uA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/uA;->TzV()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_new_play_video"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/ib;->EjP(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Fmk:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v0

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->sP(Landroid/content/Context;F)I

    move-result v1

    .line 95
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 96
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 98
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 101
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 102
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public Sj(ZLjava/lang/String;)V
    .locals 1

    .line 83
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    if-eqz v0, :cond_0

    .line 85
    invoke-interface {v0, p1, p2}, Lw5/b;->Sj(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public Sj(JZZ)Z
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL:J

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {v0, v1}, Lw5/b;->Sj(Z)V

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    move-result-object v0

    invoke-interface {v0}, Lz5/b;->TKC()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(I)V

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(I)V

    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(J)V

    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Z)V

    .line 42
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    if-eqz p4, :cond_0

    .line 43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1, v0}, Lw5/b;->sP(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    return v2

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {v1, v0}, Lw5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    move-result v1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-lez p1, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    if-lez p1, :cond_4

    if-eqz p3, :cond_4

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    if-eqz p1, :cond_4

    .line 46
    new-instance p1, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;-><init>()V

    .line 47
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p2}, Lw5/b;->HiB()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->Sj(J)V

    .line 48
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p2}, Lw5/b;->Dq()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->TKC(J)V

    .line 49
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p2}, Lw5/b;->vS()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;->sP(J)V

    .line 50
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p2}, Lw5/b;->Fmk()Lw5/c;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/EjP/HiB/Sj/Sj;->sP(Lb6/a;Lcom/bytedance/sdk/openadsdk/EjP/HiB/sP/Zq$Sj;)V

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method public TEQ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->Fmk()Lw5/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lw5/c;->Sj()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lw5/c;->TKC()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method protected TKC()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sef()V

    :cond_0
    return-void
.end method

.method Ym()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x5

    .line 12
    :goto_0
    const/16 v1, 0x32

    .line 13
    .line 14
    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/LD;->Sj(Landroid/view/View;II)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public Zq()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Zq()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->GMp()Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/Ym/Sj;->Sj()Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL:J

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/Ym/EjP;->HiB(J)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public aa()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 14
    .line 15
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 22
    .line 23
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lv5/a;->vS()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx:Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZI)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return v1
.end method

.method public getCurrentPlayTime()D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b;->HiB()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    long-to-double v0, v0

    .line 10
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 11
    .line 12
    mul-double/2addr v0, v2

    .line 13
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    div-double/2addr v0, v2

    .line 19
    return-wide v0

    .line 20
    :cond_0
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    return-wide v0
.end method

.method public getNativeVideoController()Lw5/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sU()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xhi:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 27
    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->xD:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 47
    .line 48
    :cond_1
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sU()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Lw5/b;->Zq()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 18
    .line 19
    invoke-interface {v0}, Lw5/b;->Dq()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 24
    .line 25
    invoke-interface {v0}, Lw5/b;->uA()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 30
    .line 31
    invoke-interface {v0}, Lw5/b;->HiB()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    iget-boolean v9, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    .line 36
    .line 37
    invoke-interface/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;->Sj(ZJJJZ)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    const-string v0, "open_ad"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_6

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->kF:Z

    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/kF/Sj/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/model/sU;Z)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x1

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Lw5/b;->Zq()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    .line 45
    .line 46
    const/16 v0, 0x8

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Z)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    .line 59
    .line 60
    .line 61
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v2, 0x0

    .line 66
    if-nez v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 75
    .line 76
    if-eqz v0, :cond_3

    .line 77
    .line 78
    invoke-interface {v0}, Lw5/b;->Ym()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    .line 86
    .line 87
    if-eqz v0, :cond_7

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 92
    .line 93
    if-eqz p1, :cond_2

    .line 94
    .line 95
    invoke-interface {p1}, Lw5/b;->Zq()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_2

    .line 100
    .line 101
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 108
    .line 109
    .line 110
    return-void

    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley()V

    .line 112
    .line 113
    .line 114
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx:Ljava/lang/Integer;

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZI)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-nez v0, :cond_5

    .line 129
    .line 130
    if-nez p1, :cond_4

    .line 131
    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_4

    .line 141
    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 143
    .line 144
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-interface {v0}, Lv5/a;->vS()Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    if-eqz v0, :cond_4

    .line 153
    .line 154
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley()V

    .line 155
    .line 156
    .line 157
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dx:Ljava/lang/Integer;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZI)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_4
    if-eqz p1, :cond_5

    .line 168
    .line 169
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    .line 170
    .line 171
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 176
    .line 177
    .line 178
    :cond_5
    return-void

    .line 179
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley()V

    .line 180
    .line 181
    .line 182
    :cond_7
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ei:Z

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ei:Z

    .line 19
    .line 20
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uP()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/16 v3, 0x8

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Lw5/b;->Zq()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->wE()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    .line 42
    .line 43
    invoke-static {p1, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP(Z)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP()V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->fF()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_5

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_5

    .line 67
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-interface {v0}, Lw5/b;->Ym()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 79
    .line 80
    if-nez v0, :cond_3

    .line 81
    .line 82
    goto/16 :goto_1

    .line 83
    .line 84
    :cond_3
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley:Z

    .line 85
    .line 86
    if-eqz v4, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0}, Lz5/b;->TKC()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 114
    .line 115
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    .line 129
    .line 130
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(I)V

    .line 135
    .line 136
    .line 137
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(I)V

    .line 144
    .line 145
    .line 146
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 147
    .line 148
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL:J

    .line 156
    .line 157
    invoke-virtual {v0, v4, v5}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(J)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA()Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Z)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 168
    .line 169
    .line 170
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 171
    .line 172
    invoke-interface {v4, v0}, Lw5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    .line 173
    .line 174
    .line 175
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->ley:Z

    .line 176
    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    .line 178
    .line 179
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 180
    .line 181
    .line 182
    :cond_4
    if-nez p1, :cond_5

    .line 183
    .line 184
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    .line 185
    .line 186
    if-eqz p1, :cond_5

    .line 187
    .line 188
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 189
    .line 190
    if-eqz p1, :cond_5

    .line 191
    .line 192
    invoke-interface {p1}, Lw5/b;->Zq()Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-nez p1, :cond_5

    .line 197
    .line 198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    .line 199
    .line 200
    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 205
    .line 206
    .line 207
    :cond_5
    :goto_1
    return-void
.end method

.method protected sP()V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    move-result v0

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    move-result v1

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    const/4 v5, 0x2

    if-eq v1, v5, :cond_6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_5

    const/4 v5, 0x4

    if-eq v1, v5, :cond_4

    const/4 v5, 0x5

    if-eq v1, v5, :cond_1

    goto :goto_4

    .line 7
    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    goto :goto_4

    .line 8
    :cond_4
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sef:Z

    goto :goto_4

    .line 9
    :cond_5
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    goto :goto_4

    .line 10
    :cond_6
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->HiB(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->vS(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    goto :goto_4

    .line 11
    :cond_9
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/Mts;->EjP(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    .line 12
    :goto_4
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->RiZ:Z

    if-nez v1, :cond_b

    .line 13
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HiB:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/Dq/ib;->sP(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 14
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->TKC(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    goto :goto_5

    .line 15
    :cond_b
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    .line 16
    :cond_c
    :goto_5
    const-string v0, "open_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    .line 18
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    .line 19
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    if-eqz v0, :cond_e

    .line 20
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    invoke-interface {v0, v1}, Lw5/b;->TKC(Z)V

    .line 21
    :cond_e
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HiB:Z

    return-void
.end method

.method public sP(JI)V
    .locals 0

    .line 1
    return-void
.end method

.method public sP(Z)V
    .locals 4

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    if-eqz v0, :cond_1

    .line 42
    invoke-interface {v0, p1}, Lw5/b;->sP(Z)V

    .line 43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    invoke-interface {p1}, Lw5/b;->Fmk()Lw5/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 44
    invoke-interface {p1}, Lw5/c;->sP()V

    .line 45
    invoke-interface {p1}, Lw5/c;->TKC()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 48
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0, v2, v1}, Lw5/c;->Sj(Ljava/lang/Object;Ljava/lang/ref/WeakReference;Z)V

    :cond_1
    return-void
.end method

.method public sef()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->Sj()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->TKC(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ym()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 20
    .line 21
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-wide/16 v1, 0x1f4

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 31
    .line 32
    invoke-interface {v0}, Lw5/b;->aa()Lv5/a;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Lv5/a;->Jcg()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->zR:Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-direct {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(ZI)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void

    .line 62
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_6

    .line 75
    .line 76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->HpB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    .line 78
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->JcM()V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 85
    .line 86
    if-eqz v0, :cond_4

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->JcM()V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v0}, Lz5/b;->TKC()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 117
    .line 118
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Sj(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/sU;)Lcom/bytedance/sdk/openadsdk/core/aa/Sj/sP;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 123
    .line 124
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->aZ()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    .line 132
    .line 133
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(I)V

    .line 138
    .line 139
    .line 140
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->dNu:Landroid/view/ViewGroup;

    .line 141
    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->sP(I)V

    .line 147
    .line 148
    .line 149
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 150
    .line 151
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->mZN()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->TKC(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LqL:J

    .line 159
    .line 160
    invoke-virtual {v0, v4, v5}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(J)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uA()Z

    .line 164
    .line 165
    .line 166
    move-result v4

    .line 167
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Z)V

    .line 168
    .line 169
    .line 170
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 171
    .line 172
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->Gn()I

    .line 173
    .line 174
    .line 175
    move-result v4

    .line 176
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lz5/b;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    invoke-interface {v4}, Lz5/b;->TKC()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;->Sj(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)V

    .line 188
    .line 189
    .line 190
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 191
    .line 192
    invoke-interface {v4, v0}, Lw5/b;->Sj(Lcom/bykv/vk/openvk/Sj/Sj/Sj/TKC/TKC;)Z

    .line 193
    .line 194
    .line 195
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD:Landroid/os/Handler;

    .line 196
    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    .line 201
    .line 202
    :cond_5
    const/4 v0, 0x0

    .line 203
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj(Z)V

    .line 204
    .line 205
    .line 206
    :cond_6
    return-void
.end method

.method public setAdCreativeClickListener(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$Sj;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Zq:Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS$sP;

    .line 2
    .line 3
    return-void
.end method

.method public setIsAutoPlay(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->WMZ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->If()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dNu;->EjP()Lcom/bytedance/sdk/openadsdk/core/settings/vS;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/vS;->sP(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    if-eq v0, v2, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->HiB(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Yf()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    :goto_0
    move p1, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->vS(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Yf()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->LD()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->uvD:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/TzV;->EjP(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    .line 73
    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-interface {v0, p1}, Lw5/b;->TKC(Z)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->TzV:Z

    .line 82
    .line 83
    if-nez p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj()Lcom/bytedance/sdk/openadsdk/TzV/sP;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, La6/b;->r()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, La6/b;->t()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/sU;->UHs()La6/b;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, La6/b;->C()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Dq:Landroid/widget/ImageView;

    .line 140
    .line 141
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Sj:Lcom/bytedance/sdk/openadsdk/core/model/sU;

    .line 142
    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/TzV/sP;->Sj(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/sU;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Jcg:Landroid/widget/RelativeLayout;

    .line 148
    .line 149
    const/16 v0, 0x8

    .line 150
    .line 151
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/FPG;->Sj(Landroid/view/View;I)V

    .line 152
    .line 153
    .line 154
    :cond_6
    :goto_2
    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->WMZ:Z

    .line 156
    .line 157
    return-void
.end method

.method public setNeedNativeVideoPlayBtnVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Ym:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoAdClickListenerTTNativeAd(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setVideoAdInteractionListener(Lw5/b$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lw5/b$c;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoAdLoadListener(Lw5/b$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lw5/b;->Sj(Lw5/b$a;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVideoCacheUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sU:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoPlayCallback(Lcom/bytedance/sdk/openadsdk/core/aa/sP/sP;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->sP:Lw5/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/TKC;->Sj(Lcom/bytedance/sdk/openadsdk/core/aa/sP/sP;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->zR()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public uA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->EjP:Z

    .line 2
    .line 3
    return v0
.end method

.method public vS()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/aa/sP/vS;->Wjd:Lw5/b$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lw5/b$c;->d_()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
