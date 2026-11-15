.class public final Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;
.super Lcom/transsion/baseui/fragment/BaseFragment;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/transsion/baseui/fragment/BaseFragment<",
        "Liu/g;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0005\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0017\u0010\t\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u000f\u0010\r\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u000f\u0010\u000e\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u000f\u0010\u000f\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u000f\u0010\u0004J\u000f\u0010\u0010\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u0017\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J!\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ!\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u00152\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0004\u0008\u001b\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u0004J\u000f\u0010\u001d\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u0004R\u001b\u0010#\u001a\u00020\u001e8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"R\u001b\u0010(\u001a\u00020$8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008%\u0010 \u001a\u0004\u0008&\u0010\'R\u001a\u0010-\u001a\u0008\u0012\u0004\u0012\u00020*0)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u001c\u00101\u001a\u0008\u0012\u0004\u0012\u00020/0.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010,R\u001c\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u00070.8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u0010,R\u0016\u00106\u001a\u00020\u00078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00084\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R0\u0010B\u001a\u0010\u0012\u0004\u0012\u00020*\u0012\u0004\u0012\u00020\u0005\u0018\u00010;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?\"\u0004\u0008@\u0010AR0\u0010F\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0005\u0018\u00010;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010=\u001a\u0004\u0008D\u0010?\"\u0004\u0008E\u0010AR*\u0010N\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010G8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008H\u0010I\u001a\u0004\u0008J\u0010K\"\u0004\u0008L\u0010MR*\u0010R\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010G8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010I\u001a\u0004\u0008P\u0010K\"\u0004\u0008Q\u0010MR0\u0010W\u001a\u0010\u0012\u0004\u0012\u00020S\u0012\u0004\u0012\u00020\u0005\u0018\u00010;8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010=\u001a\u0004\u0008U\u0010?\"\u0004\u0008V\u0010A\u00a8\u0006X"
    }
    d2 = {
        "Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;",
        "Lcom/transsion/baseui/fragment/BaseFragment;",
        "Liu/g;",
        "<init>",
        "()V",
        "",
        "u0",
        "",
        "index",
        "J0",
        "(I)V",
        "D0",
        "s0",
        "B0",
        "q0",
        "o0",
        "k0",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "m0",
        "(Landroid/view/LayoutInflater;)Liu/g;",
        "Landroid/view/View;",
        "view",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "initView",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "initData",
        "initListener",
        "lazyLoadData",
        "Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
        "a",
        "Lkotlin/Lazy;",
        "n0",
        "()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;",
        "viewModel",
        "Lcom/transsion/ugcvideodetail/hepler/subtitle/a;",
        "b",
        "l0",
        "()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;",
        "subtitleViewModel",
        "",
        "",
        "c",
        "Ljava/util/List;",
        "speedOptions",
        "",
        "",
        "d",
        "qualityOptions",
        "e",
        "qualityOptionsOrigin",
        "f",
        "I",
        "selectedQualityIndex",
        "Lcom/transsion/ugcvideodetail/adapter/d;",
        "g",
        "Lcom/transsion/ugcvideodetail/adapter/d;",
        "qualityAdapter",
        "Lkotlin/Function1;",
        "h",
        "Lkotlin/jvm/functions/Function1;",
        "getOnSpeedSelected",
        "()Lkotlin/jvm/functions/Function1;",
        "H0",
        "(Lkotlin/jvm/functions/Function1;)V",
        "onSpeedSelected",
        "i",
        "getOnQualitySelected",
        "G0",
        "onQualitySelected",
        "Lkotlin/Function0;",
        "j",
        "Lkotlin/jvm/functions/Function0;",
        "getOnSubtitleClick",
        "()Lkotlin/jvm/functions/Function0;",
        "I0",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onSubtitleClick",
        "k",
        "getOnCleanModeClick",
        "F0",
        "onCleanModeClick",
        "",
        "l",
        "getOnAutoplayChanged",
        "E0",
        "onAutoplayChanged",
        "UGCVideoDetail_psRelease"
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
.field private final a:Lkotlin/Lazy;

.field private final b:Lkotlin/Lazy;

.field private final c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:I

.field private g:Lcom/transsion/ugcvideodetail/adapter/d;

.field private h:Lkotlin/jvm/functions/Function1;

.field private i:Lkotlin/jvm/functions/Function1;

.field private j:Lkotlin/jvm/functions/Function0;

.field private k:Lkotlin/jvm/functions/Function0;

.field private l:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/fragment/BaseFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->a:Lkotlin/Lazy;

    .line 25
    .line 26
    const-class v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$3;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$3;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 35
    .line 36
    .line 37
    new-instance v2, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$4;

    .line 38
    .line 39
    invoke-direct {v2, p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment$special$$inlined$activityViewModels$default$4;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 40
    .line 41
    .line 42
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->b:Lkotlin/Lazy;

    .line 47
    .line 48
    const/high16 v0, 0x3f000000    # 0.5f

    .line 49
    .line 50
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/high16 v1, 0x3f400000    # 0.75f

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/high16 v2, 0x3f800000    # 1.0f

    .line 61
    .line 62
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/high16 v3, 0x3fa00000    # 1.25f

    .line 67
    .line 68
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 73
    .line 74
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    const/high16 v5, 0x40000000    # 2.0f

    .line 79
    .line 80
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    const/4 v6, 0x6

    .line 85
    new-array v6, v6, [Ljava/lang/Float;

    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    aput-object v0, v6, v7

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    aput-object v1, v6, v0

    .line 92
    .line 93
    const/4 v0, 0x2

    .line 94
    aput-object v2, v6, v0

    .line 95
    .line 96
    const/4 v0, 0x3

    .line 97
    aput-object v3, v6, v0

    .line 98
    .line 99
    const/4 v0, 0x4

    .line 100
    aput-object v4, v6, v0

    .line 101
    .line 102
    const/4 v0, 0x5

    .line 103
    aput-object v5, v6, v0

    .line 104
    .line 105
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->c:Ljava/util/List;

    .line 110
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->d:Ljava/util/List;

    .line 117
    .line 118
    new-instance v0, Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->e:Ljava/util/List;

    .line 124
    .line 125
    return-void
.end method

.method private static final A0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x5

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->D0(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final B0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Liu/g;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Liu/g;->f:Lcom/noober/background/view/BLConstraintLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/d0;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/d0;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static final C0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 2
    .line 3
    const-string v0, "dialog_name"

    .line 4
    .line 5
    const-string v1, "half_screen"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "module_name"

    .line 12
    .line 13
    const-string v2, "subtitle"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [Lkotlin/Pair;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v2, v0

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "/ugc_video/immersive_detail"

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    instance-of v0, p1, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;

    .line 42
    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    check-cast p1, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p1, 0x0

    .line 49
    :goto_0
    if-eqz p1, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;->x0()V

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->j:Lkotlin/jvm/functions/Function0;

    .line 55
    .line 56
    if-eqz p0, :cond_2

    .line 57
    .line 58
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void
.end method

.method private final D0(I)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->J0(I)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->c:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Number;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v1, Lqi/h;->a:Lqi/h;

    .line 17
    .line 18
    const-string v2, "dialog_name"

    .line 19
    .line 20
    const-string v3, "half_screen"

    .line 21
    .line 22
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "module_name"

    .line 27
    .line 28
    const-string v4, "speed"

    .line 29
    .line 30
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    const-string v4, "type"

    .line 35
    .line 36
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-static {v4, v5}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v5, 0x3

    .line 45
    new-array v5, v5, [Lkotlin/Pair;

    .line 46
    .line 47
    const/4 v6, 0x0

    .line 48
    aput-object v2, v5, v6

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    aput-object v3, v5, v2

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    aput-object v4, v5, v2

    .line 55
    .line 56
    invoke-static {v5}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-string v3, "/ugc_video/immersive_detail"

    .line 61
    .line 62
    invoke-virtual {v1, v3, v2}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "KEY_UGC_IMM_VIDEO_SPEED"

    .line 72
    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->h:Lkotlin/jvm/functions/Function1;

    .line 77
    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->c:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->k0()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private final J0(I)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-ltz p1, :cond_a

    .line 4
    .line 5
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-lt p1, v2, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Liu/g;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v2, v2, Liu/g;->s:Lcom/transsion/baseui/widget/GradientTextView;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move-object v2, v3

    .line 28
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Liu/g;

    .line 33
    .line 34
    if-eqz v4, :cond_2

    .line 35
    .line 36
    iget-object v4, v4, Liu/g;->t:Lcom/transsion/baseui/widget/GradientTextView;

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object v4, v3

    .line 40
    :goto_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Liu/g;

    .line 45
    .line 46
    if-eqz v5, :cond_3

    .line 47
    .line 48
    iget-object v5, v5, Liu/g;->u:Lcom/transsion/baseui/widget/GradientTextView;

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_3
    move-object v5, v3

    .line 52
    :goto_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Liu/g;

    .line 57
    .line 58
    if-eqz v6, :cond_4

    .line 59
    .line 60
    iget-object v6, v6, Liu/g;->v:Lcom/transsion/baseui/widget/GradientTextView;

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move-object v6, v3

    .line 64
    :goto_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Liu/g;

    .line 69
    .line 70
    if-eqz v7, :cond_5

    .line 71
    .line 72
    iget-object v7, v7, Liu/g;->w:Lcom/transsion/baseui/widget/GradientTextView;

    .line 73
    .line 74
    goto :goto_4

    .line 75
    :cond_5
    move-object v7, v3

    .line 76
    :goto_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    check-cast v8, Liu/g;

    .line 81
    .line 82
    if-eqz v8, :cond_6

    .line 83
    .line 84
    iget-object v3, v8, Liu/g;->x:Lcom/transsion/baseui/widget/GradientTextView;

    .line 85
    .line 86
    :cond_6
    const/4 v8, 0x6

    .line 87
    new-array v8, v8, [Lcom/transsion/baseui/widget/GradientTextView;

    .line 88
    .line 89
    aput-object v2, v8, v1

    .line 90
    .line 91
    aput-object v4, v8, v0

    .line 92
    .line 93
    const/4 v2, 0x2

    .line 94
    aput-object v5, v8, v2

    .line 95
    .line 96
    const/4 v2, 0x3

    .line 97
    aput-object v6, v8, v2

    .line 98
    .line 99
    const/4 v2, 0x4

    .line 100
    aput-object v7, v8, v2

    .line 101
    .line 102
    const/4 v2, 0x5

    .line 103
    aput-object v3, v8, v2

    .line 104
    .line 105
    invoke-static {v8}, Lkotlin/collections/CollectionsKt;->o([Ljava/lang/Object;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    const-string v4, "requireContext(...)"

    .line 114
    .line 115
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    sget v4, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    .line 119
    .line 120
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    sget v5, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    .line 125
    .line 126
    invoke-static {v3, v5}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    sget v6, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    .line 131
    .line 132
    invoke-static {v3, v6}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 133
    .line 134
    .line 135
    move-result v6

    .line 136
    sget v7, Lcom/tn/lib/widget/R$color;->text_03:I

    .line 137
    .line 138
    invoke-static {v3, v7}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    check-cast v2, Ljava/lang/Iterable;

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    if-eqz v7, :cond_a

    .line 153
    .line 154
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    add-int/lit8 v8, v1, 0x1

    .line 159
    .line 160
    if-gez v1, :cond_7

    .line 161
    .line 162
    invoke-static {}, Lkotlin/collections/CollectionsKt;->u()V

    .line 163
    .line 164
    .line 165
    :cond_7
    check-cast v7, Lcom/transsion/baseui/widget/GradientTextView;

    .line 166
    .line 167
    if-ne v1, p1, :cond_8

    .line 168
    .line 169
    if-eqz v7, :cond_9

    .line 170
    .line 171
    invoke-virtual {v7, v4, v5, v6}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    .line 172
    .line 173
    .line 174
    goto :goto_6

    .line 175
    :cond_8
    if-eqz v7, :cond_9

    .line 176
    .line 177
    invoke-virtual {v7, v3, v3, v3}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    .line 178
    .line 179
    .line 180
    :cond_9
    :goto_6
    move v1, v8

    .line 181
    goto :goto_5

    .line 182
    :cond_a
    :goto_7
    return-void
.end method

.method public static synthetic a0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->p0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Lcom/tn/lib/view/SwitchButton;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->v0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->x0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->w0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->r0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->y0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->z0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic h0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->t0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic i0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->A0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->C0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/transsion/ugcvideodetail/dialog/UGCImmVideoSettingDialog;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private final l0()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final n0()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->a:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final o0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Liu/g;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Liu/g;->o:Lcom/tn/lib/view/SwitchButton;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget-object v1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "KEY_UGC_IMM_VIDEO_AUTO_PLAY"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SwitchButton;->setChecked(Z)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/w;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/w;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/SwitchButton;->setOnCheckedChangeListener(Lcom/tn/lib/view/SwitchButton$d;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method private static final p0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Lcom/tn/lib/view/SwitchButton;Z)V
    .locals 4

    .line 1
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 2
    .line 3
    const-string v0, "dialog_name"

    .line 4
    .line 5
    const-string v1, "half_screen"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "module_name"

    .line 12
    .line 13
    const-string v2, "auto_play"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [Lkotlin/Pair;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v2, v0

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "/ugc_video/immersive_detail"

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "KEY_UGC_IMM_VIDEO_AUTO_PLAY"

    .line 44
    .line 45
    invoke-virtual {p1, v0, p2}, Lcom/tencent/mmkv/MMKV;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->l:Lkotlin/jvm/functions/Function1;

    .line 49
    .line 50
    if-eqz p0, :cond_0

    .line 51
    .line 52
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_0
    return-void
.end method

.method private final q0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Liu/g;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Liu/g;->c:Lcom/noober/background/view/BLConstraintLayout;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/v;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/v;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private static final r0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 4

    .line 1
    sget-object p1, Lqi/h;->a:Lqi/h;

    .line 2
    .line 3
    const-string v0, "dialog_name"

    .line 4
    .line 5
    const-string v1, "half_screen"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "module_name"

    .line 12
    .line 13
    const-string v2, "clean_mode"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    new-array v2, v2, [Lkotlin/Pair;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v0, v2, v3

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    aput-object v1, v2, v0

    .line 27
    .line 28
    invoke-static {v2}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v1, "/ugc_video/immersive_detail"

    .line 33
    .line 34
    invoke-virtual {p1, v1, v0}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->k0()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->k:Lkotlin/jvm/functions/Function0;

    .line 41
    .line 42
    if-eqz p0, :cond_0

    .line 43
    .line 44
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method private final s0()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Liu/g;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, v0, Liu/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-direct {v2, v3, v1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    .line 24
    .line 25
    .line 26
    new-instance v2, Ltf/c;

    .line 27
    .line 28
    const/16 v3, 0x1c

    .line 29
    .line 30
    invoke-static {v3}, Llj/a;->b(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-direct {v2, v3, v1}, Ltf/c;-><init>(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->n0()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->L0()Landroidx/lifecycle/b0;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;

    .line 53
    .line 54
    if-eqz v0, :cond_a

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCImmVideo;->getPlayInfo()Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_a

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayInfo;->getResources()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_a

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Iterable;

    .line 69
    .line 70
    new-instance v2, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    const/4 v4, 0x0

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    check-cast v3, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/transsion/ugcvideodetail/api/bean/UGCVideoPlayStream;->getResolutions()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v3}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-eqz v3, :cond_2

    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    if-lez v5, :cond_2

    .line 107
    .line 108
    move-object v4, v3

    .line 109
    :cond_2
    if-eqz v4, :cond_1

    .line 110
    .line 111
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_3
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->c0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Ljava/lang/Iterable;

    .line 120
    .line 121
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->H0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_4

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Liu/g;

    .line 136
    .line 137
    if-eqz v0, :cond_a

    .line 138
    .line 139
    iget-object v0, v0, Liu/g;->d:Lcom/noober/background/view/BLConstraintLayout;

    .line 140
    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    goto/16 :goto_4

    .line 147
    .line 148
    :cond_4
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->d:Ljava/util/List;

    .line 149
    .line 150
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 151
    .line 152
    .line 153
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->e:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 156
    .line 157
    .line 158
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->d:Ljava/util/List;

    .line 159
    .line 160
    move-object v3, v0

    .line 161
    check-cast v3, Ljava/lang/Iterable;

    .line 162
    .line 163
    new-instance v5, Ljava/util/ArrayList;

    .line 164
    .line 165
    const/16 v6, 0xa

    .line 166
    .line 167
    invoke-static {v3, v6}, Lkotlin/collections/CollectionsKt;->v(Ljava/lang/Iterable;I)I

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .line 173
    .line 174
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    if-eqz v6, :cond_5

    .line 183
    .line 184
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v6

    .line 188
    check-cast v6, Ljava/lang/Number;

    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    new-instance v7, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v6, "P"

    .line 203
    .line 204
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    .line 217
    .line 218
    iget-object v2, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->e:Ljava/util/List;

    .line 219
    .line 220
    move-object v3, v0

    .line 221
    check-cast v3, Ljava/util/Collection;

    .line 222
    .line 223
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 224
    .line 225
    .line 226
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->n0()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->M0()Landroidx/lifecycle/b0;

    .line 231
    .line 232
    .line 233
    move-result-object v2

    .line 234
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    check-cast v2, Ljava/lang/String;

    .line 239
    .line 240
    if-eqz v2, :cond_6

    .line 241
    .line 242
    invoke-static {v2}, Lkotlin/text/StringsKt;->v(Ljava/lang/String;)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    goto :goto_2

    .line 247
    :cond_6
    move-object v2, v4

    .line 248
    :goto_2
    if-eqz v2, :cond_9

    .line 249
    .line 250
    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    if-ltz v2, :cond_7

    .line 263
    .line 264
    const/4 v2, 0x1

    .line 265
    goto :goto_3

    .line 266
    :cond_7
    move v2, v1

    .line 267
    :goto_3
    if-eqz v2, :cond_8

    .line 268
    .line 269
    move-object v4, v0

    .line 270
    :cond_8
    if-eqz v4, :cond_9

    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 273
    .line 274
    .line 275
    move-result v1

    .line 276
    :cond_9
    iput v1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->f:I

    .line 277
    .line 278
    new-instance v0, Lcom/transsion/ugcvideodetail/adapter/d;

    .line 279
    .line 280
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->d:Ljava/util/List;

    .line 281
    .line 282
    check-cast v1, Ljava/util/Collection;

    .line 283
    .line 284
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->U0(Ljava/util/Collection;)Ljava/util/List;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-direct {v0, v1}, Lcom/transsion/ugcvideodetail/adapter/d;-><init>(Ljava/util/List;)V

    .line 289
    .line 290
    .line 291
    iget v1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->f:I

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Lcom/transsion/ugcvideodetail/adapter/d;->D1(I)V

    .line 294
    .line 295
    .line 296
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/u;

    .line 297
    .line 298
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/u;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->w1(Lr6/d;)V

    .line 302
    .line 303
    .line 304
    iput-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->g:Lcom/transsion/ugcvideodetail/adapter/d;

    .line 305
    .line 306
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    check-cast v0, Liu/g;

    .line 311
    .line 312
    if-eqz v0, :cond_a

    .line 313
    .line 314
    iget-object v0, v0, Liu/g;->n:Landroidx/recyclerview/widget/RecyclerView;

    .line 315
    .line 316
    if-eqz v0, :cond_a

    .line 317
    .line 318
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->g:Lcom/transsion/ugcvideodetail/adapter/d;

    .line 319
    .line 320
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 321
    .line 322
    .line 323
    :cond_a
    :goto_4
    return-void
.end method

.method private static final t0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Lcom/chad/library/adapter/base/BaseQuickAdapter;Landroid/view/View;I)V
    .locals 4

    .line 1
    const-string v0, "adapter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of p2, p1, Lcom/transsion/ugcvideodetail/adapter/d;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    check-cast p1, Lcom/transsion/ugcvideodetail/adapter/d;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, p3}, Lcom/transsion/ugcvideodetail/adapter/d;->D1(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    iput p3, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->f:I

    .line 25
    .line 26
    iget-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->e:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/Number;

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->n0()Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    invoke-virtual {p2}, Lcom/transsion/ugcvideodetail/viewmodel/UGCImmVideoDetailViewModel;->M0()Landroidx/lifecycle/b0;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    iget-object v0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->e:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    check-cast p3, Ljava/lang/Number;

    .line 53
    .line 54
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p2, p3}, Landroidx/lifecycle/b0;->q(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sget-object p2, Lqi/h;->a:Lqi/h;

    .line 66
    .line 67
    const-string p3, "dialog_name"

    .line 68
    .line 69
    const-string v0, "half_screen"

    .line 70
    .line 71
    invoke-static {p3, v0}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 72
    .line 73
    .line 74
    move-result-object p3

    .line 75
    const-string v0, "module_name"

    .line 76
    .line 77
    const-string v1, "quality"

    .line 78
    .line 79
    invoke-static {v0, v1}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    const-string v1, "type"

    .line 84
    .line 85
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    const/4 v2, 0x3

    .line 94
    new-array v2, v2, [Lkotlin/Pair;

    .line 95
    .line 96
    const/4 v3, 0x0

    .line 97
    aput-object p3, v2, v3

    .line 98
    .line 99
    const/4 p3, 0x1

    .line 100
    aput-object v0, v2, p3

    .line 101
    .line 102
    const/4 p3, 0x2

    .line 103
    aput-object v1, v2, p3

    .line 104
    .line 105
    invoke-static {v2}, Lkotlin/collections/MapsKt;->l([Lkotlin/Pair;)Ljava/util/Map;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    const-string v0, "/ugc_video/immersive_detail"

    .line 110
    .line 111
    invoke-virtual {p2, v0, p3}, Lqi/h;->o(Ljava/lang/String;Ljava/util/Map;)V

    .line 112
    .line 113
    .line 114
    iget-object p0, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->i:Lkotlin/jvm/functions/Function1;

    .line 115
    .line 116
    if-eqz p0, :cond_2

    .line 117
    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_2
    return-void
.end method

.method private final u0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Liu/g;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, v0, Liu/g;->s:Lcom/transsion/baseui/widget/GradientTextView;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/x;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/x;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Liu/g;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Liu/g;->t:Lcom/transsion/baseui/widget/GradientTextView;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/y;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/y;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Liu/g;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    iget-object v0, v0, Liu/g;->u:Lcom/transsion/baseui/widget/GradientTextView;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/z;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/z;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Liu/g;

    .line 66
    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-object v0, v0, Liu/g;->v:Lcom/transsion/baseui/widget/GradientTextView;

    .line 70
    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/a0;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/a0;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Liu/g;

    .line 86
    .line 87
    if-eqz v0, :cond_4

    .line 88
    .line 89
    iget-object v0, v0, Liu/g;->w:Lcom/transsion/baseui/widget/GradientTextView;

    .line 90
    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/b0;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/b0;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Liu/g;

    .line 106
    .line 107
    if-eqz v0, :cond_5

    .line 108
    .line 109
    iget-object v0, v0, Liu/g;->x:Lcom/transsion/baseui/widget/GradientTextView;

    .line 110
    .line 111
    if-eqz v0, :cond_5

    .line 112
    .line 113
    new-instance v1, Lcom/transsion/ugcvideodetail/fragment/c0;

    .line 114
    .line 115
    invoke-direct {v1, p0}, Lcom/transsion/ugcvideodetail/fragment/c0;-><init>(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    :cond_5
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 122
    .line 123
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v1, "KEY_UGC_IMM_VIDEO_SPEED"

    .line 128
    .line 129
    const/high16 v2, 0x3f800000    # 1.0f

    .line 130
    .line 131
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getFloat(Ljava/lang/String;F)F

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iget-object v1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->c:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const/4 v2, 0x0

    .line 142
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-eqz v3, :cond_7

    .line 147
    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Ljava/lang/Number;

    .line 153
    .line 154
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    cmpg-float v3, v3, v0

    .line 159
    .line 160
    if-nez v3, :cond_6

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_7
    const/4 v2, -0x1

    .line 167
    :goto_1
    invoke-direct {p0, v2}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->J0(I)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method private static final v0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->D0(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final w0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->D0(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final x0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->D0(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final y0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x3

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->D0(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final z0(Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->D0(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final E0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->l:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final F0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->k:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final G0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final H0(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->h:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-void
.end method

.method public final I0(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->j:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;)Lf4/a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->m0(Landroid/view/LayoutInflater;)Liu/g;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initData(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->l0()Lcom/transsion/ugcvideodetail/hepler/subtitle/a;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/transsion/ugcvideodetail/hepler/subtitle/a;->d()Landroidx/lifecycle/b0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->f()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/util/Collection;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Liu/g;

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p1, Liu/g;->f:Lcom/noober/background/view/BLConstraintLayout;

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    invoke-static {p1}, Luf/c;->k(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/transsion/baseui/fragment/BaseFragment;->getMViewBinding()Lf4/a;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Liu/g;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p1, Liu/g;->f:Lcom/noober/background/view/BLConstraintLayout;

    .line 54
    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    invoke-static {p1}, Luf/c;->g(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    :goto_1
    return-void
.end method

.method public initListener()V
    .locals 0

    .line 1
    return-void
.end method

.method public initView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    const-string p2, "view"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->u0()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->s0()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->B0()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->q0()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/transsion/ugcvideodetail/fragment/UGCImmVideoSettingFragment;->o0()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public lazyLoadData()V
    .locals 0

    .line 1
    return-void
.end method

.method public m0(Landroid/view/LayoutInflater;)Liu/g;
    .locals 1

    .line 1
    const-string v0, "inflater"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Liu/g;->c(Landroid/view/LayoutInflater;)Liu/g;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "inflate(...)"

    .line 11
    .line 12
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method
