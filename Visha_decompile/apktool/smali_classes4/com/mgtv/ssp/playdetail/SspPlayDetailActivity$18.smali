.class Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->g()V

    .line 5
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 6
    invoke-static {}, Lcom/hunantv/imgo/net/b;->y()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/task/http/HttpParams;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/task/http/HttpParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const-string p3, "ppv"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Ljava/lang/String;ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 11
    invoke-static {}, Lcom/hunantv/imgo/util/p;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->u(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)V

    .line 14
    :goto_1
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->g()V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b(Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->a(Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->g()V

    .line 3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "bindVideoInfo success "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object v3, p1, Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;->data:Lcom/mgtv/ssp/bean/VideoDetailInfoEntity$Data;

    if-eqz v3, :cond_0

    iget-object v3, v3, Lcom/mgtv/ssp/bean/VideoDetailInfoEntity$Data;->video:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p1, :cond_2

    .line 5
    iget-object v4, p1, Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;->data:Lcom/mgtv/ssp/bean/VideoDetailInfoEntity$Data;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/mgtv/ssp/bean/VideoDetailInfoEntity$Data;->spaceCfg:Lcom/mgtv/ssp/bean/config/SspSpaceConfig;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/mgtv/ssp/bean/config/SspSpaceConfig;->adspaceId:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 6
    iget-object v5, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v5, v4}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->c(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/hunantv/imgo/b/e;->c()Lcom/hunantv/imgo/b/e;

    move-result-object v4

    iget-object v5, p1, Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;->data:Lcom/mgtv/ssp/bean/VideoDetailInfoEntity$Data;

    iget-object v5, v5, Lcom/mgtv/ssp/bean/VideoDetailInfoEntity$Data;->spaceCfg:Lcom/mgtv/ssp/bean/config/SspSpaceConfig;

    iget v5, v5, Lcom/mgtv/ssp/bean/config/SspSpaceConfig;->autoPlay:I

    if-ne v5, v1, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    invoke-virtual {v4, v5}, Lcom/hunantv/imgo/b/e;->a(Z)V

    :cond_2
    if-eqz v3, :cond_b

    .line 8
    iget-object p1, p1, Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;->data:Lcom/mgtv/ssp/bean/VideoDetailInfoEntity$Data;

    iget-object p1, p1, Lcom/mgtv/ssp/bean/VideoDetailInfoEntity$Data;->video:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    .line 9
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    iput-object p1, v3, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a:Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    .line 10
    invoke-static {v3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->k(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->l(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    goto :goto_2

    .line 12
    :cond_3
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->l(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/mgtv/thirdsdk/playcore/utils/f;->a(Landroid/view/View;I)Z

    .line 13
    :goto_2
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->h(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 14
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->h(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/widget/FeedVodBottomControlView;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {v4}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->k()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/mgtv/ssp/widget/FeedVodBottomControlView;->setTopUiVisible(Z)V

    .line 15
    :cond_4
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getVcode()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->d(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->m(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 17
    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getFdParams()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 18
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoInfoBean;->getFdParams()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->b(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->a()Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;

    move-result-object v3

    iget-object v4, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v4}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->d(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mgtv/thirdsdk/datareport/VideoSDKReport;->b(Ljava/lang/String;)V

    .line 20
    :cond_5
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->n(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    .line 21
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v1, :cond_9

    .line 22
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgtv/ssp/f;

    if-eqz v0, :cond_7

    .line 23
    iget v0, v0, Lcom/mgtv/ssp/f;->b:I

    sget v3, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    if-eq v0, v3, :cond_6

    .line 24
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/mgtv/ssp/f;

    sget v4, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    invoke-direct {v3, v4, p1}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoDetailInfoBean;)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 25
    :cond_6
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/mgtv/ssp/f;

    sget v4, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    invoke-direct {v3, v4, p1}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoDetailInfoBean;)V

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 27
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgtv/ssp/f;

    if-eqz p1, :cond_8

    .line 28
    iget p1, p1, Lcom/mgtv/ssp/f;->b:I

    sget v0, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    if-eq p1, v0, :cond_8

    .line 29
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/mgtv/ssp/f;

    sget v3, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    invoke-direct {v0, v3}, Lcom/mgtv/ssp/f;-><init>(I)V

    invoke-interface {p1, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 30
    :cond_8
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->p(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 31
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->p(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_4

    .line 32
    :cond_9
    iget-object v3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindVideoInfo mInfoList.size() == 0 detailInfoBean "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;->getActors()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v3, Lcom/mgtv/ssp/f;

    sget v4, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    invoke-direct {v3, v4, p1}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoDetailInfoBean;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/mgtv/ssp/f;

    sget v3, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    invoke-direct {v0, v3}, Lcom/mgtv/ssp/f;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Lcom/mgtv/ssp/f;

    sget v3, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    invoke-direct {v0, v3}, Lcom/mgtv/ssp/f;-><init>(I)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->p(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 38
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const-string v0, "ppv"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Ljava/lang/String;ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 39
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->q(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V

    .line 40
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->r(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 41
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1, v2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->d(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z

    .line 42
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->d()V

    goto :goto_5

    .line 43
    :cond_b
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_d

    .line 44
    :cond_c
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/mgtv/ssp/R$string;->page_empty:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Ljava/lang/String;)V

    :cond_d
    :goto_5
    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$18;->a(Lcom/mgtv/ssp/bean/VideoDetailInfoEntity;)V

    return-void
.end method
