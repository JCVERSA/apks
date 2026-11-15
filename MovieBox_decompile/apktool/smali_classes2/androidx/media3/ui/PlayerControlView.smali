.class public Landroidx/media3/ui/PlayerControlView;
.super Landroid/widget/FrameLayout;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/ui/PlayerControlView$j;,
        Landroidx/media3/ui/PlayerControlView$b;,
        Landroidx/media3/ui/PlayerControlView$e;,
        Landroidx/media3/ui/PlayerControlView$h;,
        Landroidx/media3/ui/PlayerControlView$c;,
        Landroidx/media3/ui/PlayerControlView$f;,
        Landroidx/media3/ui/PlayerControlView$d;,
        Landroidx/media3/ui/PlayerControlView$m;,
        Landroidx/media3/ui/PlayerControlView$k;,
        Landroidx/media3/ui/PlayerControlView$i;,
        Landroidx/media3/ui/PlayerControlView$l;,
        Landroidx/media3/ui/PlayerControlView$g;
    }
.end annotation


# static fields
.field private static final A0:[F

.field public static final DEFAULT_REPEAT_TOGGLE_MODES:I = 0x0

.field public static final DEFAULT_SHOW_TIMEOUT_MS:I = 0x1388

.field public static final DEFAULT_TIME_BAR_MIN_UPDATE_INTERVAL_MS:I = 0xc8

.field public static final MAX_WINDOWS_FOR_MULTI_WINDOW_TIME_BAR:I = 0x64


# instance fields
.field private final A:Landroid/view/View;

.field private final B:Landroid/view/View;

.field private final C:Landroid/widget/TextView;

.field private final D:Landroid/widget/TextView;

.field private final E:Landroidx/media3/ui/y0;

.field private final F:Ljava/lang/StringBuilder;

.field private final G:Ljava/util/Formatter;

.field private final H:Landroidx/media3/common/e0$b;

.field private final I:Landroidx/media3/common/e0$c;

.field private final J:Ljava/lang/Runnable;

.field private final K:Landroid/graphics/drawable/Drawable;

.field private final L:Landroid/graphics/drawable/Drawable;

.field private final M:Landroid/graphics/drawable/Drawable;

.field private final N:Landroid/graphics/drawable/Drawable;

.field private final O:Landroid/graphics/drawable/Drawable;

.field private final P:Ljava/lang/String;

.field private final Q:Ljava/lang/String;

.field private final R:Ljava/lang/String;

.field private final S:Landroid/graphics/drawable/Drawable;

.field private final T:Landroid/graphics/drawable/Drawable;

.field private final U:F

.field private final V:F

.field private final W:Ljava/lang/String;

.field private final a:Landroidx/media3/ui/e0;

.field private final a0:Ljava/lang/String;

.field private final b:Landroid/content/res/Resources;

.field private final b0:Landroid/graphics/drawable/Drawable;

.field private final c:Landroidx/media3/ui/PlayerControlView$c;

.field private final c0:Landroid/graphics/drawable/Drawable;

.field private final d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private final d0:Ljava/lang/String;

.field private final e:Landroidx/recyclerview/widget/RecyclerView;

.field private final e0:Ljava/lang/String;

.field private final f:Landroidx/media3/ui/PlayerControlView$h;

.field private final f0:Landroid/graphics/drawable/Drawable;

.field private final g:Landroidx/media3/ui/PlayerControlView$e;

.field private final g0:Landroid/graphics/drawable/Drawable;

.field private final h:Landroidx/media3/ui/PlayerControlView$j;

.field private final h0:Ljava/lang/String;

.field private final i:Landroidx/media3/ui/PlayerControlView$b;

.field private final i0:Ljava/lang/String;

.field private final j:Landroidx/media3/ui/z0;

.field private j0:Landroidx/media3/common/a0;

.field private final k:Landroid/widget/PopupWindow;

.field private k0:Landroidx/media3/ui/PlayerControlView$d;

.field private final l:I

.field private l0:Z

.field private final m:Landroid/widget/ImageView;

.field private m0:Z

.field private final n:Landroid/widget/ImageView;

.field private n0:Z

.field private final o:Landroid/widget/ImageView;

.field private o0:Z

.field private final p:Landroid/view/View;

.field private p0:Z

.field private final q:Landroid/view/View;

.field private q0:Z

.field private final r:Landroid/widget/TextView;

.field private r0:I

.field private final s:Landroid/widget/TextView;

.field private s0:I

.field private final t:Landroid/widget/ImageView;

.field private t0:I

.field private final u:Landroid/widget/ImageView;

.field private u0:[J

.field private final v:Landroid/widget/ImageView;

.field private v0:[Z

.field private final w:Landroid/widget/ImageView;

.field private w0:[J

.field private final x:Landroid/widget/ImageView;

.field private x0:[Z

.field private final y:Landroid/widget/ImageView;

.field private y0:J

.field private final z:Landroid/view/View;

.field private z0:Z


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
    const/4 v0, 0x7

    .line 7
    new-array v0, v0, [F

    .line 8
    .line 9
    fill-array-data v0, :array_0

    .line 10
    .line 11
    .line 12
    sput-object v0, Landroidx/media3/ui/PlayerControlView;->A0:[F

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
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3, p2}, Landroidx/media3/ui/PlayerControlView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;)V
    .locals 42
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p4

    .line 4
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    sget v2, Landroidx/media3/ui/R$layout;->exo_player_control_view:I

    .line 6
    sget v3, Landroidx/media3/ui/R$drawable;->exo_styled_controls_play:I

    .line 7
    sget v4, Landroidx/media3/ui/R$drawable;->exo_styled_controls_pause:I

    .line 8
    sget v5, Landroidx/media3/ui/R$drawable;->exo_styled_controls_next:I

    .line 9
    sget v7, Landroidx/media3/ui/R$drawable;->exo_styled_controls_simple_fastforward:I

    .line 10
    sget v8, Landroidx/media3/ui/R$drawable;->exo_styled_controls_previous:I

    .line 11
    sget v9, Landroidx/media3/ui/R$drawable;->exo_styled_controls_simple_rewind:I

    .line 12
    sget v10, Landroidx/media3/ui/R$drawable;->exo_styled_controls_fullscreen_exit:I

    .line 13
    sget v11, Landroidx/media3/ui/R$drawable;->exo_styled_controls_fullscreen_enter:I

    .line 14
    sget v12, Landroidx/media3/ui/R$drawable;->exo_styled_controls_repeat_off:I

    .line 15
    sget v13, Landroidx/media3/ui/R$drawable;->exo_styled_controls_repeat_one:I

    .line 16
    sget v14, Landroidx/media3/ui/R$drawable;->exo_styled_controls_repeat_all:I

    .line 17
    sget v15, Landroidx/media3/ui/R$drawable;->exo_styled_controls_shuffle_on:I

    .line 18
    sget v0, Landroidx/media3/ui/R$drawable;->exo_styled_controls_shuffle_off:I

    move/from16 p2, v0

    .line 19
    sget v0, Landroidx/media3/ui/R$drawable;->exo_styled_controls_subtitle_on:I

    move/from16 v16, v0

    .line 20
    sget v0, Landroidx/media3/ui/R$drawable;->exo_styled_controls_subtitle_off:I

    move/from16 v17, v0

    .line 21
    sget v0, Landroidx/media3/ui/R$drawable;->exo_styled_controls_vr:I

    move/from16 v18, v0

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, v1, Landroidx/media3/ui/PlayerControlView;->o0:Z

    const/16 v0, 0x1388

    .line 23
    iput v0, v1, Landroidx/media3/ui/PlayerControlView;->r0:I

    const/4 v0, 0x0

    .line 24
    iput v0, v1, Landroidx/media3/ui/PlayerControlView;->t0:I

    const/16 v0, 0xc8

    .line 25
    iput v0, v1, Landroidx/media3/ui/PlayerControlView;->s0:I

    if-eqz v6, :cond_0

    .line 26
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Landroidx/media3/ui/R$styleable;->PlayerControlView:[I

    move/from16 v21, v14

    move/from16 v20, v15

    const/4 v14, 0x0

    move/from16 v15, p3

    .line 27
    invoke-virtual {v0, v6, v1, v15, v14}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 28
    :try_start_0
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_controller_layout_id:I

    .line 29
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 30
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_play_icon:I

    .line 31
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 32
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_pause_icon:I

    .line 33
    invoke-virtual {v1, v0, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 34
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_next_icon:I

    .line 35
    invoke-virtual {v1, v0, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 36
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_fastforward_icon:I

    .line 37
    invoke-virtual {v1, v0, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 38
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_previous_icon:I

    .line 39
    invoke-virtual {v1, v0, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 40
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_rewind_icon:I

    .line 41
    invoke-virtual {v1, v0, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 42
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_fullscreen_exit_icon:I

    .line 43
    invoke-virtual {v1, v0, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 44
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_fullscreen_enter_icon:I

    .line 45
    invoke-virtual {v1, v0, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 46
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_off_icon:I

    .line 47
    invoke-virtual {v1, v0, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v12

    .line 48
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_one_icon:I

    .line 49
    invoke-virtual {v1, v0, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 50
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_all_icon:I

    move/from16 v14, v21

    .line 51
    invoke-virtual {v1, v0, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v14

    .line 52
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_shuffle_on_icon:I

    move/from16 v15, v20

    .line 53
    invoke-virtual {v1, v0, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    .line 54
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_shuffle_off_icon:I

    move/from16 p3, v2

    move/from16 v2, p2

    .line 55
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 56
    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_subtitle_on_icon:I

    move/from16 p2, v0

    move/from16 v0, v16

    .line 57
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 58
    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_subtitle_off_icon:I

    move/from16 v16, v0

    move/from16 v0, v17

    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 60
    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_vr_icon:I

    move/from16 v17, v0

    move/from16 v0, v18

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 61
    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_timeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v20, v0

    move/from16 v18, v5

    move-object/from16 v5, p0

    :try_start_1
    iget v0, v5, Landroidx/media3/ui/PlayerControlView;->r0:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v5, Landroidx/media3/ui/PlayerControlView;->r0:I

    .line 62
    iget v0, v5, Landroidx/media3/ui/PlayerControlView;->t0:I

    invoke-static {v1, v0}, Landroidx/media3/ui/PlayerControlView;->V(Landroid/content/res/TypedArray;I)I

    move-result v0

    iput v0, v5, Landroidx/media3/ui/PlayerControlView;->t0:I

    .line 63
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_rewind_button:I

    const/4 v2, 0x1

    .line 64
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v21, v0

    .line 65
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_fastforward_button:I

    .line 66
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v22, v0

    .line 67
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_previous_button:I

    .line 68
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    move/from16 v23, v0

    .line 69
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_next_button:I

    .line 70
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 71
    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_shuffle_button:I

    move/from16 v24, v0

    const/4 v0, 0x0

    .line 72
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move/from16 v25, v2

    .line 73
    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_subtitle_button:I

    .line 74
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    move/from16 v26, v2

    .line 75
    sget v2, Landroidx/media3/ui/R$styleable;->PlayerControlView_show_vr_button:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 76
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_time_bar_min_update_interval:I

    move/from16 v27, v2

    iget v2, v5, Landroidx/media3/ui/PlayerControlView;->s0:I

    .line 77
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 78
    invoke-virtual {v5, v0}, Landroidx/media3/ui/PlayerControlView;->setTimeBarMinUpdateInterval(I)V

    .line 79
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_animation_enabled:I

    const/4 v2, 0x1

    .line 80
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v37, v0

    move/from16 p2, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v36, v15

    move/from16 v9, v17

    move/from16 v0, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v33, v25

    move/from16 v34, v26

    move/from16 v35, v27

    move v14, v3

    move v15, v4

    move v4, v8

    move/from16 v8, v16

    move/from16 v16, v18

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    :goto_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    throw v0

    :cond_0
    move/from16 v0, v18

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v5

    move-object v5, v1

    move v1, v2

    move/from16 v2, p2

    move/from16 p2, v9

    move/from16 v28, v10

    move/from16 v29, v11

    move/from16 v30, v12

    move/from16 v31, v13

    move/from16 v32, v14

    move/from16 v36, v15

    move/from16 v9, v18

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v37, 0x1

    move v14, v3

    move v15, v4

    move v4, v8

    move/from16 v8, v17

    move/from16 v41, v2

    move v2, v1

    move/from16 v1, v41

    .line 83
    :goto_1
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const/high16 v2, 0x40000

    .line 84
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 85
    new-instance v3, Landroidx/media3/ui/PlayerControlView$c;

    const/4 v2, 0x0

    invoke-direct {v3, v5, v2}, Landroidx/media3/ui/PlayerControlView$c;-><init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$a;)V

    iput-object v3, v5, Landroidx/media3/ui/PlayerControlView;->c:Landroidx/media3/ui/PlayerControlView$c;

    .line 86
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    new-instance v2, Landroidx/media3/common/e0$b;

    invoke-direct {v2}, Landroidx/media3/common/e0$b;-><init>()V

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    .line 88
    new-instance v2, Landroidx/media3/common/e0$c;

    invoke-direct {v2}, Landroidx/media3/common/e0$c;-><init>()V

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->F:Ljava/lang/StringBuilder;

    move/from16 v17, v4

    .line 90
    new-instance v4, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v2, v6}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v4, v5, Landroidx/media3/ui/PlayerControlView;->G:Ljava/util/Formatter;

    const/4 v2, 0x0

    .line 91
    new-array v4, v2, [J

    iput-object v4, v5, Landroidx/media3/ui/PlayerControlView;->u0:[J

    .line 92
    new-array v4, v2, [Z

    iput-object v4, v5, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    .line 93
    new-array v4, v2, [J

    iput-object v4, v5, Landroidx/media3/ui/PlayerControlView;->w0:[J

    .line 94
    new-array v4, v2, [Z

    iput-object v4, v5, Landroidx/media3/ui/PlayerControlView;->x0:[Z

    .line 95
    new-instance v2, Landroidx/media3/ui/j;

    invoke-direct {v2, v5}, Landroidx/media3/ui/j;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->J:Ljava/lang/Runnable;

    .line 96
    sget v2, Landroidx/media3/ui/R$id;->exo_duration:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/TextView;

    .line 97
    sget v2, Landroidx/media3/ui/R$id;->exo_position:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/TextView;

    .line 98
    sget v2, Landroidx/media3/ui/R$id;->exo_subtitle:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v5, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    .line 99
    invoke-virtual {v6, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_1
    sget v2, Landroidx/media3/ui/R$id;->exo_fullscreen:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->x:Landroid/widget/ImageView;

    .line 101
    new-instance v4, Landroidx/media3/ui/k;

    invoke-direct {v4, v5}, Landroidx/media3/ui/k;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    invoke-static {v2, v4}, Landroidx/media3/ui/PlayerControlView;->X(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 102
    sget v2, Landroidx/media3/ui/R$id;->exo_minimal_fullscreen:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->y:Landroid/widget/ImageView;

    .line 103
    new-instance v4, Landroidx/media3/ui/k;

    invoke-direct {v4, v5}, Landroidx/media3/ui/k;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    invoke-static {v2, v4}, Landroidx/media3/ui/PlayerControlView;->X(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 104
    sget v2, Landroidx/media3/ui/R$id;->exo_settings:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->z:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 105
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    :cond_2
    sget v2, Landroidx/media3/ui/R$id;->exo_playback_speed:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->A:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 107
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_3
    sget v2, Landroidx/media3/ui/R$id;->exo_audio_track:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->B:Landroid/view/View;

    if-eqz v2, :cond_4

    .line 109
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_4
    sget v2, Landroidx/media3/ui/R$id;->exo_progress:I

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/media3/ui/y0;

    .line 111
    sget v4, Landroidx/media3/ui/R$id;->exo_progress_placeholder:I

    invoke-virtual {v5, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v2, :cond_5

    .line 112
    iput-object v2, v5, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    move/from16 v38, p2

    move-object/from16 v39, v3

    move-object v2, v5

    move-object/from16 v40, v6

    move/from16 v22, v13

    move/from16 v13, v17

    const/4 v3, 0x0

    move/from16 v17, v12

    move/from16 v12, v16

    move/from16 v16, v10

    move v10, v7

    goto/16 :goto_2

    :cond_5
    if-eqz v4, :cond_6

    .line 113
    new-instance v2, Landroidx/media3/ui/DefaultTimeBar;

    const/16 v18, 0x0

    sget v20, Landroidx/media3/ui/R$style;->ExoStyledControls_TimeBar:I

    const/16 v21, 0x0

    move-object/from16 p3, v2

    move/from16 v38, p2

    move-object/from16 v39, v3

    move-object/from16 v3, p1

    move-object/from16 p2, v4

    move/from16 v22, v13

    move/from16 v13, v17

    move-object/from16 v4, v21

    move/from16 v5, v18

    move-object/from16 v40, v6

    move-object/from16 v6, p4

    move/from16 v17, v12

    move/from16 v12, v16

    move/from16 v16, v10

    move v10, v7

    move/from16 v7, v20

    invoke-direct/range {v2 .. v7}, Landroidx/media3/ui/DefaultTimeBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/util/AttributeSet;I)V

    .line 114
    sget v2, Landroidx/media3/ui/R$id;->exo_progress:I

    move-object/from16 v3, p3

    invoke-virtual {v3, v2}, Landroid/view/View;->setId(I)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v4, p2

    .line 117
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 118
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 119
    invoke-virtual {v2, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object/from16 v2, p0

    .line 120
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    const/4 v3, 0x0

    goto :goto_2

    :cond_6
    move/from16 v38, p2

    move-object/from16 v39, v3

    move-object v2, v5

    move-object/from16 v40, v6

    move/from16 v22, v13

    move/from16 v13, v17

    const/4 v3, 0x0

    move/from16 v17, v12

    move/from16 v12, v16

    move/from16 v16, v10

    move v10, v7

    .line 121
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    .line 122
    :goto_2
    iget-object v4, v2, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    move-object/from16 v5, v39

    if-eqz v4, :cond_7

    .line 123
    invoke-interface {v4, v5}, Landroidx/media3/ui/y0;->addListener(Landroidx/media3/ui/y0$a;)V

    .line 124
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, v2, Landroidx/media3/ui/PlayerControlView;->b:Landroid/content/res/Resources;

    .line 125
    sget v6, Landroidx/media3/ui/R$id;->exo_play_pause:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    if-eqz v6, :cond_8

    .line 126
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_8
    sget v6, Landroidx/media3/ui/R$id;->exo_prev:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    move-object/from16 v7, p1

    if-eqz v6, :cond_9

    .line 128
    invoke-static {v7, v4, v13}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    :cond_9
    sget v13, Landroidx/media3/ui/R$id;->exo_next:I

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v2, Landroidx/media3/ui/PlayerControlView;->n:Landroid/widget/ImageView;

    if-eqz v13, :cond_a

    .line 131
    invoke-static {v7, v4, v12}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v13, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    :cond_a
    sget v12, Landroidx/media3/ui/R$font;->roboto_medium_numbers:I

    invoke-static {v7, v12}, Ly0/h;->g(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v12

    .line 134
    sget v3, Landroidx/media3/ui/R$id;->exo_rew:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 p2, v13

    .line 135
    sget v13, Landroidx/media3/ui/R$id;->exo_rew_with_amount:I

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    if-eqz v3, :cond_b

    move-object/from16 p3, v6

    move/from16 v6, v38

    .line 136
    invoke-static {v7, v4, v6}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    const/4 v3, 0x0

    .line 138
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/TextView;

    goto :goto_3

    :cond_b
    move-object/from16 p3, v6

    const/4 v3, 0x0

    if-eqz v13, :cond_c

    .line 139
    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 140
    iput-object v13, v2, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/TextView;

    .line 141
    iput-object v13, v2, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    goto :goto_3

    .line 142
    :cond_c
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/TextView;

    .line 143
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    .line 144
    :goto_3
    iget-object v3, v2, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    if-eqz v3, :cond_d

    .line 145
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :cond_d
    sget v3, Landroidx/media3/ui/R$id;->exo_ffwd:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 147
    sget v6, Landroidx/media3/ui/R$id;->exo_ffwd_with_amount:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    if-eqz v3, :cond_e

    .line 148
    invoke-static {v7, v4, v10}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 149
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    const/4 v3, 0x0

    .line 150
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->r:Landroid/widget/TextView;

    goto :goto_4

    :cond_e
    const/4 v3, 0x0

    if-eqz v6, :cond_f

    .line 151
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 152
    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView;->r:Landroid/widget/TextView;

    .line 153
    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    goto :goto_4

    .line 154
    :cond_f
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->r:Landroid/widget/TextView;

    .line 155
    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    .line 156
    :goto_4
    iget-object v3, v2, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    if-eqz v3, :cond_10

    .line 157
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    :cond_10
    sget v3, Landroidx/media3/ui/R$id;->exo_repeat_toggle:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    if-eqz v3, :cond_11

    .line 159
    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_11
    sget v6, Landroidx/media3/ui/R$id;->exo_shuffle:I

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    if-eqz v6, :cond_12

    .line 161
    invoke-virtual {v6, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    :cond_12
    sget v10, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_enabled:I

    .line 163
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v12, 0x42c80000    # 100.0f

    div-float/2addr v10, v12

    iput v10, v2, Landroidx/media3/ui/PlayerControlView;->U:F

    .line 164
    sget v10, Landroidx/media3/ui/R$integer;->exo_media_button_opacity_percentage_disabled:I

    .line 165
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v12

    iput v10, v2, Landroidx/media3/ui/PlayerControlView;->V:F

    .line 166
    sget v10, Landroidx/media3/ui/R$id;->exo_vr:I

    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, v2, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    if-eqz v10, :cond_13

    .line 167
    invoke-static {v7, v4, v0}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 168
    invoke-direct {v2, v0, v10}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 169
    :cond_13
    new-instance v0, Landroidx/media3/ui/e0;

    invoke-direct {v0, v2}, Landroidx/media3/ui/e0;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    iput-object v0, v2, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    move/from16 v12, v37

    .line 170
    invoke-virtual {v0, v12}, Landroidx/media3/ui/e0;->Y(Z)V

    .line 171
    sget v12, Landroidx/media3/ui/R$string;->exo_controls_playback_speed:I

    .line 172
    invoke-virtual {v4, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 173
    sget v13, Landroidx/media3/ui/R$drawable;->exo_styled_controls_speed:I

    .line 174
    invoke-static {v7, v4, v13}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 p4, v3

    .line 175
    sget v3, Landroidx/media3/ui/R$string;->exo_track_selection_title_audio:I

    .line 176
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v12, v3}, [Ljava/lang/String;

    move-result-object v3

    .line 177
    sget v12, Landroidx/media3/ui/R$drawable;->exo_styled_controls_audiotrack:I

    .line 178
    invoke-static {v7, v4, v12}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    move-object/from16 v18, v10

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/graphics/drawable/Drawable;

    const/16 v19, 0x0

    aput-object v13, v10, v19

    const/4 v13, 0x1

    aput-object v12, v10, v13

    .line 179
    new-instance v12, Landroidx/media3/ui/PlayerControlView$h;

    invoke-direct {v12, v2, v3, v10}, Landroidx/media3/ui/PlayerControlView$h;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    iput-object v12, v2, Landroidx/media3/ui/PlayerControlView;->f:Landroidx/media3/ui/PlayerControlView$h;

    .line 180
    sget v3, Landroidx/media3/ui/R$dimen;->exo_settings_offset:I

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroidx/media3/ui/PlayerControlView;->l:I

    .line 181
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v10, Landroidx/media3/ui/R$layout;->exo_styled_settings_list:I

    const/4 v13, 0x0

    .line 182
    invoke-virtual {v3, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 183
    invoke-virtual {v3, v12}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    new-instance v10, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v10, v12}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v10}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 185
    new-instance v10, Landroid/widget/PopupWindow;

    const/4 v12, -0x2

    const/4 v13, 0x1

    invoke-direct {v10, v3, v12, v12, v13}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v10, v2, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    .line 186
    sget v3, Landroidx/media3/common/util/a1;->a:I

    const/16 v12, 0x17

    if-ge v3, v12, :cond_14

    .line 187
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const/4 v12, 0x0

    invoke-direct {v3, v12}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v10, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    :cond_14
    const/4 v12, 0x0

    .line 188
    :goto_5
    invoke-virtual {v10, v5}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 189
    iput-boolean v13, v2, Landroidx/media3/ui/PlayerControlView;->z0:Z

    .line 190
    new-instance v3, Landroidx/media3/ui/f;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/media3/ui/f;-><init>(Landroid/content/res/Resources;)V

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/z0;

    .line 191
    invoke-static {v7, v4, v8}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->b0:Landroid/graphics/drawable/Drawable;

    .line 192
    invoke-static {v7, v4, v9}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->c0:Landroid/graphics/drawable/Drawable;

    .line 193
    sget v3, Landroidx/media3/ui/R$string;->exo_controls_cc_enabled_description:I

    .line 194
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->d0:Ljava/lang/String;

    .line 195
    sget v3, Landroidx/media3/ui/R$string;->exo_controls_cc_disabled_description:I

    .line 196
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->e0:Ljava/lang/String;

    .line 197
    new-instance v3, Landroidx/media3/ui/PlayerControlView$j;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Landroidx/media3/ui/PlayerControlView$j;-><init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$a;)V

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    .line 198
    new-instance v3, Landroidx/media3/ui/PlayerControlView$b;

    invoke-direct {v3, v2, v5}, Landroidx/media3/ui/PlayerControlView$b;-><init>(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/ui/PlayerControlView$a;)V

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->i:Landroidx/media3/ui/PlayerControlView$b;

    .line 199
    new-instance v3, Landroidx/media3/ui/PlayerControlView$e;

    sget v5, Landroidx/media3/ui/R$array;->exo_controls_playback_speeds:I

    .line 200
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    sget-object v8, Landroidx/media3/ui/PlayerControlView;->A0:[F

    invoke-direct {v3, v2, v5, v8}, Landroidx/media3/ui/PlayerControlView$e;-><init>(Landroidx/media3/ui/PlayerControlView;[Ljava/lang/String;[F)V

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->g:Landroidx/media3/ui/PlayerControlView$e;

    .line 201
    invoke-static {v7, v4, v14}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->K:Landroid/graphics/drawable/Drawable;

    .line 202
    invoke-static {v7, v4, v15}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->L:Landroid/graphics/drawable/Drawable;

    move/from16 v10, v28

    .line 203
    invoke-static {v7, v4, v10}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->f0:Landroid/graphics/drawable/Drawable;

    move/from16 v3, v29

    .line 204
    invoke-static {v7, v4, v3}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->g0:Landroid/graphics/drawable/Drawable;

    move/from16 v3, v30

    .line 205
    invoke-static {v7, v4, v3}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->M:Landroid/graphics/drawable/Drawable;

    move/from16 v13, v31

    .line 206
    invoke-static {v7, v4, v13}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->N:Landroid/graphics/drawable/Drawable;

    move/from16 v14, v32

    .line 207
    invoke-static {v7, v4, v14}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->O:Landroid/graphics/drawable/Drawable;

    move/from16 v15, v36

    .line 208
    invoke-static {v7, v4, v15}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroidx/media3/ui/PlayerControlView;->S:Landroid/graphics/drawable/Drawable;

    .line 209
    invoke-static {v7, v4, v1}, Landroidx/media3/common/util/a1;->a0(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->T:Landroid/graphics/drawable/Drawable;

    .line 210
    sget v1, Landroidx/media3/ui/R$string;->exo_controls_fullscreen_exit_description:I

    .line 211
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->h0:Ljava/lang/String;

    .line 212
    sget v1, Landroidx/media3/ui/R$string;->exo_controls_fullscreen_enter_description:I

    .line 213
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->i0:Ljava/lang/String;

    .line 214
    sget v1, Landroidx/media3/ui/R$string;->exo_controls_repeat_off_description:I

    .line 215
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->P:Ljava/lang/String;

    .line 216
    sget v1, Landroidx/media3/ui/R$string;->exo_controls_repeat_one_description:I

    .line 217
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->Q:Ljava/lang/String;

    .line 218
    sget v1, Landroidx/media3/ui/R$string;->exo_controls_repeat_all_description:I

    .line 219
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->R:Ljava/lang/String;

    .line 220
    sget v1, Landroidx/media3/ui/R$string;->exo_controls_shuffle_on_description:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->W:Ljava/lang/String;

    .line 221
    sget v1, Landroidx/media3/ui/R$string;->exo_controls_shuffle_off_description:I

    .line 222
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/media3/ui/PlayerControlView;->a0:Ljava/lang/String;

    .line 223
    sget v1, Landroidx/media3/ui/R$id;->exo_bottom_bar:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    .line 224
    invoke-virtual {v0, v1, v3}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    .line 225
    iget-object v1, v2, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    invoke-virtual {v0, v1, v11}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    .line 226
    iget-object v1, v2, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    move/from16 v4, v16

    invoke-virtual {v0, v1, v4}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    move-object/from16 v4, p3

    move/from16 v1, v17

    .line 227
    invoke-virtual {v0, v4, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    move-object/from16 v13, p2

    move/from16 v1, v22

    .line 228
    invoke-virtual {v0, v13, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    move/from16 v1, v33

    .line 229
    invoke-virtual {v0, v6, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    move/from16 v1, v34

    move-object/from16 v4, v40

    .line 230
    invoke-virtual {v0, v4, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    move-object/from16 v10, v18

    move/from16 v1, v35

    .line 231
    invoke-virtual {v0, v10, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    .line 232
    iget v1, v2, Landroidx/media3/ui/PlayerControlView;->t0:I

    if-eqz v1, :cond_15

    move v12, v3

    :cond_15
    move-object/from16 v3, p4

    invoke-virtual {v0, v3, v12}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    .line 233
    new-instance v0, Landroidx/media3/ui/l;

    invoke-direct {v0, v2}, Landroidx/media3/ui/l;-><init>(Landroidx/media3/ui/PlayerControlView;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic A(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->g:Landroidx/media3/ui/PlayerControlView$e;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->B:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->i:Landroidx/media3/ui/PlayerControlView$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic E(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$j;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic F(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic G(Landroidx/media3/ui/PlayerControlView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->c0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic H(Landroidx/media3/ui/PlayerControlView;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->setPlaybackSpeed(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic I(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/PopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic J(Landroidx/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->b0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic K(Landroidx/media3/ui/PlayerControlView;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->c0:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic L(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->d0:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic M(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->e0:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->o0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic O(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->s0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->t0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic R(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static S(Landroidx/media3/common/a0;Landroidx/media3/common/e0$c;)Z
    .locals 8

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroidx/media3/common/a0;->i(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-interface {p0}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Landroidx/media3/common/e0;->p()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-le v0, v2, :cond_4

    .line 21
    .line 22
    const/16 v3, 0x64

    .line 23
    .line 24
    if-le v0, v3, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v3, v1

    .line 28
    :goto_0
    if-ge v3, v0, :cond_3

    .line 29
    .line 30
    invoke-virtual {p0, v3, p1}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    iget-wide v4, v4, Landroidx/media3/common/e0$c;->m:J

    .line 35
    .line 36
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    cmp-long v4, v4, v6

    .line 42
    .line 43
    if-nez v4, :cond_2

    .line 44
    .line 45
    return v1

    .line 46
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    return v2

    .line 50
    :cond_4
    :goto_1
    return v1
.end method

.method private T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->r0()V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Z

    .line 11
    .line 12
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->z0:Z

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

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
    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    .line 32
    .line 33
    sub-int/2addr p1, v0

    .line 34
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

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
    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    .line 42
    .line 43
    sub-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    .line 45
    .line 46
    invoke-virtual {v1, p2, p1, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private U(Landroidx/media3/common/i0;I)Lcom/google/common/collect/ImmutableList;
    .locals 8

    .line 1
    new-instance v0, Lcom/google/common/collect/ImmutableList$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/media3/common/i0;->a()Lcom/google/common/collect/ImmutableList;

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
    check-cast v4, Landroidx/media3/common/i0$a;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroidx/media3/common/i0$a;->d()I

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
    iget v6, v4, Landroidx/media3/common/i0$a;->a:I

    .line 33
    .line 34
    if-ge v5, v6, :cond_3

    .line 35
    .line 36
    invoke-virtual {v4, v5}, Landroidx/media3/common/i0$a;->i(I)Z

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
    invoke-virtual {v4, v5}, Landroidx/media3/common/i0$a;->b(I)Landroidx/media3/common/r;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iget v7, v6, Landroidx/media3/common/r;->e:I

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
    iget-object v7, p0, Landroidx/media3/ui/PlayerControlView;->j:Landroidx/media3/ui/z0;

    .line 55
    .line 56
    invoke-interface {v7, v6}, Landroidx/media3/ui/z0;->a(Landroidx/media3/common/r;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    new-instance v7, Landroidx/media3/ui/PlayerControlView$k;

    .line 61
    .line 62
    invoke-direct {v7, p1, v3, v5, v6}, Landroidx/media3/ui/PlayerControlView$k;-><init>(Landroidx/media3/common/i0;IILjava/lang/String;)V

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

.method private static V(Landroid/content/res/TypedArray;I)I
    .locals 1

    .line 1
    sget v0, Landroidx/media3/ui/R$styleable;->PlayerControlView_repeat_toggle_modes:I

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

.method private W()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$l;->h()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->i:Landroidx/media3/ui/PlayerControlView$b;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$l;->h()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const/16 v1, 0x1e

    .line 16
    .line 17
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->i(I)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 24
    .line 25
    const/16 v1, 0x1d

    .line 26
    .line 27
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->i(I)Z

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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 35
    .line 36
    invoke-interface {v0}, Landroidx/media3/common/a0;->getCurrentTracks()Landroidx/media3/common/i0;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->i:Landroidx/media3/ui/PlayerControlView$b;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-direct {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->U(Landroidx/media3/common/i0;I)Lcom/google/common/collect/ImmutableList;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Landroidx/media3/ui/PlayerControlView$b;->p(Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 51
    .line 52
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroidx/media3/ui/e0;->A(Landroid/view/View;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    invoke-direct {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->U(Landroidx/media3/common/i0;I)Lcom/google/common/collect/ImmutableList;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerControlView$j;->o(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    .line 72
    .line 73
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Landroidx/media3/ui/PlayerControlView$j;->o(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method private static X(Landroid/view/View;Landroid/view/View$OnClickListener;)V
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

.method private static Y(I)Z
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

.method public static synthetic a(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Landroidx/media3/ui/PlayerControlView;->b0(Landroid/view/View;IIIIIIII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private a0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->l0:Z

    .line 2
    .line 3
    xor-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->updateIsFullscreen(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic b(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->n0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b0(Landroid/view/View;IIIIIIII)V
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
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

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
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->r0()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iget-object p3, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

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
    iget p3, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    .line 32
    .line 33
    sub-int p6, p2, p3

    .line 34
    .line 35
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

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
    iget p3, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    .line 43
    .line 44
    sub-int p7, p2, p3

    .line 45
    .line 46
    iget-object p4, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

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

.method public static synthetic c(Landroidx/media3/ui/PlayerControlView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/media3/ui/PlayerControlView;->a0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c0(I)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->g:Landroidx/media3/ui/PlayerControlView$e;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/view/View;

    .line 12
    .line 13
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;->T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x1

    .line 18
    if-ne p1, v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->i:Landroidx/media3/ui/PlayerControlView$b;

    .line 21
    .line 22
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/view/View;

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/view/View;

    .line 29
    .line 30
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;->T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method static synthetic d(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->u0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e(Landroidx/media3/ui/PlayerControlView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->q0:Z

    .line 2
    .line 3
    return p1
.end method

.method private e0(Landroidx/media3/common/a0;J)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->p0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    const/16 v0, 0x11

    .line 6
    .line 7
    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->i(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    const/16 v0, 0xa

    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->i(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    invoke-interface {p1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroidx/media3/common/e0;->p()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroidx/media3/common/e0$c;->d()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    cmp-long v5, p2, v3

    .line 41
    .line 42
    if-gez v5, :cond_0

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_0
    add-int/lit8 v5, v1, -0x1

    .line 46
    .line 47
    if-ne v2, v5, :cond_1

    .line 48
    .line 49
    move-wide p2, v3

    .line 50
    :goto_1
    invoke-interface {p1, v2, p2, p3}, Landroidx/media3/common/a0;->seekTo(IJ)V

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_1
    sub-long/2addr p2, v3

    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 v0, 0x5

    .line 59
    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->i(I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-interface {p1, p2, p3}, Landroidx/media3/common/a0;->seekTo(J)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_2
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->n0()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method static synthetic f(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Landroidx/media3/ui/PlayerControlView;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->F:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    return-object p0
.end method

.method private g0(ZLandroid/view/View;)V
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
    iget p1, p0, Landroidx/media3/ui/PlayerControlView;->U:F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    iget p1, p0, Landroidx/media3/ui/PlayerControlView;->V:F

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static synthetic h(Landroidx/media3/ui/PlayerControlView;)Ljava/util/Formatter;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->G:Ljava/util/Formatter;

    .line 2
    .line 3
    return-object p0
.end method

.method private h0()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/a0;->s()J

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
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->r:Landroid/widget/TextView;

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
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroid/content/res/Resources;

    .line 32
    .line 33
    sget v3, Landroidx/media3/ui/R$plurals;->exo_controls_fastforward_by_amount_description:I

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

.method static synthetic i(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    return-object p0
.end method

.method private i0(Landroid/widget/ImageView;Z)V
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
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->f0:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->h0:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->g0:Landroid/graphics/drawable/Drawable;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Landroidx/media3/ui/PlayerControlView;->i0:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method static synthetic j(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/common/a0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 2
    .line 3
    return-object p0
.end method

.method private static j0(Landroid/view/View;Z)V
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

.method static synthetic k(Landroidx/media3/ui/PlayerControlView;Landroidx/media3/common/a0;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/ui/PlayerControlView;->e0(Landroidx/media3/common/a0;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private k0()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->n0:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    .line 21
    .line 22
    invoke-static {v0, v1}, Landroidx/media3/ui/PlayerControlView;->S(Landroidx/media3/common/a0;Landroidx/media3/common/e0$c;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/16 v1, 0xa

    .line 29
    .line 30
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->i(I)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x5

    .line 36
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->i(I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :goto_0
    const/4 v2, 0x7

    .line 41
    invoke-interface {v0, v2}, Landroidx/media3/common/a0;->i(I)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const/16 v3, 0xb

    .line 46
    .line 47
    invoke-interface {v0, v3}, Landroidx/media3/common/a0;->i(I)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/16 v4, 0xc

    .line 52
    .line 53
    invoke-interface {v0, v4}, Landroidx/media3/common/a0;->i(I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const/16 v5, 0x9

    .line 58
    .line 59
    invoke-interface {v0, v5}, Landroidx/media3/common/a0;->i(I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    const/4 v1, 0x0

    .line 65
    move v0, v1

    .line 66
    move v2, v0

    .line 67
    move v3, v2

    .line 68
    move v4, v3

    .line 69
    :goto_1
    if-eqz v3, :cond_3

    .line 70
    .line 71
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->p0()V

    .line 72
    .line 73
    .line 74
    :cond_3
    if-eqz v4, :cond_4

    .line 75
    .line 76
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->h0()V

    .line 77
    .line 78
    .line 79
    :cond_4
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-direct {p0, v2, v5}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    .line 85
    .line 86
    invoke-direct {p0, v3, v2}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 87
    .line 88
    .line 89
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    .line 90
    .line 91
    invoke-direct {p0, v4, v2}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->n:Landroid/widget/ImageView;

    .line 95
    .line 96
    invoke-direct {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    invoke-interface {v0, v1}, Landroidx/media3/ui/y0;->setEnabled(Z)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic l(Landroidx/media3/ui/PlayerControlView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlView;->z0:Z

    .line 2
    .line 3
    return p0
.end method

.method private l0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 17
    .line 18
    iget-boolean v1, p0, Landroidx/media3/ui/PlayerControlView;->o0:Z

    .line 19
    .line 20
    invoke-static {v0, v1}, Landroidx/media3/common/util/a1;->l1(Landroidx/media3/common/a0;Z)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->K:Landroid/graphics/drawable/Drawable;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->L:Landroid/graphics/drawable/Drawable;

    .line 30
    .line 31
    :goto_0
    if-eqz v0, :cond_2

    .line 32
    .line 33
    sget v0, Landroidx/media3/ui/R$string;->exo_controls_play_description:I

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    sget v0, Landroidx/media3/ui/R$string;->exo_controls_pause_description:I

    .line 37
    .line 38
    :goto_1
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    .line 39
    .line 40
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    .line 44
    .line 45
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroid/content/res/Resources;

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 55
    .line 56
    invoke-static {v0}, Landroidx/media3/common/util/a1;->k1(Landroidx/media3/common/a0;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic m(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->n:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private m0()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->g:Landroidx/media3/ui/PlayerControlView$e;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v0, v0, Landroidx/media3/common/z;->a:F

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroidx/media3/ui/PlayerControlView$e;->l(F)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->f:Landroidx/media3/ui/PlayerControlView$h;

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->g:Landroidx/media3/ui/PlayerControlView$e;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/media3/ui/PlayerControlView$e;->h()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2, v1}, Landroidx/media3/ui/PlayerControlView$h;->j(ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->q0()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method static synthetic n(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private n0()V
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->i(I)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-wide v1, p0, Landroidx/media3/ui/PlayerControlView;->y0:J

    .line 26
    .line 27
    invoke-interface {v0}, Landroidx/media3/common/a0;->getContentPosition()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    add-long/2addr v1, v3

    .line 32
    iget-wide v3, p0, Landroidx/media3/ui/PlayerControlView;->y0:J

    .line 33
    .line 34
    invoke-interface {v0}, Landroidx/media3/common/a0;->v()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    add-long/2addr v3, v5

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-wide/16 v1, 0x0

    .line 41
    .line 42
    move-wide v3, v1

    .line 43
    :goto_0
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->D:Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz v5, :cond_2

    .line 46
    .line 47
    iget-boolean v6, p0, Landroidx/media3/ui/PlayerControlView;->q0:Z

    .line 48
    .line 49
    if-nez v6, :cond_2

    .line 50
    .line 51
    iget-object v6, p0, Landroidx/media3/ui/PlayerControlView;->F:Ljava/lang/StringBuilder;

    .line 52
    .line 53
    iget-object v7, p0, Landroidx/media3/ui/PlayerControlView;->G:Ljava/util/Formatter;

    .line 54
    .line 55
    invoke-static {v6, v7, v1, v2}, Landroidx/media3/common/util/a1;->o0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    .line 63
    .line 64
    if-eqz v5, :cond_3

    .line 65
    .line 66
    invoke-interface {v5, v1, v2}, Landroidx/media3/ui/y0;->setPosition(J)V

    .line 67
    .line 68
    .line 69
    iget-object v5, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    .line 70
    .line 71
    invoke-interface {v5, v3, v4}, Landroidx/media3/ui/y0;->setBufferedPosition(J)V

    .line 72
    .line 73
    .line 74
    :cond_3
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->J:Ljava/lang/Runnable;

    .line 75
    .line 76
    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 77
    .line 78
    .line 79
    const/4 v3, 0x1

    .line 80
    if-nez v0, :cond_4

    .line 81
    .line 82
    move v4, v3

    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackState()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    :goto_1
    const-wide/16 v5, 0x3e8

    .line 89
    .line 90
    if-eqz v0, :cond_7

    .line 91
    .line 92
    invoke-interface {v0}, Landroidx/media3/common/a0;->isPlaying()Z

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    if-eqz v7, :cond_7

    .line 97
    .line 98
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    .line 99
    .line 100
    if-eqz v3, :cond_5

    .line 101
    .line 102
    invoke-interface {v3}, Landroidx/media3/ui/y0;->getPreferredUpdateDelay()J

    .line 103
    .line 104
    .line 105
    move-result-wide v3

    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move-wide v3, v5

    .line 108
    :goto_2
    rem-long/2addr v1, v5

    .line 109
    sub-long v1, v5, v1

    .line 110
    .line 111
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 112
    .line 113
    .line 114
    move-result-wide v1

    .line 115
    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iget v0, v0, Landroidx/media3/common/z;->a:F

    .line 120
    .line 121
    const/4 v3, 0x0

    .line 122
    cmpl-float v3, v0, v3

    .line 123
    .line 124
    if-lez v3, :cond_6

    .line 125
    .line 126
    long-to-float v1, v1

    .line 127
    div-float/2addr v1, v0

    .line 128
    float-to-long v5, v1

    .line 129
    :cond_6
    move-wide v7, v5

    .line 130
    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->s0:I

    .line 131
    .line 132
    int-to-long v9, v0

    .line 133
    const-wide/16 v11, 0x3e8

    .line 134
    .line 135
    invoke-static/range {v7 .. v12}, Landroidx/media3/common/util/a1;->q(JJJ)J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->J:Ljava/lang/Runnable;

    .line 140
    .line 141
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    const/4 v0, 0x4

    .line 146
    if-eq v4, v0, :cond_8

    .line 147
    .line 148
    if-eq v4, v3, :cond_8

    .line 149
    .line 150
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->J:Ljava/lang/Runnable;

    .line 151
    .line 152
    invoke-virtual {p0, v0, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    .line 154
    .line 155
    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic o(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private o0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_7

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_2

    .line 16
    :cond_0
    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->t0:I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, v2, v0}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 26
    .line 27
    if-eqz v0, :cond_6

    .line 28
    .line 29
    const/16 v1, 0xf

    .line 30
    .line 31
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->i(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, v2, v1}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {v0}, Landroidx/media3/common/a0;->getRepeatMode()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    if-eq v0, v2, :cond_4

    .line 51
    .line 52
    const/4 v1, 0x2

    .line 53
    if-eq v0, v1, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 57
    .line 58
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->O:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 64
    .line 65
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->R:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 72
    .line 73
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->N:Landroid/graphics/drawable/Drawable;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 79
    .line 80
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->Q:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 87
    .line 88
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->M:Landroid/graphics/drawable/Drawable;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 94
    .line 95
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->P:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void

    .line 101
    :cond_6
    :goto_1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 102
    .line 103
    invoke-direct {p0, v2, v0}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 107
    .line 108
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->M:Landroid/graphics/drawable/Drawable;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 114
    .line 115
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->P:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    :cond_7
    :goto_2
    return-void
.end method

.method static synthetic p(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method private p0()V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/media3/common/a0;->z()J

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
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->s:Landroid/widget/TextView;

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
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    .line 28
    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->b:Landroid/content/res/Resources;

    .line 32
    .line 33
    sget v3, Landroidx/media3/ui/R$plurals;->exo_controls_rewind_by_amount_description:I

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

.method static synthetic q(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->f:Landroidx/media3/ui/PlayerControlView$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$h;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/view/View;

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method static synthetic r(Landroidx/media3/ui/PlayerControlView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/media3/ui/PlayerControlView;->o0:Z

    .line 2
    .line 3
    return p0
.end method

.method private r0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/recyclerview/widget/RecyclerView;

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
    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    .line 12
    .line 13
    mul-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

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
    iget v1, p0, Landroidx/media3/ui/PlayerControlView;->l:I

    .line 36
    .line 37
    mul-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    sub-int/2addr v0, v1

    .line 40
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->e:Landroidx/recyclerview/widget/RecyclerView;

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
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->k:Landroid/widget/PopupWindow;

    .line 51
    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method static synthetic s(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private s0()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Landroidx/media3/ui/e0;->A(Landroid/view/View;)Z

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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    .line 28
    .line 29
    invoke-direct {p0, v2, v0}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 30
    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_1
    if-eqz v1, :cond_5

    .line 34
    .line 35
    const/16 v0, 0xe

    .line 36
    .line 37
    invoke-interface {v1, v0}, Landroidx/media3/common/a0;->i(I)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_2
    const/4 v0, 0x1

    .line 45
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    .line 46
    .line 47
    invoke-direct {p0, v0, v2}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-interface {v1}, Landroidx/media3/common/a0;->getShuffleModeEnabled()Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_3

    .line 57
    .line 58
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->S:Landroid/graphics/drawable/Drawable;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    iget-object v2, p0, Landroidx/media3/ui/PlayerControlView;->T:Landroid/graphics/drawable/Drawable;

    .line 62
    .line 63
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    .line 67
    .line 68
    invoke-interface {v1}, Landroidx/media3/common/a0;->getShuffleModeEnabled()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->W:Ljava/lang/String;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->a0:Ljava/lang/String;

    .line 78
    .line 79
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    :goto_2
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    .line 84
    .line 85
    invoke-direct {p0, v2, v0}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    .line 89
    .line 90
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->T:Landroid/graphics/drawable/Drawable;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    .line 96
    .line 97
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->a0:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_6
    :goto_3
    return-void
.end method

.method private setPlaybackSpeed(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const/16 v1, 0xd

    .line 6
    .line 7
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->i(I)Z

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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 15
    .line 16
    invoke-interface {v0}, Landroidx/media3/common/a0;->getPlaybackParameters()Landroidx/media3/common/z;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1, p1}, Landroidx/media3/common/z;->b(F)Landroidx/media3/common/z;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {v0, p1}, Landroidx/media3/common/a0;->b(Landroidx/media3/common/z;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic t(Landroidx/media3/ui/PlayerControlView;)I
    .locals 0

    .line 1
    iget p0, p0, Landroidx/media3/ui/PlayerControlView;->t0:I

    .line 2
    .line 3
    return p0
.end method

.method private t0()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->n0:Z

    .line 9
    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    iget-object v2, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    .line 14
    .line 15
    invoke-static {v1, v2}, Landroidx/media3/ui/PlayerControlView;->S(Landroidx/media3/common/a0;Landroidx/media3/common/e0$c;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    move v2, v4

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    const/4 v2, 0x0

    .line 24
    :goto_0
    iput-boolean v2, v0, Landroidx/media3/ui/PlayerControlView;->p0:Z

    .line 25
    .line 26
    const-wide/16 v5, 0x0

    .line 27
    .line 28
    iput-wide v5, v0, Landroidx/media3/ui/PlayerControlView;->y0:J

    .line 29
    .line 30
    const/16 v2, 0x11

    .line 31
    .line 32
    invoke-interface {v1, v2}, Landroidx/media3/common/a0;->i(I)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-interface {v1}, Landroidx/media3/common/a0;->getCurrentTimeline()Landroidx/media3/common/e0;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    sget-object v2, Landroidx/media3/common/e0;->a:Landroidx/media3/common/e0;

    .line 44
    .line 45
    :goto_1
    invoke-virtual {v2}, Landroidx/media3/common/e0;->q()Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    if-nez v7, :cond_f

    .line 55
    .line 56
    invoke-interface {v1}, Landroidx/media3/common/a0;->u()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget-boolean v7, v0, Landroidx/media3/ui/PlayerControlView;->p0:Z

    .line 61
    .line 62
    if-eqz v7, :cond_3

    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    goto :goto_2

    .line 66
    :cond_3
    move v10, v1

    .line 67
    :goto_2
    if-eqz v7, :cond_4

    .line 68
    .line 69
    invoke-virtual {v2}, Landroidx/media3/common/e0;->p()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    sub-int/2addr v7, v4

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    move v7, v1

    .line 76
    :goto_3
    move-wide v11, v5

    .line 77
    const/4 v13, 0x0

    .line 78
    :goto_4
    if-gt v10, v7, :cond_e

    .line 79
    .line 80
    if-ne v10, v1, :cond_5

    .line 81
    .line 82
    invoke-static {v11, v12}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 83
    .line 84
    .line 85
    move-result-wide v14

    .line 86
    iput-wide v14, v0, Landroidx/media3/ui/PlayerControlView;->y0:J

    .line 87
    .line 88
    :cond_5
    iget-object v14, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    .line 89
    .line 90
    invoke-virtual {v2, v10, v14}, Landroidx/media3/common/e0;->n(ILandroidx/media3/common/e0$c;)Landroidx/media3/common/e0$c;

    .line 91
    .line 92
    .line 93
    iget-object v14, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    .line 94
    .line 95
    iget-wide v5, v14, Landroidx/media3/common/e0$c;->m:J

    .line 96
    .line 97
    cmp-long v5, v5, v8

    .line 98
    .line 99
    if-nez v5, :cond_6

    .line 100
    .line 101
    iget-boolean v1, v0, Landroidx/media3/ui/PlayerControlView;->p0:Z

    .line 102
    .line 103
    xor-int/2addr v1, v4

    .line 104
    invoke-static {v1}, Landroidx/media3/common/util/a;->g(Z)V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_9

    .line 108
    .line 109
    :cond_6
    iget v5, v14, Landroidx/media3/common/e0$c;->n:I

    .line 110
    .line 111
    :goto_5
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->I:Landroidx/media3/common/e0$c;

    .line 112
    .line 113
    iget v14, v6, Landroidx/media3/common/e0$c;->o:I

    .line 114
    .line 115
    if-gt v5, v14, :cond_d

    .line 116
    .line 117
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    .line 118
    .line 119
    invoke-virtual {v2, v5, v6}, Landroidx/media3/common/e0;->f(ILandroidx/media3/common/e0$b;)Landroidx/media3/common/e0$b;

    .line 120
    .line 121
    .line 122
    iget-object v6, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    .line 123
    .line 124
    invoke-virtual {v6}, Landroidx/media3/common/e0$b;->p()I

    .line 125
    .line 126
    .line 127
    move-result v6

    .line 128
    iget-object v14, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    .line 129
    .line 130
    invoke-virtual {v14}, Landroidx/media3/common/e0$b;->c()I

    .line 131
    .line 132
    .line 133
    move-result v14

    .line 134
    :goto_6
    if-ge v6, v14, :cond_c

    .line 135
    .line 136
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    .line 137
    .line 138
    invoke-virtual {v4, v6}, Landroidx/media3/common/e0$b;->f(I)J

    .line 139
    .line 140
    .line 141
    move-result-wide v17

    .line 142
    const-wide/high16 v19, -0x8000000000000000L

    .line 143
    .line 144
    cmp-long v4, v17, v19

    .line 145
    .line 146
    if-nez v4, :cond_8

    .line 147
    .line 148
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    .line 149
    .line 150
    iget-wide v3, v4, Landroidx/media3/common/e0$b;->d:J

    .line 151
    .line 152
    cmp-long v17, v3, v8

    .line 153
    .line 154
    if-nez v17, :cond_7

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_7
    move-wide/from16 v17, v3

    .line 158
    .line 159
    :cond_8
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    .line 160
    .line 161
    invoke-virtual {v3}, Landroidx/media3/common/e0$b;->o()J

    .line 162
    .line 163
    .line 164
    move-result-wide v3

    .line 165
    add-long v17, v17, v3

    .line 166
    .line 167
    const-wide/16 v3, 0x0

    .line 168
    .line 169
    cmp-long v15, v17, v3

    .line 170
    .line 171
    if-ltz v15, :cond_b

    .line 172
    .line 173
    iget-object v15, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    .line 174
    .line 175
    array-length v3, v15

    .line 176
    if-ne v13, v3, :cond_a

    .line 177
    .line 178
    array-length v3, v15

    .line 179
    if-nez v3, :cond_9

    .line 180
    .line 181
    const/4 v3, 0x1

    .line 182
    goto :goto_7

    .line 183
    :cond_9
    array-length v3, v15

    .line 184
    mul-int/lit8 v3, v3, 0x2

    .line 185
    .line 186
    :goto_7
    invoke-static {v15, v3}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    iput-object v4, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    .line 191
    .line 192
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    .line 193
    .line 194
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    .line 199
    .line 200
    :cond_a
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    .line 201
    .line 202
    add-long v17, v11, v17

    .line 203
    .line 204
    invoke-static/range {v17 .. v18}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 205
    .line 206
    .line 207
    move-result-wide v15

    .line 208
    aput-wide v15, v3, v13

    .line 209
    .line 210
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    .line 211
    .line 212
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->H:Landroidx/media3/common/e0$b;

    .line 213
    .line 214
    invoke-virtual {v4, v6}, Landroidx/media3/common/e0$b;->q(I)Z

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    aput-boolean v4, v3, v13

    .line 219
    .line 220
    add-int/lit8 v13, v13, 0x1

    .line 221
    .line 222
    :cond_b
    :goto_8
    add-int/lit8 v6, v6, 0x1

    .line 223
    .line 224
    const/4 v4, 0x1

    .line 225
    goto :goto_6

    .line 226
    :cond_c
    add-int/lit8 v5, v5, 0x1

    .line 227
    .line 228
    const/4 v4, 0x1

    .line 229
    goto :goto_5

    .line 230
    :cond_d
    iget-wide v3, v6, Landroidx/media3/common/e0$c;->m:J

    .line 231
    .line 232
    add-long/2addr v11, v3

    .line 233
    add-int/lit8 v10, v10, 0x1

    .line 234
    .line 235
    const/4 v4, 0x1

    .line 236
    const-wide/16 v5, 0x0

    .line 237
    .line 238
    goto/16 :goto_4

    .line 239
    .line 240
    :cond_e
    :goto_9
    move-wide v5, v11

    .line 241
    goto :goto_b

    .line 242
    :cond_f
    const/16 v2, 0x10

    .line 243
    .line 244
    invoke-interface {v1, v2}, Landroidx/media3/common/a0;->i(I)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-eqz v2, :cond_10

    .line 249
    .line 250
    invoke-interface {v1}, Landroidx/media3/common/a0;->Q()J

    .line 251
    .line 252
    .line 253
    move-result-wide v1

    .line 254
    cmp-long v3, v1, v8

    .line 255
    .line 256
    if-eqz v3, :cond_10

    .line 257
    .line 258
    invoke-static {v1, v2}, Landroidx/media3/common/util/a1;->R0(J)J

    .line 259
    .line 260
    .line 261
    move-result-wide v5

    .line 262
    :goto_a
    const/4 v13, 0x0

    .line 263
    goto :goto_b

    .line 264
    :cond_10
    const-wide/16 v5, 0x0

    .line 265
    .line 266
    goto :goto_a

    .line 267
    :goto_b
    invoke-static {v5, v6}, Landroidx/media3/common/util/a1;->y1(J)J

    .line 268
    .line 269
    .line 270
    move-result-wide v1

    .line 271
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->C:Landroid/widget/TextView;

    .line 272
    .line 273
    if-eqz v3, :cond_11

    .line 274
    .line 275
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->F:Ljava/lang/StringBuilder;

    .line 276
    .line 277
    iget-object v5, v0, Landroidx/media3/ui/PlayerControlView;->G:Ljava/util/Formatter;

    .line 278
    .line 279
    invoke-static {v4, v5, v1, v2}, Landroidx/media3/common/util/a1;->o0(Ljava/lang/StringBuilder;Ljava/util/Formatter;J)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v4

    .line 283
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    :cond_11
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    .line 287
    .line 288
    if-eqz v3, :cond_13

    .line 289
    .line 290
    invoke-interface {v3, v1, v2}, Landroidx/media3/ui/y0;->setDuration(J)V

    .line 291
    .line 292
    .line 293
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->w0:[J

    .line 294
    .line 295
    array-length v1, v1

    .line 296
    add-int v2, v13, v1

    .line 297
    .line 298
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    .line 299
    .line 300
    array-length v4, v3

    .line 301
    if-le v2, v4, :cond_12

    .line 302
    .line 303
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    .line 308
    .line 309
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    .line 310
    .line 311
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    iput-object v3, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    .line 316
    .line 317
    :cond_12
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->w0:[J

    .line 318
    .line 319
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    .line 320
    .line 321
    const/4 v5, 0x0

    .line 322
    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    .line 324
    .line 325
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->x0:[Z

    .line 326
    .line 327
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    .line 328
    .line 329
    invoke-static {v3, v5, v4, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    .line 331
    .line 332
    iget-object v1, v0, Landroidx/media3/ui/PlayerControlView;->E:Landroidx/media3/ui/y0;

    .line 333
    .line 334
    iget-object v3, v0, Landroidx/media3/ui/PlayerControlView;->u0:[J

    .line 335
    .line 336
    iget-object v4, v0, Landroidx/media3/ui/PlayerControlView;->v0:[Z

    .line 337
    .line 338
    invoke-interface {v1, v3, v4, v2}, Landroidx/media3/ui/y0;->setAdGroupTimesMs([J[ZI)V

    .line 339
    .line 340
    .line 341
    :cond_13
    invoke-direct/range {p0 .. p0}, Landroidx/media3/ui/PlayerControlView;->n0()V

    .line 342
    .line 343
    .line 344
    return-void
.end method

.method static synthetic u(Landroidx/media3/ui/PlayerControlView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method private u0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->W()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->h:Landroidx/media3/ui/PlayerControlView$j;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/ui/PlayerControlView$l;->getItemCount()I

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
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    .line 16
    .line 17
    invoke-direct {p0, v0, v1}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->q0()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method static synthetic v(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->z:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w(Landroidx/media3/ui/PlayerControlView;)Landroidx/media3/ui/PlayerControlView$h;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->f:Landroidx/media3/ui/PlayerControlView$h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Landroidx/media3/ui/PlayerControlView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->l0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y(Landroidx/media3/ui/PlayerControlView;Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/media3/ui/PlayerControlView;->T(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z(Landroidx/media3/ui/PlayerControlView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/media3/ui/PlayerControlView;->A:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method Z()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Landroidx/media3/ui/PlayerControlView$m;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-interface {v1, v2}, Landroidx/media3/ui/PlayerControlView$m;->l(I)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method public addVisibilityListener(Landroidx/media3/ui/PlayerControlView$m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Landroidx/media3/common/util/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method d0()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->o:Landroid/widget/ImageView;

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

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroidx/media3/ui/PlayerControlView;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)Z

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
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 6
    .line 7
    if-eqz v1, :cond_9

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/media3/ui/PlayerControlView;->Y(I)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_8

    .line 22
    .line 23
    const/16 v2, 0x5a

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Landroidx/media3/common/a0;->getPlaybackState()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const/4 v0, 0x4

    .line 32
    if-eq p1, v0, :cond_8

    .line 33
    .line 34
    const/16 p1, 0xc

    .line 35
    .line 36
    invoke-interface {v1, p1}, Landroidx/media3/common/a0;->i(I)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_8

    .line 41
    .line 42
    invoke-interface {v1}, Landroidx/media3/common/a0;->w()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/16 v2, 0x59

    .line 47
    .line 48
    if-ne v0, v2, :cond_2

    .line 49
    .line 50
    const/16 v2, 0xb

    .line 51
    .line 52
    invoke-interface {v1, v2}, Landroidx/media3/common/a0;->i(I)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_2

    .line 57
    .line 58
    invoke-interface {v1}, Landroidx/media3/common/a0;->x()V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_8

    .line 67
    .line 68
    const/16 p1, 0x4f

    .line 69
    .line 70
    if-eq v0, p1, :cond_7

    .line 71
    .line 72
    const/16 p1, 0x55

    .line 73
    .line 74
    if-eq v0, p1, :cond_7

    .line 75
    .line 76
    const/16 p1, 0x57

    .line 77
    .line 78
    if-eq v0, p1, :cond_6

    .line 79
    .line 80
    const/16 p1, 0x58

    .line 81
    .line 82
    if-eq v0, p1, :cond_5

    .line 83
    .line 84
    const/16 p1, 0x7e

    .line 85
    .line 86
    if-eq v0, p1, :cond_4

    .line 87
    .line 88
    const/16 p1, 0x7f

    .line 89
    .line 90
    if-eq v0, p1, :cond_3

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-static {v1}, Landroidx/media3/common/util/a1;->v0(Landroidx/media3/common/a0;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    invoke-static {v1}, Landroidx/media3/common/util/a1;->w0(Landroidx/media3/common/a0;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_5
    const/4 p1, 0x7

    .line 102
    invoke-interface {v1, p1}, Landroidx/media3/common/a0;->i(I)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_8

    .line 107
    .line 108
    invoke-interface {v1}, Landroidx/media3/common/a0;->f()V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_6
    const/16 p1, 0x9

    .line 113
    .line 114
    invoke-interface {v1, p1}, Landroidx/media3/common/a0;->i(I)Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_8

    .line 119
    .line 120
    invoke-interface {v1}, Landroidx/media3/common/a0;->n()V

    .line 121
    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_7
    iget-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->o0:Z

    .line 125
    .line 126
    invoke-static {v1, p1}, Landroidx/media3/common/util/a1;->x0(Landroidx/media3/common/a0;Z)Z

    .line 127
    .line 128
    .line 129
    :cond_8
    :goto_0
    const/4 p1, 0x1

    .line 130
    return p1

    .line 131
    :cond_9
    :goto_1
    const/4 p1, 0x0

    .line 132
    return p1
.end method

.method f0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->l0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->o0()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->s0()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->u0()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->m0()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->t0()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public getPlayer()Landroidx/media3/common/a0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRepeatToggleModes()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->t0:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowShuffleButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/ui/e0;->A(Landroid/view/View;)Z

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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/ui/e0;->A(Landroid/view/View;)Z

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
    iget v0, p0, Landroidx/media3/ui/PlayerControlView;->r0:I

    .line 2
    .line 3
    return v0
.end method

.method public getShowVrButton()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroidx/media3/ui/e0;->A(Landroid/view/View;)Z

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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/ui/e0;->C()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public hideImmediately()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/ui/e0;->F()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isAnimationEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/ui/e0;->I()Z

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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/ui/e0;->J()Z

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

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/ui/e0;->P()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 19
    .line 20
    invoke-virtual {v0}, Landroidx/media3/ui/e0;->X()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->f0()V

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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/media3/ui/e0;->Q()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->m0:Z

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->J:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroidx/media3/ui/e0;->W()V

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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

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
    invoke-virtual/range {v0 .. v5}, Landroidx/media3/ui/e0;->R(ZIIII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public removeVisibilityListener(Landroidx/media3/ui/PlayerControlView$m;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/media3/ui/e0;->Y(Z)V

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
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->w0:[J

    .line 7
    .line 8
    new-array p1, v0, [Z

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->x0:[Z

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
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->w0:[J

    .line 28
    .line 29
    iput-object p2, p0, Landroidx/media3/ui/PlayerControlView;->x0:[Z

    .line 30
    .line 31
    :goto_0
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->t0()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public setOnFullScreenModeChangedListener(Landroidx/media3/ui/PlayerControlView$d;)V
    .locals 4
    .param p1    # Landroidx/media3/ui/PlayerControlView$d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->k0:Landroidx/media3/ui/PlayerControlView$d;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/widget/ImageView;

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
    invoke-static {v0, v3}, Landroidx/media3/ui/PlayerControlView;->j0(Landroid/view/View;Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/widget/ImageView;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    move v1, v2

    .line 20
    :cond_1
    invoke-static {v0, v1}, Landroidx/media3/ui/PlayerControlView;->j0(Landroid/view/View;Z)V

    .line 21
    .line 22
    .line 23
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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

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
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->c:Landroidx/media3/ui/PlayerControlView$c;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->L(Landroidx/media3/common/a0$d;)V

    .line 45
    .line 46
    .line 47
    :cond_4
    iput-object p1, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 48
    .line 49
    if-eqz p1, :cond_5

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->c:Landroidx/media3/ui/PlayerControlView$c;

    .line 52
    .line 53
    invoke-interface {p1, v0}, Landroidx/media3/common/a0;->M(Landroidx/media3/common/a0$d;)V

    .line 54
    .line 55
    .line 56
    :cond_5
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->f0()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public setProgressUpdateListener(Landroidx/media3/ui/PlayerControlView$f;)V
    .locals 0
    .param p1    # Landroidx/media3/ui/PlayerControlView$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public setRepeatToggleModes(I)V
    .locals 4

    .line 1
    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->t0:I

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    const/16 v3, 0xf

    .line 10
    .line 11
    invoke-interface {v0, v3}, Landroidx/media3/common/a0;->i(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 18
    .line 19
    invoke-interface {v0}, Landroidx/media3/common/a0;->getRepeatMode()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v3, 0x2

    .line 34
    if-ne p1, v2, :cond_1

    .line 35
    .line 36
    if-ne v0, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 39
    .line 40
    invoke-interface {v0, v2}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    if-ne p1, v3, :cond_2

    .line 45
    .line 46
    if-ne v0, v2, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->j0:Landroidx/media3/common/a0;

    .line 49
    .line 50
    invoke-interface {v0, v3}, Landroidx/media3/common/a0;->setRepeatMode(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 54
    .line 55
    iget-object v3, p0, Landroidx/media3/ui/PlayerControlView;->t:Landroid/widget/ImageView;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    move v1, v2

    .line 60
    :cond_3
    invoke-virtual {v0, v3, v1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    .line 61
    .line 62
    .line 63
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->o0()V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public setShowFastForwardButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->p:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowMultiWindowTimeBar(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->n0:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->t0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowNextButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->n:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowPlayButtonIfPlaybackIsSuppressed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->o0:Z

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->l0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setShowPreviousButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->m:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowRewindButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->q:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->k0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowShuffleButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->u:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Landroidx/media3/ui/PlayerControlView;->s0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setShowSubtitleButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->w:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setShowTimeoutMs(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->r0:I

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/media3/ui/PlayerControlView;->isFullyVisible()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/media3/ui/e0;->X()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setShowVrButton(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Landroidx/media3/ui/e0;->Z(Landroid/view/View;Z)V

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
    invoke-static {p1, v0, v1}, Landroidx/media3/common/util/a1;->p(III)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput p1, p0, Landroidx/media3/ui/PlayerControlView;->s0:I

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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

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
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->v:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-direct {p0, p1, v0}, Landroidx/media3/ui/PlayerControlView;->g0(ZLandroid/view/View;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->a:Landroidx/media3/ui/e0;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/media3/ui/e0;->c0()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateIsFullscreen(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/media3/ui/PlayerControlView;->l0:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Landroidx/media3/ui/PlayerControlView;->l0:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->x:Landroid/widget/ImageView;

    .line 9
    .line 10
    invoke-direct {p0, v0, p1}, Landroidx/media3/ui/PlayerControlView;->i0(Landroid/widget/ImageView;Z)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->y:Landroid/widget/ImageView;

    .line 14
    .line 15
    invoke-direct {p0, v0, p1}, Landroidx/media3/ui/PlayerControlView;->i0(Landroid/widget/ImageView;Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroidx/media3/ui/PlayerControlView;->k0:Landroidx/media3/ui/PlayerControlView$d;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0, p1}, Landroidx/media3/ui/PlayerControlView$d;->p(Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method
