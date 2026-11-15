.class public Lcom/mgmi/platform/view/ViewGroup/widget/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgmi/platform/view/ViewGroup/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/platform/view/ViewGroup/widget/c;


# direct methods
.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    iget-boolean v1, v0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->e:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->p()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a(Lcom/mgmi/platform/view/ViewGroup/widget/c;Z)Z

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    iput-boolean v1, v0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->e:Z

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->s()V

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->o:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1, v0, v1}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a(Ljava/lang/String;ILcom/mgmi/model/VASTAd;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    iput-boolean p0, v0, Lcom/mgmi/platform/view/ViewGroup/widget/c;->e:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    iget-object v1, v0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->n:Lcom/mgmi/model/i;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->p()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    invoke-static {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a(Lcom/mgmi/platform/view/ViewGroup/widget/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    iget-object v0, v0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->n:Lcom/mgmi/model/i;

    invoke-virtual {v0}, Lcom/mgmi/model/i;->o()I

    move-result v0

    const/4 v5, 0x4

    if-ne v0, v5, :cond_2

    aget p1, v1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41400000    # 12.0f

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    aget p1, v1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-gtz p1, :cond_1

    aget p1, v1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_1

    :cond_1
    :goto_0
    const-string p1, "shake"

    invoke-direct {p0, p1}, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_2
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    iget-object v0, v0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->n:Lcom/mgmi/model/i;

    invoke-virtual {v0}, Lcom/mgmi/model/i;->o()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    iget-wide v6, v5, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x64

    cmp-long v8, v6, v8

    if-gez v8, :cond_3

    return-void

    :cond_3
    iput-wide v0, v5, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a:J

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, p1, v3

    aget v1, p1, v4

    aget p1, p1, v2

    iget v2, v5, Lcom/mgmi/platform/view/ViewGroup/widget/c;->b:F

    sub-float v2, v0, v2

    iget v3, v5, Lcom/mgmi/platform/view/ViewGroup/widget/c;->c:F

    sub-float v3, v1, v3

    iget v4, v5, Lcom/mgmi/platform/view/ViewGroup/widget/c;->d:F

    sub-float v4, p1, v4

    iput v0, v5, Lcom/mgmi/platform/view/ViewGroup/widget/c;->b:F

    iput v1, v5, Lcom/mgmi/platform/view/ViewGroup/widget/c;->c:F

    iput p1, v5, Lcom/mgmi/platform/view/ViewGroup/widget/c;->d:F

    mul-float p1, v2, v2

    mul-float v0, v3, v3

    add-float/2addr p1, v0

    mul-float v0, v4, v4

    add-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v5, v6

    div-double/2addr v0, v5

    const-wide v5, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v5

    const/4 p1, 0x0

    cmpg-float v3, v3, p1

    const-string v5, "motion"

    if-gez v3, :cond_4

    cmpg-float v2, v2, p1

    if-gez v2, :cond_4

    cmpl-float p1, v4, p1

    if-lez p1, :cond_4

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_5

    invoke-direct {p0, v5}, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    cmpl-double p1, v2, v6

    if-ltz p1, :cond_5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4044000000000000L    # 40.0

    cmpg-double p1, v0, v2

    if-gez p1, :cond_5

    invoke-direct {p0, v5}, Lcom/mgmi/platform/view/ViewGroup/widget/c$a;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method
