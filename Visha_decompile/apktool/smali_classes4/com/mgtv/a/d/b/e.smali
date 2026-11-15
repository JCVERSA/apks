.class public Lcom/mgtv/a/d/b/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/mgtv/a/c/c;

.field protected b:Lcom/mgtv/a/c/c;

.field protected c:Lcom/mgtv/a/c/c;

.field protected d:Lcom/mgtv/a/c/c;

.field protected e:Lcom/mgtv/a/c/c;

.field protected f:Lcom/mgtv/a/c/c;

.field protected g:Z

.field protected h:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mgtv/a/d/b/e;->h:Z

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;
    .locals 2

    .line 13
    iget-boolean v0, p0, Lcom/mgtv/a/d/b/e;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 14
    :cond_0
    new-instance v0, Lcom/mgtv/a/c/f;

    invoke-direct {v0}, Lcom/mgtv/a/c/f;-><init>()V

    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    .line 15
    iget-boolean v1, p0, Lcom/mgtv/a/d/b/e;->g:Z

    invoke-virtual {v0, v1}, Lcom/mgtv/a/c/f;->c(Z)V

    .line 16
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    invoke-interface {v0, p1}, Lcom/mgtv/a/c/c;->a(Landroid/content/Context;)V

    .line 17
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    new-instance v0, Lcom/mgmi/model/m;

    invoke-direct {v0}, Lcom/mgmi/model/m;-><init>()V

    invoke-virtual {v0, p2}, Lcom/mgmi/model/m;->a(Ljava/lang/Object;)Lcom/mgmi/model/m;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/a/c/a;->a(Lcom/mgmi/model/m;)V

    .line 18
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    invoke-interface {p1}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object p1

    invoke-static {p3, p1}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 19
    iget-object p0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/mgmi/net/bean/BootDataItem;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;
    .locals 2

    .line 25
    iget-boolean v0, p0, Lcom/mgtv/a/d/b/e;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 26
    :cond_0
    new-instance v0, Lcom/mgtv/a/c/f;

    invoke-direct {v0}, Lcom/mgtv/a/c/f;-><init>()V

    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    .line 27
    iget-boolean v1, p0, Lcom/mgtv/a/d/b/e;->g:Z

    invoke-virtual {v0, v1}, Lcom/mgtv/a/c/f;->c(Z)V

    .line 28
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    invoke-interface {v0, p1}, Lcom/mgtv/a/c/c;->a(Landroid/content/Context;)V

    .line 29
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    new-instance v0, Lcom/mgmi/model/m;

    invoke-direct {v0}, Lcom/mgmi/model/m;-><init>()V

    invoke-virtual {v0, p2}, Lcom/mgmi/model/m;->a(Ljava/lang/Object;)Lcom/mgmi/model/m;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/a/c/a;->a(Lcom/mgmi/model/m;)V

    .line 30
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    invoke-interface {p1}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {p3, p1, p2}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object p0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;
    .locals 0

    .line 1
    iget-boolean p2, p0, Lcom/mgtv/a/d/b/e;->h:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mgtv/a/d/b/e;->c:Lcom/mgtv/a/c/c;

    if-eqz p2, :cond_0

    return-object p2

    .line 2
    :cond_0
    new-instance p2, Lcom/mgtv/a/c/g;

    invoke-direct {p2}, Lcom/mgtv/a/c/g;-><init>()V

    iput-object p2, p0, Lcom/mgtv/a/d/b/e;->c:Lcom/mgtv/a/c/c;

    .line 3
    invoke-interface {p2, p1}, Lcom/mgtv/a/c/c;->a(Landroid/content/Context;)V

    .line 4
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->c:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    new-instance p2, Lcom/mgmi/model/m;

    invoke-direct {p2}, Lcom/mgmi/model/m;-><init>()V

    invoke-virtual {p1, p2}, Lcom/mgtv/a/c/a;->a(Lcom/mgmi/model/m;)V

    .line 5
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->c:Lcom/mgtv/a/c/c;

    invoke-interface {p1}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object p1

    invoke-static {p3, p1}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 6
    iget-object p0, p0, Lcom/mgtv/a/d/b/e;->c:Lcom/mgtv/a/c/c;

    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/mgmi/net/bean/BootDataItem;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/mgtv/a/d/b/e;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lcom/mgtv/a/c/b;

    invoke-direct {v0, p1}, Lcom/mgtv/a/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    .line 9
    invoke-interface {v0, p1}, Lcom/mgtv/a/c/c;->a(Landroid/content/Context;)V

    .line 10
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    new-instance v0, Lcom/mgmi/model/m;

    invoke-direct {v0}, Lcom/mgmi/model/m;-><init>()V

    invoke-virtual {v0, p2}, Lcom/mgmi/model/m;->a(Ljava/lang/Object;)Lcom/mgmi/model/m;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/a/c/a;->a(Lcom/mgmi/model/m;)V

    .line 11
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    invoke-interface {p1}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object p1

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-static {p3, p1, p2}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 12
    iget-object p0, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    return-object p0
