.class public Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$i;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$g;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;,
        Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;
    }
.end annotation


# static fields
.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS:I = 0xc8

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64

.field private static final x0:[F


# instance fields
.field private final A:Landroid/graphics/drawable/Drawable;

.field private final B:Landroid/graphics/drawable/Drawable;

.field private final C:F

.field private final D:F

.field private final E:Ljava/lang/String;

.field private final F:Ljava/lang/String;

.field private final G:Landroid/graphics/drawable/Drawable;

.field private final H:Landroid/graphics/drawable/Drawable;

.field private final I:Ljava/lang/String;

.field private final J:Ljava/lang/String;

.field private final K:Landroid/graphics/drawable/Drawable;

.field private final L:Landroid/graphics/drawable/Drawable;

.field private final M:Ljava/lang/String;

.field private final N:Ljava/lang/String;

.field private O:Lcom/google/android/exoplayer2/p2;

.field private P:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:I

.field private W:I

.field private final a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

.field private a0:I

.field private final b:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private b0:[J

.field private final c:Landroid/view/View;

.field private c0:[Z

.field private final d:Landroid/view/View;

.field private d0:[J

.field private final e:Landroid/view/View;

.field private e0:[Z

.field private final f:Landroid/view/View;

.field private f0:J

.field private final g:Landroid/view/View;

.field private g0:Lcom/google/android/exoplayer2/ui/i0;

.field private final h:Landroid/widget/TextView;

.field private h0:Landroid/content/res/Resources;

.field private final i:Landroid/widget/TextView;

.field private i0:Landroidx/recyclerview/widget/RecyclerView;

.field private final j:Landroid/widget/ImageView;

.field private j0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

.field private final k:Landroid/widget/ImageView;

.field private k0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

.field private final l:Landroid/view/View;

.field private l0:Landroid/widget/PopupWindow;

.field private final m:Landroid/widget/TextView;

.field private m0:Z

.field private final n:Landroid/widget/TextView;

.field private n0:I

.field private final o:Lcom/google/android/exoplayer2/ui/n0;

.field private o0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

.field private final p:Ljava/lang/StringBuilder;

.field private p0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

.field private final q:Ljava/util/Formatter;

.field private q0:Lcom/google/android/exoplayer2/ui/o0;

.field private final r:Lcom/google/android/exoplayer2/l3$b;

.field private r0:Landroid/widget/ImageView;

.field private final s:Lcom/google/android/exoplayer2/l3$d;

.field private s0:Landroid/widget/ImageView;

.field private final t:Ljava/lang/Runnable;

.field private t0:Landroid/widget/ImageView;

.field private final u:Landroid/graphics/drawable/Drawable;

.field private u0:Landroid/view/View;

.field private final v:Landroid/graphics/drawable/Drawable;

.field private v0:Landroid/view/View;

.field private final w:Landroid/graphics/drawable/Drawable;

.field private w0:Landroid/view/View;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "goog.exo.ui"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/exoplayer2/n1;->a(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x7

    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x0:[F

    .line 13
    .line 14
    return-void

    .line 15
    :array_0
    .array-data 4
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3, p2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 22
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    .line 4
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget v2, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_player_control_view:I

    const/16 v3, 0x1388

    .line 6
    iput v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    const/4 v8, 0x0

    .line 7
    iput v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:I

    const/16 v3, 0xc8

    .line 8
    iput v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:I

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView:[I

    move/from16 v5, p3

    .line 10
    invoke-virtual {v3, v0, v4, v5, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 11
    :try_start_0
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_controller_layout_id:I

    .line 12
    invoke-virtual {v3, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 13
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_timeout:I

    iget v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    .line 14
    iget v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:I

    invoke-static {v3, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Y(Landroid/content/res/TypedArray;I)I

    move-result v4

    iput v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:I

    .line 15
    sget v4, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_rewind_button:I

    .line 16
    invoke-virtual {v3, v4, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 17
    sget v5, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_fastforward_button:I

    .line 18
    invoke-virtual {v3, v5, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 19
    sget v6, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_previous_button:I

    .line 20
    invoke-virtual {v3, v6, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 21
    sget v7, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_next_button:I

    .line 22
    invoke-virtual {v3, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 23
    sget v10, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_shuffle_button:I

    .line 24
    invoke-virtual {v3, v10, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 25
    sget v11, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_subtitle_button:I

    .line 26
    invoke-virtual {v3, v11, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v11

    .line 27
    sget v12, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_show_vr_button:I

    .line 28
    invoke-virtual {v3, v12, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    .line 29
    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_time_bar_min_update_interval:I

    iget v14, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:I

    .line 30
    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    .line 31
    invoke-virtual {v1, v13}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setTimeBarMinUpdateInterval(I)V

    .line 32
    sget v13, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_animation_enabled:I

    .line 33
    invoke-virtual {v3, v13, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    move v14, v10

    move v15, v11

    move v10, v4

    move v11, v5

    move/from16 v21, v12

    move v12, v6

    move v6, v13

    move v13, v7

    move/from16 v7, v21

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 35
    throw v0

    :cond_0
    move v7, v8

    move v14, v7

    move v15, v14

    move v6, v9

    move v10, v6

    move v11, v10

    move v12, v11

    move v13, v12

    .line 36
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v2, 0x40000

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 38
    new-instance v5, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

    const/4 v4, 0x0

    invoke-direct {v5, v1, v4}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

    .line 39
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 40
    new-instance v2, Lcom/google/android/exoplayer2/l3$b;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/l3$b;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/l3$b;

    .line 41
    new-instance v2, Lcom/google/android/exoplayer2/l3$d;

    invoke-direct {v2}, Lcom/google/android/exoplayer2/l3$d;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/l3$d;

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p:Ljava/lang/StringBuilder;

    .line 43
    new-instance v3, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Ljava/util/Formatter;

    .line 44
    new-array v2, v8, [J

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

    .line 45
    new-array v2, v8, [Z

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    .line 46
    new-array v2, v8, [J

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d0:[J

    .line 47
    new-array v2, v8, [Z

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:[Z

    .line 48
    new-instance v2, Lcom/google/android/exoplayer2/ui/n;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/ui/n;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Ljava/lang/Runnable;

    .line 49
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_duration:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/TextView;

    .line 50
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_position:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n:Landroid/widget/TextView;

    .line 51
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_subtitle:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 52
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_1
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0:Landroid/widget/ImageView;

    .line 54
    new-instance v3, Lcom/google/android/exoplayer2/ui/o;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/o;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 55
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_minimal_fullscreen:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t0:Landroid/widget/ImageView;

    .line 56
    new-instance v3, Lcom/google/android/exoplayer2/ui/o;

    invoke-direct {v3, v1}, Lcom/google/android/exoplayer2/ui/o;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-static {v2, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 57
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_settings:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u0:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :cond_2
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_playback_speed:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v0:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 60
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    :cond_3
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_audio_track:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w0:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 62
    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_4
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/ui/n0;

    .line 64
    sget v3, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_5

    .line 65
    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    move-object/from16 v19, v5

    move/from16 v20, v6

    move v0, v7

    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_6

    .line 66
    new-instance v3, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;

    const/16 v16, 0x0

    sget v17, Lcom/google/android/exoplayer2/ui/R$style;->ExoStyledControls_TimeBar:I

    const/16 v18, 0x0

    move-object v2, v3

    move-object v9, v3

    move-object/from16 v3, p1

    move-object/from16 p2, v4

    const/4 v8, 0x0

    move-object/from16 v4, v18

    move-object/from16 v19, v5

    move/from16 v5, v16

    move/from16 v20, v6

    move-object/from16 v6, p4

    move v0, v7

    move/from16 v7, v17

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    .line 67
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_progress:I

    invoke-virtual {v9, v2}, Landroid/view/View;->setId(I)V

    .line 68
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v3, p2

    .line 70
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 71
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    invoke-virtual {v2, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 73
    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    goto :goto_1

    :cond_6
    move-object/from16 v19, v5

    move/from16 v20, v6

    move v0, v7

    const/4 v8, 0x0

    .line 74
    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    .line 75
    :goto_1
    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    move-object/from16 v3, v19

    if-eqz v2, :cond_7

    .line 76
    invoke-interface {v2, v3}, Lcom/google/android/exoplayer2/ui/n0;->addListener(Lcom/google/android/exoplayer2/ui/n0$a;)V

    .line 77
    :cond_7
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_play_pause:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 78
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_8
    sget v2, Lcom/google/android/exoplayer2/ui/R$id;->exo_prev:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 80
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_9
    sget v4, Lcom/google/android/exoplayer2/ui/R$id;->exo_next:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d:Landroid/view/View;

    if-eqz v4, :cond_a

    .line 82
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_a
    sget v5, Lcom/google/android/exoplayer2/ui/R$font;->roboto_medium_numbers:I

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Ly0/h;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v5

    .line 84
    sget v7, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew:I

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_b

    .line 85
    sget v9, Lcom/google/android/exoplayer2/ui/R$id;->exo_rew_with_amount:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    goto :goto_2

    :cond_b
    move-object v9, v8

    :goto_2
    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i:Landroid/widget/TextView;

    if-eqz v9, :cond_c

    .line 86
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_c
    if-nez v7, :cond_d

    move-object v7, v9

    .line 87
    :cond_d
    iput-object v7, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    if-eqz v7, :cond_e

    .line 88
    invoke-virtual {v7, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_e
    sget v9, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_f

    .line 90
    sget v8, Lcom/google/android/exoplayer2/ui/R$id;->exo_ffwd_with_amount:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    goto :goto_3

    :cond_f
    const/4 v8, 0x0

    :goto_3
    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h:Landroid/widget/TextView;

    if-eqz v8, :cond_10

    .line 91
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_10
    if-nez v9, :cond_11

    move-object v9, v8

    .line 92
    :cond_11
    iput-object v9, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    if-eqz v9, :cond_12

    .line 93
    invoke-virtual {v9, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_12
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    if-eqz v5, :cond_13

    .line 95
    invoke-virtual {v5, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    :cond_13
    sget v8, Lcom/google/android/exoplayer2/ui/R$id;->exo_shuffle:I

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    if-eqz v8, :cond_14

    .line 97
    invoke-virtual {v8, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    move-object/from16 p3, v5

    .line 99
    sget v5, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 100
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    iput v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->C:F

    .line 101
    iget-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/exoplayer2/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 102
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    iput v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->D:F

    .line 103
    sget v5, Lcom/google/android/exoplayer2/ui/R$id;->exo_vr:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/view/View;

    if-eqz v5, :cond_15

    const/4 v6, 0x0

    .line 104
    invoke-direct {v1, v6, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 105
    :cond_15
    new-instance v6, Lcom/google/android/exoplayer2/ui/i0;

    invoke-direct {v6, v1}, Lcom/google/android/exoplayer2/ui/i0;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    iput-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    move/from16 v16, v0

    move/from16 v0, v20

    .line 106
    invoke-virtual {v6, v0}, Lcom/google/android/exoplayer2/ui/i0;->Y(Z)V

    .line 107
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v6, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_playback_speed:I

    .line 108
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    move-object/from16 p4, v5

    sget v5, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_speed:I

    .line 110
    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 111
    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    move/from16 v17, v15

    sget v15, Lcom/google/android/exoplayer2/ui/R$string;->exo_track_selection_title_audio:I

    .line 112
    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v0, v6}, [Ljava/lang/String;

    move-result-object v0

    .line 113
    iget-object v6, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v15, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_audiotrack:I

    .line 114
    invoke-virtual {v6, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v15, 0x2

    new-array v15, v15, [Landroid/graphics/drawable/Drawable;

    const/16 v18, 0x0

    aput-object v5, v15, v18

    const/4 v5, 0x1

    aput-object v6, v15, v5

    .line 115
    new-instance v5, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    invoke-direct {v5, v1, v0, v15}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    .line 116
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/R$dimen;->exo_settings_offset:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:I

    .line 117
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v5, Lcom/google/android/exoplayer2/ui/R$layout;->exo_styled_settings_list:I

    const/4 v6, 0x0

    .line 118
    invoke-virtual {v0, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    iget-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 121
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v5, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v6, -0x2

    const/4 v15, 0x1

    invoke-direct {v0, v5, v6, v6, v15}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 122
    sget v5, Lcom/google/android/exoplayer2/util/p0;->a:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_16

    .line 123
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_16
    const/4 v6, 0x0

    .line 124
    :goto_4
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0:Z

    .line 126
    new-instance v0, Lcom/google/android/exoplayer2/ui/g;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google/android/exoplayer2/ui/g;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q0:Lcom/google/android/exoplayer2/ui/o0;

    .line 127
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_subtitle_on:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->G:Landroid/graphics/drawable/Drawable;

    .line 128
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_subtitle_off:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->H:Landroid/graphics/drawable/Drawable;

    .line 129
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_cc_enabled_description:I

    .line 130
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->I:Ljava/lang/String;

    .line 131
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_cc_disabled_description:I

    .line 132
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->J:Ljava/lang/String;

    .line 133
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    .line 134
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$a;)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    .line 135
    new-instance v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v5, Lcom/google/android/exoplayer2/ui/R$array;->exo_controls_playback_speeds:I

    .line 136
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    sget-object v5, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x0:[F

    invoke-direct {v0, v1, v3, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;[Ljava/lang/String;[F)V

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    .line 137
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_fullscreen_exit:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K:Landroid/graphics/drawable/Drawable;

    .line 138
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_fullscreen_enter:I

    .line 139
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->L:Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_off:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    .line 141
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_one:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    .line 142
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_repeat_all:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    .line 143
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_shuffle_on:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->A:Landroid/graphics/drawable/Drawable;

    .line 144
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_shuffle_off:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    .line 145
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fullscreen_exit_description:I

    .line 146
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->M:Ljava/lang/String;

    .line 147
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_fullscreen_enter_description:I

    .line 148
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->N:Ljava/lang/String;

    .line 149
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_off_description:I

    .line 150
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x:Ljava/lang/String;

    .line 151
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_one_description:I

    .line 152
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y:Ljava/lang/String;

    .line 153
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_repeat_all_description:I

    .line 154
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->z:Ljava/lang/String;

    .line 155
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->E:Ljava/lang/String;

    .line 156
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    sget v3, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 157
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F:Ljava/lang/String;

    .line 158
    sget v0, Lcom/google/android/exoplayer2/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 159
    iget-object v3, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    const/4 v5, 0x1

    invoke-virtual {v3, v0, v5}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 160
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0, v9, v11}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 161
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0, v7, v10}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 162
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0, v2, v12}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 163
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0, v4, v13}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 164
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    invoke-virtual {v0, v8, v14}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 165
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    iget-object v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0:Landroid/widget/ImageView;

    move/from16 v11, v17

    invoke-virtual {v0, v2, v11}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 166
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    move-object/from16 v2, p4

    move/from16 v12, v16

    invoke-virtual {v0, v2, v12}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 167
    iget-object v0, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    iget v2, v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:I

    if-eqz v2, :cond_17

    move v8, v5

    move-object/from16 v5, p3

    goto :goto_5

    :cond_17
    move-object/from16 v5, p3

    move v8, v6

    :goto_5
    invoke-virtual {v0, v5, v8}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 168
    new-instance v0, Lcom/google/android/exoplayer2/ui/p;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/ui/p;-><init>(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic A(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w0:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic E(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic F(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->setPlaybackSpeed(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic J(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->G:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic K(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->H:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic L(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->I:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic M(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->J:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static S(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3$d;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/l3;->t()I

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
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/l3;->t()I

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
    invoke-virtual {p0, v1, p1}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-wide v3, v3, Lcom/google/android/exoplayer2/l3$d;->n:J

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

.method private T(Lcom/google/android/exoplayer2/p2;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->pause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private U(Lcom/google/android/exoplayer2/p2;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->getPlaybackState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->prepare()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x4

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->u()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0(Lcom/google/android/exoplayer2/p2;IJ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->play()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private V(Lcom/google/android/exoplayer2/p2;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->getPlaybackState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-eq v0, v1, :cond_1

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->getPlayWhenReady()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T(Lcom/google/android/exoplayer2/p2;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U(Lcom/google/android/exoplayer2/p2;)V

    .line 23
    .line 24
    .line 25
    :goto_1
    return-void
.end method

.method private W(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v0()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0:Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sub-int/2addr p1, v0

    .line 31
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:I

    .line 32
    .line 33
    sub-int/2addr p1, v0

    .line 34
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    neg-int v0, v0

    .line 41
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:I

    .line 42
    .line 43
    sub-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 45
    .line 46
    invoke-virtual {v1, p0, p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private X(Lcom/google/android/exoplayer2/q3;I)Lcom/google/common/collect/ImmutableList;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/q3;->b()Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    move v3, v2

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ge v3, v4, :cond_4

    .line 17
    .line 18
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/google/android/exoplayer2/q3$a;

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/q3$a;->d()I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eq v5, p2, :cond_0

    .line 29
    .line 30
    goto :goto_3

    .line 31
    :cond_0
    move v5, v2

    .line 32
    :goto_1
    iget v6, v4, Lcom/google/android/exoplayer2/q3$a;->a:I

    .line 33
    .line 34
    if-ge v5, v6, :cond_3

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/q3$a;->h(I)Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/q3$a;->c(I)Lcom/google/android/exoplayer2/p1;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iget v7, v6, Lcom/google/android/exoplayer2/p1;->d:I

    .line 48
    .line 49
    and-int/lit8 v7, v7, 0x2

    .line 50
    .line 51
    if-eqz v7, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q0:Lcom/google/android/exoplayer2/ui/o0;

    .line 55
    .line 56
    invoke-interface {v7, v6}, Lcom/google/android/exoplayer2/ui/o0;->a(Lcom/google/android/exoplayer2/p1;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    new-instance v7, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;

    .line 61
    .line 62
    invoke-direct {v7, p1, v3, v5, v6}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$k;-><init>(Lcom/google/android/exoplayer2/q3;IILjava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v7}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 66
    .line 67
    .line 68
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$a;->n()Lcom/google/common/collect/ImmutableList;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    return-object p1
.end method

.method private static Y(Landroid/content/res/TypedArray;I)I
    .locals 1

    .line 1
    sget v0, Lcom/google/android/exoplayer2/ui/R$styleable;->StyledPlayerControlView_repeat_toggle_modes:I

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

.method private Z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->h()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const/16 v1, 0x1e

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p2;->i(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 24
    .line 25
    const/16 v1, 0x1d

    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p2;->i(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getCurrentTracks()Lcom/google/android/exoplayer2/q3;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->X(Lcom/google/android/exoplayer2/q3;I)Lcom/google/common/collect/ImmutableList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;->p(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0:Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/ui/i0;->A(Landroid/view/View;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->X(Lcom/google/android/exoplayer2/q3;I)Lcom/google/common/collect/ImmutableList;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->o(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    .line 72
    .line 73
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;->o(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a0(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/16 v0, 0x8

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static b0(I)Z
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

.method public static synthetic c(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0(Landroid/view/View;IIIIIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private d0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Z

    .line 7
    .line 8
    xor-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0(Landroid/widget/ImageView;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t0:Landroid/widget/ImageView;

    .line 18
    .line 19
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Z

    .line 20
    .line 21
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0(Landroid/widget/ImageView;Z)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Q:Z

    .line 29
    .line 30
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;->p(Z)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U:Z

    .line 2
    .line 3
    return p1
.end method

.method private e0(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    sub-int/2addr p4, p2

    .line 2
    sub-int/2addr p5, p3

    .line 3
    sub-int/2addr p8, p6

    .line 4
    sub-int/2addr p9, p7

    .line 5
    if-ne p4, p8, :cond_0

    .line 6
    .line 7
    if-eq p5, p9, :cond_1

    .line 8
    .line 9
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v0()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iget-object p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 25
    .line 26
    invoke-virtual {p3}, Landroid/widget/PopupWindow;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    sub-int/2addr p2, p3

    .line 31
    iget p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:I

    .line 32
    .line 33
    sub-int p6, p2, p3

    .line 34
    .line 35
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getHeight()I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    neg-int p2, p2

    .line 42
    iget p3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:I

    .line 43
    .line 44
    sub-int p7, p2, p3

    .line 45
    .line 46
    iget-object p4, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 47
    .line 48
    const/4 p8, -0x1

    .line 49
    const/4 p9, -0x1

    .line 50
    move-object p5, p1

    .line 51
    invoke-virtual/range {p4 .. p9}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 52
    .line 53
    .line 54
    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method private f0(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x1

    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$b;

    .line 13
    .line 14
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method static synthetic g(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Ljava/util/Formatter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Ljava/util/Formatter;

    .line 2
    .line 3
    return-object p0
.end method

.method private h0(Lcom/google/android/exoplayer2/p2;IJ)V
    .locals 0

    .line 1
    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/p2;->seekTo(IJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    return-object p0
.end method

.method private i0(Lcom/google/android/exoplayer2/p2;J)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->getCurrentTimeline()Lcom/google/android/exoplayer2/l3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T:Z

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_2

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l3;->t()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/l3$d;

    .line 21
    .line 22
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/l3$d;->g()J

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
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->u()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    :goto_1
    invoke-direct {p0, p1, v2, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0(Lcom/google/android/exoplayer2/p2;IJ)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method static synthetic j(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/p2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 2
    .line 3
    return-object p0
.end method

.method private j0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlaybackState()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlaybackState()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlayWhenReady()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    return v1
.end method

.method static synthetic k(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/p2;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0(Lcom/google/android/exoplayer2/p2;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0:Z

    .line 2
    .line 3
    return p0
.end method

.method private l0(ZLandroid/view/View;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 5
    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->C:F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->D:F

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static synthetic m(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private m0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->s()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x3a98

    .line 11
    .line 12
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    div-long/2addr v0, v2

    .line 15
    long-to-int v0, v0

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h:Landroid/widget/TextView;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    .line 32
    .line 33
    sget v3, Lcom/google/android/exoplayer2/ui/R$plurals;->exo_controls_fastforward_by_amount_description:I

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v5, 0x1

    .line 40
    new-array v5, v5, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    aput-object v4, v5, v6

    .line 44
    .line 45
    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private n0(Landroid/widget/ImageView;Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p2, :cond_1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->K:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->M:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->L:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->N:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private static o0(Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    const/16 p1, 0x8

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method static synthetic p(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private p0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p2;->i(I)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x7

    .line 22
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/p2;->i(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/16 v3, 0xb

    .line 27
    .line 28
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/p2;->i(I)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    const/16 v4, 0xc

    .line 33
    .line 34
    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/p2;->i(I)Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/16 v5, 0x9

    .line 39
    .line 40
    invoke-interface {v0, v5}, Lcom/google/android/exoplayer2/p2;->i(I)Z

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
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u0()V

    .line 53
    .line 54
    .line 55
    :cond_2
    if-eqz v4, :cond_3

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m0()V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Landroid/view/View;

    .line 61
    .line 62
    invoke-direct {p0, v2, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    .line 66
    .line 67
    invoke-direct {p0, v3, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    .line 71
    .line 72
    invoke-direct {p0, v4, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d:Landroid/view/View;

    .line 76
    .line 77
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    .line 81
    .line 82
    if-eqz v0, :cond_4

    .line 83
    .line 84
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/ui/n0;->setEnabled(Z)V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic q(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private q0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    .line 23
    .line 24
    check-cast v0, Landroid/widget/ImageView;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    .line 27
    .line 28
    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_pause:I

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    .line 40
    .line 41
    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_pause_description:I

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    .line 52
    .line 53
    check-cast v0, Landroid/widget/ImageView;

    .line 54
    .line 55
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    .line 56
    .line 57
    sget v2, Lcom/google/android/exoplayer2/ui/R$drawable;->exo_styled_controls_play:I

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    .line 69
    .line 70
    sget v2, Lcom/google/android/exoplayer2/ui/R$string;->exo_controls_play_description:I

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic r(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Lcom/google/android/exoplayer2/p2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V(Lcom/google/android/exoplayer2/p2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private r0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlaybackParameters()Lcom/google/android/exoplayer2/o2;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Lcom/google/android/exoplayer2/o2;->a:F

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->l(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$e;->h()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;->i(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method static synthetic s(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private s0()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-wide v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:J

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getContentPosition()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    add-long/2addr v1, v3

    .line 24
    iget-wide v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:J

    .line 25
    .line 26
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->v()J

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
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n:Landroid/widget/TextView;

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    iget-boolean v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U:Z

    .line 40
    .line 41
    if-nez v6, :cond_2

    .line 42
    .line 43
    iget-object v6, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p:Ljava/lang/StringBuilder;

    .line 44
    .line 45
    iget-object v7, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Ljava/util/Formatter;

    .line 46
    .line 47
    invoke-static {v6, v7, v1, v2}, Lcom/google/android/exoplayer2/util/p0;->h0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    .line 55
    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    invoke-interface {v5, v1, v2}, Lcom/google/android/exoplayer2/ui/n0;->setPosition(J)V

    .line 59
    .line 60
    .line 61
    iget-object v5, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    .line 62
    .line 63
    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplayer2/ui/n0;->setBufferedPosition(J)V

    .line 64
    .line 65
    .line 66
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Ljava/lang/Runnable;

    .line 67
    .line 68
    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 69
    .line 70
    .line 71
    const/4 v3, 0x1

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    move v4, v3

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlaybackState()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    :goto_1
    const-wide/16 v5, 0x3e8

    .line 81
    .line 82
    if-eqz v0, :cond_7

    .line 83
    .line 84
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->isPlaying()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_7

    .line 89
    .line 90
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    .line 91
    .line 92
    if-eqz v3, :cond_5

    .line 93
    .line 94
    invoke-interface {v3}, Lcom/google/android/exoplayer2/ui/n0;->getPreferredUpdateDelay()J

    .line 95
    .line 96
    .line 97
    move-result-wide v3

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move-wide v3, v5

    .line 100
    :goto_2
    rem-long/2addr v1, v5

    .line 101
    sub-long v1, v5, v1

    .line 102
    .line 103
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 104
    .line 105
    .line 106
    move-result-wide v1

    .line 107
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlaybackParameters()Lcom/google/android/exoplayer2/o2;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    iget v0, v0, Lcom/google/android/exoplayer2/o2;->a:F

    .line 112
    .line 113
    const/4 v3, 0x0

    .line 114
    cmpl-float v3, v0, v3

    .line 115
    .line 116
    if-lez v3, :cond_6

    .line 117
    .line 118
    long-to-float v1, v1

    .line 119
    div-float/2addr v1, v0

    .line 120
    float-to-long v5, v1

    .line 121
    :cond_6
    move-wide v7, v5

    .line 122
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:I

    .line 123
    .line 124
    int-to-long v9, v0

    .line 125
    const-wide/16 v11, 0x3e8

    .line 126
    .line 127
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/p0;->r(JJJ)J

    .line 128
    .line 129
    .line 130
    move-result-wide v0

    .line 131
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Ljava/lang/Runnable;

    .line 132
    .line 133
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_7
    const/4 v0, 0x4

    .line 138
    if-eq v4, v0, :cond_8

    .line 139
    .line 140
    if-eq v4, v3, :cond_8

    .line 141
    .line 142
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Ljava/lang/Runnable;

    .line 143
    .line 144
    invoke-virtual {p0, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 145
    .line 146
    .line 147
    :cond_8
    :goto_3
    return-void
.end method

.method private setPlaybackSpeed(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getPlaybackParameters()Lcom/google/android/exoplayer2/o2;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lcom/google/android/exoplayer2/o2;->e(F)Lcom/google/android/exoplayer2/o2;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/p2;->b(Lcom/google/android/exoplayer2/o2;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static synthetic t(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:I

    .line 2
    .line 3
    return p0
.end method

.method private t0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Z

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_2
    const/4 v2, 0x1

    .line 48
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1}, Lcom/google/android/exoplayer2/p2;->getRepeatMode()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_5

    .line 56
    .line 57
    if-eq v0, v2, :cond_4

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
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w:Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->z:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v:Landroid/graphics/drawable/Drawable;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    .line 86
    .line 87
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u:Landroid/graphics/drawable/Drawable;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    .line 101
    .line 102
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :cond_6
    :goto_0
    return-void
.end method

.method static synthetic u(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private u0()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->z()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x1388

    .line 11
    .line 12
    :goto_0
    const-wide/16 v2, 0x3e8

    .line 13
    .line 14
    div-long/2addr v0, v2

    .line 15
    long-to-int v0, v0

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i:Landroid/widget/TextView;

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->h0:Landroid/content/res/Resources;

    .line 32
    .line 33
    sget v3, Lcom/google/android/exoplayer2/ui/R$plurals;->exo_controls_rewind_by_amount_description:I

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const/4 v5, 0x1

    .line 40
    new-array v5, v5, [Ljava/lang/Object;

    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    aput-object v4, v5, v6

    .line 44
    .line 45
    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method static synthetic v(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->u0:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private v0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:I

    .line 12
    .line 13
    mul-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->n0:I

    .line 36
    .line 37
    mul-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    sub-int/2addr v0, v1

    .line 40
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->i0:Landroidx/recyclerview/widget/RecyclerView;

    .line 41
    .line 42
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0:Landroid/widget/PopupWindow;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method static synthetic w(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$h;

    .line 2
    .line 3
    return-object p0
.end method

.method private w0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Z

    .line 8
    .line 9
    if-eqz v0, :cond_5

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/ui/i0;->A(Landroid/view/View;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 30
    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_1
    if-nez v1, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    .line 36
    .line 37
    invoke-direct {p0, v2, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    .line 48
    .line 49
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    goto :goto_2

    .line 55
    :cond_2
    const/4 v0, 0x1

    .line 56
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    .line 57
    .line 58
    invoke-direct {p0, v0, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    .line 62
    .line 63
    invoke-interface {v1}, Lcom/google/android/exoplayer2/p2;->getShuffleModeEnabled()Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->A:Landroid/graphics/drawable/Drawable;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->B:Landroid/graphics/drawable/Drawable;

    .line 73
    .line 74
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    .line 78
    .line 79
    invoke-interface {v1}, Lcom/google/android/exoplayer2/p2;->getShuffleModeEnabled()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    .line 85
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->E:Ljava/lang/String;

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->F:Ljava/lang/String;

    .line 89
    .line 90
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic x(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private x0()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->S:Z

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/google/android/exoplayer2/p2;->getCurrentTimeline()Lcom/google/android/exoplayer2/l3;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/l3$d;

    .line 18
    .line 19
    invoke-static {v2, v5}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->S(Lcom/google/android/exoplayer2/l3;Lcom/google/android/exoplayer2/l3$d;)Z

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
    iput-boolean v2, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T:Z

    .line 29
    .line 30
    const-wide/16 v5, 0x0

    .line 31
    .line 32
    iput-wide v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:J

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/google/android/exoplayer2/p2;->getCurrentTimeline()Lcom/google/android/exoplayer2/l3;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/l3;->u()Z

    .line 39
    .line 40
    .line 41
    move-result v7

    .line 42
    if-nez v7, :cond_e

    .line 43
    .line 44
    invoke-interface {v1}, Lcom/google/android/exoplayer2/p2;->u()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-boolean v7, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T:Z

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
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/l3;->t()I

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
    invoke-static {v9, v10}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v12

    .line 74
    iput-wide v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f0:J

    .line 75
    .line 76
    :cond_4
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/l3$d;

    .line 77
    .line 78
    invoke-virtual {v2, v8, v12}, Lcom/google/android/exoplayer2/l3;->r(ILcom/google/android/exoplayer2/l3$d;)Lcom/google/android/exoplayer2/l3$d;

    .line 79
    .line 80
    .line 81
    iget-object v12, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/l3$d;

    .line 82
    .line 83
    iget-wide v13, v12, Lcom/google/android/exoplayer2/l3$d;->n:J

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
    iget-boolean v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T:Z

    .line 95
    .line 96
    xor-int/2addr v1, v4

    .line 97
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_8

    .line 101
    .line 102
    :cond_5
    iget v12, v12, Lcom/google/android/exoplayer2/l3$d;->o:I

    .line 103
    .line 104
    :goto_4
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s:Lcom/google/android/exoplayer2/l3$d;

    .line 105
    .line 106
    iget v14, v13, Lcom/google/android/exoplayer2/l3$d;->p:I

    .line 107
    .line 108
    if-gt v12, v14, :cond_c

    .line 109
    .line 110
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/l3$b;

    .line 111
    .line 112
    invoke-virtual {v2, v12, v13}, Lcom/google/android/exoplayer2/l3;->j(ILcom/google/android/exoplayer2/l3$b;)Lcom/google/android/exoplayer2/l3$b;

    .line 113
    .line 114
    .line 115
    iget-object v13, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/l3$b;

    .line 116
    .line 117
    invoke-virtual {v13}, Lcom/google/android/exoplayer2/l3$b;->r()I

    .line 118
    .line 119
    .line 120
    move-result v13

    .line 121
    iget-object v14, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/l3$b;

    .line 122
    .line 123
    invoke-virtual {v14}, Lcom/google/android/exoplayer2/l3$b;->f()I

    .line 124
    .line 125
    .line 126
    move-result v14

    .line 127
    :goto_5
    if-ge v13, v14, :cond_b

    .line 128
    .line 129
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/l3$b;

    .line 130
    .line 131
    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/l3$b;->i(I)J

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
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/l3$b;

    .line 142
    .line 143
    iget-wide v3, v4, Lcom/google/android/exoplayer2/l3$b;->d:J

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
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/l3$b;

    .line 153
    .line 154
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/l3$b;->q()J

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
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

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
    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

    .line 182
    .line 183
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    .line 184
    .line 185
    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    .line 190
    .line 191
    :cond_9
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

    .line 192
    .line 193
    add-long v17, v9, v17

    .line 194
    .line 195
    invoke-static/range {v17 .. v18}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 196
    .line 197
    .line 198
    move-result-wide v17

    .line 199
    aput-wide v17, v3, v11

    .line 200
    .line 201
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    .line 202
    .line 203
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r:Lcom/google/android/exoplayer2/l3$b;

    .line 204
    .line 205
    invoke-virtual {v4, v13}, Lcom/google/android/exoplayer2/l3$b;->s(I)Z

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
    iget-wide v3, v13, Lcom/google/android/exoplayer2/l3$d;->n:J

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
    invoke-static {v5, v6}, Lcom/google/android/exoplayer2/util/p0;->e1(J)J

    .line 233
    .line 234
    .line 235
    move-result-wide v1

    .line 236
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->m:Landroid/widget/TextView;

    .line 237
    .line 238
    if-eqz v3, :cond_f

    .line 239
    .line 240
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p:Ljava/lang/StringBuilder;

    .line 241
    .line 242
    iget-object v5, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q:Ljava/util/Formatter;

    .line 243
    .line 244
    invoke-static {v4, v5, v1, v2}, Lcom/google/android/exoplayer2/util/p0;->h0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

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
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    .line 252
    .line 253
    if-eqz v3, :cond_11

    .line 254
    .line 255
    invoke-interface {v3, v1, v2}, Lcom/google/android/exoplayer2/ui/n0;->setDuration(J)V

    .line 256
    .line 257
    .line 258
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d0:[J

    .line 259
    .line 260
    array-length v1, v1

    .line 261
    add-int v2, v11, v1

    .line 262
    .line 263
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

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
    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

    .line 273
    .line 274
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    .line 275
    .line 276
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 277
    .line 278
    .line 279
    move-result-object v3

    .line 280
    iput-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    .line 281
    .line 282
    :cond_10
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d0:[J

    .line 283
    .line 284
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

    .line 285
    .line 286
    const/4 v5, 0x0

    .line 287
    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    .line 289
    .line 290
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:[Z

    .line 291
    .line 292
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    .line 293
    .line 294
    invoke-static {v3, v5, v4, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    .line 296
    .line 297
    iget-object v1, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o:Lcom/google/android/exoplayer2/ui/n0;

    .line 298
    .line 299
    iget-object v3, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0:[J

    .line 300
    .line 301
    iget-object v4, v0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c0:[Z

    .line 302
    .line 303
    invoke-interface {v1, v3, v4, v2}, Lcom/google/android/exoplayer2/ui/n0;->setAdGroupTimesMs([J[ZI)V

    .line 304
    .line 305
    .line 306
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0()V

    .line 307
    .line 308
    .line 309
    return-void
.end method

.method static synthetic y(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private y0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->Z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$j;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$l;->getItemCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method static synthetic z(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->v0:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public addVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method c0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-interface {v1, v2}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;->l(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 6
    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b0(I)Z

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
    invoke-interface {v1}, Lcom/google/android/exoplayer2/p2;->getPlaybackState()I

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
    invoke-interface {v1}, Lcom/google/android/exoplayer2/p2;->w()V

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
    invoke-interface {v1}, Lcom/google/android/exoplayer2/p2;->x()V

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
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->T(Lcom/google/android/exoplayer2/p2;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->U(Lcom/google/android/exoplayer2/p2;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    invoke-interface {v1}, Lcom/google/android/exoplayer2/p2;->f()V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_6
    invoke-interface {v1}, Lcom/google/android/exoplayer2/p2;->n()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_7
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V(Lcom/google/android/exoplayer2/p2;)V

    .line 93
    .line 94
    .line 95
    :cond_8
    :goto_0
    const/4 p1, 0x1

    .line 96
    return p1

    .line 97
    :cond_9
    :goto_1
    const/4 p1, 0x0

    .line 98
    return p1
.end method

.method g0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public getPlayer()Lcom/google/android/exoplayer2/p2;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/i0;->A(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getShowSubtitleButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/i0;->A(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getShowTimeoutMs()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowVrButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/ui/i0;->A(Landroid/view/View;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public hide()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->C()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public hideImmediately()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->F()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isAnimationEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->I()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isFullyVisible()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->J()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
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

.method k0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->q0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t0()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w0()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->y0()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x0()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->P()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->X()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0()V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->Q()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->R:Z

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->W()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 5
    .line 6
    move v1, p1

    .line 7
    move v2, p2

    .line 8
    move v3, p3

    .line 9
    move v4, p4

    .line 10
    move v5, p5

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/ui/i0;->R(ZIIII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public removeVisibilityListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/ui/i0;->Y(Z)V

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
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d0:[J

    .line 7
    .line 8
    new-array p1, v0, [Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:[Z

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d0:[J

    .line 28
    .line 29
    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->e0:[Z

    .line 30
    .line 31
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x0()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setOnFullScreenModeChangedListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;)V
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->P:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$d;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->s0:Landroid/widget/ImageView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    invoke-static {v0, v3}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t0:Landroid/widget/ImageView;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->o0(Landroid/view/View;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setPlayer(Lcom/google/android/exoplayer2/p2;)V
    .locals 4
    .param p1    # Lcom/google/android/exoplayer2/p2;
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
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Z)V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/google/android/exoplayer2/p2;->l()Landroid/os/Looper;

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
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

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
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p2;->B(Lcom/google/android/exoplayer2/p2$d;)V

    .line 45
    .line 46
    .line 47
    :cond_4
    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a:Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$c;

    .line 52
    .line 53
    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/p2;->E(Lcom/google/android/exoplayer2/p2$d;)V

    .line 54
    .line 55
    .line 56
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k0()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public setProgressUpdateListener(Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;)V
    .locals 0
    .param p1    # Lcom/google/android/exoplayer2/ui/StyledPlayerControlView$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->a0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/google/android/exoplayer2/p2;->getRepeatMode()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/p2;->setRepeatMode(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v3, 0x2

    .line 24
    if-ne p1, v2, :cond_1

    .line 25
    .line 26
    if-ne v0, v3, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 29
    .line 30
    invoke-interface {v0, v2}, Lcom/google/android/exoplayer2/p2;->setRepeatMode(I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    if-ne p1, v3, :cond_2

    .line 35
    .line 36
    if-ne v0, v2, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->O:Lcom/google/android/exoplayer2/p2;

    .line 39
    .line 40
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/p2;->setRepeatMode(I)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->j:Landroid/widget/ImageView;

    .line 46
    .line 47
    if-eqz p1, :cond_3

    .line 48
    .line 49
    move v1, v2

    .line 50
    :cond_3
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->t0()V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->f:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->S:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->x0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->d:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->c:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->p0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->k:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->w0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->r0:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->V:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->isFullyVisible()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/ui/i0;->X()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/ui/i0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
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
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/util/p0;->q(III)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->W:I

    .line 10
    .line 11
    return-void
.end method

.method public setVrButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l:Landroid/view/View;

    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->l0(ZLandroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/StyledPlayerControlView;->g0:Lcom/google/android/exoplayer2/ui/i0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/ui/i0;->c0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
