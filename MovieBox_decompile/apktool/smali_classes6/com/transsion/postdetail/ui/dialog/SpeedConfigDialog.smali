.class public final Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;
.super Lcom/transsion/baseui/dialog/BaseDialog;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0019\u0010\u000b\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ-\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u000e\u001a\u00020\r2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u00112\u0008\u0010\n\u001a\u0004\u0018\u00010\tH\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u001b\u0010\u001c\u001a\u00020\u00178BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\"\u0010 \u001a\u00020\u001d8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010\'\u001a\u0008\u0012\u0004\u0012\u00020\u00040$8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008%\u0010&R0\u0010-\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020)0(j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020)`*8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010,R\u0016\u00100\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/\u00a8\u00061"
    }
    d2 = {
        "Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;",
        "Lcom/transsion/baseui/dialog/BaseDialog;",
        "<init>",
        "()V",
        "",
        "speed",
        "",
        "r0",
        "(F)V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Lcom/transsion/postdetail/ui/dialog/k;",
        "c",
        "Lkotlin/Lazy;",
        "o0",
        "()Lcom/transsion/postdetail/ui/dialog/k;",
        "speedViewModel",
        "",
        "d",
        "Z",
        "isPortrait",
        "()Z",
        "q0",
        "(Z)V",
        "",
        "e",
        "[Ljava/lang/Float;",
        "speedConfigs",
        "Ljava/util/HashMap;",
        "Lcom/transsion/baseui/widget/GradientTextView;",
        "Lkotlin/collections/HashMap;",
        "f",
        "Ljava/util/HashMap;",
        "itemViewMap",
        "g",
        "F",
        "currentSpeed",
        "PostDetail_psRelease"
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
.field private final c:Lkotlin/Lazy;

.field private d:Z

.field private final e:[Ljava/lang/Float;

.field private final f:Ljava/util/HashMap;

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/transsion/baseui/dialog/BaseDialog;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/transsion/postdetail/ui/dialog/k;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->b(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog$special$$inlined$activityViewModels$default$1;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog$special$$inlined$activityViewModels$default$1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 13
    .line 14
    .line 15
    new-instance v2, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog$special$$inlined$activityViewModels$default$2;

    .line 16
    .line 17
    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog$special$$inlined$activityViewModels$default$2;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p0, v0, v1, v2}, Landroidx/fragment/app/FragmentViewModelLazyKt;->a(Landroidx/fragment/app/Fragment;Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->c:Lkotlin/Lazy;

    .line 25
    .line 26
    const/high16 v0, 0x3f000000    # 0.5f

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/high16 v1, 0x3f400000    # 0.75f

    .line 33
    .line 34
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/high16 v3, 0x3fa00000    # 1.25f

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 51
    .line 52
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/high16 v5, 0x40000000    # 2.0f

    .line 57
    .line 58
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    const/4 v6, 0x6

    .line 63
    new-array v6, v6, [Ljava/lang/Float;

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    aput-object v0, v6, v7

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    aput-object v1, v6, v0

    .line 70
    .line 71
    const/4 v0, 0x2

    .line 72
    aput-object v2, v6, v0

    .line 73
    .line 74
    const/4 v0, 0x3

    .line 75
    aput-object v3, v6, v0

    .line 76
    .line 77
    const/4 v0, 0x4

    .line 78
    aput-object v4, v6, v0

    .line 79
    .line 80
    const/4 v0, 0x5

    .line 81
    aput-object v5, v6, v0

    .line 82
    .line 83
    iput-object v6, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->e:[Ljava/lang/Float;

    .line 84
    .line 85
    new-instance v0, Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 88
    .line 89
    .line 90
    iput-object v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->f:Ljava/util/HashMap;

    .line 91
    .line 92
    sget-object v0, Lcom/transsion/baselib/helper/d;->a:Lcom/transsion/baselib/helper/d;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/transsion/baselib/helper/d;->d()F

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->g:F

    .line 99
    .line 100
    return-void
.end method

.method public static synthetic n0(Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;FLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->p0(Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;FLandroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final o0()Lcom/transsion/postdetail/ui/dialog/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->c:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/postdetail/ui/dialog/k;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final p0(Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;FLandroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->r0(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final r0(F)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->g:F

    .line 2
    .line 3
    cmpg-float v1, v0, p1

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->f:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/transsion/baseui/widget/GradientTextView;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v1, -0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->f:Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/transsion/baseui/widget/GradientTextView;

    .line 37
    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    sget v2, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    .line 45
    .line 46
    invoke-static {v1, v2}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    sget v3, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    .line 55
    .line 56
    invoke-static {v2, v3}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    sget v4, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    .line 65
    .line 66
    invoke-static {v3, v4}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    invoke-virtual {v0, v1, v2, v3}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    .line 71
    .line 72
    .line 73
    :cond_2
    iput p1, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->g:F

    .line 74
    .line 75
    invoke-direct {p0}, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->o0()Lcom/transsion/postdetail/ui/dialog/k;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0, p1}, Lcom/transsion/postdetail/ui/dialog/k;->c(F)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 83
    .line 84
    .line 85
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    sget v0, Lcom/transsnet/downloader/R$style;->DownloadBottomDialogTheme:I

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    const-string p3, "inflater"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p3, Lcom/transsion/postdetail/R$layout;->dialog_speed_config:I

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "view"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-super/range {p0 .. p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    sget v2, Lcom/transsion/postdetail/R$id;->ll_root:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    .line 23
    const/high16 v4, 0x42400000    # 48.0f

    .line 24
    .line 25
    invoke-static {v4}, Lcom/blankj/utilcode/util/i;->e(F)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, -0x1

    .line 30
    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 31
    .line 32
    .line 33
    iget-object v4, v0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->e:[Ljava/lang/Float;

    .line 34
    .line 35
    array-length v6, v4

    .line 36
    const/4 v7, 0x0

    .line 37
    :goto_0
    if-ge v7, v6, :cond_2

    .line 38
    .line 39
    aget-object v8, v4, v7

    .line 40
    .line 41
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 42
    .line 43
    .line 44
    move-result v9

    .line 45
    new-instance v15, Lcom/transsion/baseui/widget/GradientTextView;

    .line 46
    .line 47
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    const-string v14, "getContext(...)"

    .line 52
    .line 53
    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const/16 v16, 0x6

    .line 57
    .line 58
    const/16 v17, 0x0

    .line 59
    .line 60
    const/4 v12, 0x0

    .line 61
    const/4 v13, 0x0

    .line 62
    move-object v10, v15

    .line 63
    move-object v5, v14

    .line 64
    move/from16 v14, v16

    .line 65
    .line 66
    move-object v1, v15

    .line 67
    move-object/from16 v15, v17

    .line 68
    .line 69
    invoke-direct/range {v10 .. v15}, Lcom/transsion/baseui/widget/GradientTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 70
    .line 71
    .line 72
    const/16 v10, 0x11

    .line 73
    .line 74
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 75
    .line 76
    .line 77
    iget v10, v0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->g:F

    .line 78
    .line 79
    cmpg-float v10, v10, v9

    .line 80
    .line 81
    if-nez v10, :cond_0

    .line 82
    .line 83
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    sget v11, Lcom/tn/lib/widget/R$color;->brand_new_gradient_start:I

    .line 88
    .line 89
    invoke-static {v10, v11}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    sget v12, Lcom/tn/lib/widget/R$color;->brand_new_gradient_center:I

    .line 98
    .line 99
    invoke-static {v11, v12}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 104
    .line 105
    .line 106
    move-result-object v12

    .line 107
    sget v13, Lcom/tn/lib/widget/R$color;->brand_new_gradient_end:I

    .line 108
    .line 109
    invoke-static {v12, v13}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 110
    .line 111
    .line 112
    move-result v12

    .line 113
    invoke-virtual {v1, v10, v11, v12}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    sget v11, Lcom/tn/lib/widget/R$color;->white:I

    .line 122
    .line 123
    invoke-static {v10, v11}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 128
    .line 129
    .line 130
    move-result-object v11

    .line 131
    sget v12, Lcom/tn/lib/widget/R$color;->white:I

    .line 132
    .line 133
    invoke-static {v11, v12}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 134
    .line 135
    .line 136
    move-result v11

    .line 137
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 138
    .line 139
    .line 140
    move-result-object v12

    .line 141
    sget v13, Lcom/tn/lib/widget/R$color;->white:I

    .line 142
    .line 143
    invoke-static {v12, v13}, Landroidx/core/content/b;->getColor(Landroid/content/Context;I)I

    .line 144
    .line 145
    .line 146
    move-result v12

    .line 147
    invoke-virtual {v1, v10, v11, v12}, Lcom/transsion/baseui/widget/GradientTextView;->setGradientColors(III)V

    .line 148
    .line 149
    .line 150
    :goto_1
    const/high16 v10, 0x41800000    # 16.0f

    .line 151
    .line 152
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 153
    .line 154
    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {v10}, Luf/a;->c(Landroid/content/Context;)Landroid/graphics/Typeface;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 167
    .line 168
    .line 169
    float-to-int v5, v9

    .line 170
    int-to-float v10, v5

    .line 171
    cmpg-float v10, v10, v9

    .line 172
    .line 173
    const-string v11, "x"

    .line 174
    .line 175
    if-nez v10, :cond_1

    .line 176
    .line 177
    new-instance v10, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v5

    .line 192
    goto :goto_2

    .line 193
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v5

    .line 208
    :goto_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    new-instance v5, Lcom/transsion/postdetail/ui/dialog/j;

    .line 212
    .line 213
    invoke-direct {v5, v0, v9}, Lcom/transsion/postdetail/ui/dialog/j;-><init>(Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;F)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    iget-object v5, v0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->f:Ljava/util/HashMap;

    .line 223
    .line 224
    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    add-int/lit8 v7, v7, 0x1

    .line 228
    .line 229
    move-object/from16 v1, p1

    .line 230
    .line 231
    const/4 v5, -0x1

    .line 232
    goto/16 :goto_0

    .line 233
    .line 234
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-eqz v1, :cond_4

    .line 239
    .line 240
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    if-eqz v1, :cond_4

    .line 245
    .line 246
    const/4 v2, 0x0

    .line 247
    invoke-virtual {v1, v2}, Landroid/view/Window;->setDimAmount(F)V

    .line 248
    .line 249
    .line 250
    const/4 v2, 0x0

    .line 251
    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    .line 253
    .line 254
    iget-boolean v2, v0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->d:Z

    .line 255
    .line 256
    if-eqz v2, :cond_3

    .line 257
    .line 258
    sget v2, Lcom/tn/lib/widget/R$style;->bottom_dialog_animation:I

    .line 259
    .line 260
    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 261
    .line 262
    .line 263
    const/16 v2, 0x50

    .line 264
    .line 265
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 266
    .line 267
    .line 268
    const/4 v2, -0x2

    .line 269
    const/4 v3, -0x1

    .line 270
    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setLayout(II)V

    .line 271
    .line 272
    .line 273
    goto :goto_3

    .line 274
    :cond_3
    const/4 v3, -0x1

    .line 275
    sget v2, Lcom/tn/lib/widget/R$style;->ActionSheetDialogRight:I

    .line 276
    .line 277
    invoke-virtual {v1, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 278
    .line 279
    .line 280
    const v2, 0x800005

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 284
    .line 285
    .line 286
    const/high16 v2, 0x430c0000    # 140.0f

    .line 287
    .line 288
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 289
    .line 290
    .line 291
    move-result v2

    .line 292
    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 293
    .line 294
    .line 295
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/gyf/immersionbar/ImmersionBar;->with(Landroidx/fragment/app/DialogFragment;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    sget-object v2, Lcom/gyf/immersionbar/BarHide;->FLAG_HIDE_BAR:Lcom/gyf/immersionbar/BarHide;

    .line 300
    .line 301
    invoke-virtual {v1, v2}, Lcom/gyf/immersionbar/ImmersionBar;->hideBar(Lcom/gyf/immersionbar/BarHide;)Lcom/gyf/immersionbar/ImmersionBar;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1}, Lcom/gyf/immersionbar/ImmersionBar;->init()V

    .line 305
    .line 306
    .line 307
    :cond_4
    return-void
.end method

.method public final q0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ui/dialog/SpeedConfigDialog;->d:Z

    .line 2
    .line 3
    return-void
.end method
