.class public Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;
.super Landroid/widget/RelativeLayout;
.source "source.java"


# static fields
.field public static final ANIMATION_TYPE_DOUBLE_CLICK:I = 0x4

.field public static final ANIMATION_TYPE_FAST_SCALE:I = 0x1

.field public static final ANIMATION_TYPE_ROTATE:I = 0x5

.field public static final ANIMATION_TYPE_SLOW_SCALE:I = 0x2

.field public static final ANIMATION_TYPE_SLOW_SCALE_WITH_PAUSE:I = 0x3


# instance fields
.field private a:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

.field private b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

.field private c:Landroid/widget/TextView;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/animation/Animation;

.field private l:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const-string p1, ""

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->d:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->e:Ljava/lang/String;

    .line 4
    const-string p1, "Click now for details"

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->f:Ljava/lang/String;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->g:I

    const/high16 p1, 0x50000000

    .line 6
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->d:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->e:Ljava/lang/String;

    .line 10
    const-string p1, "Click now for details"

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->f:Ljava/lang/String;

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->g:I

    const/high16 p1, 0x50000000

    .line 12
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const-string p1, ""

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->d:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->e:Ljava/lang/String;

    .line 16
    const-string p1, "Click now for details"

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->f:Ljava/lang/String;

    const/4 p1, 0x1

    .line 17
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->g:I

    const/high16 p1, 0x50000000

    .line 18
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 20
    const-string p1, ""

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->d:Ljava/lang/String;

    .line 21
    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->e:Ljava/lang/String;

    .line 22
    const-string p1, "Click now for details"

    iput-object p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->f:Ljava/lang/String;

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->g:I

    const/high16 p1, 0x50000000

    .line 24
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->h:I

    return-void
.end method

.method static synthetic a(Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;)Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    return-object p0
.end method