.end method

.method private c(Landroid/content/Context;Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mgtv/a/d/b/e;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    instance-of v0, p2, Lcom/mgmi/model/VASTChannelAd;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lcom/mgtv/a/c/i;

    invoke-direct {v0}, Lcom/mgtv/a/c/i;-><init>()V

    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    .line 4
    invoke-interface {v0, p1}, Lcom/mgtv/a/c/c;->a(Landroid/content/Context;)V

    .line 5
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    new-instance v0, Lcom/mgmi/model/m;

    invoke-direct {v0}, Lcom/mgmi/model/m;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/mgmi/model/m;->a(Ljava/lang/Object;Z)Lcom/mgmi/model/m;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/a/c/a;->a(Lcom/mgmi/model/m;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p2, Lcom/mgtv/a/c/h;

    invoke-direct {p2}, Lcom/mgtv/a/c/h;-><init>()V

    iput-object p2, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    .line 7
    invoke-interface {p2, p1}, Lcom/mgtv/a/c/c;->a(Landroid/content/Context;)V

    .line 8
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    new-instance p2, Lcom/mgmi/model/m;

    invoke-direct {p2}, Lcom/mgmi/model/m;-><init>()V

    invoke-virtual {p1, p2}, Lcom/mgtv/a/c/a;->a(Lcom/mgmi/model/m;)V

    .line 9
    :goto_0
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    invoke-interface {p1}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object p1

    invoke-static {p3, p1}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 10
    iget-object p0, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    return-object p0
.end method

.method private c(Landroid/content/Context;Lcom/mgmi/net/bean/BootDataItem;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;
    .locals 0

    .line 11
    iget-boolean p2, p0, Lcom/mgtv/a/d/b/e;->h:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    if-eqz p2, :cond_0

    return-object p2

    .line 12
    :cond_0
    new-instance p2, Lcom/mgtv/a/c/h;

    invoke-direct {p2}, Lcom/mgtv/a/c/h;-><init>()V

    iput-object p2, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    .line 13
    invoke-interface {p2, p1}, Lcom/mgtv/a/c/c;->a(Landroid/content/Context;)V

    .line 14
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    new-instance p2, Lcom/mgmi/model/m;

    invoke-direct {p2}, Lcom/mgmi/model/m;-><init>()V

    invoke-virtual {p1, p2}, Lcom/mgtv/a/c/a;->a(Lcom/mgmi/model/m;)V

    .line 15
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    sget p2, Lf4d;->a:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 17
    sget p2, Lf4d;->b:I

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 18
    iget-object p2, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    invoke-interface {p2}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object p2

    invoke-static {p3, p2, p1}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object p0, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    return-object p0
.end method

.method private d(Landroid/content/Context;Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;
    .locals 1

    iget-boolean v0, p0, Lcom/mgtv/a/d/b/e;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/mgtv/a/c/b;

    invoke-direct {v0, p1}, Lcom/mgtv/a/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    invoke-interface {v0, p1}, Lcom/mgtv/a/c/c;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    check-cast p1, Lcom/mgtv/a/c/a;

    new-instance v0, Lcom/mgmi/model/m;

    invoke-direct {v0}, Lcom/mgmi/model/m;-><init>()V

    invoke-virtual {v0, p2}, Lcom/mgmi/model/m;->a(Ljava/lang/Object;)Lcom/mgmi/model/m;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mgtv/a/c/a;->a(Lcom/mgmi/model/m;)V

    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    invoke-interface {p1}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object p1

    invoke-static {p3, p1}, Ll4d;->b(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object p0, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    return-object p0
.end method


# virtual methods
.method public a(ILcom/mgtv/a/c/e;)Lcom/mgtv/a/c/c;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 35
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    .line 36
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    invoke-virtual {p0, p1, v0, p2}, Lcom/mgtv/a/d/b/e;->a(Lcom/mgtv/a/c/c;Lcom/mgtv/a/c/c;Lcom/mgtv/a/c/e;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 37
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    .line 38
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    invoke-virtual {p0, p1, v0, p2}, Lcom/mgtv/a/d/b/e;->a(Lcom/mgtv/a/c/c;Lcom/mgtv/a/c/c;Lcom/mgtv/a/c/e;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 39
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    .line 40
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    invoke-virtual {p0, p1, v0, p2}, Lcom/mgtv/a/d/b/e;->a(Lcom/mgtv/a/c/c;Lcom/mgtv/a/c/c;Lcom/mgtv/a/c/e;)V

    goto :goto_0

    .line 41
    :cond_2
    iget-object p1, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    .line 42
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->c:Lcom/mgtv/a/c/c;

    invoke-virtual {p0, p1, v0, p2}, Lcom/mgtv/a/d/b/e;->a(Lcom/mgtv/a/c/c;Lcom/mgtv/a/c/c;Lcom/mgtv/a/c/e;)V

    .line 43
    :goto_0
    iget-object p0, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mgmi/model/VASTAd;)Lcom/mgtv/a/c/c;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mgtv/a/d/b/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mgmi/model/VASTAd;Z)Lcom/mgtv/a/c/c;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mgmi/model/VASTAd;Z)Lcom/mgtv/a/c/c;
    .locals 1

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iput-boolean p4, p0, Lcom/mgtv/a/d/b/e;->h:Z

    .line 3
    invoke-virtual {p3}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mgmi/model/VASTStaticResource;->getType()Ljava/lang/String;

    move-result-object p4

    const-string v0, "file/h5_zip"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 4
    invoke-direct {p0, p1, p3, p2}, Lcom/mgtv/a/d/b/e;->d(Landroid/content/Context;Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;

    move-result-object p0

    return-object p0

    .line 5
    :cond_1
    invoke-virtual {p3}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-virtual {p3}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-lez p4, :cond_3

    .line 6
    invoke-virtual {p3}, Lcom/mgmi/model/VASTAd;->getMediaFiles()Ljava/util/List;

    move-result-object p4

    .line 7
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mgmi/model/VASTMediaFile;

    if-eqz v0, :cond_2

    .line 8
    invoke-direct {p0, p1, p3, p2}, Lcom/mgtv/a/d/b/e;->c(Landroid/content/Context;Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    invoke-virtual {p3}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p4

    if-eqz p4, :cond_4

    invoke-virtual {p3}, Lcom/mgmi/model/VASTAd;->getCurrentStaticResource()Lcom/mgmi/model/VASTStaticResource;

    move-result-object p4

    invoke-virtual {p4}, Lcom/mgmi/model/VASTStaticResource;->getUrl()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    .line 10
    invoke-direct {p0, p1, p3, p2}, Lcom/mgtv/a/d/b/e;->a(Landroid/content/Context;Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    invoke-direct {p0, p1, p3, p2}, Lcom/mgtv/a/d/b/e;->b(Landroid/content/Context;Lcom/mgmi/model/VASTAd;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mgmi/net/bean/BootDataItem;)Lcom/mgtv/a/c/c;
    .locals 2

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_0
    iget-object v0, p3, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 21
    invoke-direct {p0, p1, p3, p2}, Lcom/mgtv/a/d/b/e;->c(Landroid/content/Context;Lcom/mgmi/net/bean/BootDataItem;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;

    move-result-object p0

    return-object p0

    .line 22
    :cond_1
    iget-object v0, p3, Lcom/mgmi/net/bean/BootDataItem;->type:Ljava/lang/String;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-direct {p0, p1, p3, p2}, Lcom/mgtv/a/d/b/e;->b(Landroid/content/Context;Lcom/mgmi/net/bean/BootDataItem;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;

    move-result-object p0

    return-object p0

    .line 24
    :cond_2
    invoke-direct {p0, p1, p3, p2}, Lcom/mgtv/a/d/b/e;->a(Landroid/content/Context;Lcom/mgmi/net/bean/BootDataItem;Landroid/view/ViewGroup;)Lcom/mgtv/a/c/c;

    move-result-object p0

    return-object p0
.end method

.method public final a()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ll4d;->a(Landroid/view/View;F)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->e:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {v0}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ll4d;->a(Landroid/view/View;F)V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->e:Lcom/mgtv/a/c/c;

    :cond_1
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Lcom/mgmi/model/VASTAd;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_1

    .line 32
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 33
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mgmi/model/VASTAd;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    .line 34
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/mgtv/a/d/b/e;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/mgmi/model/VASTAd;Z)Lcom/mgtv/a/c/c;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Landroid/view/ViewParent;Landroid/view/View;)V
    .locals 0

    .line 58
    instance-of p0, p1, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 59
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1, p2}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/mgtv/a/c/c;Lcom/mgtv/a/c/c;Lcom/mgtv/a/c/e;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eq p1, p2, :cond_0

    .line 44
    iput-object p1, p0, Lcom/mgtv/a/d/b/e;->e:Lcom/mgtv/a/c/c;

    const/4 v0, 0x0

    .line 45
    invoke-interface {p1, v0}, Lcom/mgtv/a/c/c;->a(Lcom/mgtv/a/c/e;)V

    .line 46
    iput-object p2, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    if-nez v0, :cond_1

    .line 48
    iput-object p2, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    .line 49
    :cond_1
    iget-object p2, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    if-eqz p2, :cond_2

    .line 50
    invoke-interface {p2, p3}, Lcom/mgtv/a/c/c;->a(Lcom/mgtv/a/c/e;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 51
    iget-object p0, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    if-eqz p0, :cond_3

    .line 52
    invoke-interface {p0}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Ll4d;->a(Landroid/view/View;F)V

    :cond_3
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/mgtv/a/d/b/e;->g:Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 13
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Lcom/mgtv/a/c/c;->l()V

    .line 15
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    invoke-interface {v0}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    invoke-interface {v0}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    invoke-interface {v1}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/a/d/b/e;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    invoke-interface {v0}, Lcom/mgtv/a/c/c;->q()V

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_3

    .line 19
    invoke-interface {v0}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    invoke-interface {v0}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    invoke-interface {v1}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/a/d/b/e;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    invoke-interface {v0}, Lcom/mgtv/a/c/c;->q()V

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_5

    .line 23
    invoke-interface {v0}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 24
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    invoke-interface {v0}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    invoke-interface {v1}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/a/d/b/e;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 25
    :cond_4
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    invoke-interface {v0}, Lcom/mgtv/a/c/c;->q()V

    .line 26
    :cond_5
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->c:Lcom/mgtv/a/c/c;

    if-eqz v0, :cond_7

    .line 27
    invoke-interface {v0}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 28
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->c:Lcom/mgtv/a/c/c;

    invoke-interface {v0}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/d/b/e;->c:Lcom/mgtv/a/c/c;

    invoke-interface {v1}, Lcom/mgtv/a/c/c;->a()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mgtv/a/d/b/e;->a(Landroid/view/ViewParent;Landroid/view/View;)V

    .line 29
    :cond_6
    iget-object v0, p0, Lcom/mgtv/a/d/b/e;->c:Lcom/mgtv/a/c/c;

    invoke-interface {v0}, Lcom/mgtv/a/c/c;->q()V

    :cond_7
    const/4 v0, 0x0

    .line 30
    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->b:Lcom/mgtv/a/c/c;

    .line 31
    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->a:Lcom/mgtv/a/c/c;

    .line 32
    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->d:Lcom/mgtv/a/c/c;

    .line 33
    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->c:Lcom/mgtv/a/c/c;

    .line 34
    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->f:Lcom/mgtv/a/c/c;

    .line 35
    iput-object v0, p0, Lcom/mgtv/a/d/b/e;->e:Lcom/mgtv/a/c/c;

    return-void
.end method
