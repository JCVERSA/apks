.class public Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;


# direct methods
.method public constructor <init>(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;->b:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;Lk83;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;-><init>(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;->b:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {v0, p2}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->b(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;->b:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {v0, p3}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->c(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;I)V

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;->b:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->a(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;->b:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->a(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    if-nez p2, :cond_0

    iget v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;->b:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->d(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)V

    :cond_0
    iput p2, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;->a:I

    iget-object v0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;->b:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {v0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->a(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView$a;->b:Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;

    invoke-static {p0}, Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;->a(Lcom/transsion/widgetslib/widget/elasticitylistView/ElasticityListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method