.method private a()V
    .locals 10

    .line 2
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const v1, 0x3f4ccccd    # 0.8f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f4ccccd    # 0.8f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v9, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    .line 3
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    new-instance v1, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView$5;

    invoke-direct {v1, p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView$5;-><init>(Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->a:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;)Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->a:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    return-object p0
.end method

.method private b()V
    .locals 12

    .line 2
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f333333    # 0.7f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v9, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xc8

    .line 3
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->a:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    if-eqz v0, :cond_0

    .line 7
    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 8
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const v5, 0x3f99999a    # 1.2f

    const/4 v6, 0x0

    const v7, 0x3f99999a    # 1.2f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->j:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x190

    .line 9
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 11
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3e99999a    # 0.3f

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->k:Landroid/view/animation/Animation;

    .line 12
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 13
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 14
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 15
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 16
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 17
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    return-object p0
.end method

.method private c()V
    .locals 11

    .line 2
    new-instance v7, Landroid/view/animation/RotateAnimation;

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v1, -0x3ee00000    # -10.0f

    const/high16 v2, 0x41f00000    # 30.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v7, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->l:Landroid/view/animation/Animation;

    const-wide/16 v0, 0x12c

    .line 3
    invoke-virtual {v7, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 4
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->l:Landroid/view/animation/Animation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 5
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->l:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 6
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    const v4, 0x3f99999a    # 1.2f

    const/4 v5, 0x0

    const v6, 0x3f99999a    # 1.2f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->j:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x258

    .line 7
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 8
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 9
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->k:Landroid/view/animation/Animation;

    .line 10
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 11
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 12
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 13
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 14
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 15
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->a:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    if-eqz v1, :cond_0

    .line 16
    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->l:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 10

    .line 1
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    .line 2
    .line 3
    const/4 v7, 0x1

    .line 4
    const/high16 v8, 0x3f000000    # 0.5f

    .line 5
    .line 6
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    .line 8
    const v2, 0x3f333333    # 0.7f

    .line 9
    .line 10
    .line 11
    const/high16 v3, 0x3f800000    # 1.0f

    .line 12
    .line 13
    const v4, 0x3f333333    # 0.7f

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/high16 v6, 0x3f000000    # 0.5f

    .line 18
    .line 19
    move-object v0, v9

    .line 20
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 21
    .line 22
    .line 23
    iput-object v9, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    .line 24
    .line 25
    const-wide/16 v0, 0x1f4

    .line 26
    .line 27
    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->a:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method private e()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 10
    .line 11
    const/4 v9, 0x1

    .line 12
    const/high16 v10, 0x3f000000    # 0.5f

    .line 13
    .line 14
    const/high16 v3, 0x3f800000    # 1.0f

    .line 15
    .line 16
    const v4, 0x3f333333    # 0.7f

    .line 17
    .line 18
    .line 19
    const/high16 v5, 0x3f800000    # 1.0f

    .line 20
    .line 21
    const v6, 0x3f333333    # 0.7f

    .line 22
    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    const/high16 v8, 0x3f000000    # 0.5f

    .line 26
    .line 27
    move-object v2, v0

    .line 28
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    .line 32
    .line 33
    const-wide/16 v1, 0x1f4

    .line 34
    .line 35
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    .line 45
    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .line 51
    .line 52
    const/4 v10, 0x1

    .line 53
    const/high16 v11, 0x3f000000    # 0.5f

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    const/high16 v5, 0x3fc00000    # 1.5f

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    const/high16 v7, 0x3fc00000    # 1.5f

    .line 60
    .line 61
    const/4 v8, 0x1

    .line 62
    const/high16 v9, 0x3f000000    # 0.5f

    .line 63
    .line 64
    move-object v3, v0

    .line 65
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 66
    .line 67
    .line 68
    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->j:Landroid/view/animation/Animation;

    .line 69
    .line 70
    const-wide/16 v2, 0x3e8

    .line 71
    .line 72
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->j:Landroid/view/animation/Animation;

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .line 82
    .line 83
    const/high16 v5, 0x3f800000    # 1.0f

    .line 84
    .line 85
    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->k:Landroid/view/animation/Animation;

    .line 89
    .line 90
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->k:Landroid/view/animation/Animation;

    .line 94
    .line 95
    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Landroid/view/animation/AnimationSet;

    .line 99
    .line 100
    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->j:Landroid/view/animation/Animation;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->k:Landroid/view/animation/Animation;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->j:Landroid/view/animation/Animation;

    .line 114
    .line 115
    new-instance v2, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView$3;

    .line 116
    .line 117
    invoke-direct {v2, p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView$3;-><init>(Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    .line 124
    .line 125
    new-instance v2, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView$4;

    .line 126
    .line 127
    invoke-direct {v2, p0, v0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView$4;-><init>(Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;Landroid/view/animation/AnimationSet;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->a:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    .line 134
    .line 135
    if-eqz v0, :cond_1

    .line 136
    .line 137
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    .line 141
    .line 142
    :cond_1
    return-void
.end method

.method private getDefaultClickText()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "zh"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string v0, "\u70b9\u51fb\u67e5\u770b\u8be6\u60c5"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const-string v0, "Click now for details"

    .line 33
    .line 34
    :goto_0
    iput-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    goto :goto_2

    .line 37
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "MBridgeAnimationClickView"

    .line 42
    .line 43
    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_2
    return-void
.end method


# virtual methods
.method public init()V
    .locals 9

    const-string v0, "drawable"

    .line 12
    :try_start_0
    iget v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->h:I

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 13
    invoke-direct {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->getDefaultClickText()V

    .line 14
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x425c0000    # 55.0f

    invoke-static {v2, v4}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v2

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42040000    # 33.0f

    invoke-static {v4, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    .line 18
    new-instance v5, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    .line 19
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v5, v4, v4, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 21
    iget-object v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "mbridge_icon_click_circle"

    invoke-static {v4, v5, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 23
    iget-object v5, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->e:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 24
    iget-object v5, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 25
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v5

    iget-object v6, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->d:Ljava/lang/String;

    new-instance v7, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView$1;

    invoke-direct {v7, p0, v4}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView$1;-><init>(Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;I)V

    invoke-virtual {v5, v6, v7}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    .line 26
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x42d80000    # 108.0f

    invoke-static {v4, v5}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v4

    .line 27
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x420c0000    # 35.0f

    invoke-static {v5, v6}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v5

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v7, 0x422c0000    # 43.0f

    invoke-static {v6, v7}, Lcom/mbridge/msdk/foundation/tools/t0;->a(Landroid/content/Context;F)I

    move-result v6

    .line 29
    new-instance v7, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->a:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    .line 30
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 31
    invoke-virtual {v7, v5, v6, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 32
    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->a:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "mbridge_icon_click_hand"

    invoke-static {v2, v4, v0}, Lcom/mbridge/msdk/foundation/tools/g0;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->a:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 36
    :cond_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/same/image/b;

    move-result-object v2

    iget-object v4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->d:Ljava/lang/String;

    new-instance v5, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView$2;

    invoke-direct {v5, p0, v0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView$2;-><init>(Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;I)V

    invoke-virtual {v2, v4, v5}, Lcom/mbridge/msdk/foundation/same/image/b;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/image/c;)V

    .line 37
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->a:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0xd

    .line 41
    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 45
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->c:Landroid/widget/TextView;

    .line 47
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 48
    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->c:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->c:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->c:Landroid/widget/TextView;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    iget-object v1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 54
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MBridgeAnimationClickView"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/o0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public init(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->g:I

    .line 2
    invoke-virtual {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->init()V

    return-void
.end method

.method public init(II)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->h:I

    .line 4
    iput p2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->g:I

    .line 5
    invoke-virtual {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->init()V

    return-void
.end method

.method public init(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->h:I

    .line 7
    iput p2, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->g:I

    .line 8
    iput-object p3, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->d:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->e:Ljava/lang/String;

    .line 10
    iput-object p5, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->f:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->init()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->clearAnimation()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->i:Landroid/view/animation/Animation;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->j:Landroid/view/animation/Animation;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->k:Landroid/view/animation/Animation;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 26
    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->l:Landroid/view/animation/Animation;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 33
    .line 34
    .line 35
    :cond_3
    return-void
.end method

.method public startAnimation()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->g:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x4

    .line 5
    if-eq v0, v1, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq v0, v1, :cond_2

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    const/4 v1, 0x5

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->b()V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->c()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->a()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-direct {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->e()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    iget-object v0, p0, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->b:Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeDyImageView;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/mbridge/msdk/dycreator/baseview/cusview/MBridgeBaitClickView;->d()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method
