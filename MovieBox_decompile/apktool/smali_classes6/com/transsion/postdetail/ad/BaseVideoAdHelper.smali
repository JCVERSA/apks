.class public abstract Lcom/transsion/postdetail/ad/BaseVideoAdHelper;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;
    }
.end annotation


# static fields
.field public static final P:Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;


# instance fields
.field private final A:Ljava/lang/String;

.field private B:Lcom/tn/lib/view/bubbleview/BubbleTextView;

.field private C:Landroid/animation/AnimatorSet;

.field private D:I

.field private E:I

.field private final F:Lkotlin/Lazy;

.field private final G:Lkotlin/Lazy;

.field private final H:Lkotlin/Lazy;

.field private final I:Lkotlin/Lazy;

.field private final J:Lkotlin/Lazy;

.field private K:I

.field private final L:Lkotlin/Lazy;

.field private M:Lf4/a;

.field private N:Lcom/transsion/postdetail/ad/VideoFloatingView;

.field private O:Ljava/lang/String;

.field private a:Landroidx/lifecycle/LifecycleCoroutineScope;

.field private b:Ljava/lang/String;

.field private c:Lkotlin/jvm/functions/Function1;

.field private d:Lkotlin/jvm/functions/Function0;

.field private e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

.field private f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:J

.field private m:Z

.field private n:I

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Landroid/os/CountDownTimer;

.field private u:Landroid/os/CountDownTimer;

.field private v:J

.field private w:J

