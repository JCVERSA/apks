.class public Lcom/transsion/vishaplayersdk/data/EpisodesComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)I
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialNo()I

    move-result p0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialNo()I

    move-result v0

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialNo()I

    move-result p0

    invoke-virtual {p2}, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;->getSerialNo()I

    move-result p1

    if-ge p0, p1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    check-cast p2, Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/vishaplayersdk/data/EpisodesComparator;->compare(Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;Lcom/transsion/dbdata/beans/onlinevideo/TranVideoDetail$VideoSerials;)I

    move-result p0

    return p0
.end method
