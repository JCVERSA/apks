.class public final Lvx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:I

.field public final c:I

.field public d:Landroid/animation/ValueAnimator;

.field public e:Landroid/view/View$OnAttachStateChangeListener;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/animation/ValueAnimator;Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 1

    const-string v0, "originalText"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lvx0;->a:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Lvx0;->b:I

    .line 4
    iput p3, p0, Lvx0;->c:I

    .line 5
    iput-object p4, p0, Lvx0;->d:Landroid/animation/ValueAnimator;

    .line 6
    iput-object p5, p0, Lvx0;->e:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;IILandroid/animation/ValueAnimator;Landroid/view/View$OnAttachStateChangeListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 7
    invoke-direct/range {v1 .. v6}, Lvx0;-><init>(Ljava/lang/CharSequence;IILandroid/animation/ValueAnimator;Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lvx0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lvx0;

    iget-object v1, p0, Lvx0;->a:Ljava/lang/CharSequence;

    iget-object v3, p1, Lvx0;->a:Ljava/lang/CharSequence;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lvx0;->b:I

    iget v3, p1, Lvx0;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lvx0;->c:I

    iget v3, p1, Lvx0;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lvx0;->d:Landroid/animation/ValueAnimator;

    iget-object v3, p1, Lvx0;->d:Landroid/animation/ValueAnimator;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object p0, p0, Lvx0;->e:Landroid/view/View$OnAttachStateChangeListener;

    iget-object p1, p1, Lvx0;->e:Landroid/view/View$OnAttachStateChangeListener;

    invoke-static {p0, p1}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getAnimator()Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lvx0;->d:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method public final getAttachStateListener()Landroid/view/View$OnAttachStateChangeListener;
    .locals 0

    iget-object p0, p0, Lvx0;->e:Landroid/view/View$OnAttachStateChangeListener;

    return-object p0
.end method

.method public final getOriginalGravity()I
    .locals 0

    iget p0, p0, Lvx0;->b:I

    return p0
.end method

.method public final getOriginalText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lvx0;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public final getOriginalTextAlignment()I
    .locals 0

    iget p0, p0, Lvx0;->c:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lvx0;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lvx0;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lvx0;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lvx0;->d:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lvx0;->e:Landroid/view/View$OnAttachStateChangeListener;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lvx0;->d:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final setAttachStateListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 0

    iput-object p1, p0, Lvx0;->e:Landroid/view/View$OnAttachStateChangeListener;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lvx0;->a:Ljava/lang/CharSequence;

    iget v1, p0, Lvx0;->b:I

    iget v2, p0, Lvx0;->c:I

    iget-object v3, p0, Lvx0;->d:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lvx0;->e:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ClickMarqueeState(originalText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", originalGravity="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", originalTextAlignment="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", animator="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", attachStateListener="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
