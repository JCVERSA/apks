.class public Lcom/transsion/playercommon/activities/BaseFoldActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/playercommon/activities/BaseFoldActivity;->D()Landroid/hardware/SensorEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/playercommon/activities/BaseFoldActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/playercommon/activities/BaseFoldActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity$a;->a:Lcom/transsion/playercommon/activities/BaseFoldActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AngelSensor "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AngelSensor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity$a;->a:Lcom/transsion/playercommon/activities/BaseFoldActivity;

    iget v1, v0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentHingeAngle:I

    iput v1, v0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mLastHingeAngle:I

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentHingeAngle:I

    invoke-virtual {v0}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->isInSameState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity$a;->a:Lcom/transsion/playercommon/activities/BaseFoldActivity;

    iget-object v1, v0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    :cond_0
    iget-object v0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity$a;->a:Lcom/transsion/playercommon/activities/BaseFoldActivity;

    iget v1, v0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentHingeAngle:I

    iget-object v3, v0, Lcom/transsion/playercommon/activities/BaseFoldActivity;->mCurrentConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v1, v3}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->initWindowOptions(ILandroid/content/res/Configuration;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/playercommon/activities/BaseFoldActivity$a;->a:Lcom/transsion/playercommon/activities/BaseFoldActivity;

    invoke-static {p0, v2}, Lcom/transsion/playercommon/activities/BaseFoldActivity;->t(Lcom/transsion/playercommon/activities/BaseFoldActivity;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AngelSensor "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "\u94f0\u94fe\u89d2\u5ea6=%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AngelSensor"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
