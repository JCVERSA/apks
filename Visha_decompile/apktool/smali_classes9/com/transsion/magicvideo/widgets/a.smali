.class public Lcom/transsion/magicvideo/widgets/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/magicvideo/widgets/a$f;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Dialog;

.field public b:Lcom/transsion/magicvideo/widgets/a$f;

.field public c:Landroid/view/View$OnClickListener;

.field public d:Z

.field public e:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/magicvideo/widgets/a;->d:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/transsion/magicvideo/widgets/a;)Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/a;->a:Landroid/app/Dialog;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/transsion/magicvideo/widgets/a;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/a;->c:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public static bridge synthetic c(Lcom/transsion/magicvideo/widgets/a;)Lcom/transsion/magicvideo/widgets/a$f;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/a;->b:Lcom/transsion/magicvideo/widgets/a$f;

    return-object p0
.end method

.method public static bridge synthetic d(Lcom/transsion/magicvideo/widgets/a;)Lcom/transsion/dbdata/beans/NewFeatureAdvertise;
    .locals 0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/a;->e:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    return-object p0
.end method

.method public static bridge synthetic e(Lcom/transsion/magicvideo/widgets/a;Lcom/transsion/dbdata/beans/NewFeatureAdvertise;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/a;->e:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/a;->a:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/a;->e:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->getAdvertisingList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdvertisingListBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdvertisingListBean;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "default"

    :goto_0
    return-object p0
.end method

.method public h()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/magicvideo/widgets/a;->d:Z

    return p0
.end method

.method public i()Z
    .locals 2

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/a;->e:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->getAdvertisingList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/a;->e:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->getAdvertisingList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/transsion/magicvideo/widgets/a;->e:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->getAdvertisingList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdvertisingListBean;

    invoke-virtual {p0}, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdvertisingListBean;->getRouterBean()Lcom/transsion/dbdata/beans/onlinevideo/RouterBean;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public j(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lcom/transsion/magicvideo/widgets/a$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/transsion/magicvideo/widgets/a$a;-><init>(Lcom/transsion/magicvideo/widgets/a;ZLandroid/content/Context;)V

    invoke-static {p1, v0}, Ll9;->d(Landroid/content/Context;Ll9$b;)V

    return-void
.end method

.method public k(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/magicvideo/widgets/a;->d:Z

    return-void
.end method

.method public l(Lcom/transsion/magicvideo/widgets/a$f;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/a;->b:Lcom/transsion/magicvideo/widgets/a$f;

    return-void
.end method

.method public m(Landroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lfc7;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/a;->a:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    sput v0, Lhb0;->status:I

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ll06;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/app/Dialog;

    sget v2, Lcom/transsion/magicvideo/R$style;->player_dialog:I

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/transsion/magicvideo/widgets/a;->a:Landroid/app/Dialog;

    sget v2, Lcom/transsion/magicvideo/R$layout;->dialog_player_new_feature_new:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(I)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/a;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/a;->a:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/transsion/magicvideo/widgets/a;->a:Landroid/app/Dialog;

    sget v2, Lcom/transsion/magicvideo/R$id;->btn_to_experience_new_feature:I

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/transsion/magicvideo/widgets/a;->a:Landroid/app/Dialog;

    sget v3, Lcom/transsion/magicvideo/R$id;->iv_poster:I

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/transsion/magicvideo/widgets/a;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/transsion/magicvideo/widgets/a;->e:Lcom/transsion/dbdata/beans/NewFeatureAdvertise;

    invoke-virtual {v3}, Lcom/transsion/dbdata/beans/NewFeatureAdvertise;->getAdvertisingList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdvertisingListBean;

    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/transsion/dbdata/beans/NewFeatureAdvertise$AdvertisingListBean;->getPicture()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    sget v0, Lcom/transsion/magicvideo/R$drawable;->iv_default_poster:I

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    goto :goto_0

    :cond_2
    sget p1, Lcom/transsion/magicvideo/R$drawable;->iv_default_poster:I

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/a;->a:Landroid/app/Dialog;

    sget v0, Lcom/transsion/magicvideo/R$id;->iv_close:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/a;->c:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/transsion/magicvideo/widgets/a$b;

    invoke-direct {v0, p0}, Lcom/transsion/magicvideo/widgets/a$b;-><init>(Lcom/transsion/magicvideo/widgets/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/transsion/magicvideo/widgets/a;->a:Landroid/app/Dialog;

    new-instance v2, Lcom/transsion/magicvideo/widgets/a$c;

    invoke-direct {v2, p0, p1}, Lcom/transsion/magicvideo/widgets/a$c;-><init>(Lcom/transsion/magicvideo/widgets/a;Landroid/widget/TextView;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/transsion/magicvideo/widgets/a;->b:Lcom/transsion/magicvideo/widgets/a$f;

    if-eqz p1, :cond_5

    new-instance p1, Lcom/transsion/magicvideo/widgets/a$d;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/widgets/a$d;-><init>(Lcom/transsion/magicvideo/widgets/a;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    new-instance p1, Lcom/transsion/magicvideo/widgets/a$e;

    invoke-direct {p1, p0}, Lcom/transsion/magicvideo/widgets/a$e;-><init>(Lcom/transsion/magicvideo/widgets/a;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setOnCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/magicvideo/widgets/a;->c:Landroid/view/View$OnClickListener;

    return-void
.end method
