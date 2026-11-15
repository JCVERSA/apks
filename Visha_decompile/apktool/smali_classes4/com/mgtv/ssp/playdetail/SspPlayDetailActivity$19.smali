.class Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hunantv/imgo/net/ImgoHttpCallBack<",
        "Lcom/mgtv/ssp/bean/ContentListEntity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-direct {p0}, Lcom/hunantv/imgo/net/ImgoHttpCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/mgtv/ssp/bean/ContentListEntity;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgtv/ssp/bean/ContentListEntity;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->v(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->w(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 6
    invoke-static {}, Lcom/hunantv/imgo/net/b;->x()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/hunantv/imgo/data/ErrorData;->setUrl(Ljava/lang/String;)V

    .line 7
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Lcom/hunantv/imgo/data/ErrorData;->setCode(Ljava/lang/String;)V

    .line 8
    iget-object p5, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p5}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/task/http/HttpParams;

    move-result-object p5

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->s(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/task/http/HttpParams;

    move-result-object p3

    invoke-virtual {p3}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 10
    iget-object p3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const-string p4, "ppv"

    const/4 p5, 0x0

    invoke-virtual {p3, p4, p5, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Ljava/lang/String;ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->v(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)I

    move-result p1

    if-ne p1, p2, :cond_6

    .line 12
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z

    .line 13
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 14
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p3, "bindVideoInfo resetList mInfoList.size() == 0 "

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 15
    new-instance p1, Lcom/mgtv/ssp/f;

    sget p3, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->b:I

    new-instance p4, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;

    invoke-direct {p4}, Lcom/mgtv/ssp/bean/VideoDetailInfoBean;-><init>()V

    invoke-direct {p1, p3, p4}, Lcom/mgtv/ssp/f;-><init>(ILcom/mgtv/ssp/bean/VideoDetailInfoBean;)V

    .line 16
    iput-boolean p2, p1, Lcom/mgtv/ssp/f;->e:Z

    .line 17
    new-instance p3, Lcom/mgtv/ssp/f;

    sget p4, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->c:I

    invoke-direct {p3, p4}, Lcom/mgtv/ssp/f;-><init>(I)V

    .line 18
    new-instance p4, Lcom/mgtv/ssp/f;

    sget p5, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    invoke-direct {p4, p5}, Lcom/mgtv/ssp/f;-><init>(I)V

    .line 19
    invoke-static {}, Lcom/hunantv/imgo/util/p;->b()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 20
    iget-object p5, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p5}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p4, Lcom/mgtv/ssp/f;->f:Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_2
    iget-object p5, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p5}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->u(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;

    move-result-object p5

    iput-object p5, p4, Lcom/mgtv/ssp/f;->f:Ljava/lang/String;

    .line 22
    :goto_1
    iget-object p5, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p5}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p5

    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->p(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(Z)V

    .line 26
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->p(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_3

    .line 27
    :cond_3
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_6

    .line 28
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->o(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x2

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mgtv/ssp/f;

    if-nez p1, :cond_4

    .line 29
    new-instance p1, Lcom/mgtv/ssp/f;

    sget p3, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a:I

    invoke-direct {p1, p3}, Lcom/mgtv/ssp/f;-><init>(I)V

    .line 30
    :cond_4
    invoke-static {}, Lcom/hunantv/imgo/util/p;->b()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 31
    iget-object p3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->t(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/mgtv/ssp/f;->f:Ljava/lang/String;

    goto :goto_2

    .line 32
    :cond_5
    iget-object p3, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p3}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->u(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/mgtv/ssp/f;->f:Ljava/lang/String;

    .line 33
    :goto_2
    iget-object p1, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->p(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;->a(Z)V

    .line 34
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {p0}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->p(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;)Lcom/mgtv/ssp/playdetail/SspPlayDetailAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_6
    :goto_3
    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/ssp/bean/ContentListEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b(Lcom/mgtv/ssp/bean/ContentListEntity;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/mgtv/ssp/bean/ContentListEntity;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->a(Lcom/mgtv/ssp/bean/ContentListEntity;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/mgtv/ssp/bean/ContentListEntity;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    invoke-static {v0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->a(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Lcom/mgtv/ssp/bean/ContentListEntity;)V

    .line 3
    iget-object p0, p0, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->b:Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;->e(Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity;Z)Z

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/ssp/bean/ContentListEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/playdetail/SspPlayDetailActivity$19;->a(Lcom/mgtv/ssp/bean/ContentListEntity;)V

    return-void
.end method
