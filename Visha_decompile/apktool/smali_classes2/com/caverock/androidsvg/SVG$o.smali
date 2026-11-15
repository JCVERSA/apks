.class public Lcom/caverock/androidsvg/SVG$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# instance fields
.field public b:F

.field public c:Lcom/caverock/androidsvg/SVG$Unit;


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    .line 6
    sget-object p1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method

.method public constructor <init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    .line 3
    iput-object p2, p0, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method


# virtual methods
.method public a()F
    .locals 0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    return p0
.end method

.method public c(F)F
    .locals 2

    sget-object v0, Lcom/caverock/androidsvg/SVG$a;->a:[I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    return p0

    :pswitch_0
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x40c00000    # 6.0f

    div-float/2addr p0, p1

    return p0

    :pswitch_1
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x42900000    # 72.0f

    div-float/2addr p0, p1

    return p0

    :pswitch_2
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    mul-float/2addr p0, p1

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr p0, p1

    return p0

    :pswitch_3
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    mul-float/2addr p0, p1

    const p1, 0x40228f5c    # 2.54f

    div-float/2addr p0, p1

    return p0

    :pswitch_4
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    mul-float/2addr p0, p1

    return p0

    :cond_0
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    return p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lcom/caverock/androidsvg/b;)F
    .locals 5

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/caverock/androidsvg/b;->S()Lcom/caverock/androidsvg/SVG$b;

    move-result-object p1

    if-nez p1, :cond_0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    return p0

    :cond_0
    iget v0, p1, Lcom/caverock/androidsvg/SVG$b;->c:F

    iget p1, p1, Lcom/caverock/androidsvg/SVG$b;->d:F

    cmpl-float v1, v0, p1

    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v1, :cond_1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    mul-float/2addr p0, v0

    :goto_0
    div-float/2addr p0, v2

    return p0

    :cond_1
    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v3, 0x3ff6a09e667f3bccL    # 1.414213562373095

    div-double/2addr v0, v3

    double-to-float p1, v0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    mul-float/2addr p0, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result p0

    return p0
.end method

.method public e(Lcom/caverock/androidsvg/b;F)F
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    mul-float/2addr p0, p2

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result p0

    return p0
.end method

.method public f(Lcom/caverock/androidsvg/b;)F
    .locals 2

    sget-object v0, Lcom/caverock/androidsvg/SVG$a;->a:[I

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    return p0

    :pswitch_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/b;->S()Lcom/caverock/androidsvg/SVG$b;

    move-result-object p1

    if-nez p1, :cond_0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    return p0

    :cond_0
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    iget p1, p1, Lcom/caverock/androidsvg/SVG$b;->c:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0

    :pswitch_1
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/b;->T()F

    move-result p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x40c00000    # 6.0f

    div-float/2addr p0, p1

    return p0

    :pswitch_2
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/b;->T()F

    move-result p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x42900000    # 72.0f

    div-float/2addr p0, p1

    return p0

    :pswitch_3
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/b;->T()F

    move-result p1

    mul-float/2addr p0, p1

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr p0, p1

    return p0

    :pswitch_4
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/b;->T()F

    move-result p1

    mul-float/2addr p0, p1

    const p1, 0x40228f5c    # 2.54f

    div-float/2addr p0, p1

    return p0

    :pswitch_5
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/b;->T()F

    move-result p1

    mul-float/2addr p0, p1

    return p0

    :pswitch_6
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/b;->R()F

    move-result p1

    mul-float/2addr p0, p1

    return p0

    :pswitch_7
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/b;->Q()F

    move-result p1

    mul-float/2addr p0, p1

    return p0

    :pswitch_8
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
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

.method public g(Lcom/caverock/androidsvg/b;)F
    .locals 2

    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/caverock/androidsvg/b;->S()Lcom/caverock/androidsvg/SVG$b;

    move-result-object p1

    if-nez p1, :cond_0

    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    return p0

    :cond_0
    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    iget p1, p1, Lcom/caverock/androidsvg/SVG$b;->d:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x42c80000    # 100.0f

    div-float/2addr p0, p1

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$o;->f(Lcom/caverock/androidsvg/b;)F

    move-result p0

    return p0
.end method

.method public h()Z
    .locals 1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public i()Z
    .locals 1

    iget p0, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/caverock/androidsvg/SVG$o;->b:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$o;->c:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
