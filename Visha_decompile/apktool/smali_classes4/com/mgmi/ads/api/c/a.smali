.class public Lcom/mgmi/ads/api/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

.field protected b:Lcom/mgmi/ads/api/d/b;

.field c:Lcom/mgmi/ads/api/i;

.field protected d:Lcom/mgmi/ads/api/a;

.field protected e:Landroid/view/ViewGroup;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mgmi/ads/api/d/b;Lcom/mgmi/platform/d;Lcom/mgmi/ads/api/a;Landroid/view/ViewGroup;)V
    .locals 0
    .param p2    # Lcom/mgmi/ads/api/d/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/mgmi/ads/api/c/a;->e:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/mgmi/ads/api/c/a;->b:Lcom/mgmi/ads/api/d/b;

    iput-object p4, p0, Lcom/mgmi/ads/api/c/a;->d:Lcom/mgmi/ads/api/a;

    return-void
.end method


# virtual methods
.method public a()Lcom/mgmi/ads/api/i;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/mgmi/ads/api/c/a;->c:Lcom/mgmi/ads/api/i;

    return-object p0
.end method

.method public a(Lcom/mgmi/ads/api/h;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/mgmi/ads/api/i;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/mgmi/ads/api/c/a;->c:Lcom/mgmi/ads/api/i;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/mgmi/ads/api/c/a;->f:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/mgmi/ads/api/c/a;->a:Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;

    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/mgadplus/viewgroup/dynamicview/ContainerLayout;->setInteractTouch(Z)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/c/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lcom/mgmi/ads/api/a;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/c/a;->d:Lcom/mgmi/ads/api/a;

    return-object p0
.end method

.method public d()Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/c/a;->e:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method
