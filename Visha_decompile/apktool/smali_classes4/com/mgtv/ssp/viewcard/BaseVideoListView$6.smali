.class Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;
.super Lcom/hunantv/imgo/net/ImgoHttpCallBack;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/lang/String;)V
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
.field final synthetic b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;


# direct methods
.method public constructor <init>(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

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
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget p2, p1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e:I

    const/4 p5, 0x1

    if-ne p2, p5, :cond_1

    invoke-static {p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    new-instance p1, Lcom/hunantv/imgo/data/ErrorData;

    invoke-direct {p1}, Lcom/hunantv/imgo/data/ErrorData;-><init>()V

    .line 6
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {p2}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->getUrl()Ljava/lang/String;

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
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object p2, p2, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->j:Lcom/mgtv/task/http/HttpParams;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/mgtv/task/http/HttpParams;->buildParameter()Ljava/lang/String;

    move-result-object p3

    :goto_0
    invoke-virtual {p1, p3}, Lcom/hunantv/imgo/data/ErrorData;->setParam(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, p4}, Lcom/hunantv/imgo/data/ErrorData;->setMsg(Ljava/lang/String;)V

    .line 10
    iget-object p2, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    const-string p3, "ppv"

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/lang/String;ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-static {p1, p5}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Lcom/mgtv/ssp/viewcard/BaseVideoListView;Z)Z

    .line 12
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i()V

    .line 13
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object p1, p1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-static {}, Lcom/hunantv/imgo/util/p;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/mgtv/ssp/R$string;->mgplayer_error_message:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 16
    :cond_3
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/mgtv/ssp/R$string;->no_network:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b(Ljava/lang/String;)V

    .line 17
    :goto_1
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-static {p0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V

    return-void
.end method

.method public synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/mgtv/ssp/bean/ContentListEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b(Lcom/mgtv/ssp/bean/ContentListEntity;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/mgtv/ssp/bean/ContentListEntity;

    invoke-virtual/range {p0 .. p5}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->a(Lcom/mgtv/ssp/bean/ContentListEntity;IILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Lcom/mgtv/ssp/bean/ContentListEntity;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-static {v0, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Lcom/mgtv/ssp/viewcard/BaseVideoListView;Lcom/mgtv/ssp/bean/ContentListEntity;)V

    .line 3
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->i()V

    .line 4
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget v0, v0, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 5
    iget-object p1, p1, Lcom/mgtv/ssp/bean/ContentListEntity;->data:Lcom/mgtv/ssp/bean/ContentListEntity$Data;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/mgtv/ssp/bean/ContentListEntity$Data;->items:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-static {v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)Lcom/mgtv/ssp/fragment/BaseListFragment$a;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-static {v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->c(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)Lcom/mgtv/ssp/fragment/BaseListFragment$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/mgtv/ssp/fragment/BaseListFragment$a;->a()V

    :cond_1
    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object p1, p1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->m:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const/16 v0, 0x8

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget-object p1, p1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/mgtv/ssp/R$string;->page_empty:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->b(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-static {p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->d(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)V

    .line 13
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    iget v0, p1, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e:I

    if-ne v0, v1, :cond_5

    invoke-static {p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->e(Lcom/mgtv/ssp/viewcard/BaseVideoListView;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 14
    iget-object p1, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    const-string v0, "ppv"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Ljava/lang/String;ZLcom/hunantv/imgo/data/ErrorData;)V

    .line 15
    :cond_5
    iget-object p0, p0, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->b:Lcom/mgtv/ssp/viewcard/BaseVideoListView;

    invoke-static {p0, v1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView;->a(Lcom/mgtv/ssp/viewcard/BaseVideoListView;Z)Z

    return-void
.end method

.method public synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/mgtv/ssp/bean/ContentListEntity;

    invoke-virtual {p0, p1}, Lcom/mgtv/ssp/viewcard/BaseVideoListView$6;->a(Lcom/mgtv/ssp/bean/ContentListEntity;)V

    return-void
.end method
