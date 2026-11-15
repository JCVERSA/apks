.class public final Lcom/transsion/cloud/viewmodel/CloudViewModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loe7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloud/viewmodel/CloudViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/cloud/viewmodel/CloudViewModel;


# direct methods
.method public constructor <init>(Lcom/transsion/cloud/viewmodel/CloudViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$a;->a:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    iget-object p0, p0, Lcom/transsion/cloud/viewmodel/CloudViewModel$a;->a:Lcom/transsion/cloud/viewmodel/CloudViewModel;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/transsion/dbdata/beans/VideoCloudDataLocal;->getLocalMediaSize()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_1

    :cond_0
    move-wide v5, v1

    :goto_1
    add-long/2addr v3, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getTotalSize()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/transsion/cloud_drive/base/api/model/SpaceStatistics;->getUsedSize()J

    move-result-wide v5

    sub-long/2addr v1, v5

    :cond_2
    cmp-long p1, v3, v1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Lcom/transsion/cloud/viewmodel/CloudViewModel;->U()Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_3
    if-gtz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method
