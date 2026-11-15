.class public Lcom/mgmi/model/StarsBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mgadplus/netlib/json/a;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/mgmi/model/StarsBean;",
        ">;"
    }
.end annotation


# instance fields
.field public currentPointsBean:Lcom/mgmi/model/PointsBean;

.field private id:I

.field private info:Lcom/mgmi/model/StarInfo;

.field private points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/PointsBean;",
            ">;"
        }
    .end annotation
.end field

.field private road:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/PerformingBean;",
            ">;"
        }
    .end annotation
.end field

.field private vlistNew:Lcom/mgmi/model/VlistBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mgmi/model/StarsBean;)I
    .locals 2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/mgmi/model/StarsBean;->currentPointsBean:Lcom/mgmi/model/PointsBean;

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/mgmi/model/StarsBean;->currentPointsBean:Lcom/mgmi/model/PointsBean;

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/mgmi/model/PointsBean;->getConfVal()F

    move-result p1

    iget-object p0, p0, Lcom/mgmi/model/StarsBean;->currentPointsBean:Lcom/mgmi/model/PointsBean;

    invoke-virtual {p0}, Lcom/mgmi/model/PointsBean;->getConfVal()F

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-float/2addr p1, p0

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    if-lez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, -0x1

    :goto_0
    return p0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    .line 4
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/mgmi/model/StarsBean;

    invoke-virtual {p0, p1}, Lcom/mgmi/model/StarsBean;->compareTo(Lcom/mgmi/model/StarsBean;)I

    move-result p0

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/StarsBean;->id:I

    return p0
.end method

.method public getInfo()Lcom/mgmi/model/StarInfo;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/StarsBean;->info:Lcom/mgmi/model/StarInfo;

    return-object p0
.end method

.method public getPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/PointsBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/StarsBean;->points:Ljava/util/List;

    return-object p0
.end method

.method public getRoad()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/PerformingBean;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/StarsBean;->road:Ljava/util/List;

    return-object p0
.end method

.method public getVlistNew()Lcom/mgmi/model/VlistBean;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/model/StarsBean;->vlistNew:Lcom/mgmi/model/VlistBean;

    return-object p0
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/StarsBean;->id:I

    return-void
.end method

.method public setInfo(Lcom/mgmi/model/StarInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/StarsBean;->info:Lcom/mgmi/model/StarInfo;

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/PointsBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgmi/model/StarsBean;->points:Ljava/util/List;

    return-void
.end method

.method public setRoad(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/PerformingBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgmi/model/StarsBean;->road:Ljava/util/List;

    return-void
.end method

.method public setVlistNew(Lcom/mgmi/model/VlistBean;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/model/StarsBean;->vlistNew:Lcom/mgmi/model/VlistBean;

    return-void
.end method
