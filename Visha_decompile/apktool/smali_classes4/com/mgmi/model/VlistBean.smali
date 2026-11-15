.class public Lcom/mgmi/model/VlistBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgadplus/netlib/json/a;
.implements Ljava/io/Serializable;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mgmi/model/InnerFeedInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pageNo:I

.field private totalPage:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mgmi/model/InnerFeedInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/mgmi/model/VlistBean;->list:Ljava/util/List;

    return-object p0
.end method

.method public getPageNo()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VlistBean;->pageNo:I

    return p0
.end method

.method public getTotalPage()I
    .locals 0

    iget p0, p0, Lcom/mgmi/model/VlistBean;->totalPage:I

    return p0
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mgmi/model/InnerFeedInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/mgmi/model/VlistBean;->list:Ljava/util/List;

    return-void
.end method

.method public setPageNo(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VlistBean;->pageNo:I

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    iput p1, p0, Lcom/mgmi/model/VlistBean;->totalPage:I

    return-void
.end method
