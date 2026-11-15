.class public Lcom/transsion/dbdata/beans/NewFeatureAdvertise;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;,
        Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdvertisingListBean;
    }
.end annotation


# instance fields
.field private adStrategy:Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "strategy_vo"
    .end annotation
.end field

.field private advertisingList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "advertising_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdvertisingListBean;",
            ">;"
        }
    .end annotation
.end field

.field private switchStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "switch_status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->switchStatus:I

    return-void
.end method


# virtual methods
.method public getAdStrategy()Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->adStrategy:Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;

    return-object p0
.end method

.method public getAdvertisingList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdvertisingListBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->advertisingList:Ljava/util/List;

    return-object p0
.end method

.method public getSwitchStatus()I
    .locals 0

    iget p0, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->switchStatus:I

    return p0
.end method

.method public setAdStrategy(Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->adStrategy:Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;

    return-void
.end method

.method public setAdvertisingList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdvertisingListBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->advertisingList:Ljava/util/List;

    return-void
.end method

.method public setSwitchStatus(I)V
    .locals 0

    iput p1, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->switchStatus:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NewFeatureAdvertise{advertisingList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->advertisingList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", switchStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->switchStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adStrategy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->adStrategy:Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdStrategy;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
