.class public final Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/compose/ui/contentcapture/m;
.implements Landroidx/lifecycle/f;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;,
        Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;
    }
.end annotation


# instance fields
.field private final a:Landroidx/compose/ui/platform/AndroidComposeView;

.field private b:Lkotlin/jvm/functions/Function0;

.field private c:Landroidx/compose/ui/platform/coreshims/d;

.field private final d:Landroidx/collection/e0;

.field private final e:Landroidx/collection/f0;

.field private f:J

.field private g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

.field private h:Z

.field private final i:Landroidx/collection/b;

.field private final j:Lkotlinx/coroutines/channels/d;

.field private final k:Landroid/os/Handler;

.field private l:Landroidx/collection/o;

.field private m:J

.field private n:Landroidx/collection/e0;

.field private o:Landroidx/compose/ui/platform/c2;

.field private p:Z

.field private final q:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->b:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    new-instance p2, Landroidx/collection/e0;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {p2, v0, v1, v2}, Landroidx/collection/e0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    .line 17
    .line 18
    new-instance p2, Landroidx/collection/f0;

    .line 19
    .line 20
    invoke-direct {p2, v0, v1, v2}, Landroidx/collection/f0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 21
    .line 22
    .line 23
    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    .line 24
    .line 25
    const-wide/16 v3, 0x64

    .line 26
    .line 27
    iput-wide v3, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->f:J

    .line 28
    .line 29
    sget-object p2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 30
    .line 31
    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 32
    .line 33
    iput-boolean v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h:Z

    .line 34
    .line 35
    new-instance p2, Landroidx/collection/b;

    .line 36
    .line 37
    invoke-direct {p2, v0, v1, v2}, Landroidx/collection/b;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    .line 39
    .line 40
    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->i:Landroidx/collection/b;

    .line 41
    .line 42
    const/4 p2, 0x6

    .line 43
    invoke-static {v1, v2, v2, p2, v2}, Lkotlinx/coroutines/channels/g;->b(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/channels/d;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j:Lkotlinx/coroutines/channels/d;

    .line 48
    .line 49
    new-instance p2, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    .line 57
    .line 58
    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k:Landroid/os/Handler;

    .line 59
    .line 60
    invoke-static {}, Landroidx/collection/p;->a()Landroidx/collection/o;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l:Landroidx/collection/o;

    .line 65
    .line 66
    invoke-static {}, Landroidx/collection/p;->b()Landroidx/collection/e0;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    .line 71
    .line 72
    new-instance p2, Landroidx/compose/ui/platform/c2;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {}, Landroidx/collection/p;->a()Landroidx/collection/o;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-direct {p2, p1, v0}, Landroidx/compose/ui/platform/c2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/o;)V

    .line 87
    .line 88
    .line 89
    iput-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->o:Landroidx/compose/ui/platform/c2;

    .line 90
    .line 91
    new-instance p1, Landroidx/compose/ui/contentcapture/a;

    .line 92
    .line 93
    invoke-direct {p1, p0}, Landroidx/compose/ui/contentcapture/a;-><init>(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V

    .line 94
    .line 95
    .line 96
    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->q:Ljava/lang/Runnable;

    .line 97
    .line 98
    return-void
.end method

.method private final A(Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-direct {p0, v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_0
    if-ge v1, v0, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 31
    .line 32
    invoke-direct {p0, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->A(Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method private final B()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/collection/e0;->i()V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iget-object v2, v1, Landroidx/collection/o;->b:[I

    .line 13
    .line 14
    iget-object v3, v1, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 15
    .line 16
    iget-object v1, v1, Landroidx/collection/o;->a:[J

    .line 17
    .line 18
    array-length v4, v1

    .line 19
    add-int/lit8 v4, v4, -0x2

    .line 20
    .line 21
    if-ltz v4, :cond_3

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_0
    aget-wide v7, v1, v6

    .line 25
    .line 26
    not-long v9, v7

    .line 27
    const/4 v11, 0x7

    .line 28
    shl-long/2addr v9, v11

    .line 29
    and-long/2addr v9, v7

    .line 30
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    and-long/2addr v9, v11

    .line 36
    cmp-long v9, v9, v11

    .line 37
    .line 38
    if-eqz v9, :cond_2

    .line 39
    .line 40
    sub-int v9, v6, v4

    .line 41
    .line 42
    not-int v9, v9

    .line 43
    ushr-int/lit8 v9, v9, 0x1f

    .line 44
    .line 45
    const/16 v10, 0x8

    .line 46
    .line 47
    rsub-int/lit8 v9, v9, 0x8

    .line 48
    .line 49
    const/4 v11, 0x0

    .line 50
    :goto_1
    if-ge v11, v9, :cond_1

    .line 51
    .line 52
    const-wide/16 v12, 0xff

    .line 53
    .line 54
    and-long/2addr v12, v7

    .line 55
    const-wide/16 v14, 0x80

    .line 56
    .line 57
    cmp-long v12, v12, v14

    .line 58
    .line 59
    if-gez v12, :cond_0

    .line 60
    .line 61
    shl-int/lit8 v12, v6, 0x3

    .line 62
    .line 63
    add-int/2addr v12, v11

    .line 64
    aget v13, v2, v12

    .line 65
    .line 66
    aget-object v12, v3, v12

    .line 67
    .line 68
    check-cast v12, Landroidx/compose/ui/platform/d2;

    .line 69
    .line 70
    iget-object v14, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    .line 71
    .line 72
    new-instance v15, Landroidx/compose/ui/platform/c2;

    .line 73
    .line 74
    invoke-virtual {v12}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-direct {v15, v12, v5}, Landroidx/compose/ui/platform/c2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/o;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v14, v13, v15}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    shr-long/2addr v7, v10

    .line 89
    add-int/lit8 v11, v11, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    if-ne v9, v10, :cond_3

    .line 93
    .line 94
    :cond_2
    if-eq v6, v4, :cond_3

    .line 95
    .line 96
    add-int/lit8 v6, v6, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_3
    new-instance v1, Landroidx/compose/ui/platform/c2;

    .line 100
    .line 101
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 102
    .line 103
    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/platform/c2;-><init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/collection/o;)V

    .line 116
    .line 117
    .line 118
    iput-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->o:Landroidx/compose/ui/platform/c2;

    .line 119
    .line 120
    return-void
.end method

.method private final C(Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;->q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 18
    .line 19
    sget-object v2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    sget-object v0, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/h;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroidx/compose/ui/semantics/a;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 50
    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Ljava/lang/Boolean;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 63
    .line 64
    sget-object v2, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_TRANSLATED:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 65
    .line 66
    if-ne v1, v2, :cond_1

    .line 67
    .line 68
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    sget-object v0, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    .line 77
    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/h;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {p1, v0}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Landroidx/compose/ui/semantics/a;

    .line 87
    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lkotlin/jvm/functions/Function1;

    .line 95
    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Ljava/lang/Boolean;

    .line 105
    .line 106
    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c(ILandroidx/compose/ui/platform/coreshims/f;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/collection/q;->a(I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroidx/collection/f0;->q(I)Z

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method

.method private final d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/o;->b(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroidx/collection/e0;->q(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroidx/collection/f0;->f(I)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method private final e(Landroidx/collection/o;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v1, Landroidx/collection/o;->b:[I

    .line 6
    .line 7
    iget-object v3, v1, Landroidx/collection/o;->a:[J

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    add-int/lit8 v4, v4, -0x2

    .line 11
    .line 12
    if-ltz v4, :cond_d

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    :goto_0
    aget-wide v7, v3, v6

    .line 16
    .line 17
    not-long v9, v7

    .line 18
    const/4 v11, 0x7

    .line 19
    shl-long/2addr v9, v11

    .line 20
    and-long/2addr v9, v7

    .line 21
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    and-long/2addr v9, v11

    .line 27
    cmp-long v9, v9, v11

    .line 28
    .line 29
    if-eqz v9, :cond_c

    .line 30
    .line 31
    sub-int v9, v6, v4

    .line 32
    .line 33
    not-int v9, v9

    .line 34
    ushr-int/lit8 v9, v9, 0x1f

    .line 35
    .line 36
    const/16 v10, 0x8

    .line 37
    .line 38
    rsub-int/lit8 v9, v9, 0x8

    .line 39
    .line 40
    const/4 v11, 0x0

    .line 41
    :goto_1
    if-ge v11, v9, :cond_b

    .line 42
    .line 43
    const-wide/16 v12, 0xff

    .line 44
    .line 45
    and-long/2addr v12, v7

    .line 46
    const-wide/16 v14, 0x80

    .line 47
    .line 48
    cmp-long v12, v12, v14

    .line 49
    .line 50
    if-gez v12, :cond_a

    .line 51
    .line 52
    shl-int/lit8 v12, v6, 0x3

    .line 53
    .line 54
    add-int/2addr v12, v11

    .line 55
    aget v12, v2, v12

    .line 56
    .line 57
    iget-object v13, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    .line 58
    .line 59
    invoke-virtual {v13, v12}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v13

    .line 63
    check-cast v13, Landroidx/compose/ui/platform/c2;

    .line 64
    .line 65
    invoke-virtual {v1, v12}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    check-cast v12, Landroidx/compose/ui/platform/d2;

    .line 70
    .line 71
    if-eqz v12, :cond_0

    .line 72
    .line 73
    invoke-virtual {v12}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 74
    .line 75
    .line 76
    move-result-object v12

    .line 77
    goto :goto_2

    .line 78
    :cond_0
    const/4 v12, 0x0

    .line 79
    :goto_2
    if-eqz v12, :cond_9

    .line 80
    .line 81
    if-nez v13, :cond_3

    .line 82
    .line 83
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    invoke-virtual {v13}, Landroidx/compose/ui/semantics/i;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    :cond_1
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v15

    .line 95
    if-eqz v15, :cond_8

    .line 96
    .line 97
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v15

    .line 101
    check-cast v15, Ljava/util/Map$Entry;

    .line 102
    .line 103
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v15

    .line 107
    sget-object v16, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 108
    .line 109
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    if-eqz v5, :cond_1

    .line 118
    .line 119
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    invoke-static {v5, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    check-cast v5, Ljava/util/List;

    .line 132
    .line 133
    if-eqz v5, :cond_2

    .line 134
    .line 135
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString;

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_2
    const/4 v5, 0x0

    .line 143
    :goto_4
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 144
    .line 145
    .line 146
    move-result v15

    .line 147
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-direct {v0, v15, v5}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->v(ILjava/lang/String;)V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_3
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    invoke-virtual {v5}, Landroidx/compose/ui/semantics/i;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    :cond_4
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v15

    .line 167
    if-eqz v15, :cond_8

    .line 168
    .line 169
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v15

    .line 173
    check-cast v15, Ljava/util/Map$Entry;

    .line 174
    .line 175
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v15

    .line 179
    check-cast v15, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 180
    .line 181
    sget-object v16, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 182
    .line 183
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 184
    .line 185
    .line 186
    move-result-object v14

    .line 187
    invoke-static {v15, v14}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v14

    .line 191
    if-eqz v14, :cond_4

    .line 192
    .line 193
    invoke-virtual {v13}, Landroidx/compose/ui/platform/c2;->b()Landroidx/compose/ui/semantics/i;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    invoke-static {v14, v15}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v14

    .line 205
    check-cast v14, Ljava/util/List;

    .line 206
    .line 207
    if-eqz v14, :cond_5

    .line 208
    .line 209
    invoke-static {v14}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v14

    .line 213
    check-cast v14, Landroidx/compose/ui/text/AnnotatedString;

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_5
    const/4 v14, 0x0

    .line 217
    :goto_6
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 218
    .line 219
    .line 220
    move-result-object v15

    .line 221
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 222
    .line 223
    .line 224
    move-result-object v10

    .line 225
    invoke-static {v15, v10}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object v10

    .line 229
    check-cast v10, Ljava/util/List;

    .line 230
    .line 231
    if-eqz v10, :cond_6

    .line 232
    .line 233
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v10

    .line 237
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString;

    .line 238
    .line 239
    goto :goto_7

    .line 240
    :cond_6
    const/4 v10, 0x0

    .line 241
    :goto_7
    invoke-static {v14, v10}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v14

    .line 245
    if-nez v14, :cond_7

    .line 246
    .line 247
    invoke-virtual {v12}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 248
    .line 249
    .line 250
    move-result v14

    .line 251
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v10

    .line 255
    invoke-direct {v0, v14, v10}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->v(ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :cond_7
    const/16 v10, 0x8

    .line 259
    .line 260
    goto :goto_5

    .line 261
    :cond_8
    const/16 v5, 0x8

    .line 262
    .line 263
    goto :goto_8

    .line 264
    :cond_9
    const-string v1, "no value for specified key"

    .line 265
    .line 266
    invoke-static {v1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 267
    .line 268
    .line 269
    new-instance v1, Lkotlin/KotlinNothingValueException;

    .line 270
    .line 271
    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 272
    .line 273
    .line 274
    throw v1

    .line 275
    :cond_a
    move v5, v10

    .line 276
    :goto_8
    shr-long/2addr v7, v5

    .line 277
    add-int/lit8 v11, v11, 0x1

    .line 278
    .line 279
    move v10, v5

    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :cond_b
    move v5, v10

    .line 283
    if-ne v9, v5, :cond_d

    .line 284
    .line 285
    :cond_c
    if-eq v6, v4, :cond_d

    .line 286
    .line 287
    add-int/lit8 v6, v6, 0x1

    .line 288
    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_d
    return-void
.end method

.method private final f()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/collection/o;->a:[J

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    add-int/lit8 v2, v2, -0x2

    .line 11
    .line 12
    if-ltz v2, :cond_3

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    aget-wide v5, v0, v4

    .line 17
    .line 18
    not-long v7, v5

    .line 19
    const/4 v9, 0x7

    .line 20
    shl-long/2addr v7, v9

    .line 21
    and-long/2addr v7, v5

    .line 22
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr v7, v9

    .line 28
    cmp-long v7, v7, v9

    .line 29
    .line 30
    if-eqz v7, :cond_2

    .line 31
    .line 32
    sub-int v7, v4, v2

    .line 33
    .line 34
    not-int v7, v7

    .line 35
    ushr-int/lit8 v7, v7, 0x1f

    .line 36
    .line 37
    const/16 v8, 0x8

    .line 38
    .line 39
    rsub-int/lit8 v7, v7, 0x8

    .line 40
    .line 41
    move v9, v3

    .line 42
    :goto_1
    if-ge v9, v7, :cond_1

    .line 43
    .line 44
    const-wide/16 v10, 0xff

    .line 45
    .line 46
    and-long/2addr v10, v5

    .line 47
    const-wide/16 v12, 0x80

    .line 48
    .line 49
    cmp-long v10, v10, v12

    .line 50
    .line 51
    if-gez v10, :cond_0

    .line 52
    .line 53
    shl-int/lit8 v10, v4, 0x3

    .line 54
    .line 55
    add-int/2addr v10, v9

    .line 56
    aget-object v10, v1, v10

    .line 57
    .line 58
    check-cast v10, Landroidx/compose/ui/platform/d2;

    .line 59
    .line 60
    invoke-virtual {v10}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 69
    .line 70
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    if-eqz v11, :cond_0

    .line 79
    .line 80
    sget-object v11, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    .line 81
    .line 82
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->a()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    check-cast v10, Landroidx/compose/ui/semantics/a;

    .line 91
    .line 92
    if-eqz v10, :cond_0

    .line 93
    .line 94
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    .line 95
    .line 96
    .line 97
    move-result-object v10

    .line 98
    check-cast v10, Lkotlin/jvm/functions/Function0;

    .line 99
    .line 100
    if-eqz v10, :cond_0

    .line 101
    .line 102
    invoke-interface {v10}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    check-cast v10, Ljava/lang/Boolean;

    .line 107
    .line 108
    :cond_0
    shr-long/2addr v5, v8

    .line 109
    add-int/lit8 v9, v9, 0x1

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    if-ne v7, v8, :cond_3

    .line 113
    .line 114
    :cond_2
    if-eq v4, v2, :cond_3

    .line 115
    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    return-void
.end method

.method private static final g(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, v3, v1, v2}, Landroidx/compose/ui/node/x0;->c(Landroidx/compose/ui/node/y0;ZILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->o:Landroidx/compose/ui/platform/c2;

    .line 27
    .line 28
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->w(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->o:Landroidx/compose/ui/platform/c2;

    .line 42
    .line 43
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->u(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-direct {p0, v0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e(Landroidx/collection/o;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->B()V

    .line 54
    .line 55
    .line 56
    iput-boolean v3, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    .line 57
    .line 58
    return-void
.end method

.method private final j()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/collection/o;->a:[J

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    add-int/lit8 v2, v2, -0x2

    .line 11
    .line 12
    if-ltz v2, :cond_3

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    aget-wide v5, v0, v4

    .line 17
    .line 18
    not-long v7, v5

    .line 19
    const/4 v9, 0x7

    .line 20
    shl-long/2addr v7, v9

    .line 21
    and-long/2addr v7, v5

    .line 22
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr v7, v9

    .line 28
    cmp-long v7, v7, v9

    .line 29
    .line 30
    if-eqz v7, :cond_2

    .line 31
    .line 32
    sub-int v7, v4, v2

    .line 33
    .line 34
    not-int v7, v7

    .line 35
    ushr-int/lit8 v7, v7, 0x1f

    .line 36
    .line 37
    const/16 v8, 0x8

    .line 38
    .line 39
    rsub-int/lit8 v7, v7, 0x8

    .line 40
    .line 41
    move v9, v3

    .line 42
    :goto_1
    if-ge v9, v7, :cond_1

    .line 43
    .line 44
    const-wide/16 v10, 0xff

    .line 45
    .line 46
    and-long/2addr v10, v5

    .line 47
    const-wide/16 v12, 0x80

    .line 48
    .line 49
    cmp-long v10, v10, v12

    .line 50
    .line 51
    if-gez v10, :cond_0

    .line 52
    .line 53
    shl-int/lit8 v10, v4, 0x3

    .line 54
    .line 55
    add-int/2addr v10, v9

    .line 56
    aget-object v10, v1, v10

    .line 57
    .line 58
    check-cast v10, Landroidx/compose/ui/platform/d2;

    .line 59
    .line 60
    invoke-virtual {v10}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 69
    .line 70
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    if-eqz v11, :cond_0

    .line 85
    .line 86
    sget-object v11, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    .line 87
    .line 88
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    check-cast v10, Landroidx/compose/ui/semantics/a;

    .line 97
    .line 98
    if-eqz v10, :cond_0

    .line 99
    .line 100
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 105
    .line 106
    if-eqz v10, :cond_0

    .line 107
    .line 108
    sget-object v11, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-interface {v10, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    check-cast v10, Ljava/lang/Boolean;

    .line 115
    .line 116
    :cond_0
    shr-long/2addr v5, v8

    .line 117
    add-int/lit8 v9, v9, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    if-ne v7, v8, :cond_3

    .line 121
    .line 122
    :cond_2
    if-eq v4, v2, :cond_3

    .line 123
    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    return-void
.end method

.method private final l()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v3, 0x1d

    .line 11
    .line 12
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/collection/o;->g()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const-wide/16 v5, 0xff

    .line 22
    .line 23
    const/4 v7, 0x7

    .line 24
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 25
    .line 26
    .line 27
    .line 28
    .line 29
    const/16 v10, 0x8

    .line 30
    .line 31
    if-eqz v2, :cond_7

    .line 32
    .line 33
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v12, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    .line 39
    .line 40
    iget-object v13, v12, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 41
    .line 42
    iget-object v12, v12, Landroidx/collection/o;->a:[J

    .line 43
    .line 44
    array-length v14, v12

    .line 45
    add-int/lit8 v14, v14, -0x2

    .line 46
    .line 47
    if-ltz v14, :cond_5

    .line 48
    .line 49
    const/4 v15, 0x0

    .line 50
    :goto_0
    aget-wide v3, v12, v15

    .line 51
    .line 52
    move-object/from16 v18, v12

    .line 53
    .line 54
    not-long v11, v3

    .line 55
    shl-long/2addr v11, v7

    .line 56
    and-long/2addr v11, v3

    .line 57
    and-long/2addr v11, v8

    .line 58
    cmp-long v11, v11, v8

    .line 59
    .line 60
    if-eqz v11, :cond_4

    .line 61
    .line 62
    sub-int v11, v15, v14

    .line 63
    .line 64
    not-int v11, v11

    .line 65
    ushr-int/lit8 v11, v11, 0x1f

    .line 66
    .line 67
    rsub-int/lit8 v11, v11, 0x8

    .line 68
    .line 69
    const/4 v12, 0x0

    .line 70
    :goto_1
    if-ge v12, v11, :cond_3

    .line 71
    .line 72
    and-long v19, v3, v5

    .line 73
    .line 74
    const-wide/16 v16, 0x80

    .line 75
    .line 76
    cmp-long v19, v19, v16

    .line 77
    .line 78
    if-gez v19, :cond_2

    .line 79
    .line 80
    shl-int/lit8 v19, v15, 0x3

    .line 81
    .line 82
    add-int v19, v19, v12

    .line 83
    .line 84
    aget-object v19, v13, v19

    .line 85
    .line 86
    move-object/from16 v5, v19

    .line 87
    .line 88
    check-cast v5, Landroidx/compose/ui/platform/coreshims/f;

    .line 89
    .line 90
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    :cond_2
    shr-long/2addr v3, v10

    .line 94
    add-int/lit8 v12, v12, 0x1

    .line 95
    .line 96
    const-wide/16 v5, 0xff

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    if-ne v11, v10, :cond_5

    .line 100
    .line 101
    :cond_4
    if-eq v15, v14, :cond_5

    .line 102
    .line 103
    add-int/lit8 v15, v15, 0x1

    .line 104
    .line 105
    move-object/from16 v12, v18

    .line 106
    .line 107
    const-wide/16 v5, 0xff

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    const/4 v5, 0x0

    .line 124
    :goto_2
    if-ge v5, v4, :cond_6

    .line 125
    .line 126
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v6

    .line 130
    check-cast v6, Landroidx/compose/ui/platform/coreshims/f;

    .line 131
    .line 132
    invoke-virtual {v6}, Landroidx/compose/ui/platform/coreshims/f;->h()Landroid/view/ViewStructure;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    add-int/lit8 v5, v5, 0x1

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    invoke-virtual {v1, v3}, Landroidx/compose/ui/platform/coreshims/d;->d(Ljava/util/List;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d:Landroidx/collection/e0;

    .line 146
    .line 147
    invoke-virtual {v2}, Landroidx/collection/e0;->i()V

    .line 148
    .line 149
    .line 150
    :cond_7
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    .line 151
    .line 152
    invoke-virtual {v2}, Landroidx/collection/q;->c()Z

    .line 153
    .line 154
    .line 155
    move-result v2

    .line 156
    if-eqz v2, :cond_d

    .line 157
    .line 158
    new-instance v2, Ljava/util/ArrayList;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v3, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    .line 164
    .line 165
    iget-object v4, v3, Landroidx/collection/q;->b:[I

    .line 166
    .line 167
    iget-object v3, v3, Landroidx/collection/q;->a:[J

    .line 168
    .line 169
    array-length v5, v3

    .line 170
    add-int/lit8 v5, v5, -0x2

    .line 171
    .line 172
    if-ltz v5, :cond_b

    .line 173
    .line 174
    const/4 v6, 0x0

    .line 175
    :goto_3
    aget-wide v11, v3, v6

    .line 176
    .line 177
    not-long v13, v11

    .line 178
    shl-long/2addr v13, v7

    .line 179
    and-long/2addr v13, v11

    .line 180
    and-long/2addr v13, v8

    .line 181
    cmp-long v13, v13, v8

    .line 182
    .line 183
    if-eqz v13, :cond_a

    .line 184
    .line 185
    sub-int v13, v6, v5

    .line 186
    .line 187
    not-int v13, v13

    .line 188
    ushr-int/lit8 v13, v13, 0x1f

    .line 189
    .line 190
    rsub-int/lit8 v13, v13, 0x8

    .line 191
    .line 192
    const/4 v14, 0x0

    .line 193
    :goto_4
    if-ge v14, v13, :cond_9

    .line 194
    .line 195
    const-wide/16 v18, 0xff

    .line 196
    .line 197
    and-long v20, v11, v18

    .line 198
    .line 199
    const-wide/16 v15, 0x80

    .line 200
    .line 201
    cmp-long v17, v20, v15

    .line 202
    .line 203
    if-gez v17, :cond_8

    .line 204
    .line 205
    shl-int/lit8 v17, v6, 0x3

    .line 206
    .line 207
    add-int v17, v17, v14

    .line 208
    .line 209
    aget v17, v4, v17

    .line 210
    .line 211
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    :cond_8
    shr-long/2addr v11, v10

    .line 219
    add-int/lit8 v14, v14, 0x1

    .line 220
    .line 221
    const/4 v7, 0x7

    .line 222
    goto :goto_4

    .line 223
    :cond_9
    const-wide/16 v15, 0x80

    .line 224
    .line 225
    const-wide/16 v18, 0xff

    .line 226
    .line 227
    if-ne v13, v10, :cond_b

    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_a
    const-wide/16 v15, 0x80

    .line 231
    .line 232
    const-wide/16 v18, 0xff

    .line 233
    .line 234
    :goto_5
    if-eq v6, v5, :cond_b

    .line 235
    .line 236
    add-int/lit8 v6, v6, 0x1

    .line 237
    .line 238
    const/4 v7, 0x7

    .line 239
    goto :goto_3

    .line 240
    :cond_b
    new-instance v3, Ljava/util/ArrayList;

    .line 241
    .line 242
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 243
    .line 244
    .line 245
    move-result v4

    .line 246
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .line 248
    .line 249
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 250
    .line 251
    .line 252
    move-result v4

    .line 253
    const/4 v11, 0x0

    .line 254
    :goto_6
    if-ge v11, v4, :cond_c

    .line 255
    .line 256
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    check-cast v5, Ljava/lang/Number;

    .line 261
    .line 262
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    int-to-long v5, v5

    .line 267
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 268
    .line 269
    .line 270
    move-result-object v5

    .line 271
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    add-int/lit8 v11, v11, 0x1

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_c
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->S0(Ljava/util/Collection;)[J

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v1, v2}, Landroidx/compose/ui/platform/coreshims/d;->e([J)V

    .line 282
    .line 283
    .line 284
    iget-object v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->e:Landroidx/collection/f0;

    .line 285
    .line 286
    invoke-virtual {v1}, Landroidx/collection/f0;->h()V

    .line 287
    .line 288
    .line 289
    :cond_d
    return-void
.end method

.method private final m(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->i:Landroidx/collection/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/collection/b;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j:Lkotlinx/coroutines/channels/d;

    .line 10
    .line 11
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method private final u(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    if-ge v3, v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    check-cast v4, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v5, v6}, Landroidx/collection/o;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-virtual {p2}, Landroidx/compose/ui/platform/c2;->a()Landroidx/collection/f0;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v4}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    invoke-virtual {v5, v6}, Landroidx/collection/q;->a(I)Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-nez v5, :cond_0

    .line 46
    .line 47
    invoke-direct {p0, v4}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->z(Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    .line 54
    .line 55
    iget-object v0, p2, Landroidx/collection/o;->b:[I

    .line 56
    .line 57
    iget-object p2, p2, Landroidx/collection/o;->a:[J

    .line 58
    .line 59
    array-length v1, p2

    .line 60
    add-int/lit8 v1, v1, -0x2

    .line 61
    .line 62
    if-ltz v1, :cond_5

    .line 63
    .line 64
    move v3, v2

    .line 65
    :goto_1
    aget-wide v4, p2, v3

    .line 66
    .line 67
    not-long v6, v4

    .line 68
    const/4 v8, 0x7

    .line 69
    shl-long/2addr v6, v8

    .line 70
    and-long/2addr v6, v4

    .line 71
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    and-long/2addr v6, v8

    .line 77
    cmp-long v6, v6, v8

    .line 78
    .line 79
    if-eqz v6, :cond_4

    .line 80
    .line 81
    sub-int v6, v3, v1

    .line 82
    .line 83
    not-int v6, v6

    .line 84
    ushr-int/lit8 v6, v6, 0x1f

    .line 85
    .line 86
    const/16 v7, 0x8

    .line 87
    .line 88
    rsub-int/lit8 v6, v6, 0x8

    .line 89
    .line 90
    move v8, v2

    .line 91
    :goto_2
    if-ge v8, v6, :cond_3

    .line 92
    .line 93
    const-wide/16 v9, 0xff

    .line 94
    .line 95
    and-long/2addr v9, v4

    .line 96
    const-wide/16 v11, 0x80

    .line 97
    .line 98
    cmp-long v9, v9, v11

    .line 99
    .line 100
    if-gez v9, :cond_2

    .line 101
    .line 102
    shl-int/lit8 v9, v3, 0x3

    .line 103
    .line 104
    add-int/2addr v9, v8

    .line 105
    aget v9, v0, v9

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 108
    .line 109
    .line 110
    move-result-object v10

    .line 111
    invoke-virtual {v10, v9}, Landroidx/collection/o;->a(I)Z

    .line 112
    .line 113
    .line 114
    move-result v10

    .line 115
    if-nez v10, :cond_2

    .line 116
    .line 117
    invoke-direct {p0, v9}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->d(I)V

    .line 118
    .line 119
    .line 120
    :cond_2
    shr-long/2addr v4, v7

    .line 121
    add-int/lit8 v8, v8, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_3
    if-ne v6, v7, :cond_5

    .line 125
    .line 126
    :cond_4
    if-eq v3, v1, :cond_5

    .line 127
    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    :goto_3
    if-ge v2, p2, :cond_8

    .line 140
    .line 141
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    check-cast v0, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 146
    .line 147
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 152
    .line 153
    .line 154
    move-result v3

    .line 155
    invoke-virtual {v1, v3}, Landroidx/collection/o;->a(I)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    .line 162
    .line 163
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    invoke-virtual {v1, v3}, Landroidx/collection/o;->a(I)Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_7

    .line 172
    .line 173
    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    .line 174
    .line 175
    invoke-virtual {v0}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    invoke-virtual {v1, v3}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    if-eqz v1, :cond_6

    .line 184
    .line 185
    check-cast v1, Landroidx/compose/ui/platform/c2;

    .line 186
    .line 187
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->u(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V

    .line 188
    .line 189
    .line 190
    goto :goto_4

    .line 191
    :cond_6
    const-string p1, "node not present in pruned tree before this change"

    .line 192
    .line 193
    invoke-static {p1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 194
    .line 195
    .line 196
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 197
    .line 198
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 199
    .line 200
    .line 201
    throw p1

    .line 202
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_8
    return-void
.end method

.method private final v(ILjava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    int-to-long v1, p1

    .line 14
    invoke-virtual {v0, v1, v2}, Landroidx/compose/ui/platform/coreshims/d;->a(J)Landroid/view/autofill/AutofillId;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/platform/coreshims/d;->c(Landroid/view/autofill/AutofillId;Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    const-string p1, "Invalid content capture ID"

    .line 25
    .line 26
    invoke-static {p1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 27
    .line 28
    .line 29
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 30
    .line 31
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method private final w(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Landroidx/collection/f0;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v1, v4, v2, v3}, Landroidx/collection/f0;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    move v5, v4

    .line 20
    :goto_0
    if-ge v5, v3, :cond_2

    .line 21
    .line 22
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v6

    .line 26
    check-cast v6, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 27
    .line 28
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    invoke-virtual {v7, v8}, Landroidx/collection/o;->a(I)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_1

    .line 41
    .line 42
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/platform/c2;->a()Landroidx/collection/f0;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 47
    .line 48
    .line 49
    move-result v8

    .line 50
    invoke-virtual {v7, v8}, Landroidx/collection/q;->a(I)Z

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    if-nez v7, :cond_0

    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-direct {v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m(Landroidx/compose/ui/node/LayoutNode;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    invoke-virtual {v6}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    invoke-virtual {v1, v6}, Landroidx/collection/f0;->f(I)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/platform/c2;->a()Landroidx/collection/f0;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v3, v2, Landroidx/collection/q;->b:[I

    .line 79
    .line 80
    iget-object v2, v2, Landroidx/collection/q;->a:[J

    .line 81
    .line 82
    array-length v5, v2

    .line 83
    add-int/lit8 v5, v5, -0x2

    .line 84
    .line 85
    if-ltz v5, :cond_6

    .line 86
    .line 87
    move v6, v4

    .line 88
    :goto_1
    aget-wide v7, v2, v6

    .line 89
    .line 90
    not-long v9, v7

    .line 91
    const/4 v11, 0x7

    .line 92
    shl-long/2addr v9, v11

    .line 93
    and-long/2addr v9, v7

    .line 94
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    and-long/2addr v9, v11

    .line 100
    cmp-long v9, v9, v11

    .line 101
    .line 102
    if-eqz v9, :cond_5

    .line 103
    .line 104
    sub-int v9, v6, v5

    .line 105
    .line 106
    not-int v9, v9

    .line 107
    ushr-int/lit8 v9, v9, 0x1f

    .line 108
    .line 109
    const/16 v10, 0x8

    .line 110
    .line 111
    rsub-int/lit8 v9, v9, 0x8

    .line 112
    .line 113
    move v11, v4

    .line 114
    :goto_2
    if-ge v11, v9, :cond_4

    .line 115
    .line 116
    const-wide/16 v12, 0xff

    .line 117
    .line 118
    and-long/2addr v12, v7

    .line 119
    const-wide/16 v14, 0x80

    .line 120
    .line 121
    cmp-long v12, v12, v14

    .line 122
    .line 123
    if-gez v12, :cond_3

    .line 124
    .line 125
    shl-int/lit8 v12, v6, 0x3

    .line 126
    .line 127
    add-int/2addr v12, v11

    .line 128
    aget v12, v3, v12

    .line 129
    .line 130
    invoke-virtual {v1, v12}, Landroidx/collection/q;->a(I)Z

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    if-nez v12, :cond_3

    .line 135
    .line 136
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->q()Landroidx/compose/ui/node/LayoutNode;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m(Landroidx/compose/ui/node/LayoutNode;)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_3
    shr-long/2addr v7, v10

    .line 145
    add-int/lit8 v11, v11, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_4
    if-ne v9, v10, :cond_6

    .line 149
    .line 150
    :cond_5
    if-eq v6, v5, :cond_6

    .line 151
    .line 152
    add-int/lit8 v6, v6, 0x1

    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    :goto_3
    if-ge v4, v2, :cond_9

    .line 164
    .line 165
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    check-cast v3, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 170
    .line 171
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 172
    .line 173
    .line 174
    move-result-object v5

    .line 175
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 176
    .line 177
    .line 178
    move-result v6

    .line 179
    invoke-virtual {v5, v6}, Landroidx/collection/o;->a(I)Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_8

    .line 184
    .line 185
    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->n:Landroidx/collection/e0;

    .line 186
    .line 187
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 188
    .line 189
    .line 190
    move-result v6

    .line 191
    invoke-virtual {v5, v6}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    if-eqz v5, :cond_7

    .line 196
    .line 197
    check-cast v5, Landroidx/compose/ui/platform/c2;

    .line 198
    .line 199
    invoke-direct {v0, v3, v5}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->w(Landroidx/compose/ui/semantics/SemanticsNode;Landroidx/compose/ui/platform/c2;)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_7
    const-string v1, "node not present in pruned tree before this change"

    .line 204
    .line 205
    invoke-static {v1}, Lg0/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    .line 206
    .line 207
    .line 208
    new-instance v1, Lkotlin/KotlinNothingValueException;

    .line 209
    .line 210
    invoke-direct {v1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 211
    .line 212
    .line 213
    throw v1

    .line 214
    :cond_8
    :goto_4
    add-int/lit8 v4, v4, 0x1

    .line 215
    .line 216
    goto :goto_3

    .line 217
    :cond_9
    return-void
.end method

.method private final x()V
    .locals 14

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h()Landroidx/collection/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, v0, Landroidx/collection/o;->c:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, v0, Landroidx/collection/o;->a:[J

    .line 8
    .line 9
    array-length v2, v0

    .line 10
    add-int/lit8 v2, v2, -0x2

    .line 11
    .line 12
    if-ltz v2, :cond_3

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    move v4, v3

    .line 16
    :goto_0
    aget-wide v5, v0, v4

    .line 17
    .line 18
    not-long v7, v5

    .line 19
    const/4 v9, 0x7

    .line 20
    shl-long/2addr v7, v9

    .line 21
    and-long/2addr v7, v5

    .line 22
    const-wide v9, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    and-long/2addr v7, v9

    .line 28
    cmp-long v7, v7, v9

    .line 29
    .line 30
    if-eqz v7, :cond_2

    .line 31
    .line 32
    sub-int v7, v4, v2

    .line 33
    .line 34
    not-int v7, v7

    .line 35
    ushr-int/lit8 v7, v7, 0x1f

    .line 36
    .line 37
    const/16 v8, 0x8

    .line 38
    .line 39
    rsub-int/lit8 v7, v7, 0x8

    .line 40
    .line 41
    move v9, v3

    .line 42
    :goto_1
    if-ge v9, v7, :cond_1

    .line 43
    .line 44
    const-wide/16 v10, 0xff

    .line 45
    .line 46
    and-long/2addr v10, v5

    .line 47
    const-wide/16 v12, 0x80

    .line 48
    .line 49
    cmp-long v10, v10, v12

    .line 50
    .line 51
    if-gez v10, :cond_0

    .line 52
    .line 53
    shl-int/lit8 v10, v4, 0x3

    .line 54
    .line 55
    add-int/2addr v10, v9

    .line 56
    aget-object v10, v1, v10

    .line 57
    .line 58
    check-cast v10, Landroidx/compose/ui/platform/d2;

    .line 59
    .line 60
    invoke-virtual {v10}, Landroidx/compose/ui/platform/d2;->b()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    sget-object v11, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 69
    .line 70
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/SemanticsProperties;->q()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 71
    .line 72
    .line 73
    move-result-object v11

    .line 74
    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v11

    .line 78
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 79
    .line 80
    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    if-eqz v11, :cond_0

    .line 85
    .line 86
    sget-object v11, Landroidx/compose/ui/semantics/h;->a:Landroidx/compose/ui/semantics/h;

    .line 87
    .line 88
    invoke-virtual {v11}, Landroidx/compose/ui/semantics/h;->z()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    invoke-static {v10, v11}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v10

    .line 96
    check-cast v10, Landroidx/compose/ui/semantics/a;

    .line 97
    .line 98
    if-eqz v10, :cond_0

    .line 99
    .line 100
    invoke-virtual {v10}, Landroidx/compose/ui/semantics/a;->a()Lkotlin/Function;

    .line 101
    .line 102
    .line 103
    move-result-object v10

    .line 104
    check-cast v10, Lkotlin/jvm/functions/Function1;

    .line 105
    .line 106
    if-eqz v10, :cond_0

    .line 107
    .line 108
    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 109
    .line 110
    invoke-interface {v10, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    check-cast v10, Ljava/lang/Boolean;

    .line 115
    .line 116
    :cond_0
    shr-long/2addr v5, v8

    .line 117
    add-int/lit8 v9, v9, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_1
    if-ne v7, v8, :cond_3

    .line 121
    .line 122
    :cond_2
    if-eq v4, v2, :cond_3

    .line 123
    .line 124
    add-int/lit8 v4, v4, 0x1

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    return-void
.end method

.method private final y(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/platform/coreshims/f;
    .locals 13

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/16 v3, 0x1d

    .line 10
    .line 11
    if-ge v2, v3, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    iget-object v2, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 15
    .line 16
    invoke-static {v2}, Landroidx/compose/ui/platform/coreshims/e;->a(Landroid/view/View;)Landroidx/compose/ui/platform/coreshims/b;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_2

    .line 21
    .line 22
    return-object v1

    .line 23
    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->r()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    if-eqz v3, :cond_3

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    int-to-long v2, v2

    .line 34
    invoke-virtual {v0, v2, v3}, Landroidx/compose/ui/platform/coreshims/d;->a(J)Landroid/view/autofill/AutofillId;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_4

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_3
    invoke-virtual {v2}, Landroidx/compose/ui/platform/coreshims/b;->a()Landroid/view/autofill/AutofillId;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :cond_4
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    int-to-long v3, v3

    .line 50
    invoke-virtual {v0, v2, v3, v4}, Landroidx/compose/ui/platform/coreshims/d;->b(Landroid/view/autofill/AutofillId;J)Landroidx/compose/ui/platform/coreshims/f;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_5

    .line 55
    .line 56
    return-object v1

    .line 57
    :cond_5
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->w()Landroidx/compose/ui/semantics/i;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    sget-object v3, Landroidx/compose/ui/semantics/SemanticsProperties;->a:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->v()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v2, v4}, Landroidx/compose/ui/semantics/i;->e(Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_6

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_6
    invoke-virtual {v0}, Landroidx/compose/ui/platform/coreshims/f;->a()Landroid/os/Bundle;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eqz v4, :cond_7

    .line 79
    .line 80
    const-string v5, "android.view.contentcapture.EventTimestamp"

    .line 81
    .line 82
    iget-wide v6, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m:J

    .line 83
    .line 84
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 85
    .line 86
    .line 87
    :cond_7
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->B()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-static {v2, v4}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    check-cast v4, Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v4, :cond_8

    .line 98
    .line 99
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {v0, v5, v1, v1, v4}, Landroidx/compose/ui/platform/coreshims/f;->e(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_8
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->C()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    move-object v4, v1

    .line 115
    check-cast v4, Ljava/util/List;

    .line 116
    .line 117
    if-eqz v4, :cond_9

    .line 118
    .line 119
    const-string v1, "android.widget.TextView"

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/f;->b(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const/16 v11, 0x3e

    .line 125
    .line 126
    const/4 v12, 0x0

    .line 127
    const-string v5, "\n"

    .line 128
    .line 129
    const/4 v6, 0x0

    .line 130
    const/4 v7, 0x0

    .line 131
    const/4 v8, 0x0

    .line 132
    const/4 v9, 0x0

    .line 133
    const/4 v10, 0x0

    .line 134
    invoke-static/range {v4 .. v12}, Lq0/a;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/f;->f(Ljava/lang/CharSequence;)V

    .line 139
    .line 140
    .line 141
    :cond_9
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->g()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString;

    .line 150
    .line 151
    if-eqz v1, :cond_a

    .line 152
    .line 153
    const-string v4, "android.widget.EditText"

    .line 154
    .line 155
    invoke-virtual {v0, v4}, Landroidx/compose/ui/platform/coreshims/f;->b(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/f;->f(Ljava/lang/CharSequence;)V

    .line 159
    .line 160
    .line 161
    :cond_a
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->d()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-static {v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    move-object v4, v1

    .line 170
    check-cast v4, Ljava/util/List;

    .line 171
    .line 172
    if-eqz v4, :cond_b

    .line 173
    .line 174
    const/16 v11, 0x3e

    .line 175
    .line 176
    const/4 v12, 0x0

    .line 177
    const-string v5, "\n"

    .line 178
    .line 179
    const/4 v6, 0x0

    .line 180
    const/4 v7, 0x0

    .line 181
    const/4 v8, 0x0

    .line 182
    const/4 v9, 0x0

    .line 183
    const/4 v10, 0x0

    .line 184
    invoke-static/range {v4 .. v12}, Lq0/a;->d(Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/f;->c(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    :cond_b
    invoke-virtual {v3}, Landroidx/compose/ui/semantics/SemanticsProperties;->x()Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v2, v1}, Landroidx/compose/ui/semantics/SemanticsConfigurationKt;->a(Landroidx/compose/ui/semantics/i;Landroidx/compose/ui/semantics/SemanticsPropertyKey;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Landroidx/compose/ui/semantics/f;

    .line 200
    .line 201
    if-eqz v1, :cond_c

    .line 202
    .line 203
    invoke-virtual {v1}, Landroidx/compose/ui/semantics/f;->n()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-static {v1}, Landroidx/compose/ui/platform/e2;->h(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    if-eqz v1, :cond_c

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/coreshims/f;->b(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :cond_c
    invoke-static {v2}, Landroidx/compose/ui/platform/e2;->e(Landroidx/compose/ui/semantics/i;)Landroidx/compose/ui/text/z;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    if-eqz v1, :cond_d

    .line 221
    .line 222
    invoke-virtual {v1}, Landroidx/compose/ui/text/z;->k()Landroidx/compose/ui/text/y;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1}, Landroidx/compose/ui/text/y;->i()Landroidx/compose/ui/text/d0;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v2}, Landroidx/compose/ui/text/d0;->l()J

    .line 231
    .line 232
    .line 233
    move-result-wide v2

    .line 234
    invoke-static {v2, v3}, Lo0/w;->h(J)F

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    invoke-virtual {v1}, Landroidx/compose/ui/text/y;->b()Lo0/e;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-interface {v3}, Lo0/e;->getDensity()F

    .line 243
    .line 244
    .line 245
    move-result v3

    .line 246
    mul-float/2addr v2, v3

    .line 247
    invoke-virtual {v1}, Landroidx/compose/ui/text/y;->b()Lo0/e;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-interface {v1}, Lo0/n;->B0()F

    .line 252
    .line 253
    .line 254
    move-result v1

    .line 255
    mul-float/2addr v2, v1

    .line 256
    const/4 v1, 0x0

    .line 257
    invoke-virtual {v0, v2, v1, v1, v1}, Landroidx/compose/ui/platform/coreshims/f;->g(FIII)V

    .line 258
    .line 259
    .line 260
    :cond_d
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->h()Ly/i;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-virtual {p1}, Ly/i;->f()F

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    float-to-int v6, v1

    .line 269
    invoke-virtual {p1}, Ly/i;->i()F

    .line 270
    .line 271
    .line 272
    move-result v1

    .line 273
    float-to-int v7, v1

    .line 274
    invoke-virtual {p1}, Ly/i;->k()F

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    float-to-int v10, v1

    .line 279
    invoke-virtual {p1}, Ly/i;->e()F

    .line 280
    .line 281
    .line 282
    move-result p1

    .line 283
    float-to-int v11, p1

    .line 284
    const/4 v8, 0x0

    .line 285
    const/4 v9, 0x0

    .line 286
    move-object v5, v0

    .line 287
    invoke-virtual/range {v5 .. v11}, Landroidx/compose/ui/platform/coreshims/f;->d(IIIIII)V

    .line 288
    .line 289
    .line 290
    return-object v0
.end method

.method private final z(Landroidx/compose/ui/semantics/SemanticsNode;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->C(Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->o()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-direct {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->y(Landroidx/compose/ui/semantics/SemanticsNode;)Landroidx/compose/ui/platform/coreshims/f;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {p0, v0, v1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c(ILandroidx/compose/ui/platform/coreshims/f;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/SemanticsNode;->t()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-ge v1, v0, :cond_1

    .line 32
    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Landroidx/compose/ui/semantics/SemanticsNode;

    .line 38
    .line 39
    invoke-direct {p0, v2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->z(Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 40
    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

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
    iput v1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;-><init>(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Lkotlin/coroutines/Continuation;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_4

    .line 36
    .line 37
    if-eq v2, v4, :cond_3

    .line 38
    .line 39
    if-ne v2, v3, :cond_2

    .line 40
    .line 41
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v2, Lkotlinx/coroutines/channels/f;

    .line 44
    .line 45
    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 48
    .line 49
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    :cond_1
    move-object p1, v2

    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_3
    iget-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v2, Lkotlinx/coroutines/channels/f;

    .line 68
    .line 69
    iget-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;

    .line 72
    .line 73
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->b(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :try_start_2
    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j:Lkotlinx/coroutines/channels/d;

    .line 81
    .line 82
    invoke-interface {p1}, Lkotlinx/coroutines/channels/r;->iterator()Lkotlinx/coroutines/channels/f;

    .line 83
    .line 84
    .line 85
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 86
    move-object v5, p0

    .line 87
    :goto_1
    :try_start_3
    iput-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 88
    .line 89
    iput-object p1, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 90
    .line 91
    iput v4, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    .line 92
    .line 93
    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/f;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    if-ne v2, v1, :cond_5

    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_5
    move-object v8, v2

    .line 101
    move-object v2, p1

    .line 102
    move-object p1, v8

    .line 103
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_8

    .line 110
    .line 111
    invoke-interface {v2}, Lkotlinx/coroutines/channels/f;->next()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    if-eqz p1, :cond_6

    .line 119
    .line 120
    invoke-direct {v5}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l()V

    .line 121
    .line 122
    .line 123
    :cond_6
    iget-boolean p1, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    .line 124
    .line 125
    if-nez p1, :cond_7

    .line 126
    .line 127
    iput-boolean v4, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    .line 128
    .line 129
    iget-object p1, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k:Landroid/os/Handler;

    .line 130
    .line 131
    iget-object v6, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->q:Ljava/lang/Runnable;

    .line 132
    .line 133
    invoke-virtual {p1, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 134
    .line 135
    .line 136
    :cond_7
    iget-object p1, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->i:Landroidx/collection/b;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroidx/collection/b;->clear()V

    .line 139
    .line 140
    .line 141
    iget-wide v6, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->f:J

    .line 142
    .line 143
    iput-object v5, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$0:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object v2, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->L$1:Ljava/lang/Object;

    .line 146
    .line 147
    iput v3, v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$boundsUpdatesEventLoop$1;->label:I

    .line 148
    .line 149
    invoke-static {v6, v7, v0}, Lkotlinx/coroutines/u0;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    if-ne p1, v1, :cond_1

    .line 154
    .line 155
    return-object v1

    .line 156
    :cond_8
    iget-object p1, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->i:Landroidx/collection/b;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroidx/collection/b;->clear()V

    .line 159
    .line 160
    .line 161
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    return-object p1

    .line 164
    :catchall_1
    move-exception p1

    .line 165
    move-object v5, p0

    .line 166
    :goto_3
    iget-object v0, v5, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->i:Landroidx/collection/b;

    .line 167
    .line 168
    invoke-virtual {v0}, Landroidx/collection/b;->clear()V

    .line 169
    .line 170
    .line 171
    throw p1
.end method

.method public final h()Landroidx/collection/o;
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroidx/compose/ui/platform/e2;->b(Landroidx/compose/ui/semantics/m;)Landroidx/collection/o;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l:Landroidx/collection/o;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m:J

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l:Landroidx/collection/o;

    .line 27
    .line 28
    return-object v0
.end method

.method public final i()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/contentcapture/m;->b1:Landroidx/compose/ui/contentcapture/m$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/contentcapture/m$a;->a()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final n()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->f()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o([J[ILjava/util/function/Consumer;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;->a:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;->c(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;[J[ILjava/util/function/Consumer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->a(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->b(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->c(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/lifecycle/e;->d(Landroidx/lifecycle/f;Landroidx/lifecycle/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onStart(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->b:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroidx/compose/ui/platform/coreshims/d;

    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    .line 10
    .line 11
    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->z(Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public onStop(Landroidx/lifecycle/u;)V
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->a:Landroidx/compose/ui/platform/AndroidComposeView;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getSemanticsOwner()Landroidx/compose/ui/semantics/m;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroidx/compose/ui/semantics/m;->a()Landroidx/compose/ui/semantics/SemanticsNode;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->A(Landroidx/compose/ui/semantics/SemanticsNode;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->l()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    .line 19
    .line 20
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->q:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->c:Landroidx/compose/ui/platform/coreshims/d;

    .line 10
    .line 11
    return-void
.end method

.method public final p()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_ORIGINAL:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->j()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->m(Landroidx/compose/ui/node/LayoutNode;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final r()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->h:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-boolean v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iput-boolean v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->p:Z

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->k:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->q:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;->SHOW_TRANSLATED:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 2
    .line 3
    iput-object v0, p0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->g:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$TranslateStatus;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;->x()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final t(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;->a:Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager$a;->d(Landroidx/compose/ui/contentcapture/AndroidContentCaptureManager;Landroid/util/LongSparseArray;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
