.class public final Lcom/transsion/widgetsmotionlibrary/b$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetsmotionlibrary/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:F

.field public final b:I

.field public final c:J

.field public final d:J

.field public final e:Landroid/view/animation/PathInterpolator;

.field public final f:I

.field public final g:Lcom/transsion/widgetsmotionlibrary/a;

.field public final h:F

.field public final i:F

.field public final j:F

.field public final k:F


# direct methods
.method public constructor <init>(FIJJLandroid/view/animation/PathInterpolator;ILcom/transsion/widgetsmotionlibrary/a;FFFF)V
    .locals 1

    const-string v0, "pressColorInterpolator"

    invoke-static {p7, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resolvedMaskCornerRadii"

    invoke-static {p9, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->a:F

    iput p2, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->b:I

    iput-wide p3, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->c:J

    iput-wide p5, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->d:J

    iput-object p7, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->e:Landroid/view/animation/PathInterpolator;

    iput p8, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->f:I

    iput-object p9, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->g:Lcom/transsion/widgetsmotionlibrary/a;

    iput p10, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->h:F

    iput p11, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->i:F

    iput p12, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->j:F

    iput p13, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->k:F

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->b:I

    return p0
.end method

.method public final b()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->k:F

    return p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->h:F

    return p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->j:F

    return p0
.end method

.method public final e()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->i:F

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/transsion/widgetsmotionlibrary/b$c;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/transsion/widgetsmotionlibrary/b$c;

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->a:F

    iget v3, p1, Lcom/transsion/widgetsmotionlibrary/b$c;->a:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->b:I

    iget v3, p1, Lcom/transsion/widgetsmotionlibrary/b$c;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->c:J

    iget-wide v5, p1, Lcom/transsion/widgetsmotionlibrary/b$c;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->d:J

    iget-wide v5, p1, Lcom/transsion/widgetsmotionlibrary/b$c;->d:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->e:Landroid/view/animation/PathInterpolator;

    iget-object v3, p1, Lcom/transsion/widgetsmotionlibrary/b$c;->e:Landroid/view/animation/PathInterpolator;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->f:I

    iget v3, p1, Lcom/transsion/widgetsmotionlibrary/b$c;->f:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->g:Lcom/transsion/widgetsmotionlibrary/a;

    iget-object v3, p1, Lcom/transsion/widgetsmotionlibrary/b$c;->g:Lcom/transsion/widgetsmotionlibrary/a;

    invoke-static {v1, v3}, Ly45;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->h:F

    iget v3, p1, Lcom/transsion/widgetsmotionlibrary/b$c;->h:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->i:F

    iget v3, p1, Lcom/transsion/widgetsmotionlibrary/b$c;->i:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->j:F

    iget v3, p1, Lcom/transsion/widgetsmotionlibrary/b$c;->j:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->k:F

    iget p1, p1, Lcom/transsion/widgetsmotionlibrary/b$c;->k:F

    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-eqz p0, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final f()Landroid/view/animation/PathInterpolator;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->e:Landroid/view/animation/PathInterpolator;

    return-object p0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->c:J

    return-wide v0
.end method

.method public final h()I
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->f:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->a:F

    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->e:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->g:Lcom/transsion/widgetsmotionlibrary/a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->h:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->i:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->j:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->k:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final i()J
    .locals 2

    iget-wide v0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->d:J

    return-wide v0
.end method

.method public final j()Lcom/transsion/widgetsmotionlibrary/a;
    .locals 0

    iget-object p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->g:Lcom/transsion/widgetsmotionlibrary/a;

    return-object p0
.end method

.method public final k()F
    .locals 0

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->a:F

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget v0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->a:F

    iget v1, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->b:I

    iget-wide v2, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->c:J

    iget-wide v4, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->d:J

    iget-object v6, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->e:Landroid/view/animation/PathInterpolator;

    iget v7, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->f:I

    iget-object v8, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->g:Lcom/transsion/widgetsmotionlibrary/a;

    iget v9, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->h:F

    iget v10, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->i:F

    iget v11, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->j:F

    iget p0, p0, Lcom/transsion/widgetsmotionlibrary/b$c;->k:F

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PressTouchContext(scaleFactor="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", maskColor="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pressDuration="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", releaseDuration="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", pressColorInterpolator="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pressStyle="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", resolvedMaskCornerRadii="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", maskInsetLeft="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", maskInsetTop="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", maskInsetRight="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", maskInsetBottom="

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
