.class public Lw1d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/mgadplus/a/b;

.field public b:I

.field public c:Landroid/animation/AnimatorSet;

.field public d:Landroid/view/View;

.field public e:Landroid/animation/Animator$AnimatorListener;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/mgadplus/a/b;->TRANSLATIONX:Lcom/mgadplus/a/b;

    iput-object v0, p0, Lw1d;->a:Lcom/mgadplus/a/b;

    const/16 v0, 0xff

    iput v0, p0, Lw1d;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lw1d;->f:I

    return-void
.end method


# virtual methods
.method public a()Lw1d;
    .locals 2

    iget-object v0, p0, Lw1d;->c:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lw1d;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    sget-object v0, Lw1d$a;->a:[I

    iget-object v1, p0, Lw1d;->a:Lcom/mgadplus/a/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lw1d;->n()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lw1d;->c:Landroid/animation/AnimatorSet;

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lw1d;->m()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lw1d;->c:Landroid/animation/AnimatorSet;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lw1d;->l()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lw1d;->c:Landroid/animation/AnimatorSet;

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lw1d;->k()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lw1d;->c:Landroid/animation/AnimatorSet;

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lw1d;->j()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lw1d;->c:Landroid/animation/AnimatorSet;

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lw1d;->i()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lw1d;->c:Landroid/animation/AnimatorSet;

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lw1d;->p()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lw1d;->c:Landroid/animation/AnimatorSet;

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lw1d;->o()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lw1d;->c:Landroid/animation/AnimatorSet;

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(FFFFFFFF)Lw1d;
    .locals 14

    move-object v0, p0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lw1d;->c:Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lw1d;->d:Landroid/view/View;

    const-string v2, "scaleX"

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    const/4 v6, 0x1

    aput p2, v4, v6

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v2, v0, Lw1d;->f:I

    const-wide/16 v7, 0xc8

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    move-wide v9, v7

    goto :goto_0

    :cond_0
    int-to-long v9, v2

    :goto_0
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, v0, Lw1d;->d:Landroid/view/View;

    const-string v9, "scaleY"

    new-array v10, v3, [F

    aput p3, v10, v5

    aput p4, v10, v6

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v9, v0, Lw1d;->f:I

    if-ne v9, v4, :cond_1

    move-wide v9, v7

    goto :goto_1

    :cond_1
    int-to-long v9, v9

    :goto_1
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v9, v0, Lw1d;->d:Landroid/view/View;

    const-string v10, "TranslationX"

    const/4 v11, 0x0

    new-array v12, v3, [F

    aput v11, v12, v5

    aput p5, v12, v6

    invoke-static {v9, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget v10, v0, Lw1d;->f:I

    if-ne v10, v4, :cond_2

    move-wide v12, v7

    goto :goto_2

    :cond_2
    int-to-long v12, v10

    :goto_2
    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, v0, Lw1d;->d:Landroid/view/View;

    const-string v12, "TranslationY"

    new-array v3, v3, [F

    aput v11, v3, v5

    aput p6, v3, v6

    invoke-static {v10, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v5, v0, Lw1d;->f:I

    if-ne v5, v4, :cond_3

    goto :goto_3

    :cond_3
    int-to-long v7, v5

    :goto_3
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, v0, Lw1d;->d:Landroid/view/View;

    move/from16 v5, p7

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    iget-object v4, v0, Lw1d;->d:Landroid/view/View;

    move/from16 v5, p8

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    iget-object v4, v0, Lw1d;->e:Landroid/animation/Animator$AnimatorListener;

    if-eqz v4, :cond_4

    iget-object v5, v0, Lw1d;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    iget-object v4, v0, Lw1d;->c:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v0, Lw1d;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method public c(I)Lw1d;
    .locals 0

    iput p1, p0, Lw1d;->f:I

    return-object p0
.end method

.method public d(Landroid/animation/Animator$AnimatorListener;)Lw1d;
    .locals 0

    iput-object p1, p0, Lw1d;->e:Landroid/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public e(Landroid/view/View;)Lw1d;
    .locals 0

    iput-object p1, p0, Lw1d;->d:Landroid/view/View;

    return-object p0
.end method

.method public f(Lcom/mgadplus/a/b;)Lw1d;
    .locals 0

    iput-object p1, p0, Lw1d;->a:Lcom/mgadplus/a/b;

    return-object p0
.end method

.method public g(FFFFFFFF)Lw1d;
    .locals 14

    move-object v0, p0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, v0, Lw1d;->c:Landroid/animation/AnimatorSet;

    iget-object v1, v0, Lw1d;->d:Landroid/view/View;

    const-string v2, "scaleX"

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput p1, v4, v5

    const/4 v6, 0x1

    aput p2, v4, v6

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v2, v0, Lw1d;->f:I

    const-wide/16 v7, 0xc8

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    move-wide v9, v7

    goto :goto_0

    :cond_0
    int-to-long v9, v2

    :goto_0
    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, v0, Lw1d;->d:Landroid/view/View;

    const-string v9, "scaleY"

    new-array v10, v3, [F

    aput p3, v10, v5

    aput p4, v10, v6

    invoke-static {v2, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v9, v0, Lw1d;->f:I

    if-ne v9, v4, :cond_1

    move-wide v9, v7

    goto :goto_1

    :cond_1
    int-to-long v9, v9

    :goto_1
    invoke-virtual {v2, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v9, v0, Lw1d;->d:Landroid/view/View;

    const-string v10, "TranslationX"

    const/4 v11, 0x0

    new-array v12, v3, [F

    aput p5, v12, v5

    aput v11, v12, v6

    invoke-static {v9, v10, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget v10, v0, Lw1d;->f:I

    if-ne v10, v4, :cond_2

    move-wide v12, v7

    goto :goto_2

    :cond_2
    int-to-long v12, v10

    :goto_2
    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v10, v0, Lw1d;->d:Landroid/view/View;

    const-string v12, "TranslationY"

    new-array v3, v3, [F

    aput p6, v3, v5

    aput v11, v3, v6

    invoke-static {v10, v12, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v5, v0, Lw1d;->f:I

    if-ne v5, v4, :cond_3

    goto :goto_3

    :cond_3
    int-to-long v7, v5

    :goto_3
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, v0, Lw1d;->d:Landroid/view/View;

    move/from16 v5, p7

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotX(F)V

    iget-object v4, v0, Lw1d;->d:Landroid/view/View;

    move/from16 v5, p8

    invoke-virtual {v4, v5}, Landroid/view/View;->setPivotY(F)V

    iget-object v4, v0, Lw1d;->e:Landroid/animation/Animator$AnimatorListener;

    if-eqz v4, :cond_4

    iget-object v5, v0, Lw1d;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    iget-object v4, v0, Lw1d;->c:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v0, Lw1d;->c:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method public h()V
    .locals 0

    iget-object p0, p0, Lw1d;->c:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public final i()Landroid/animation/AnimatorSet;
    .locals 10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lw1d;->d:Landroid/view/View;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v4, p0, Lw1d;->f:I

    const-wide/16 v5, 0xc8

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    move-wide v8, v5

    goto :goto_0

    :cond_0
    int-to-long v8, v4

    :goto_0
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v4, p0, Lw1d;->d:Landroid/view/View;

    const-string v8, "scaleX"

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v4, v8, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v4, p0, Lw1d;->f:I

    if-ne v4, v7, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v5, v4

    :goto_1
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lw1d;->d:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object p0, p0, Lw1d;->e:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_2
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final j()Landroid/animation/AnimatorSet;
    .locals 4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lw1d;->d:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v2, p0, Lw1d;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0xc8

    goto :goto_0

    :cond_0
    int-to-long v2, v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object p0, p0, Lw1d;->e:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final k()Landroid/animation/AnimatorSet;
    .locals 4

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lw1d;->d:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v2, p0, Lw1d;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0xc8

    goto :goto_0

    :cond_0
    int-to-long v2, v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object p0, p0, Lw1d;->e:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final l()Landroid/animation/AnimatorSet;
    .locals 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lw1d;->d:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v3, p0, Lw1d;->f:I

    const-wide/16 v4, 0xc8

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-wide v7, v4

    goto :goto_0

    :cond_0
    int-to-long v7, v3

    :goto_0
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lw1d;->d:Landroid/view/View;

    const-string v7, "scaleX"

    new-array v8, v2, [F

    fill-array-data v8, :array_1

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v7, p0, Lw1d;->f:I

    if-ne v7, v6, :cond_1

    move-wide v7, v4

    goto :goto_1

    :cond_1
    int-to-long v7, v7

    :goto_1
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, p0, Lw1d;->d:Landroid/view/View;

    const-string v8, "scaleY"

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v7, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v7, p0, Lw1d;->f:I

    if-ne v7, v6, :cond_2

    goto :goto_2

    :cond_2
    int-to-long v4, v7

    :goto_2
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object p0, p0, Lw1d;->e:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final m()Landroid/animation/AnimatorSet;
    .locals 10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lw1d;->d:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "alpha"

    invoke-static {v1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v4, p0, Lw1d;->f:I

    const-wide/16 v5, 0xc8

    const/4 v7, -0x1

    if-ne v4, v7, :cond_0

    move-wide v8, v5

    goto :goto_0

    :cond_0
    int-to-long v8, v4

    :goto_0
    invoke-virtual {v1, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v4, p0, Lw1d;->d:Landroid/view/View;

    const-string v8, "scaleX"

    new-array v9, v3, [F

    fill-array-data v9, :array_1

    invoke-static {v4, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget v8, p0, Lw1d;->f:I

    if-ne v8, v7, :cond_1

    move-wide v8, v5

    goto :goto_1

    :cond_1
    int-to-long v8, v8

    :goto_1
    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v8, p0, Lw1d;->d:Landroid/view/View;

    const-string v9, "scaleY"

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v8, v9, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v8, p0, Lw1d;->f:I

    if-ne v8, v7, :cond_2

    goto :goto_2

    :cond_2
    int-to-long v5, v8

    :goto_2
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v5, p0, Lw1d;->d:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setPivotX(F)V

    iget-object v2, p0, Lw1d;->d:Landroid/view/View;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v2, v5}, Landroid/view/View;->setPivotX(F)V

    iget-object p0, p0, Lw1d;->e:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final n()Landroid/animation/AnimatorSet;
    .locals 9

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lw1d;->d:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    invoke-static {v1, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v3, p0, Lw1d;->f:I

    const-wide/16 v4, 0xc8

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-wide v7, v4

    goto :goto_0

    :cond_0
    int-to-long v7, v3

    :goto_0
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lw1d;->d:Landroid/view/View;

    const-string v7, "scaleX"

    new-array v8, v2, [F

    fill-array-data v8, :array_1

    invoke-static {v3, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v7, p0, Lw1d;->f:I

    if-ne v7, v6, :cond_1

    move-wide v7, v4

    goto :goto_1

    :cond_1
    int-to-long v7, v7

    :goto_1
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v7, p0, Lw1d;->d:Landroid/view/View;

    const-string v8, "scaleY"

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-static {v7, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget v7, p0, Lw1d;->f:I

    if-ne v7, v6, :cond_2

    goto :goto_2

    :cond_2
    int-to-long v4, v7

    :goto_2
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object p0, p0, Lw1d;->e:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_3

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final o()Landroid/animation/AnimatorSet;
    .locals 5

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lw1d;->d:Landroid/view/View;

    iget v2, p0, Lw1d;->b:I

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v2, v3, v4

    const-string v2, "TranslationX"

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v2, p0, Lw1d;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0xc8

    goto :goto_0

    :cond_0
    int-to-long v2, v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object p0, p0, Lw1d;->e:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method

.method public final p()Landroid/animation/AnimatorSet;
    .locals 6

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v1, p0, Lw1d;->d:Landroid/view/View;

    iget v2, p0, Lw1d;->b:I

    int-to-float v2, v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v4, v3, v5

    const/4 v4, 0x1

    aput v2, v3, v4

    const-string v2, "TranslationX"

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget v2, p0, Lw1d;->f:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-wide/16 v2, 0xc8

    goto :goto_0

    :cond_0
    int-to-long v2, v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object p0, p0, Lw1d;->e:Landroid/animation/Animator$AnimatorListener;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method