.field private x:J

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P:Lcom/transsion/postdetail/ad/BaseVideoAdHelper$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "bubble_tip_video_start"

    .line 9
    .line 10
    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "bubble_tip_interpolate"

    .line 13
    .line 14
    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, "floating_show_time"

    .line 17
    .line 18
    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Lcom/transsion/postdetail/ad/q;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/q;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F:Lkotlin/Lazy;

    .line 30
    .line 31
    new-instance v1, Lcom/transsion/postdetail/ad/r;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/r;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->G:Lkotlin/Lazy;

    .line 41
    .line 42
    new-instance v1, Lcom/transsion/postdetail/ad/s;

    .line 43
    .line 44
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/s;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H:Lkotlin/Lazy;

    .line 52
    .line 53
    new-instance v1, Lcom/transsion/postdetail/ad/t;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/t;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I:Lkotlin/Lazy;

    .line 63
    .line 64
    new-instance v1, Lcom/transsion/postdetail/ad/u;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/u;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->J:Lkotlin/Lazy;

    .line 74
    .line 75
    new-instance v1, Lcom/transsion/postdetail/ad/v;

    .line 76
    .line 77
    invoke-direct {v1}, Lcom/transsion/postdetail/ad/v;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {v1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L:Lkotlin/Lazy;

    .line 85
    .line 86
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O:Ljava/lang/String;

    .line 87
    .line 88
    return-void
.end method

.method public static final synthetic A(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final A0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "VideoStartBidScene"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "interval"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x5a0

    .line 25
    .line 26
    :goto_0
    const v1, 0xea60

    .line 27
    .line 28
    .line 29
    mul-int/2addr v0, v1

    .line 30
    return v0
.end method

.method public static final synthetic B(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h0()Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_7

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    const/high16 v2, 0x43d50000    # 426.0f

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/high16 v2, 0x435b0000    # 219.0f

    .line 21
    .line 22
    :goto_0
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 27
    .line 28
    iget-boolean v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    const/high16 v2, 0x43700000    # 240.0f

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    const/high16 v2, 0x42f60000    # 123.0f

    .line 36
    .line 37
    :goto_1
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    .line 43
    :cond_2
    sget v1, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    if-eqz v0, :cond_7

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 58
    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    const/4 v1, 0x0

    .line 65
    :goto_2
    if-eqz v1, :cond_5

    .line 66
    .line 67
    iget-boolean v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 68
    .line 69
    if-eqz v2, :cond_4

    .line 70
    .line 71
    const/high16 v2, 0x42000000    # 32.0f

    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_4
    const/high16 v2, 0x41a00000    # 20.0f

    .line 75
    .line 76
    :goto_3
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 81
    .line 82
    const/high16 v2, 0x41000000    # 8.0f

    .line 83
    .line 84
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 89
    .line 90
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 91
    .line 92
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 93
    .line 94
    if-eqz v1, :cond_6

    .line 95
    .line 96
    const/high16 v1, 0x41600000    # 14.0f

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_6
    const/high16 v1, 0x41400000    # 12.0f

    .line 100
    .line 101
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 102
    .line 103
    .line 104
    :cond_7
    return-void
.end method

.method public static final synthetic C(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->S1(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic D(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b2(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic E(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f2(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic F(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m2(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final G0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W()Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/transsion/postdetail/ad/d;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/d;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final G1()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z0()Landroid/widget/ImageView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_4

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/high16 v1, 0x42300000    # 44.0f

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/high16 v1, 0x41e00000    # 28.0f

    .line 29
    .line 30
    :goto_1
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 35
    .line 36
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 37
    .line 38
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 39
    .line 40
    const/high16 v2, 0x41800000    # 16.0f

    .line 41
    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    move v1, v2

    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const/high16 v1, 0x41400000    # 12.0f

    .line 47
    .line 48
    :goto_2
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 55
    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/high16 v2, 0x41200000    # 10.0f

    .line 60
    .line 61
    :goto_3
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method private static final H0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, p1, v0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->M(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private static final I0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->l0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final J(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 1

    .line 1
    const-string v0, "VideoInterpolateBidScene"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->X(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static final J0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final K(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 1

    .line 1
    const-string v0, "VideoStartBidScene"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->X(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static final K0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->n0()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final K1(Landroid/view/ViewGroup;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    const-string v1, "adVolumeImage"

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/widget/ImageView;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object p1, v0

    .line 14
    :goto_0
    if-eqz p1, :cond_6

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    instance-of v1, p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    move-object v0, p1

    .line 25
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 26
    .line 27
    :cond_1
    if-eqz v0, :cond_6

    .line 28
    .line 29
    const p1, 0x800053

    .line 30
    .line 31
    .line 32
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    const/high16 p1, 0x41000000    # 8.0f

    .line 37
    .line 38
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 43
    .line 44
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 45
    .line 46
    const/high16 p1, 0x41a00000    # 20.0f

    .line 47
    .line 48
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 53
    .line 54
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_2
    iget-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 58
    .line 59
    const/high16 p2, 0x41800000    # 16.0f

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    move p1, p2

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    const/high16 p1, 0x41400000    # 12.0f

    .line 66
    .line 67
    :goto_1
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 72
    .line 73
    iget-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    const/high16 p2, 0x41200000    # 10.0f

    .line 79
    .line 80
    :goto_2
    invoke-static {p2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 85
    .line 86
    iget-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 87
    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    const/high16 p1, 0x42300000    # 44.0f

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_5
    const/high16 p1, 0x41e00000    # 28.0f

    .line 94
    .line 95
    :goto_3
    invoke-static {p1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 100
    .line 101
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 102
    .line 103
    :cond_6
    :goto_4
    return-void
.end method

.method public static synthetic M(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 0

    .line 1
    if-nez p4, :cond_1

    .line 2
    .line 3
    and-int/lit8 p3, p3, 0x2

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L(ZLkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 13
    .line 14
    const-string p1, "Super calls with default arguments not supported in this target, function: checkMember"

    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method private static final M1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h2()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D:I

    .line 9
    .line 10
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y:Ljava/lang/String;

    .line 17
    .line 18
    iget p0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final N1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h2()V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    .line 9
    .line 10
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z:Ljava/lang/String;

    .line 17
    .line 18
    iget p0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    .line 19
    .line 20
    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final O1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->S0()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    .line 18
    .line 19
    new-instance v0, Lcom/transsion/postdetail/ad/g;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/g;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/transsion/postdetail/ad/h;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/transsion/postdetail/ad/h;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Y0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    return-void
.end method

.method private static final P1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->i2()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final Q1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private final R0(IJ)Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p2

    .line 10
    int-to-long v0, p1

    .line 11
    cmp-long p1, p2, v0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method private final R1(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->q:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    .line 12
    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->r:Z

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g0()Landroid/view/ViewGroup;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    move-object v2, v0

    .line 35
    check-cast v2, Landroidx/appcompat/app/AppCompatActivity;

    .line 36
    .line 37
    const/4 v5, 0x4

    .line 38
    const/4 v6, 0x0

    .line 39
    const/4 v4, 0x0

    .line 40
    move-object v3, p1

    .line 41
    invoke-static/range {v1 .. v6}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->O0(Lcom/transsion/ad/bidding/base/AbsAdBidding;Landroid/app/Activity;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R()V

    .line 45
    .line 46
    .line 47
    :cond_2
    :goto_0
    return-void
.end method

.method private static final S()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "VideoFloatingNativeScene"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "showMax"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0xa

    .line 25
    .line 26
    :goto_0
    return v0
.end method

.method private final S1(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    .line 5
    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m:Z

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->l:J

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g0()Landroid/view/ViewGroup;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object v1, Low/b;->a:Low/b;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    invoke-virtual {v1, v0, v2}, Low/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 50
    .line 51
    invoke-virtual {v1, v2, v0, p2}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    const/4 p2, 0x0

    .line 55
    invoke-virtual {p0, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->l1(Z)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g0()Landroid/view/ViewGroup;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->V0()V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private final T(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, -0xa47baab

    .line 6
    .line 7
    .line 8
    const/16 v2, 0xa

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const v1, -0x462e08a

    .line 13
    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const v1, 0x7a28f02f

    .line 18
    .line 19
    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v0, "VideoEndBidScene"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object p1, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_6

    .line 39
    .line 40
    const-string v0, "videoEndAdCountdownTime"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_6

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const-string v0, "VideoStartBidScene"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    sget-object p1, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_6

    .line 69
    .line 70
    const-string v0, "videoStartAdCountdownTime"

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_6

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    goto :goto_1

    .line 83
    :cond_4
    const-string v0, "VideoInterpolateBidScene"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    :goto_0
    const/4 v2, 0x0

    .line 92
    goto :goto_1

    .line 93
    :cond_5
    sget-object p1, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    const-string v0, "videoInterpolateAdCountdownTime"

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    if-eqz p1, :cond_6

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    :cond_6
    :goto_1
    return v2
.end method

.method private static final U1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final V1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    .line 3
    .line 4
    .line 5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 6
    .line 7
    return-object p0
.end method

.method private final W0()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->n:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->q0()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-ge v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private final W1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v7, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p0

    .line 11
    move-object v4, p2

    .line 12
    move-object v5, p3

    .line 13
    invoke-direct/range {v1 .. v6}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$showSceneAd$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 14
    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    move-object v3, v7

    .line 21
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method private final X(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const-string v0, "bubbleFrequency"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x3

    .line 23
    :goto_0
    return p1
.end method

.method static synthetic X1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V
    .locals 1

    .line 1
    if-nez p5, :cond_2

    .line 2
    .line 3
    and-int/lit8 p5, p4, 0x2

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p5, :cond_0

    .line 7
    .line 8
    move-object p2, v0

    .line 9
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    move-object p3, v0

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 19
    .line 20
    const-string p1, "Super calls with default arguments not supported in this target, function: showSceneAd"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method private final Y0(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ad/m;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/transsion/postdetail/ad/m;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/transsion/postdetail/ad/n;

    .line 7
    .line 8
    invoke-direct {p1, p0, p2}, Lcom/transsion/postdetail/ad/n;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    const-string p2, "VideoInterpolateBidScene"

    .line 12
    .line 13
    invoke-direct {p0, p2, v0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final Z0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final Z1()Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic a(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a0(J)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "s"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method private static final a1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method private static final a2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f1()V

    .line 11
    .line 12
    .line 13
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object p0
.end method

.method public static synthetic b(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b2(Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    .line 8
    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k:Z

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    sget-object v2, Low/b;->a:Low/b;

    .line 25
    .line 26
    iget-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 27
    .line 28
    if-eqz v3, :cond_1

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->getSceneId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v3, 0x0

    .line 36
    :goto_0
    invoke-virtual {v2, v1, v3}, Low/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/transsion/ad/bidding/base/r;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->V()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_2

    .line 45
    .line 46
    iget-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 47
    .line 48
    invoke-virtual {v2, v3, v1, p1}, Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;->bindNativeView(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;Lcom/transsion/ad/bidding/base/r;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->l1(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h0()Landroid/view/ViewGroup;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->t0()Landroid/widget/ImageView;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    new-instance v0, Lcom/transsion/postdetail/ad/e;

    .line 71
    .line 72
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/e;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static synthetic c(Lcom/hisavana/mediation/ad/TMediaView;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s1(Lcom/hisavana/mediation/ad/TMediaView;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->S()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private final d1(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v3, p1, p0, p2, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$onAdLoad$1;-><init>(Ljava/lang/String;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;Lkotlin/coroutines/Continuation;)V

    .line 11
    .line 12
    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static synthetic e()Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Z1()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final e2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f1()V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static synthetic f(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->U1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d:Lkotlin/jvm/functions/Function0;

    .line 10
    .line 11
    return-void
.end method

.method private final f2(Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "VideoStartBidScene"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const-string v0, "VideoInterpolateBidScene"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->i0()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lt p1, v0, :cond_2

    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->M:Lf4/a;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    if-eqz p1, :cond_5

    .line 40
    .line 41
    invoke-interface {p1}, Lf4/a;->getRoot()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    instance-of v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 46
    .line 47
    if-eqz v1, :cond_3

    .line 48
    .line 49
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object p1, v0

    .line 55
    :goto_0
    if-nez p1, :cond_4

    .line 56
    .line 57
    return-void

    .line 58
    :cond_4
    new-instance v1, Lcom/transsion/postdetail/ad/VideoFloatingView;

    .line 59
    .line 60
    sget-object v2, Lcom/transsion/gslb/GslbSdk;->context:Landroid/content/Context;

    .line 61
    .line 62
    const-string v3, "context"

    .line 63
    .line 64
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 v3, 0x2

    .line 68
    invoke-direct {v1, v2, v0, v3, v0}, Lcom/transsion/postdetail/ad/VideoFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N:Lcom/transsion/postdetail/ad/VideoFloatingView;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 74
    .line 75
    new-instance v2, Lcom/transsion/postdetail/ad/p;

    .line 76
    .line 77
    invoke-direct {v2, p0}, Lcom/transsion/postdetail/ad/p;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v0, p1, v2}, Lcom/transsion/postdetail/ad/VideoFloatingView;->show(Landroidx/lifecycle/LifecycleCoroutineScope;Landroidx/constraintlayout/widget/ConstraintLayout;Lkotlin/jvm/functions/Function0;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    :cond_5
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    goto :goto_2

    .line 90
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 91
    .line 92
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    .line 101
    .line 102
    .line 103
    :cond_6
    return-void
.end method

.method public static synthetic g(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g1()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    .line 10
    .line 11
    return-void
.end method

.method private static final g2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 2

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K:I

    .line 6
    .line 7
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A:Ljava/lang/String;

    .line 14
    .line 15
    iget p0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, p0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    return-object p0
.end method

.method public static synthetic h(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final h2()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v1, Lcom/transsion/wrapperad/R$id;->bubble_tip:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/tn/lib/view/bubbleview/BubbleTextView;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x3

    .line 22
    new-array v1, v1, [F

    .line 23
    .line 24
    fill-array-data v1, :array_0

    .line 25
    .line 26
    .line 27
    const-string v2, "translationY"

    .line 28
    .line 29
    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-wide/16 v2, 0x384

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 36
    .line 37
    .line 38
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 39
    .line 40
    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 44
    .line 45
    .line 46
    const/4 v2, -0x1

    .line 47
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 48
    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 52
    .line 53
    .line 54
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 55
    .line 56
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Luf/c;->k(Landroid/view/View;)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C:Landroid/animation/AnimatorSet;

    .line 69
    .line 70
    :cond_1
    return-void

    .line 71
    :array_0
    .array-data 4
        -0x3df40000    # -35.0f
        0x41700000    # 15.0f
        -0x3df40000    # -35.0f
    .end array-data
.end method

.method public static synthetic i(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->J0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final i1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v2, Lcom/transsion/wrapperad/R$id;->adChoicesViewCard:I

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/cardview/widget/CardView;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_a

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v2, v1

    .line 32
    :goto_1
    if-eqz v2, :cond_3

    .line 33
    .line 34
    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 35
    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    const/high16 v3, 0x41800000    # 16.0f

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_2
    const/high16 v3, 0x41400000    # 12.0f

    .line 42
    .line 43
    :goto_2
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 48
    .line 49
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 50
    .line 51
    :cond_3
    const/4 v2, 0x0

    .line 52
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    instance-of v3, v0, Lcom/hisavana/mediation/ad/TAdChoicesView;

    .line 57
    .line 58
    if-eqz v3, :cond_4

    .line 59
    .line 60
    check-cast v0, Lcom/hisavana/mediation/ad/TAdChoicesView;

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move-object v0, v1

    .line 64
    :goto_3
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_4

    .line 71
    :cond_5
    move-object v0, v1

    .line 72
    :goto_4
    if-eqz v0, :cond_9

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 79
    .line 80
    if-eqz v3, :cond_6

    .line 81
    .line 82
    const/high16 v3, 0x41d00000    # 26.0f

    .line 83
    .line 84
    goto :goto_5

    .line 85
    :cond_6
    const/high16 v3, 0x41b00000    # 22.0f

    .line 86
    .line 87
    :goto_5
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 92
    .line 93
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 94
    .line 95
    instance-of v2, v0, Landroid/widget/ImageView;

    .line 96
    .line 97
    if-eqz v2, :cond_7

    .line 98
    .line 99
    move-object v1, v0

    .line 100
    check-cast v1, Landroid/widget/ImageView;

    .line 101
    .line 102
    :cond_7
    if-eqz v1, :cond_8

    .line 103
    .line 104
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 107
    .line 108
    .line 109
    :cond_8
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k1()V

    .line 110
    .line 111
    .line 112
    goto :goto_6

    .line 113
    :cond_9
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k1()V

    .line 114
    .line 115
    .line 116
    :cond_a
    :goto_6
    return-void
.end method

.method private final i2()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->p0()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-long v0, v0

    .line 17
    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    .line 18
    .line 19
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    .line 20
    .line 21
    .line 22
    const/16 v3, 0x3e8

    .line 23
    .line 24
    int-to-long v3, v3

    .line 25
    div-long v3, v0, v3

    .line 26
    .line 27
    iput-wide v3, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    .line 35
    invoke-static {v3}, Luf/c;->k(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/transsion/postdetail/ad/AdInterceptTimerView;->getBind()Lwn/d;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    if-eqz v3, :cond_2

    .line 49
    .line 50
    iget-object v3, v3, Lwn/d;->d:Landroid/widget/TextView;

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    iget-wide v4, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    .line 55
    .line 56
    invoke-direct {p0, v4, v5}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a0(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    if-eqz v3, :cond_3

    .line 68
    .line 69
    invoke-virtual {v3}, Lcom/transsion/postdetail/ad/AdInterceptTimerView;->getBind()Lwn/d;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    if-eqz v3, :cond_3

    .line 74
    .line 75
    iget-object v3, v3, Lwn/d;->f:Landroid/widget/TextView;

    .line 76
    .line 77
    if-eqz v3, :cond_3

    .line 78
    .line 79
    new-instance v4, Lcom/transsion/postdetail/ad/k;

    .line 80
    .line 81
    invoke-direct {v4, p0}, Lcom/transsion/postdetail/ad/k;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;

    .line 88
    .line 89
    invoke-direct {v3, v0, v1, p0, v2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$d;-><init>(JLcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/internal/Ref$LongRef;)V

    .line 90
    .line 91
    .line 92
    iput-object v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->u:Landroid/os/CountDownTimer;

    .line 93
    .line 94
    invoke-virtual {v3}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method public static synthetic j(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x2

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {p0, v1, p1, v0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->M(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;ZLkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static synthetic k(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final k1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W()Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_8

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    const/high16 v2, 0x41400000    # 12.0f

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    const/high16 v3, 0x41800000    # 16.0f

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v3, v2

    .line 31
    :goto_1
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 36
    .line 37
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 38
    .line 39
    :cond_2
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    const/high16 v2, 0x41600000    # 14.0f

    .line 44
    .line 45
    :cond_3
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->getBind()Lwn/l0;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_5

    .line 50
    .line 51
    iget-object v1, v1, Lwn/l0;->d:Landroid/widget/TextView;

    .line 52
    .line 53
    if-eqz v1, :cond_5

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    iget-boolean v4, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 60
    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    const/high16 v4, 0x41e00000    # 28.0f

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    const/high16 v4, 0x41c00000    # 24.0f

    .line 67
    .line 68
    :goto_2
    invoke-static {v4}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 75
    .line 76
    .line 77
    :cond_5
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->getBind()Lwn/l0;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    iget-object v1, v1, Lwn/l0;->e:Landroid/widget/TextView;

    .line 84
    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    .line 89
    .line 90
    :cond_6
    invoke-virtual {v0}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->getBind()Lwn/l0;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    iget-object v0, v0, Lwn/l0;->b:Landroid/widget/ImageView;

    .line 97
    .line 98
    if-eqz v0, :cond_8

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 105
    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    const/high16 v1, 0x41900000    # 18.0f

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_7
    const/high16 v1, 0x41700000    # 15.0f

    .line 112
    .line 113
    :goto_3
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 118
    .line 119
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    .line 121
    :cond_8
    return-void
.end method

.method private final k2()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C:Landroid/animation/AnimatorSet;

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic l(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic m(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H0(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final m1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v1, Lcom/transsion/wrapperad/R$id;->bubble_tip:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/tn/lib/view/bubbleview/BubbleTextView;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B:Lcom/tn/lib/view/bubbleview/BubbleTextView;

    .line 18
    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    const/high16 v1, 0x41800000    # 16.0f

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/high16 v1, 0x41400000    # 12.0f

    .line 29
    .line 30
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 31
    .line 32
    .line 33
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/high16 v1, 0x42dc0000    # 110.0f

    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_2
    const/high16 v1, 0x42b40000    # 90.0f

    .line 41
    .line 42
    :goto_2
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    int-to-float v1, v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/tn/lib/view/bubbleview/BubbleTextView;->setArrowPosition(F)V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method private final m2(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1, p3}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$wrapperAdListener$1;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static synthetic n(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Z0(Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->V1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic p(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->M1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final p1()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    const/high16 v2, 0x41400000    # 12.0f

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    const/high16 v3, 0x41800000    # 16.0f

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v3, v2

    .line 31
    :goto_1
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 36
    .line 37
    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v3, 0x0

    .line 42
    :goto_2
    if-ge v3, v1, :cond_5

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    instance-of v5, v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    if-eqz v5, :cond_4

    .line 51
    .line 52
    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    iget-boolean v5, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 55
    .line 56
    if-eqz v5, :cond_3

    .line 57
    .line 58
    const/high16 v5, 0x41600000    # 14.0f

    .line 59
    .line 60
    goto :goto_3

    .line 61
    :cond_3
    move v5, v2

    .line 62
    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 63
    .line 64
    .line 65
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_5
    return-void
.end method

.method public static synthetic q(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->J(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final q1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k0()Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    if-eqz v0, :cond_3

    .line 20
    .line 21
    const/4 v1, -0x1

    .line 22
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 23
    .line 24
    iget-boolean v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 25
    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C0()Landroid/view/ViewGroup;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 41
    .line 42
    int-to-double v1, v1

    .line 43
    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    .line 44
    .line 45
    mul-double/2addr v1, v3

    .line 46
    const/16 v3, 0x10

    .line 47
    .line 48
    int-to-double v3, v3

    .line 49
    div-double/2addr v1, v3

    .line 50
    double-to-int v1, v1

    .line 51
    :goto_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 52
    .line 53
    :cond_3
    return-void
.end method

.method public static synthetic r(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final r1()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->R0()Z

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
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    sget v1, Lcom/transsion/wrapperad/R$id;->native_ad_media:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/hisavana/mediation/ad/TMediaView;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    .line 30
    new-instance v1, Lcom/transsion/postdetail/ad/o;

    .line 31
    .line 32
    invoke-direct {v1, v0, p0}, Lcom/transsion/postdetail/ad/o;-><init>(Lcom/hisavana/mediation/ad/TMediaView;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public static synthetic s(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final s1(Lcom/hisavana/mediation/ad/TMediaView;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    const/4 v1, 0x0

    .line 15
    const/4 v3, -0x1

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-boolean p1, p1, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 23
    .line 24
    iput-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 28
    .line 29
    const-string p1, "H,16:9"

    .line 30
    .line 31
    iput-object p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$b;->I:Ljava/lang/String;

    .line 32
    .line 33
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/hisavana/mediation/ad/TMediaView;->getMediaView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    if-eqz p0, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 46
    .line 47
    .line 48
    instance-of p1, p0, Landroid/view/ViewGroup;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    check-cast p0, Landroid/view/ViewGroup;

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    if-eqz p0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_3

    .line 65
    .line 66
    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    .line 68
    :cond_3
    if-eqz p0, :cond_4

    .line 69
    .line 70
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 71
    .line 72
    .line 73
    :cond_4
    return-void
.end method

.method public static synthetic t(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g2(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic u(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic v(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a0(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final w1()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g0()Landroid/view/ViewGroup;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 13
    .line 14
    iget-boolean v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->C0()Landroid/view/ViewGroup;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 31
    .line 32
    int-to-double v1, v1

    .line 33
    const-wide/high16 v3, 0x4022000000000000L    # 9.0

    .line 34
    .line 35
    mul-double/2addr v1, v3

    .line 36
    const/16 v3, 0x10

    .line 37
    .line 38
    int-to-double v3, v3

    .line 39
    div-double/2addr v1, v3

    .line 40
    double-to-int v1, v1

    .line 41
    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public static final synthetic x(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private final x1()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget v2, Lcom/transsion/wrapperad/R$id;->native_ad_action:I

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-eqz v0, :cond_8

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    instance-of v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 25
    .line 26
    if-eqz v3, :cond_1

    .line 27
    .line 28
    move-object v1, v2

    .line 29
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$b;

    .line 30
    .line 31
    :cond_1
    const/high16 v2, 0x41800000    # 16.0f

    .line 32
    .line 33
    if-eqz v1, :cond_5

    .line 34
    .line 35
    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    const/high16 v3, 0x42300000    # 44.0f

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/high16 v3, 0x41e00000    # 28.0f

    .line 43
    .line 44
    :goto_1
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 49
    .line 50
    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    const/high16 v3, 0x42920000    # 73.0f

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_3
    const/high16 v3, 0x42500000    # 52.0f

    .line 58
    .line 59
    :goto_2
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 64
    .line 65
    iget-boolean v3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 66
    .line 67
    if-eqz v3, :cond_4

    .line 68
    .line 69
    move v3, v2

    .line 70
    goto :goto_3

    .line 71
    :cond_4
    const/high16 v3, 0x41200000    # 10.0f

    .line 72
    .line 73
    :goto_3
    invoke-static {v3}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 78
    .line 79
    :cond_5
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 80
    .line 81
    if-eqz v1, :cond_6

    .line 82
    .line 83
    move v1, v2

    .line 84
    goto :goto_4

    .line 85
    :cond_6
    const/high16 v1, 0x41400000    # 12.0f

    .line 86
    .line 87
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 88
    .line 89
    .line 90
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 91
    .line 92
    if-eqz v1, :cond_7

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_7
    const/high16 v2, 0x40c00000    # 6.0f

    .line 96
    .line 97
    :goto_5
    invoke-static {v2}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const/4 v2, 0x3

    .line 102
    const/4 v3, 0x4

    .line 103
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    .line 105
    .line 106
    :cond_8
    return-void
.end method

.method public static final synthetic y(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d1(Ljava/lang/String;Lcom/transsion/ad/bidding/base/BiddingIntermediateMaterialBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic z(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected final A1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final B0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected abstract C0()Landroid/view/ViewGroup;
.end method

.method protected final C1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final D0(JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0, p1, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R0(IJ)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->i:Z

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c0()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-direct {p0, p1, p3, p4}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->R0(IJ)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j:Z

    .line 20
    .line 21
    return-void
.end method

.method protected final D1(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    .line 2
    .line 3
    return-void
.end method

.method protected final E0(Lf4/a;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->M:Lf4/a;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-interface {p1}, Lf4/a;->getRoot()Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p1, v0

    .line 18
    :goto_0
    instance-of v1, p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object p1, v0

    .line 26
    :goto_1
    if-eqz p1, :cond_2

    .line 27
    .line 28
    invoke-static {p1}, Landroidx/lifecycle/v;->a(Landroidx/lifecycle/u;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 33
    .line 34
    iput-object p2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c:Lkotlin/jvm/functions/Function1;

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->G0()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method protected final E1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->p:I

    .line 2
    .line 3
    return-void
.end method

.method protected final F0(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->X0(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    .line 15
    .line 16
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D:I

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 36
    .line 37
    .line 38
    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K:I

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object p1, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->y:Ljava/lang/String;

    .line 69
    .line 70
    invoke-virtual {v1, v2, v0}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    iput v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D:I

    .line 75
    .line 76
    invoke-virtual {p1}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->A:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {p1, v1, v0}, Lcom/tencent/mmkv/MMKV;->getInt(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    iput p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K:I

    .line 87
    .line 88
    :goto_0
    return-void
.end method

.method protected final F1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s:Z

    .line 2
    .line 3
    return-void
.end method

.method public H(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->c:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->q:Z

    .line 13
    .line 14
    return-void
.end method

.method protected final H1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final I(Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 7
    .line 8
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->p:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->T(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    :cond_0
    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W()Lcom/transsion/postdetail/ui/view/AdCountDownView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget v1, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/transsion/postdetail/ui/view/AdCountDownView;->refreshCountDown(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Q()V

    .line 33
    .line 34
    .line 35
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 36
    .line 37
    int-to-long v0, v0

    .line 38
    const-wide/16 v4, 0x3e8

    .line 39
    .line 40
    mul-long v5, v0, v4

    .line 41
    .line 42
    new-instance v0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;

    .line 43
    .line 44
    move-object v1, v0

    .line 45
    move-object v2, p0

    .line 46
    move-object v4, p1

    .line 47
    invoke-direct/range {v1 .. v6}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$b;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/internal/Ref$IntRef;Ljava/lang/String;J)V

    .line 48
    .line 49
    .line 50
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->t:Landroid/os/CountDownTimer;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method protected final I1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final J1(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    .line 2
    .line 3
    return-void
.end method

.method protected final L(ZLkotlin/jvm/functions/Function0;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-class p1, Lwj/d;

    .line 5
    .line 6
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {p1, v1}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lwj/d;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-interface {p1}, Lwj/d;->h()V

    .line 17
    .line 18
    .line 19
    :cond_0
    const-class p1, Lim/b;

    .line 20
    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/therouter/TheRouter;->d(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    move-object v0, p1

    .line 28
    check-cast v0, Lim/b;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lcom/blankj/utilcode/util/a;->b()Landroid/app/Activity;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v2, Lcom/transsion/memberapi/MemberSource;->SOURCE_LANDSCAPE_PLAY:Lcom/transsion/memberapi/MemberSource;

    .line 37
    .line 38
    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;

    .line 39
    .line 40
    invoke-direct {v3, p0, p2}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$c;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    const/16 v6, 0x18

    .line 44
    .line 45
    const/4 v7, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static/range {v0 .. v7}, Lim/b$a;->c(Lim/b;Landroid/app/Activity;Lcom/transsion/memberapi/MemberSource;Lim/c;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public final L0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p1, "sceneId is empty"

    .line 8
    .line 9
    return-object p1

    .line 10
    :cond_0
    sget-object v0, Lcom/transsion/ad/scene/c;->a:Lcom/transsion/ad/scene/c;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/c;->d(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string p1, "\u5f53\u524d\u662f\u4f1a\u5458,\u4e0d\u5c55\u793a\u5e7f\u544a"

    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    sget-object v1, Lcom/transsion/ad/scene/b;->a:Lcom/transsion/ad/scene/b;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/transsion/ad/scene/b;->k()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    const-string p1, "\u5168\u5c40\u573a\u666f\u5173\u95ed"

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_2
    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/c;->c(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const-string p1, "\u573a\u666f\u5173\u95ed"

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_3
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 42
    .line 43
    invoke-virtual {v0, p1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-nez p1, :cond_4

    .line 48
    .line 49
    const-string p1, "\u573a\u666f\u914d\u7f6e\u4e3a\u7a7a"

    .line 50
    .line 51
    return-object p1

    .line 52
    :cond_4
    const-string p1, ""

    .line 53
    .line 54
    return-object p1
.end method

.method protected final L1(Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "VideoStartBidScene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-wide/16 v1, 0x7d0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->D:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Z()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lt p1, v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_3

    .line 25
    .line 26
    new-instance v0, Lcom/transsion/postdetail/ad/b;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/b;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const-string v0, "VideoInterpolateBidScene"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->E:I

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->Y()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-lt p1, v0, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    new-instance v0, Lcom/transsion/postdetail/ad/c;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/c;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    return-void
.end method

.method protected final M0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->q:Z

    .line 2
    .line 3
    return v0
.end method

.method public final N(JLkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x:J

    .line 7
    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x:J

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s:Z

    .line 18
    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->q:Z

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W0()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x:J

    .line 33
    .line 34
    sub-long v0, p1, v0

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    const-wide/16 v2, 0x1388

    .line 41
    .line 42
    cmp-long v0, v0, v2

    .line 43
    .line 44
    if-lez v0, :cond_2

    .line 45
    .line 46
    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x:J

    .line 47
    .line 48
    iget-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    iget-wide v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    .line 55
    .line 56
    sub-long/2addr v0, v2

    .line 57
    add-long/2addr p1, v0

    .line 58
    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    .line 59
    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    iput-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w:J

    .line 65
    .line 66
    :cond_2
    iget-wide p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o0()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    int-to-long v0, v0

    .line 73
    cmp-long p1, p1, v0

    .line 74
    .line 75
    if-ltz p1, :cond_3

    .line 76
    .line 77
    iput-object p3, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d:Lkotlin/jvm/functions/Function0;

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->O1()V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    return-void
.end method

.method protected final N0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final O()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "LandscapePauseSceneNew"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "VerticalPauseScene"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->P()V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method protected final O0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final P()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v3, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v3, p0, v1}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$closeSceneAd$1;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Lkotlin/coroutines/Continuation;)V

    .line 9
    .line 10
    .line 11
    const/4 v4, 0x3

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method protected final P0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final Q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->t:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->t:Landroid/os/CountDownTimer;

    .line 10
    .line 11
    return-void
.end method

.method protected final Q0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final R()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->u:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->u:Landroid/os/CountDownTimer;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-static {v0}, Luf/c;->g(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public final S0()Z
    .locals 1

    .line 1
    sget-object v0, Lcw/e;->a:Lcw/e$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcw/e$a;->b()Lcw/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcw/e;->k()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    xor-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    return v0
.end method

.method protected final T0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final T1()V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v4, Lcom/transsion/postdetail/ad/a;

    .line 6
    .line 7
    invoke-direct {v4, p0}, Lcom/transsion/postdetail/ad/a;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 8
    .line 9
    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x0

    .line 12
    const-string v2, "LandscapePauseSceneNew"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    move-object v1, p0

    .line 16
    invoke-static/range {v1 .. v6}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->X1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v10, Lcom/transsion/postdetail/ad/l;

    .line 21
    .line 22
    invoke-direct {v10, p0}, Lcom/transsion/postdetail/ad/l;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 23
    .line 24
    .line 25
    const/4 v11, 0x2

    .line 26
    const/4 v12, 0x0

    .line 27
    const-string v8, "VerticalPauseScene"

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    move-object v7, p0

    .line 31
    invoke-static/range {v7 .. v12}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->X1(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void
.end method

.method protected final U()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "VideoEndBidScene"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "threshold"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x5

    .line 25
    :goto_0
    const v1, 0xea60

    .line 26
    .line 27
    .line 28
    mul-int/2addr v0, v1

    .line 29
    return v0
.end method

.method protected final U0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->s:Z

    .line 2
    .line 3
    return v0
.end method

.method protected abstract V()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
.end method

.method protected final V0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z0()Landroid/widget/ImageView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    sget v1, Lcom/transsion/baseui/R$mipmap;->ad_rotate:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->z0()Landroid/widget/ImageView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    sget v1, Lcom/transsion/baseui/R$mipmap;->ad_fullscreen:I

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract W()Lcom/transsion/postdetail/ui/view/AdCountDownView;
.end method

.method public final X0(Ljava/lang/String;Z)Z
    .locals 7

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "zero_clock_timestamp_"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    sget-object v0, Lcom/transsion/baselib/report/launch/b;->a:Lcom/transsion/baselib/report/launch/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-wide/16 v2, 0x0

    .line 30
    .line 31
    invoke-virtual {v1, p1, v2, v3}, Lcom/tencent/mmkv/MMKV;->getLong(Ljava/lang/String;J)J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    sub-long v1, v3, v1

    .line 40
    .line 41
    const-wide/32 v5, 0x5265c00

    .line 42
    .line 43
    .line 44
    cmp-long v1, v1, v5

    .line 45
    .line 46
    if-ltz v1, :cond_0

    .line 47
    .line 48
    const/4 v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v1, 0x0

    .line 51
    :goto_0
    if-eqz p2, :cond_1

    .line 52
    .line 53
    if-eqz v1, :cond_1

    .line 54
    .line 55
    invoke-static {v3, v4}, Lcom/cloud/hisavana/sdk/common/util/k0;->c(J)J

    .line 56
    .line 57
    .line 58
    move-result-wide v2

    .line 59
    invoke-virtual {v0}, Lcom/transsion/baselib/report/launch/b;->b()Lcom/tencent/mmkv/MMKV;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p2, p1, v2, v3}, Lcom/tencent/mmkv/MMKV;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 64
    .line 65
    .line 66
    :cond_1
    return v1
.end method

.method protected final Y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->G:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final Y1(Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    iget-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->i:Z

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->S0()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    new-instance p1, Lcom/transsion/postdetail/ad/i;

    .line 19
    .line 20
    invoke-direct {p1}, Lcom/transsion/postdetail/ad/i;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/transsion/postdetail/ad/j;

    .line 24
    .line 25
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/j;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "VideoStartBidScene"

    .line 29
    .line 30
    invoke-direct {p0, v1, p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f1()V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method protected final Z()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->F:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method protected final b0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final b1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 9

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h0()Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/base/AbsAdBidding;->U()V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    new-instance v8, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    move-object v1, v8

    .line 37
    move-object v3, p0

    .line 38
    move-object v4, p1

    .line 39
    move-object v5, p2

    .line 40
    move-object v6, p3

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadLandPauseAd$1;-><init>(Landroid/content/Context;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x3

    .line 45
    const/4 p1, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    move-object v3, v0

    .line 49
    move-object v6, v8

    .line 50
    move-object v8, p1

    .line 51
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method protected final c0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "VideoEndBidScene"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "interval"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0x5a0

    .line 25
    .line 26
    :goto_0
    const v1, 0xea60

    .line 27
    .line 28
    .line 29
    mul-int/2addr v0, v1

    .line 30
    return v0
.end method

.method protected final c1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 9

    .line 1
    const-string v0, "sceneId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->g0()Landroid/view/ViewGroup;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;->U()V

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    new-instance v8, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadNativeAd$1;

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    move-object v1, v8

    .line 37
    move-object v3, p0

    .line 38
    move-object v4, p1

    .line 39
    move-object v5, p2

    .line 40
    move-object v6, p3

    .line 41
    invoke-direct/range {v1 .. v7}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper$loadNativeAd$1;-><init>(Landroid/content/Context;Lcom/transsion/postdetail/ad/BaseVideoAdHelper;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x3

    .line 45
    const/4 p1, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    move-object v3, v0

    .line 49
    move-object v6, v8

    .line 50
    move-object v8, p1

    .line 51
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/i;->d(Lkotlinx/coroutines/n0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method

.method protected final d0()Landroid/os/CountDownTimer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->u:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final d2(Lkotlin/jvm/functions/Function0;)V
    .locals 4

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->l:J

    .line 11
    .line 12
    sub-long/2addr v0, v2

    .line 13
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->U()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-long v2, v2

    .line 18
    cmp-long v0, v0, v2

    .line 19
    .line 20
    if-lez v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    iget-boolean v1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->j:Z

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->S0()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    new-instance v0, Lcom/transsion/postdetail/ad/f;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/transsion/postdetail/ad/f;-><init>(Lcom/transsion/postdetail/ad/BaseVideoAdHelper;)V

    .line 40
    .line 41
    .line 42
    const-string v1, "VideoEndBidScene"

    .line 43
    .line 44
    invoke-direct {p0, v1, p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->W1(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f1()V

    .line 49
    .line 50
    .line 51
    :goto_1
    return-void
.end method

.method protected abstract e0()Lcom/transsion/postdetail/ad/AdInterceptTimerView;
.end method

.method public final e1()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->h:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;->t:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;

    .line 6
    .line 7
    sget-object v1, Lcom/transsion/ad/strategy/c;->a:Lcom/transsion/ad/strategy/c;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Lcom/transsion/ad/strategy/c;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "LandscapePauseSceneNew"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager$Companion;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->N:Lcom/transsion/postdetail/ad/VideoFloatingView;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/transsion/postdetail/ad/VideoFloatingView;->hide()V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;
.end method

.method protected abstract g0()Landroid/view/ViewGroup;
.end method

.method protected abstract h0()Landroid/view/ViewGroup;
.end method

.method protected final h1()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x:J

    .line 4
    .line 5
    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->l:J

    .line 6
    .line 7
    iput-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->n:I

    .line 11
    .line 12
    return-void
.end method

.method protected final i0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->L:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method protected final j0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final j1(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->d:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method protected abstract k0()Landroid/view/View;
.end method

.method protected final l0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "VideoInterpolateBidScene"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "enterCountdown"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0xa

    .line 25
    .line 26
    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    .line 27
    .line 28
    return v0
.end method

.method protected final l1(Z)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->q1()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->B1()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->V()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K1(Landroid/view/ViewGroup;Z)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->w1()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->r1()V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->p1()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->x1()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->G1()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f0()Lcom/transsion/ad/view/native_ad/NativeWrapperAdView;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->K1(Landroid/view/ViewGroup;Z)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->i1()V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m1()V

    .line 49
    .line 50
    .line 51
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    :goto_2
    return-void
.end method

.method public abstract l2()V
.end method

.method protected final m0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "VideoInterpolateBidScene"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "frequency"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x2

    .line 25
    :goto_0
    return v0
.end method

.method protected final n0()I
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/ad/scene/d;->a:Lcom/transsion/ad/scene/d;

    .line 2
    .line 3
    const-string v1, "VideoInterpolateBidScene"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/transsion/ad/scene/d;->b(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "interval"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v0, 0xf

    .line 25
    .line 26
    :goto_0
    const v1, 0xea60

    .line 27
    .line 28
    .line 29
    mul-int/2addr v0, v1

    .line 30
    return v0
.end method

.method protected final n1(Landroid/os/CountDownTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->u:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    return-void
.end method

.method public final o0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->r0()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->p0()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sub-int/2addr v0, v1

    .line 10
    return v0
.end method

.method protected final o1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->o:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final p0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->I:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method protected final q0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->J:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method protected final r0()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->H:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method protected final s0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->n:I

    .line 2
    .line 3
    return v0
.end method

.method protected abstract t0()Landroid/widget/ImageView;
.end method

.method protected final t1(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->n:I

    .line 2
    .line 3
    return-void
.end method

.method protected final u0()Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final u1(Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->e:Lcom/transsion/ad/bidding/nativead/BiddingNativeManager;

    .line 2
    .line 3
    return-void
.end method

.method protected final v0()Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final v1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final w0()Landroidx/lifecycle/LifecycleCoroutineScope;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->a:Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final x0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->v:J

    .line 2
    .line 3
    return-wide v0
.end method

.method protected final y0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->p:I

    .line 2
    .line 3
    return v0
.end method

.method protected final y1(Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->f:Lcom/transsion/ad/bidding/interstitial/BiddingInterstitialManager;

    .line 2
    .line 3
    return-void
.end method

.method protected abstract z0()Landroid/widget/ImageView;
.end method

.method protected final z1(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/postdetail/ad/BaseVideoAdHelper;->r:Z

    .line 2
    .line 3
    return-void
.end method
