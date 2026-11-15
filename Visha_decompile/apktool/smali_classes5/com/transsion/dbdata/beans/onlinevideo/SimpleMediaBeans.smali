.class public Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;
    }
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;",
            ">;"
        }
    .end annotation
.end field

.field public errMsg:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errMsg"
    .end annotation
.end field

.field public resultState:Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans$State;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "resultState"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addData(Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->data:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addFirst(Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->data:Ljava/util/List;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public addLast(Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBean;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/dbdata/beans/onlinevideo/SimpleMediaBeans;->data:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
