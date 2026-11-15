.class public Lcom/mgtv/a/d/f/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly5d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgtv/a/d/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ly5d;"
    }
.end annotation


# instance fields
.field a:Lcom/mgmi/model/VASTAd;

.field b:Lcom/mgtv/a/c/a;

.field c:Lcom/mgtv/a/d/f/a/a;

.field d:Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;

.field e:I

.field f:Lcom/mgmi/model/VASTStaticResource;

.field g:Lcom/mgmi/model/VASTMediaFile;

.field h:Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;

.field final synthetic i:Lcom/mgtv/a/d/f/a;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/d/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/mgtv/a/d/f/a/a;

    invoke-direct {v0}, Lcom/mgtv/a/d/f/a/a;-><init>()V

    iput-object v0, p0, Lcom/mgtv/a/d/f/a$a;->c:Lcom/mgtv/a/d/f/a/a;

    .line 16
    new-instance v1, Lcom/mgtv/a/d/f/a$a$1;

    invoke-direct {v1, p0}, Lcom/mgtv/a/d/f/a$a$1;-><init>(Lcom/mgtv/a/d/f/a$a;)V

    invoke-virtual {v0, v1}, Lcom/mgtv/a/d/b/a;->a(Lcom/mgtv/a/d/b/d;)V

    .line 17
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->c:Lcom/mgtv/a/d/f/a/a;

    iget-object v1, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {v0, p1, v1}, Lcom/mgtv/a/d/b/a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->c:Lcom/mgtv/a/d/f/a/a;

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1, v0}, Lcom/mgtv/a/d/b/a;->c(Ljava/lang/Object;)V

    .line 19
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->c:Lcom/mgtv/a/d/f/a/a;

    invoke-virtual {p0}, Lcom/mgtv/a/d/b/a;->h()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public a(Landroid/content/Context;Lcom/mgmi/model/VASTAd;)Landroid/view/View;
    .locals 1

    .line 3
    iput-object p2, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    .line 4
    iget-object p2, p0, Lcom/mgtv/a/d/f/a$a;->d:Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    :cond_0
    new-instance p2, Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;

    invoke-direct {p2, p1}, Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mgtv/a/d/f/a$a;->d:Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;

    .line 7
    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/f/a$a;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {p2, v0}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 8
    iget-object p2, p0, Lcom/mgtv/a/d/f/a$a;->d:Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;

    invoke-virtual {p0, p1}, Lcom/mgtv/a/d/f/a$a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    invoke-static {p2, v0}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 9
    iget-object p2, p0, Lcom/mgtv/a/d/f/a$a;->h:Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;

    if-nez p2, :cond_1

    .line 10
    new-instance p2, Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;

    invoke-direct {p2, p1}, Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/mgtv/a/d/f/a$a;->h:Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->d:Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;

    invoke-virtual {p1, p0}, Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;->setParentViewWrf(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->d:Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;

    iget-object p2, p0, Lcom/mgtv/a/d/f/a$a;->h:Lcom/mgadplus/viewgroup/dynamicview/PreLoadingView;

    invoke-static {p1, p2}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 13
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->d:Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;

    return-object p0
.end method

.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)Landroid/view/View;
    .locals 0

    .line 1
    check-cast p2, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1, p2}, Lcom/mgtv/a/d/f/a$a;->a(Landroid/content/Context;Lcom/mgmi/model/VASTAd;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public a()V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz v0, :cond_5

    .line 28
    invoke-virtual {v0}, Lcom/mgtv/a/c/a;->m()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 29
    iget v0, p0, Lcom/mgtv/a/d/f/a$a;->e:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->g:Lcom/mgmi/model/VASTMediaFile;

    if-eqz v0, :cond_3

    .line 31
    iget-object v2, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTMediaFile;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mgtv/a/c/a;->a(Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    :goto_0
    if-ne v0, v2, :cond_2

    .line 32
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->f:Lcom/mgmi/model/VASTStaticResource;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    iget-object v2, p0, Lcom/mgtv/a/d/f/a$a;->f:Lcom/mgmi/model/VASTStaticResource;

    invoke-virtual {v2}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mgtv/a/c/a;->a(Ljava/lang/String;)Z

    goto :goto_1

    .line 34
    :cond_2
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->f:Lcom/mgmi/model/VASTStaticResource;

    if-eqz v0, :cond_3

    .line 35
    iget-object v2, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    invoke-virtual {v0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mgtv/a/c/a;->a(Ljava/lang/String;)Z

    .line 36
    :cond_3
    :goto_1
    iget v0, p0, Lcom/mgtv/a/d/f/a$a;->e:I

    if-eq v0, v1, :cond_4

    .line 37
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->as(Lcom/mgtv/a/d/f/a;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 38
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {v0}, Lcom/mgtv/a/d/f/a;->as(Lcom/mgtv/a/d/f/a;)Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mgadplus/viewgroup/convenientbanner/PauseConvenientBanner;->d()V

    .line 39
    :cond_4
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz p0, :cond_5

    .line 40
    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->c()V

    :cond_5
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 23
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->d:Lcom/mgadplus/viewgroup/dynamicview/ContainerFLayout;

    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz p0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->q()V

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;ILcom/mgmi/model/VASTAd;)V
    .locals 0

    if-eqz p3, :cond_1

    .line 20
    iget p1, p0, Lcom/mgtv/a/d/f/a$a;->e:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->f:Lcom/mgmi/model/VASTStaticResource;

    if-eqz p0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/mgtv/a/c/a;->a(Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method public bridge synthetic a(Landroid/content/Context;ILjava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p3, Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mgtv/a/d/f/a$a;->a(Landroid/content/Context;ILcom/mgmi/model/VASTAd;)V

    return-void
.end method

.method public b(Landroid/content/Context;)Landroid/view/View;
    .locals 4

    .line 2
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 3
    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/f/a$a;->f:Lcom/mgmi/model/VASTStaticResource;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/mgtv/a/d/f/a$a;->e:I

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mgmi/model/VASTStaticResource;->getType()Ljava/lang/String;

    move-result-object p1

    const-string v2, "file/h5_zip"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 7
    iput p1, p0, Lcom/mgtv/a/d/f/a$a;->e:I

    .line 8
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p1

    iput-object p1, p0, Lcom/mgtv/a/d/f/a$a;->f:Lcom/mgmi/model/VASTStaticResource;

    goto :goto_0

    .line 9
    :cond_1
    iput v1, p0, Lcom/mgtv/a/d/f/a$a;->e:I

    .line 10
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/VASTMediaFile;

    if-eqz v2, :cond_2

    .line 12
    iput-object v2, p0, Lcom/mgtv/a/d/f/a$a;->g:Lcom/mgmi/model/VASTMediaFile;

    .line 13
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->v(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/e;

    move-result-object p1

    if-nez p1, :cond_4

    .line 14
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    new-instance v2, Lcom/mgtv/a/d/b/e;

    invoke-direct {v2}, Lcom/mgtv/a/d/b/e;-><init>()V

    invoke-static {p1, v2}, Lcom/mgtv/a/d/f/a;->a(Lcom/mgtv/a/d/f/a;Lcom/mgtv/a/d/b/e;)Lcom/mgtv/a/d/b/e;

    .line 15
    :cond_4
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->w(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/e;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 16
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p1}, Lcom/mgtv/a/d/f/a;->x(Lcom/mgtv/a/d/f/a;)Lcom/mgtv/a/d/b/e;

    move-result-object p1

    iget-object v2, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-virtual {v2}, Lcom/mgtv/a/d/b/b;->n()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1, v2, v0, v3}, Lcom/mgtv/a/d/b/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mgmi/model/VASTAd;)Lcom/mgtv/a/c/c;

    move-result-object p1

    check-cast p1, Lcom/mgtv/a/c/a;

    iput-object p1, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    .line 17
    :cond_5
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz p1, :cond_9

    .line 18
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getDuration()I

    move-result p1

    if-nez p1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->a:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p1}, Lcom/mgmi/model/VASTAd;->getAdRollTime()I

    move-result p1

    :cond_6
    if-nez p1, :cond_7

    const/4 p1, 0x5

    .line 20
    :cond_7
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    new-instance v2, Lcom/mgtv/a/d/f/a$a$2;

    invoke-direct {v2, p0}, Lcom/mgtv/a/d/f/a$a$2;-><init>(Lcom/mgtv/a/d/f/a$a;)V

    invoke-virtual {v0, v2}, Lcom/mgtv/a/c/a;->a(Lcom/mgtv/a/c/e;)V

    .line 21
    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    invoke-virtual {v0, p1}, Lcom/mgtv/a/c/a;->a(I)V

    .line 22
    iget-object p1, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    instance-of v0, p1, Lcom/mgtv/a/c/b;

    if-eqz v0, :cond_8

    .line 23
    invoke-virtual {p1, v1}, Lcom/mgtv/a/c/a;->b(Z)V

    .line 24
    :cond_8
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->a()Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v0
.end method

.method public b()V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz p0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->j()V

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public c()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->k()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->j()V

    :cond_0
    return-void
.end method

.method public e()Z
    .locals 0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->i:Lcom/mgtv/a/d/f/a;

    invoke-static {p0}, Lcom/mgtv/a/d/f/a;->av(Lcom/mgtv/a/d/f/a;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mgtv/a/c/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/mgtv/a/d/f/a$a;->b:Lcom/mgtv/a/c/a;

    invoke-virtual {p0}, Lcom/mgtv/a/c/a;->j()V

    :cond_0
    return-void
.end method
