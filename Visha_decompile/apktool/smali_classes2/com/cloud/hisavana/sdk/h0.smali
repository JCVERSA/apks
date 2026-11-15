.class public Lcom/cloud/hisavana/sdk/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/hisavana/sdk/h0$g;
    }
.end annotation


# instance fields
.field public a:Lcom/cloud/hisavana/sdk/h0$g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/cloud/hisavana/sdk/h0;)Lcom/cloud/hisavana/sdk/h0$g;
    .locals 0

    iget-object p0, p0, Lcom/cloud/hisavana/sdk/h0;->a:Lcom/cloud/hisavana/sdk/h0$g;

    return-object p0
.end method

.method public static synthetic e(Lcom/cloud/hisavana/sdk/h0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/cloud/hisavana/sdk/h0;->c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    new-instance v0, Ldp1;

    new-instance v1, Lcom/cloud/hisavana/sdk/h0$b;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/h0$b;-><init>(Lcom/cloud/hisavana/sdk/h0;)V

    invoke-direct {v0, p1, p2, v1}, Ldp1;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILwmd;)V

    invoke-virtual {v0}, Ldp1;->s()V

    return-void
.end method

.method public final c(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Landroid/os/Bundle;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->isInteractiveAd()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsProtocolBean;->getAdm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTemplateHtmlUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;->getTemplateHtmlUrl()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/cloud/hisavana/sdk/h0$f;

    invoke-direct {v0, p0, p1, p3}, Lcom/cloud/hisavana/sdk/h0$f;-><init>(Lcom/cloud/hisavana/sdk/h0;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;Ljava/lang/Runnable;)V

    const/16 p0, 0xe

    const/4 p3, 0x1

    invoke-static {p2, p1, p0, p3, v0}, Lcom/cloud/hisavana/sdk/common/http/DownLoadRequest;->k(Ljava/lang/String;Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;IZLcom/cloud/hisavana/sdk/common/http/listener/DrawableResponseListener;)V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public d(Lcom/cloud/hisavana/sdk/h0$g;)V
    .locals 0

    iput-object p1, p0, Lcom/cloud/hisavana/sdk/h0;->a:Lcom/cloud/hisavana/sdk/h0$g;

    return-void
.end method

.method public final f(Ljava/util/List;)V
    .locals 3

    invoke-static {}, Likd;->b()Likd;

    move-result-object v0

    const-string/jumbo v1, "ssp"

    const-string/jumbo v2, "start execute getAdCreativies."

    invoke-virtual {v0, v1, v2}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cloud/hisavana/sdk/f;

    new-instance v1, Lcom/cloud/hisavana/sdk/h0$a;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/h0$a;-><init>(Lcom/cloud/hisavana/sdk/h0;)V

    const/4 p0, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/cloud/hisavana/sdk/f;-><init>(Ljava/util/List;ILcom/cloud/hisavana/sdk/f$b;)V

    invoke-virtual {v0}, Lcom/cloud/hisavana/sdk/f;->s()V

    return-void
.end method

.method public g(Ljava/util/List;III)V
    .locals 3

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, p1, p3}, Lcom/cloud/hisavana/sdk/h0;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_1

    :pswitch_2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, p1, p3}, Lcom/cloud/hisavana/sdk/h0;->i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_1

    :pswitch_3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, p1, p3}, Lcom/cloud/hisavana/sdk/h0;->j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_1

    :pswitch_4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, p1, p3}, Lcom/cloud/hisavana/sdk/h0;->h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_1

    :pswitch_5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;

    invoke-virtual {p0, p1, p3}, Lcom/cloud/hisavana/sdk/h0;->b(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V

    goto :goto_1

    :pswitch_6
    if-lez p4, :cond_1

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gt p2, p4, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Likd;->b()Likd;

    move-result-object p2

    const-string/jumbo p3, "ssp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ads dto subList -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lja1;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0, p4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/cloud/hisavana/sdk/h0;->f(Ljava/util/List;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final h(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    new-instance v0, Lutd;

    new-instance v1, Lcom/cloud/hisavana/sdk/h0$c;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/h0$c;-><init>(Lcom/cloud/hisavana/sdk/h0;)V

    invoke-direct {v0, p1, p2, v1}, Lutd;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILwmd;)V

    invoke-virtual {v0}, Lutd;->s()V

    return-void
.end method

.method public final i(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    new-instance v0, Ln7d;

    new-instance v1, Lcom/cloud/hisavana/sdk/h0$e;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/h0$e;-><init>(Lcom/cloud/hisavana/sdk/h0;)V

    invoke-direct {v0, p1, p2, v1}, Ln7d;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILwmd;)V

    invoke-virtual {v0}, Ln7d;->w()V

    return-void
.end method

.method public final j(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;I)V
    .locals 2

    new-instance v0, Ltgd;

    new-instance v1, Lcom/cloud/hisavana/sdk/h0$d;

    invoke-direct {v1, p0}, Lcom/cloud/hisavana/sdk/h0$d;-><init>(Lcom/cloud/hisavana/sdk/h0;)V

    invoke-direct {v0, p1, p2, v1}, Ltgd;-><init>(Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;ILwmd;)V

    invoke-virtual {v0}, Ltgd;->t()V

    return-void
.end method
