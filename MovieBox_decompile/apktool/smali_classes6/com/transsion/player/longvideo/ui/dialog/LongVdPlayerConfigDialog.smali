.class public final Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0007\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0082@\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJC\u0010\u0019\u001a\u00020\t2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u0012\u001a\u00020\u00112\u0010\u0008\u0002\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0018\u001a\u00020\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\t2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ!\u0010!\u001a\u00020\t2\u0006\u0010 \u001a\u00020\u001f2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016\u00a2\u0006\u0004\u0008!\u0010\"R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R\u0018\u0010\u0010\u001a\u0004\u0018\u00010\u000c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(R\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u001e\u0010\u0014\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u001b\u00102\u001a\u00020-8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008.\u0010/\u001a\u0004\u00080\u00101R\u001a\u00107\u001a\u0008\u0012\u0004\u0012\u000204038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00085\u00106R\u001c\u00109\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u0010,R0\u0010?\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020;0:j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020;`<8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008=\u0010>R\u0018\u0010B\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008@\u0010A\u00a8\u0006C"
    }
    d2 = {
        "Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "Lln/b;",
        "config",
        "",
        "w0",
        "(Lln/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "",
        "A0",
        "(Lln/b;)V",
        "",
        "dialogName",
        "u0",
        "(Ljava/lang/String;)V",
        "pageName",
        "Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;",
        "configType",
        "",
        "dataList",
        "Lln/a;",
        "longVdPlayerBean",
        "Lcom/transsion/player/longvideo/ui/LongVodPlayerView;",
        "longVodPlayerView",
        "B0",
        "(Ljava/lang/String;Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;Ljava/util/List;Lln/a;Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "c",
        "Lcom/transsion/player/longvideo/ui/LongVodPlayerView;",
        "d",
        "Lln/a;",
        "e",
        "Ljava/lang/String;",
        "f",
        "Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;",
        "g",
        "Ljava/util/List;",
        "Lcom/transsion/player/longvideo/ui/dialog/a;",
        "h",
        "Lkotlin/Lazy;",
        "v0",
        "()Lcom/transsion/player/longvideo/ui/dialog/a;",
        "configViewModel",
        "",
        "",
        "i",
        "[Ljava/lang/Float;",
        "speedConfigs",
        "j",
        "configs",
        "Ljava/util/HashMap;",
        "Lcom/transsion/player/longvideo/member/LongVodResolutionMemberView;",
        "Lkotlin/collections/HashMap;",
        "k",
        "Ljava/util/HashMap;",
        "itemViewMap",
        "l",
        "Lln/b;",
        "curConfig",
        "LongVideo_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
.end annotation


# instance fields
.field private c:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

.field private d:Lln/a;

.field private e:Ljava/lang/String;

.field private f:Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

.field private g:Ljava/util/List;

.field private final h:Lkotlin/Lazy;

.field private final i:[Ljava/lang/Float;

.field private j:Ljava/util/List;

.field private final k:Ljava/util/HashMap;

.field private l:Lln/b;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    sget v0, Lcom/transsion/player/longvideo/R$layout;->long_vod_dialog_player_config:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;->BITRATE:Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->f:Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

    .line 9
    .line 10
    const-class v0, Lcom/transsion/player/longvideo/ui/dialog/a;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    new-instance v1, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$special$$inlined$activityViewModels$default$1;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    new-instance v2, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$special$$inlined$activityViewModels$default$2;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->h:Lkotlin/Lazy;

    .line 31
    .line 32
    const/high16 v0, 0x3f000000    # 0.5f

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const/high16 v1, 0x3f400000    # 0.75f

    .line 39
    .line 40
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/high16 v2, 0x3f800000    # 1.0f

    .line 45
    .line 46
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/high16 v3, 0x3fa00000    # 1.25f

    .line 51
    .line 52
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 57
    .line 58
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    const/high16 v5, 0x3fe00000    # 1.75f

    .line 63
    .line 64
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const/high16 v6, 0x40000000    # 2.0f

    .line 69
    .line 70
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const/4 v7, 0x7

    .line 75
    new-array v7, v7, [Ljava/lang/Float;

    .line 76
    .line 77
    const/4 v8, 0x0

    .line 78
    aput-object v0, v7, v8

    .line 79
    .line 80
    const/4 v0, 0x1

    .line 81
    aput-object v1, v7, v0

    .line 82
    .line 83
    const/4 v0, 0x2

    .line 84
    aput-object v2, v7, v0

    .line 85
    .line 86
    const/4 v0, 0x3

    .line 87
    aput-object v3, v7, v0

    .line 88
    .line 89
    const/4 v0, 0x4

    .line 90
    aput-object v4, v7, v0

    .line 91
    .line 92
    const/4 v0, 0x5

    .line 93
    aput-object v5, v7, v0

    .line 94
    .line 95
    const/4 v0, 0x6

    .line 96
    aput-object v6, v7, v0

    .line 97
    .line 98
    iput-object v7, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->i:[Ljava/lang/Float;

    .line 99
    .line 100
    new-instance v0, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->j:Ljava/util/List;

    .line 106
    .line 107
    new-instance v0, Ljava/util/HashMap;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    .line 111
    .line 112
    iput-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->k:Ljava/util/HashMap;

    .line 113
    .line 114
    return-void
.end method

.method private final A0(Lln/b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lln/b;->e()Z

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
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->k:Ljava/util/HashMap;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->l:Lln/b;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberView;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberView;->setTextColor(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->k:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberView;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberView;->setGradientColorsV2(Lln/b;)V

    .line 35
    .line 36
    .line 37
    :cond_2
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->l:Lln/b;

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->v0()Lcom/transsion/player/longvideo/ui/dialog/a;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, p1}, Lcom/transsion/player/longvideo/ui/dialog/a;->c(Lln/b;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lln/b;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->z0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lln/b;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic o0(Lln/b;)Ljava/lang/Comparable;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->y0(Lln/b;)Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p0(Lln/b;)Ljava/lang/Comparable;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->x0(Lln/b;)Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;)Lln/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->d:Lln/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lln/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->w0(Lln/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lln/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->A0(Lln/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final u0(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "dialog_name"

    .line 7
    .line 8
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->e:Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 16
    .line 17
    invoke-virtual {v1, p1, v0}, Lqi/h;->p(Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method private final v0()Lcom/transsion/player/longvideo/ui/dialog/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->h:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/player/longvideo/ui/dialog/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final w0(Lln/b;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    .line 1
    instance-of v0, p2, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$1;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p1, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p1, Lln/b;

    .line 42
    .line 43
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->f:Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

    .line 59
    .line 60
    sget-object v2, Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;->BITRATE:Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

    .line 61
    .line 62
    if-eq p2, v2, :cond_3

    .line 63
    .line 64
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1

    .line 69
    :cond_3
    sget-object p2, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->a:Lcom/transsion/player/longvideo/member/ResolutionMemberManager;

    .line 70
    .line 71
    iget-object v2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->d:Lln/a;

    .line 72
    .line 73
    iput-object p1, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    iput v4, v0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$isIntercept$1;->label:I

    .line 76
    .line 77
    invoke-virtual {p2, v2, v0}, Lcom/transsion/player/longvideo/member/ResolutionMemberManager;->f(Lln/a;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    if-ne p2, v1, :cond_4

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    sget-object v0, Lcom/transsion/player/longvideo/member/k;->a:Lcom/transsion/player/longvideo/member/k;

    .line 91
    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v2, "LongVdPlayerConfigDialog --> \u5206\u8fa8\u7387\u9762\u677f\u70b9\u51fb --> isIntercept() --> isUnlock = "

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/transsion/player/longvideo/member/k;->a(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    if-eqz p2, :cond_5

    .line 113
    .line 114
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    return-object p1

    .line 119
    :cond_5
    iget-object p2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->c:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 120
    .line 121
    if-eqz p2, :cond_6

    .line 122
    .line 123
    invoke-virtual {p2, p1}, Lcom/transsion/player/longvideo/ui/LongVodPlayerView;->showResolutionIntercept(Lln/b;)V

    .line 124
    .line 125
    .line 126
    :cond_6
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1
.end method

.method private static final x0(Lln/b;)Ljava/lang/Comparable;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lln/b;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static final y0(Lln/b;)Ljava/lang/Comparable;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lln/b;->d()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final z0(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lln/b;Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    instance-of v0, p2, Landroidx/appcompat/app/AppCompatActivity;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p2, v1

    .line 14
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-static {p2}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    new-instance v5, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;

    .line 23
    .line 24
    invoke-direct {v5, p1, p0, v1}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$onViewCreated$1$1$1;-><init>(Lln/b;Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lkotlin/coroutines/Continuation;)V

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x3

    .line 28
    const/4 v7, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method


# virtual methods
.method public final B0(Ljava/lang/String;Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;Ljava/util/List;Lln/a;Lcom/transsion/player/longvideo/ui/LongVodPlayerView;)V
    .locals 1

    .line 1
    const-string v0, "configType"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "longVodPlayerView"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->e:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->f:Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->g:Ljava/util/List;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->d:Lln/a;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->c:Lcom/transsion/player/longvideo/ui/LongVodPlayerView;

    .line 20
    .line 21
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/transsnet/downloader/R$style;->DownloadBottomDialogTheme:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-virtual {p0, v2, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->f:Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

    .line 13
    .line 14
    sget-object v3, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog$a;->a:[I

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    aget p1, v3, p1

    .line 21
    .line 22
    if-eq p1, v1, :cond_3

    .line 23
    .line 24
    if-ne p1, v0, :cond_2

    .line 25
    .line 26
    const-string p1, "dialog_stream_resolution"

    .line 27
    .line 28
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->u0(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->g:Ljava/util/List;

    .line 32
    .line 33
    if-eqz p1, :cond_6

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lln/b;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->j:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3}, Lln/b;->e()Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_0

    .line 61
    .line 62
    iput-object v3, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->l:Lln/b;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->j:Ljava/util/List;

    .line 66
    .line 67
    new-instance v3, Lcom/transsion/player/longvideo/ui/dialog/c;

    .line 68
    .line 69
    invoke-direct {v3}, Lcom/transsion/player/longvideo/ui/dialog/c;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v4, Lcom/transsion/player/longvideo/ui/dialog/d;

    .line 73
    .line 74
    invoke-direct {v4}, Lcom/transsion/player/longvideo/ui/dialog/d;-><init>()V

    .line 75
    .line 76
    .line 77
    new-array v0, v0, [Lkotlin/jvm/functions/Function1;

    .line 78
    .line 79
    aput-object v3, v0, v2

    .line 80
    .line 81
    aput-object v4, v0, v1

    .line 82
    .line 83
    invoke-static {v0}, Lkotlin/comparisons/ComparisonsKt;->b([Lkotlin/jvm/functions/Function1;)Ljava/util/Comparator;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 92
    .line 93
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 94
    .line 95
    .line 96
    throw p1

    .line 97
    :cond_3
    const-string p1, "dialog_stream_speed"

    .line 98
    .line 99
    invoke-direct {p0, p1}, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->u0(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lcom/transsion/player/longvideo/helper/v;->a:Lcom/transsion/player/longvideo/helper/v;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/transsion/player/longvideo/helper/v;->a()F

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->j:Ljava/util/List;

    .line 109
    .line 110
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->i:[Ljava/lang/Float;

    .line 114
    .line 115
    array-length v3, v0

    .line 116
    move v4, v2

    .line 117
    :goto_1
    if-ge v4, v3, :cond_6

    .line 118
    .line 119
    aget-object v5, v0, v4

    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    new-instance v6, Lln/b;

    .line 126
    .line 127
    cmpg-float v7, p1, v5

    .line 128
    .line 129
    if-nez v7, :cond_4

    .line 130
    .line 131
    move v7, v1

    .line 132
    goto :goto_2

    .line 133
    :cond_4
    move v7, v2

    .line 134
    :goto_2
    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    sget-object v8, Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;->SPEED:Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;

    .line 139
    .line 140
    invoke-direct {v6, v7, v5, v8}, Lln/b;-><init>(ZLjava/lang/String;Lcom/transsion/player/longvideo/constants/LongVodPlayerConfigType;)V

    .line 141
    .line 142
    .line 143
    iget-object v5, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->j:Ljava/util/List;

    .line 144
    .line 145
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6}, Lln/b;->e()Z

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    if-eqz v5, :cond_5

    .line 153
    .line 154
    iput-object v6, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->l:Lln/b;

    .line 155
    .line 156
    :cond_5
    add-int/2addr v4, v1

    .line 157
    goto :goto_1

    .line 158
    :cond_6
    :goto_3
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    sget p2, Lcom/transsion/player/longvideo/R$id;->ll_root:I

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Landroid/widget/LinearLayout;

    .line 16
    .line 17
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    .line 19
    const/high16 v1, 0x42400000    # 48.0f

    .line 20
    .line 21
    invoke-static {v1}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, -0x1

    .line 26
    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->j:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    const/4 v4, 0x0

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lln/b;

    .line 47
    .line 48
    new-instance v5, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberView;

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    const-string v7, "getContext(...)"

    .line 55
    .line 56
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const/4 v7, 0x2

    .line 60
    invoke-direct {v5, v6, v4, v7, v4}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 61
    .line 62
    .line 63
    iget-object v4, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->d:Lln/a;

    .line 64
    .line 65
    invoke-virtual {v5, v3, v4}, Lcom/transsion/player/longvideo/member/LongVodResolutionMemberView;->setConfig(Lln/b;Lln/a;)V

    .line 66
    .line 67
    .line 68
    new-instance v4, Lcom/transsion/player/longvideo/ui/dialog/b;

    .line 69
    .line 70
    invoke-direct {v4, p0, v3}, Lcom/transsion/player/longvideo/ui/dialog/b;-><init>(Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;Lln/b;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    .line 78
    .line 79
    iget-object v4, p0, Lcom/transsion/player/longvideo/ui/dialog/LongVdPlayerConfigDialog;->k:Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    if-eqz p1, :cond_3

    .line 96
    .line 97
    invoke-static {}, Luf/c;->f()Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_1

    .line 102
    .line 103
    sget p2, Lcom/tn/lib/widget/R$style;->ActionSheetDialogLeft:I

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_1
    sget p2, Lcom/tn/lib/widget/R$style;->ActionSheetDialogRight:I

    .line 107
    .line 108
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 109
    .line 110
    .line 111
    invoke-static {}, Luf/c;->f()Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_2

    .line 116
    .line 117
    const p2, 0x800003

    .line 118
    .line 119
    .line 120
    goto :goto_2

    .line 121
    :cond_2
    const p2, 0x800005

    .line 122
    .line 123
    .line 124
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/Window;->setGravity(I)V

    .line 125
    .line 126
    .line 127
    const/4 p2, 0x0

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/Window;->setDimAmount(F)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    .line 133
    .line 134
    const/high16 p2, 0x430c0000    # 140.0f

    .line 135
    .line 136
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    invoke-virtual {p1, p2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 141
    .line 142
    .line 143
    invoke-static {p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/DialogFragment;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    sget-object p2, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 148
    .line 149
    invoke-virtual {p1, p2}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 153
    .line 154
    .line 155
    :cond_3
    return-void
.end method
