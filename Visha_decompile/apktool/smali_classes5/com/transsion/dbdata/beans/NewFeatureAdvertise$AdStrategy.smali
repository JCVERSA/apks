.class public Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/dbdata/beans/NewFeatureAdvertise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdStrategy"
.end annotation


# instance fields
.field private frequency:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "frequency"
    .end annotation
.end field

.field private intervalDays:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "day"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrequency()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;->frequency:I

    return p0
.end method

.method public getIntervalDays()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;->intervalDays:I

    return p0
.end method

.method public setFrequency(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;->frequency:I

    return-void
.end method

.method public setIntervalDays(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;->intervalDays:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdStrategy{intervalDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;->intervalDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;->frequency:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
