.class public abstract Lsf7;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/widget/ImageView;Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->f(Ljava/lang/String;)Z

    move-result p2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_farvorited_on:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_ott_collect_enter:I

    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_collected_recommend:I

    goto :goto_1

    :cond_2
    sget v2, Lcom/transsion/onlinevideo/R$drawable;->ic_collect_recommend:I

    :goto_1
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    if-nez p3, :cond_4

    if-nez p2, :cond_3

    invoke-static {p0}, Lcd;->h(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    invoke-static {p0}, Lcd;->i(Landroid/view/View;)V

    :cond_4
    :goto_3
    invoke-static {}, Lcom/transsion/palmsdk/b;->s()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result v2

    if-ne v2, v1, :cond_5

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoId()J

    move-result-wide p1

    new-array v1, v1, [J

    aput-wide p1, v1, v0

    invoke-static {v1, p0, p3}, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;->d([JLandroid/widget/ImageView;I)V

    goto :goto_8

    :cond_6
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result p2

    if-nez p2, :cond_b

    filled-new-array {p1}, [Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;

    move-result-object p1

    invoke-static {p1, p0, p3}, Lcom/transsion/onlinevideo/viewmodel/CollectViewModel;->a([Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;Landroid/widget/ImageView;I)V

    goto :goto_8

    :cond_7
    :goto_4
    if-eqz p2, :cond_9

    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getIsYoutube()I

    move-result p3

    if-ne p3, v1, :cond_8

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getSourceId()Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_8
    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;->getVideoId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    :goto_5
    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->i(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    invoke-static {}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->d()Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/onlinevideo/collect/OnlineCollectDataManager;->b(Lcom/transsion/dbdata/beans/onlinevideo/CollectItem;)V

    :goto_6
    if-eqz p2, :cond_a

    sget p0, Lcom/transsion/onlinevideo/R$string;->collect_cancel_suc:I

    goto :goto_7

    :cond_a
    sget p0, Lcom/transsion/onlinevideo/R$string;->collect_suc:I

    :goto_7
    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    invoke-static {}, Lh27;->c()Lh27;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    const/16 p2, 0x436

    invoke-virtual {p0, p2, p1}, Lh27;->e(I[Ljava/lang/Object;)V

    :cond_b
    :goto_8
    return-void
.end method
