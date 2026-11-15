.class public Landroidx/media3/ui/LegacyPlayerControlView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/LegacyPlayerControlView$b;,
        Landroidx/media3/ui/LegacyPlayerControlView$c;,
        Landroidx/media3/ui/LegacyPlayerControlView$d;
    }
.end annotation


# static fields
.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS:I = 0xc8

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# instance fields
.field private final A:Landroid/graphics/drawable/Drawable;

.field private final B:Landroid/graphics/drawable/Drawable;

.field private final C:F

.field private final D:F

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private G:Landroidx/media3/common/a0;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:I

.field private N:I

.field private O:I

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:J

.field private V:[J

.field private W:[Z

.field private final a:Landroidx/media3/ui/LegacyPlayerControlView$b;

.field private a0:[J

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private b0:[Z

.field private final c:Landroid/view/View;

.field private c0:J

.field private final d:Landroid/view/View;

.field private d0:J

.field private final e:Landroid/view/View;

.field private e0:J

.field private final f:Landroid/view/View;

.field private final g:Landroid/view/View;

.field private final h:Landroid/view/View;

.field private final i:Landroid/widget/ImageView;

.field private final j:Landroid/widget/ImageView;

.field private final k:Landroid/view/View;

.field private final l:Landroid/widget/TextView;

.field private final m:Landroid/widget/TextView;

.field private final n:Landroidx/media3/ui/y0;

.field private final o:Ljava/lang/StringBuilder;

.field private final p:Ljava/util/Formatter;

.field private final q:Landroidx/media3/common/e0$b;

.field private final r:Landroidx/media3/common/e0$c;

.field private final s:Ljava/lang/Runnable;

.field private final t:Ljava/lang/Runnable;

.field private final u:Landroid/graphics/drawable/Drawable;

.field private final v:Landroid/graphics/drawable/Drawable;

.field private final w:Landroid/graphics/drawable/Drawable;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.ui"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/media3/common/u;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/LegacyPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/ui/LegacyPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3, p2}, Landroidx/media3/ui/LegacyPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 5
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget p2, Landroidx/media3/ui/R$layout;->exo_legacy_player_control_view:I

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->J:Z

    const/16 v1, 0x1388

    .line 7
    iput v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->M:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->O:I

    const/16 v2, 0xc8

    .line 9
    iput v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->N:I

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->U:J

    .line 11
    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->P:Z

    .line 12
    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->Q:Z

    .line 13
    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->R:Z

    .line 14
    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->S:Z

    .line 15
    iput-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->T:Z

    if-eqz p4, :cond_0

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v4, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView:[I

    .line 17
    invoke-virtual {v0, p4, v4, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 18
    :try_start_0
    sget v0, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_timeout:I

    iget v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->M:I

    invoke-virtual {p3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->M:I

    .line 19
    sget v0, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_controller_layout_id:I

    .line 20
    invoke-virtual {p3, v0, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 21
    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->O:I

    invoke-static {p3, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->x(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->O:I

    .line 22
    sget v0, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_rewind_button:I

    iget-boolean v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->P:Z

    .line 23
    invoke-virtual {p3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->P:Z

    .line 24
    sget v0, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_fastforward_button:I

    iget-boolean v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->Q:Z

    .line 25
    invoke-virtual {p3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->Q:Z

    .line 26
    sget v0, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_previous_button:I

    iget-boolean v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->R:Z

    .line 27
    invoke-virtual {p3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->R:Z

    .line 28
    sget v0, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_next_button:I

    iget-boolean v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->S:Z

    .line 29
    invoke-virtual {p3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->S:Z

    .line 30
    sget v0, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_show_shuffle_button:I

    iget-boolean v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->T:Z

    .line 31
    invoke-virtual {p3, v0, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->T:Z

    .line 32
    sget v0, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_time_bar_min_update_interval:I

    iget v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->N:I

    .line 33
    invoke-virtual {p3, v0, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 34
    invoke-virtual {p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->setTimeBarMinUpdateInterval(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 36
    throw p1

    .line 37
    :cond_0
    :goto_0
    new-instance p3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    new-instance p3, Landroidx/media3/common/e0$b;

    invoke-direct {p3}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->q:Landroidx/media3/common/e0$b;

    .line 39
    new-instance p3, Landroidx/media3/common/e0$c;

    invoke-direct {p3}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->r:Landroidx/media3/common/e0$c;

    .line 40
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->o:Ljava/lang/StringBuilder;

    .line 41
    new-instance v0, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, p3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->p:Ljava/util/Formatter;

    .line 42
    new-array p3, v1, [J

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->V:[J

    .line 43
    new-array p3, v1, [Z

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->W:[Z

    .line 44
    new-array p3, v1, [J

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->a0:[J

    .line 45
    new-array p3, v1, [Z

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->b0:[Z

    .line 46
    new-instance p3, Landroidx/media3/ui/LegacyPlayerControlView$b;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Landroidx/media3/ui/LegacyPlayerControlView$b;-><init>(Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/media3/ui/LegacyPlayerControlView$a;)V

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->a:Landroidx/media3/ui/LegacyPlayerControlView$b;

    .line 47
    new-instance v4, Landroidx/media3/ui/h;

    invoke-direct {v4, p0}, Landroidx/media3/ui/h;-><init>(Landroidx/media3/ui/LegacyPlayerControlView;)V

    iput-object v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->s:Ljava/lang/Runnable;

    .line 48
    new-instance v4, Landroidx/media3/ui/i;

    invoke-direct {v4, p0}, Landroidx/media3/ui/i;-><init>(Landroidx/media3/ui/LegacyPlayerControlView;)V

    iput-object v4, p0, Landroidx/media3/ui/LegacyPlayerControlView;->t:Ljava/lang/Runnable;

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v4, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 p2, 0x40000

    .line 50
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 51
    sget p2, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/media3/ui/y0;

    .line 52
    sget v4, Landroidx/media3/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz p2, :cond_1

    .line 53
    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->n:Landroidx/media3/ui/y0;

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    .line 54
    new-instance p2, Landroidx/media3/ui/DefaultTimeBar;

    invoke-direct {p2, p1, v0, v1, p4}, Landroidx/media3/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    .line 55
    sget p4, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {p2, p4}, Landroid/view/View;->setId(I)V

    .line 56
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 58
    invoke-virtual {p4, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 59
    invoke-virtual {p4, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 60
    invoke-virtual {p4, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 61
    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->n:Landroidx/media3/ui/y0;

    goto :goto_1

    .line 62
    :cond_2
    iput-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->n:Landroidx/media3/ui/y0;

    .line 63
    :goto_1
    sget p2, Landroidx/media3/ui/R$id;->exo_duration:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->l:Landroid/widget/TextView;

    .line 64
    sget p2, Landroidx/media3/ui/R$id;->exo_position:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->m:Landroid/widget/TextView;

    .line 65
    iget-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->n:Landroidx/media3/ui/y0;

    if-eqz p2, :cond_3

    .line 66
    invoke-interface {p2, p3}, Landroidx/media3/ui/y0;->addListener(Landroidx/media3/ui/y0$a;)V

    .line 67
    :cond_3
    sget p2, Landroidx/media3/ui/R$id;->exo_play:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->e:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 68
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    :cond_4
    sget p2, Landroidx/media3/ui/R$id;->exo_pause:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->f:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 70
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    :cond_5
    sget p2, Landroidx/media3/ui/R$id;->exo_prev:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->c:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 72
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    :cond_6
    sget p2, Landroidx/media3/ui/R$id;->exo_next:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->d:Landroid/view/View;

    if-eqz p2, :cond_7

    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    :cond_7
    sget p2, Landroidx/media3/ui/R$id;->exo_rew:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->h:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 76
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_8
    sget p2, Landroidx/media3/ui/R$id;->exo_ffwd:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->g:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 78
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_9
    sget p2, Landroidx/media3/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    if-eqz p2, :cond_a

    .line 80
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_a
    sget p2, Landroidx/media3/ui/R$id;->exo_shuffle:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->j:Landroid/widget/ImageView;

    if-eqz p2, :cond_b

    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_b
    sget p2, Landroidx/media3/ui/R$id;->exo_vr:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->k:Landroid/view/View;

    .line 84
    invoke-virtual {p0, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->setShowVrButton(Z)V

    .line 85
    invoke-direct {p0, v1, v1, p2}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 87
    sget p3, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 88
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-float p3, p3

    const/high16 p4, 0x42c80000    # 100.0f

    div-float/2addr p3, p4

    iput p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->C:F

    .line 89
    sget p3, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 90
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p3, p4

    iput p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->D:F

    .line 91
    sget p3, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_repeat_off:I

    .line 92
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    .line 93
    sget p3, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_repeat_one:I

    .line 94
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    .line 95
    sget p3, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_repeat_all:I

    .line 96
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    .line 97
    sget p3, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_shuffle_on:I

    .line 98
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->A:Landroid/graphics/drawable/Drawable;

    .line 99
    sget p3, Landroidx/media3/ui/R$drawable;->exo_legacy_controls_shuffle_off:I

    .line 100
    invoke-static {p1, p2, p3}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    .line 101
    sget p1, Landroidx/media3/ui/R$string;->exo_controls_repeat_off_description:I

    .line 102
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->x:Ljava/lang/String;

    .line 103
    sget p1, Landroidx/media3/ui/R$string;->exo_controls_repeat_one_description:I

    .line 104
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->y:Ljava/lang/String;

    .line 105
    sget p1, Landroidx/media3/ui/R$string;->exo_controls_repeat_all_description:I

    .line 106
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->z:Ljava/lang/String;

    .line 107
    sget p1, Landroidx/media3/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->E:Ljava/lang/String;

    .line 108
    sget p1, Landroidx/media3/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 109
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->F:Ljava/lang/String;

    .line 110
    iput-wide v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->d0:J

    .line 111
    iput-wide v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->e0:J

    return-void
.end method

.method private A()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->J:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->l1(Landroidx/media3/common/a0;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->e:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-nez v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->f:Landroid/view/View;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private B()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->J:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->l1(Landroidx/media3/common/a0;Z)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->e:Landroid/view/View;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-nez v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->f:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method private C(Landroidx/media3/common/a0;IJ)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3, p4}, Landroidx/media3/common/a0;->seekTo(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private D(Landroidx/media3/common/a0;J)V
    .locals 6

    .line 1
    invoke-interface {p1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->K:Z

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/media3/common/e0;->q()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/media3/common/e0;->p()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->r:Landroidx/media3/common/e0$c;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Landroidx/media3/common/e0$c;->d()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    cmp-long v5, p2, v3

    .line 31
    .line 32
    if-gez v5, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v5, v1, -0x1

    .line 36
    .line 37
    if-ne v2, v5, :cond_1

    .line 38
    .line 39
    move-wide p2, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    sub-long/2addr p2, v3

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-interface {p1}, Landroidx/media3/common/a0;->u()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_1
    invoke-direct {p0, p1, v2, p2, p3}, Landroidx/media3/ui/LegacyPlayerControlView;->C(Landroidx/media3/common/a0;IJ)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->I()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private E()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->H()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->G()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->J()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->K()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->L()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private F(ZZLandroid/view/View;)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    iget p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->C:F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->D:F

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_2

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    const/16 p1, 0x8

    .line 22
    .line 23
    :goto_1
    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private G()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->H:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->i(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x7

    .line 22
    invoke-interface {v0, v2}, Landroidx/media3/common/a0;->i(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0xb

    .line 27
    .line 28
    invoke-interface {v0, v3}, Landroidx/media3/common/a0;->i(I)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/16 v4, 0xc

    .line 33
    .line 34
    invoke-interface {v0, v4}, Landroidx/media3/common/a0;->i(I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/16 v5, 0x9

    .line 39
    .line 40
    invoke-interface {v0, v5}, Landroidx/media3/common/a0;->i(I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    move v0, v1

    .line 47
    move v2, v0

    .line 48
    move v3, v2

    .line 49
    move v4, v3

    .line 50
    :goto_0
    iget-boolean v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->R:Z

    .line 51
    .line 52
    iget-object v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->c:Landroid/view/View;

    .line 53
    .line 54
    invoke-direct {p0, v5, v2, v6}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 55
    .line 56
    .line 57
    iget-boolean v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->P:Z

    .line 58
    .line 59
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->h:Landroid/view/View;

    .line 60
    .line 61
    invoke-direct {p0, v2, v3, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 62
    .line 63
    .line 64
    iget-boolean v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->Q:Z

    .line 65
    .line 66
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->g:Landroid/view/View;

    .line 67
    .line 68
    invoke-direct {p0, v2, v4, v3}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 69
    .line 70
    .line 71
    iget-boolean v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->S:Z

    .line 72
    .line 73
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->d:Landroid/view/View;

    .line 74
    .line 75
    invoke-direct {p0, v2, v0, v3}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->n:Landroidx/media3/ui/y0;

    .line 79
    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    invoke-interface {v0, v1}, Landroidx/media3/ui/y0;->setEnabled(Z)V

    .line 83
    .line 84
    .line 85
    :cond_2
    :goto_1
    return-void
.end method

.method private H()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->H:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_7

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 14
    .line 15
    iget-boolean v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->J:Z

    .line 16
    .line 17
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->l1(Landroidx/media3/common/a0;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->e:Landroid/view/View;

    .line 22
    .line 23
    const/16 v2, 0x8

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v1, :cond_4

    .line 28
    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->isFocused()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    move v1, v3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move v1, v4

    .line 40
    :goto_0
    if-nez v0, :cond_2

    .line 41
    .line 42
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->e:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v5}, Landroid/view/View;->isAccessibilityFocused()Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_2

    .line 49
    .line 50
    move v5, v3

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move v5, v4

    .line 53
    :goto_1
    iget-object v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->e:Landroid/view/View;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    move v7, v4

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move v7, v2

    .line 60
    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    move v1, v4

    .line 65
    move v5, v1

    .line 66
    :goto_3
    iget-object v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->f:Landroid/view/View;

    .line 67
    .line 68
    if-eqz v6, :cond_8

    .line 69
    .line 70
    if-eqz v0, :cond_5

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/view/View;->isFocused()Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-eqz v6, :cond_5

    .line 77
    .line 78
    move v6, v3

    .line 79
    goto :goto_4

    .line 80
    :cond_5
    move v6, v4

    .line 81
    :goto_4
    or-int/2addr v1, v6

    .line 82
    if-eqz v0, :cond_6

    .line 83
    .line 84
    iget-object v6, p0, Landroidx/media3/ui/LegacyPlayerControlView;->f:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v6}, Landroid/view/View;->isAccessibilityFocused()Z

    .line 87
    .line 88
    .line 89
    move-result v6

    .line 90
    if-eqz v6, :cond_6

    .line 91
    .line 92
    goto :goto_5

    .line 93
    :cond_6
    move v3, v4

    .line 94
    :goto_5
    or-int/2addr v5, v3

    .line 95
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->f:Landroid/view/View;

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    goto :goto_6

    .line 100
    :cond_7
    move v2, v4

    .line 101
    :goto_6
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    :cond_8
    if-eqz v1, :cond_9

    .line 105
    .line 106
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->B()V

    .line 107
    .line 108
    .line 109
    :cond_9
    if-eqz v5, :cond_a

    .line 110
    .line 111
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->A()V

    .line 112
    .line 113
    .line 114
    :cond_a
    :goto_7
    return-void
.end method

.method private I()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->H:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-wide v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->c0:J

    .line 18
    .line 19
    invoke-interface {v0}, Landroidx/media3/common/a0;->getContentPosition()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    add-long/2addr v1, v3

    .line 24
    iget-wide v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->c0:J

    .line 25
    .line 26
    invoke-interface {v0}, Landroidx/media3/common/a0;->v()J

    .line 27
    .line 28
    .line 29
    move-result-wide v5

    .line 30
    add-long/2addr v3, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    move-wide v3, v1

    .line 35
    :goto_0
    iget-wide v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->d0:J

    .line 36
    .line 37
    cmp-long v5, v1, v5

    .line 38
    .line 39
    const/4 v6, 0x1

    .line 40
    if-eqz v5, :cond_2

    .line 41
    .line 42
    move v5, v6

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    const/4 v5, 0x0

    .line 45
    :goto_1
    iput-wide v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->d0:J

    .line 46
    .line 47
    iput-wide v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->e0:J

    .line 48
    .line 49
    iget-object v7, p0, Landroidx/media3/ui/LegacyPlayerControlView;->m:Landroid/widget/TextView;

    .line 50
    .line 51
    if-eqz v7, :cond_3

    .line 52
    .line 53
    iget-boolean v8, p0, Landroidx/media3/ui/LegacyPlayerControlView;->L:Z

    .line 54
    .line 55
    if-nez v8, :cond_3

    .line 56
    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->o:Ljava/lang/StringBuilder;

    .line 60
    .line 61
    iget-object v8, p0, Landroidx/media3/ui/LegacyPlayerControlView;->p:Ljava/util/Formatter;

    .line 62
    .line 63
    invoke-static {v5, v8, v1, v2}, Landroidx/media3/common/util/a1;->o0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    :cond_3
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->n:Landroidx/media3/ui/y0;

    .line 71
    .line 72
    if-eqz v5, :cond_4

    .line 73
    .line 74
    invoke-interface {v5, v1, v2}, Landroidx/media3/ui/y0;->setPosition(J)V

    .line 75
    .line 76
    .line 77
    iget-object v5, p0, Landroidx/media3/ui/LegacyPlayerControlView;->n:Landroidx/media3/ui/y0;

    .line 78
    .line 79
    invoke-interface {v5, v3, v4}, Landroidx/media3/ui/y0;->setBufferedPosition(J)V

    .line 80
    .line 81
    .line 82
    :cond_4
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->s:Ljava/lang/Runnable;

    .line 83
    .line 84
    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    if-nez v0, :cond_5

    .line 88
    .line 89
    move v3, v6

    .line 90
    goto :goto_2

    .line 91
    :cond_5
    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackState()I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    :goto_2
    const-wide/16 v4, 0x3e8

    .line 96
    .line 97
    if-eqz v0, :cond_8

    .line 98
    .line 99
    invoke-interface {v0}, Landroidx/media3/common/a0;->isPlaying()Z

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-eqz v7, :cond_8

    .line 104
    .line 105
    iget-object v3, p0, Landroidx/media3/ui/LegacyPlayerControlView;->n:Landroidx/media3/ui/y0;

    .line 106
    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    invoke-interface {v3}, Landroidx/media3/ui/y0;->getPreferredUpdateDelay()J

    .line 110
    .line 111
    .line 112
    move-result-wide v6

    .line 113
    goto :goto_3

    .line 114
    :cond_6
    move-wide v6, v4

    .line 115
    :goto_3
    rem-long/2addr v1, v4

    .line 116
    sub-long v1, v4, v1

    .line 117
    .line 118
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iget v0, v0, Landroidx/media3/common/z;->a:F

    .line 127
    .line 128
    const/4 v3, 0x0

    .line 129
    cmpl-float v3, v0, v3

    .line 130
    .line 131
    if-lez v3, :cond_7

    .line 132
    .line 133
    long-to-float v1, v1

    .line 134
    div-float/2addr v1, v0

    .line 135
    float-to-long v4, v1

    .line 136
    :cond_7
    move-wide v6, v4

    .line 137
    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->N:I

    .line 138
    .line 139
    int-to-long v8, v0

    .line 140
    const-wide/16 v10, 0x3e8

    .line 141
    .line 142
    invoke-static/range {v6 .. v11}, Landroidx/media3/common/util/a1;->q(JJJ)J

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->s:Ljava/lang/Runnable;

    .line 147
    .line 148
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_8
    const/4 v0, 0x4

    .line 153
    if-eq v3, v0, :cond_9

    .line 154
    .line 155
    if-eq v3, v6, :cond_9

    .line 156
    .line 157
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->s:Ljava/lang/Runnable;

    .line 158
    .line 159
    invoke-virtual {p0, v0, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 160
    .line 161
    .line 162
    :cond_9
    :goto_4
    return-void
.end method

.method private J()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->H:Z

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->O:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, v2, v2, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, v3, v2, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->x:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-direct {p0, v3, v3, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Landroidx/media3/common/a0;->getRepeatMode()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    if-eq v0, v3, :cond_4

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    if-eq v0, v1, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    .line 71
    .line 72
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->z:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    .line 79
    .line 80
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    .line 86
    .line 87
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->y:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    .line 94
    .line 95
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    .line 101
    .line 102
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->x:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    .line 108
    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    :cond_6
    :goto_1
    return-void
.end method

.method private K()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->H:Z

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->j:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 17
    .line 18
    iget-boolean v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->T:Z

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    invoke-direct {p0, v3, v3, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 24
    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_1
    const/4 v2, 0x1

    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    invoke-direct {p0, v2, v3, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->j:Landroid/widget/ImageView;

    .line 34
    .line 35
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->j:Landroid/widget/ImageView;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->F:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    invoke-direct {p0, v2, v2, v0}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->j:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-interface {v1}, Landroidx/media3/common/a0;->getShuffleModeEnabled()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->A:Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    .line 63
    .line 64
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->j:Landroid/widget/ImageView;

    .line 68
    .line 69
    invoke-interface {v1}, Landroidx/media3/common/a0;->getShuffleModeEnabled()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->E:Ljava/lang/String;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->F:Ljava/lang/String;

    .line 79
    .line 80
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    :goto_2
    return-void
.end method

.method private L()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v2, v0, Landroidx/media3/ui/LegacyPlayerControlView;->I:Z

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v5, v0, Landroidx/media3/ui/LegacyPlayerControlView;->r:Landroidx/media3/common/e0$c;

    .line 18
    .line 19
    invoke-static {v2, v5}, Landroidx/media3/ui/LegacyPlayerControlView;->w(Landroidx/media3/common/e0;Landroidx/media3/common/e0$c;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    move v2, v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v2, 0x0

    .line 28
    :goto_0
    iput-boolean v2, v0, Landroidx/media3/ui/LegacyPlayerControlView;->K:Z

    .line 29
    .line 30
    const-wide/16 v5, 0x0

    .line 31
    .line 32
    iput-wide v5, v0, Landroidx/media3/ui/LegacyPlayerControlView;->c0:J

    .line 33
    .line 34
    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroidx/media3/common/e0;->q()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_e

    .line 43
    .line 44
    invoke-interface {v1}, Landroidx/media3/common/a0;->u()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-boolean v7, v0, Landroidx/media3/ui/LegacyPlayerControlView;->K:Z

    .line 49
    .line 50
    if-eqz v7, :cond_2

    .line 51
    .line 52
    const/4 v8, 0x0

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v8, v1

    .line 55
    :goto_1
    if-eqz v7, :cond_3

    .line 56
    .line 57
    invoke-virtual {v2}, Landroidx/media3/common/e0;->p()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    sub-int/2addr v7, v4

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v7, v1

    .line 64
    :goto_2
    move-wide v9, v5

    .line 65
    const/4 v11, 0x0

    .line 66
    :goto_3
    if-gt v8, v7, :cond_d

    .line 67
    .line 68
    if-ne v8, v1, :cond_4

    .line 69
    .line 70
    invoke-static {v9, v10}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v12

    .line 74
    iput-wide v12, v0, Landroidx/media3/ui/LegacyPlayerControlView;->c0:J

    .line 75
    .line 76
    :cond_4
    iget-object v12, v0, Landroidx/media3/ui/LegacyPlayerControlView;->r:Landroidx/media3/common/e0$c;

    .line 77
    .line 78
    invoke-virtual {v2, v8, v12}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 79
    .line 80
    .line 81
    iget-object v12, v0, Landroidx/media3/ui/LegacyPlayerControlView;->r:Landroidx/media3/common/e0$c;

    .line 82
    .line 83
    iget-wide v13, v12, Landroidx/media3/common/e0$c;->m:J

    .line 84
    .line 85
    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    cmp-long v13, v13, v15

    .line 91
    .line 92
    if-nez v13, :cond_5

    .line 93
    .line 94
    iget-boolean v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->K:Z

    .line 95
    .line 96
    xor-int/2addr v1, v4

    .line 97
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_8

    .line 101
    .line 102
    :cond_5
    iget v12, v12, Landroidx/media3/common/e0$c;->n:I

    .line 103
    .line 104
    :goto_4
    iget-object v13, v0, Landroidx/media3/ui/LegacyPlayerControlView;->r:Landroidx/media3/common/e0$c;

    .line 105
    .line 106
    iget v14, v13, Landroidx/media3/common/e0$c;->o:I

    .line 107
    .line 108
    if-gt v12, v14, :cond_c

    .line 109
    .line 110
    iget-object v13, v0, Landroidx/media3/ui/LegacyPlayerControlView;->q:Landroidx/media3/common/e0$b;

    .line 111
    .line 112
    invoke-virtual {v2, v12, v13}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 113
    .line 114
    .line 115
    iget-object v13, v0, Landroidx/media3/ui/LegacyPlayerControlView;->q:Landroidx/media3/common/e0$b;

    .line 116
    .line 117
    invoke-virtual {v13}, Landroidx/media3/common/e0$b;->p()I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    iget-object v14, v0, Landroidx/media3/ui/LegacyPlayerControlView;->q:Landroidx/media3/common/e0$b;

    .line 122
    .line 123
    invoke-virtual {v14}, Landroidx/media3/common/e0$b;->c()I

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    :goto_5
    if-ge v13, v14, :cond_b

    .line 128
    .line 129
    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->q:Landroidx/media3/common/e0$b;

    .line 130
    .line 131
    invoke-virtual {v4, v13}, Landroidx/media3/common/e0$b;->f(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v17

    .line 135
    const-wide/high16 v19, -0x8000000000000000L

    .line 136
    .line 137
    cmp-long v4, v17, v19

    .line 138
    .line 139
    if-nez v4, :cond_7

    .line 140
    .line 141
    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->q:Landroidx/media3/common/e0$b;

    .line 142
    .line 143
    iget-wide v3, v4, Landroidx/media3/common/e0$b;->d:J

    .line 144
    .line 145
    cmp-long v17, v3, v15

    .line 146
    .line 147
    if-nez v17, :cond_6

    .line 148
    .line 149
    goto :goto_7

    .line 150
    :cond_6
    move-wide/from16 v17, v3

    .line 151
    .line 152
    :cond_7
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->q:Landroidx/media3/common/e0$b;

    .line 153
    .line 154
    invoke-virtual {v3}, Landroidx/media3/common/e0$b;->o()J

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    add-long v17, v17, v3

    .line 159
    .line 160
    cmp-long v3, v17, v5

    .line 161
    .line 162
    if-ltz v3, :cond_a

    .line 163
    .line 164
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->V:[J

    .line 165
    .line 166
    array-length v4, v3

    .line 167
    if-ne v11, v4, :cond_9

    .line 168
    .line 169
    array-length v4, v3

    .line 170
    if-nez v4, :cond_8

    .line 171
    .line 172
    const/4 v4, 0x1

    .line 173
    goto :goto_6

    .line 174
    :cond_8
    array-length v4, v3

    .line 175
    mul-int/lit8 v4, v4, 0x2

    .line 176
    .line 177
    :goto_6
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    iput-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->V:[J

    .line 182
    .line 183
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->W:[Z

    .line 184
    .line 185
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    iput-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->W:[Z

    .line 190
    .line 191
    :cond_9
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->V:[J

    .line 192
    .line 193
    add-long v17, v9, v17

    .line 194
    .line 195
    invoke-static/range {v17 .. v18}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 196
    .line 197
    .line 198
    move-result-wide v17

    .line 199
    aput-wide v17, v3, v11

    .line 200
    .line 201
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->W:[Z

    .line 202
    .line 203
    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->q:Landroidx/media3/common/e0$b;

    .line 204
    .line 205
    invoke-virtual {v4, v13}, Landroidx/media3/common/e0$b;->q(I)Z

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    aput-boolean v4, v3, v11

    .line 210
    .line 211
    add-int/lit8 v11, v11, 0x1

    .line 212
    .line 213
    :cond_a
    :goto_7
    add-int/lit8 v13, v13, 0x1

    .line 214
    .line 215
    const/4 v4, 0x1

    .line 216
    goto :goto_5

    .line 217
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 218
    .line 219
    const/4 v4, 0x1

    .line 220
    goto :goto_4

    .line 221
    :cond_c
    iget-wide v3, v13, Landroidx/media3/common/e0$c;->m:J

    .line 222
    .line 223
    add-long/2addr v9, v3

    .line 224
    add-int/lit8 v8, v8, 0x1

    .line 225
    .line 226
    const/4 v4, 0x1

    .line 227
    goto/16 :goto_3

    .line 228
    .line 229
    :cond_d
    :goto_8
    move-wide v5, v9

    .line 230
    goto :goto_9

    .line 231
    :cond_e
    const/4 v11, 0x0

    .line 232
    :goto_9
    invoke-static {v5, v6}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v1

    .line 236
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->l:Landroid/widget/TextView;

    .line 237
    .line 238
    if-eqz v3, :cond_f

    .line 239
    .line 240
    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->o:Ljava/lang/StringBuilder;

    .line 241
    .line 242
    iget-object v5, v0, Landroidx/media3/ui/LegacyPlayerControlView;->p:Ljava/util/Formatter;

    .line 243
    .line 244
    invoke-static {v4, v5, v1, v2}, Landroidx/media3/common/util/a1;->o0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v4

    .line 248
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    .line 250
    .line 251
    :cond_f
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->n:Landroidx/media3/ui/y0;

    .line 252
    .line 253
    if-eqz v3, :cond_11

    .line 254
    .line 255
    invoke-interface {v3, v1, v2}, Landroidx/media3/ui/y0;->setDuration(J)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->a0:[J

    .line 259
    .line 260
    array-length v1, v1

    .line 261
    add-int v2, v11, v1

    .line 262
    .line 263
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->V:[J

    .line 264
    .line 265
    array-length v4, v3

    .line 266
    if-le v2, v4, :cond_10

    .line 267
    .line 268
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 269
    .line 270
    .line 271
    move-result-object v3

    .line 272
    iput-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->V:[J

    .line 273
    .line 274
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->W:[Z

    .line 275
    .line 276
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    iput-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->W:[Z

    .line 281
    .line 282
    :cond_10
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->a0:[J

    .line 283
    .line 284
    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->V:[J

    .line 285
    .line 286
    const/4 v5, 0x0

    .line 287
    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    .line 289
    .line 290
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->b0:[Z

    .line 291
    .line 292
    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->W:[Z

    .line 293
    .line 294
    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v0, Landroidx/media3/ui/LegacyPlayerControlView;->n:Landroidx/media3/ui/y0;

    .line 298
    .line 299
    iget-object v3, v0, Landroidx/media3/ui/LegacyPlayerControlView;->V:[J

    .line 300
    .line 301
    iget-object v4, v0, Landroidx/media3/ui/LegacyPlayerControlView;->W:[Z

    .line 302
    .line 303
    invoke-interface {v1, v3, v4, v2}, Landroidx/media3/ui/y0;->setAdGroupTimesMs([J[ZI)V

    .line 304
    .line 305
    .line 306
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroidx/media3/ui/LegacyPlayerControlView;->I()V

    .line 307
    .line 308
    .line 309
    return-void
.end method

.method public static synthetic a(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->H()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/util/Formatter;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->p:Ljava/util/Formatter;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Landroidx/media3/ui/LegacyPlayerControlView;)Landroidx/media3/common/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Landroidx/media3/ui/LegacyPlayerControlView;Landroidx/media3/common/a0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/ui/LegacyPlayerControlView;->D(Landroidx/media3/common/a0;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->c:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->g:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->h:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->f:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->i:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->I()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Landroidx/media3/ui/LegacyPlayerControlView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->O:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic o(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->j:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->J()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->K()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Landroidx/media3/ui/LegacyPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->L()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t(Landroidx/media3/ui/LegacyPlayerControlView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->L:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic u(Landroidx/media3/ui/LegacyPlayerControlView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->m:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Landroidx/media3/ui/LegacyPlayerControlView;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->o:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method private static w(Landroidx/media3/common/e0;Landroidx/media3/common/e0$c;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroidx/media3/common/e0;->p()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x64

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-le v0, v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/common/e0;->p()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    move v1, v2

    .line 16
    :goto_0
    if-ge v1, v0, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0, v1, p1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-wide v3, v3, Landroidx/media3/common/e0$c;->m:J

    .line 23
    .line 24
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    cmp-long v3, v3, v5

    .line 30
    .line 31
    if-nez v3, :cond_1

    .line 32
    .line 33
    return v2

    .line 34
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p0, 0x1

    .line 38
    return p0
.end method

.method private static x(Landroid/content/res/TypedArray;I)I
    .locals 1

    .line 1
    sget v0, Landroidx/media3/ui/R$styleable;->LegacyPlayerControlView_repeat_toggle_modes:I

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private y()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->t:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->M:I

    .line 7
    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->M:I

    .line 15
    .line 16
    int-to-long v3, v2

    .line 17
    add-long/2addr v0, v3

    .line 18
    iput-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->U:J

    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->H:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->t:Ljava/lang/Runnable;

    .line 25
    .line 26
    int-to-long v1, v2

    .line 27
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    iput-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->U:J

    .line 37
    .line 38
    :cond_1
    :goto_0
    return-void
.end method

.method private static z(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x5a

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x59

    .line 6
    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x55

    .line 10
    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/16 v0, 0x4f

    .line 14
    .line 15
    if-eq p0, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x7e

    .line 18
    .line 19
    if-eq p0, v0, :cond_1

    .line 20
    .line 21
    const/16 v0, 0x7f

    .line 22
    .line 23
    if-eq p0, v0, :cond_1

    .line 24
    .line 25
    const/16 v0, 0x57

    .line 26
    .line 27
    if-eq p0, v0, :cond_1

    .line 28
    .line 29
    const/16 v0, 0x58

    .line 30
    .line 31
    if-ne p0, v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 p0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 37
    :goto_1
    return p0
.end method


# virtual methods
.method public addVisibilityListener(Landroidx/media3/ui/LegacyPlayerControlView$d;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/ui/LegacyPlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    :goto_1
    return p1
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 6
    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/ui/LegacyPlayerControlView;->z(I)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_8

    .line 21
    .line 22
    const/16 v2, 0x5a

    .line 23
    .line 24
    if-ne v0, v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Landroidx/media3/common/a0;->getPlaybackState()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 v0, 0x4

    .line 31
    if-eq p1, v0, :cond_8

    .line 32
    .line 33
    invoke-interface {v1}, Landroidx/media3/common/a0;->w()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/16 v2, 0x59

    .line 38
    .line 39
    if-ne v0, v2, :cond_2

    .line 40
    .line 41
    invoke-interface {v1}, Landroidx/media3/common/a0;->x()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_8

    .line 50
    .line 51
    const/16 p1, 0x4f

    .line 52
    .line 53
    if-eq v0, p1, :cond_7

    .line 54
    .line 55
    const/16 p1, 0x55

    .line 56
    .line 57
    if-eq v0, p1, :cond_7

    .line 58
    .line 59
    const/16 p1, 0x57

    .line 60
    .line 61
    if-eq v0, p1, :cond_6

    .line 62
    .line 63
    const/16 p1, 0x58

    .line 64
    .line 65
    if-eq v0, p1, :cond_5

    .line 66
    .line 67
    const/16 p1, 0x7e

    .line 68
    .line 69
    if-eq v0, p1, :cond_4

    .line 70
    .line 71
    const/16 p1, 0x7f

    .line 72
    .line 73
    if-eq v0, p1, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-static {v1}, Landroidx/media3/common/util/a1;->v0(Landroidx/media3/common/a0;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-static {v1}, Landroidx/media3/common/util/a1;->w0(Landroidx/media3/common/a0;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-interface {v1}, Landroidx/media3/common/a0;->f()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    invoke-interface {v1}, Landroidx/media3/common/a0;->n()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_7
    iget-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->J:Z

    .line 93
    .line 94
    invoke-static {v1, p1}, Landroidx/media3/common/util/a1;->x0(Landroidx/media3/common/a0;Z)Z

    .line 95
    .line 96
    .line 97
    :cond_8
    :goto_0
    const/4 p1, 0x1

    .line 98
    return p1

    .line 99
    :cond_9
    :goto_1
    const/4 p1, 0x0

    .line 100
    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->t:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->y()V

    .line 21
    .line 22
    .line 23
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1
.end method

.method public getPlayer()Landroidx/media3/common/a0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->O:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->T:Z

    .line 2
    .line 3
    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->M:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowVrButton()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->k:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public hide()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->s:Ljava/lang/Runnable;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->t:Ljava/lang/Runnable;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 32
    .line 33
    .line 34
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    iput-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->U:J

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    throw v0

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->H:Z

    .line 6
    .line 7
    iget-wide v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->U:J

    .line 8
    .line 9
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmp-long v2, v0, v2

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    sub-long/2addr v0, v2

    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    cmp-long v2, v0, v2

    .line 26
    .line 27
    if-gtz v2, :cond_0

    .line 28
    .line 29
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->hide()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->t:Ljava/lang/Runnable;

    .line 34
    .line 35
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->y()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->E()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->H:Z

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->s:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->t:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public removeVisibilityListener(Landroidx/media3/ui/LegacyPlayerControlView$d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setExtraAdGroupMarkers([J[Z)V
    .locals 3
    .param p1    # [J
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # [Z
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    new-array p1, v0, [J

    .line 5
    .line 6
    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->a0:[J

    .line 7
    .line 8
    new-array p1, v0, [Z

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->b0:[Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p2}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    check-cast p2, [Z

    .line 18
    .line 19
    array-length v1, p1

    .line 20
    array-length v2, p2

    .line 21
    if-ne v1, v2, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    :cond_1
    invoke-static {v0}, Landroidx/media3/common/util/a;->a(Z)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->a0:[J

    .line 28
    .line 29
    iput-object p2, p0, Landroidx/media3/ui/LegacyPlayerControlView;->b0:[Z

    .line 30
    .line 31
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->L()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setPlayer(Landroidx/media3/common/a0;)V
    .locals 4
    .param p1    # Landroidx/media3/common/a0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    move v0, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    invoke-static {v0}, Landroidx/media3/common/util/a;->g(Z)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/media3/common/a0;->l()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-ne v0, v1, :cond_2

    .line 30
    .line 31
    :cond_1
    move v2, v3

    .line 32
    :cond_2
    invoke-static {v2}, Landroidx/media3/common/util/a;->a(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 36
    .line 37
    if-ne v0, p1, :cond_3

    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    if-eqz v0, :cond_4

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->a:Landroidx/media3/ui/LegacyPlayerControlView$b;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->L(Landroidx/media3/common/a0$d;)V

    .line 45
    .line 46
    .line 47
    :cond_4
    iput-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->a:Landroidx/media3/ui/LegacyPlayerControlView$b;

    .line 52
    .line 53
    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->M(Landroidx/media3/common/a0$d;)V

    .line 54
    .line 55
    .line 56
    :cond_5
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->E()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public setProgressUpdateListener(Landroidx/media3/ui/LegacyPlayerControlView$c;)V
    .locals 0
    .param p1    # Landroidx/media3/ui/LegacyPlayerControlView$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 3

    .line 1
    iput p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->O:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-interface {v0}, Landroidx/media3/common/a0;->getRepeatMode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v1, 0x2

    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne p1, v2, :cond_1

    .line 25
    .line 26
    if-ne v0, v1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 29
    .line 30
    invoke-interface {p1, v2}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-ne p1, v1, :cond_2

    .line 35
    .line 36
    if-ne v0, v2, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->G:Landroidx/media3/common/a0;

    .line 39
    .line 40
    invoke-interface {p1, v1}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->J()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->Q:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->G()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->I:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->L()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->S:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->G()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->J:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->H()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->R:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->G()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->P:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->G()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->T:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->K()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->M:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->y()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->k:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/16 p1, 0x8

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public setTimeBarMinUpdateInterval(I)V
    .locals 2

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/a1;->p(III)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->N:I

    .line 10
    .line 11
    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->k:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->getShowVrButton()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Landroidx/media3/ui/LegacyPlayerControlView;->k:Landroid/view/View;

    .line 18
    .line 19
    invoke-direct {p0, v0, p1, v1}, Landroidx/media3/ui/LegacyPlayerControlView;->F(ZZLandroid/view/View;)V

    .line 20
    .line 21
    .line 22
    :cond_1
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/ui/LegacyPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->E()V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->B()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->A()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    throw v0

    .line 45
    :cond_1
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/LegacyPlayerControlView;->y()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
