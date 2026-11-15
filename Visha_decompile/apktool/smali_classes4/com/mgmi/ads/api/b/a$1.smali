.class Lcom/mgmi/ads/api/b/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/b/a;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/FrameLayout$LayoutParams;

.field final synthetic b:Lcom/mgmi/ads/api/b/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/b/a;Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/b/a$1;->b:Lcom/mgmi/ads/api/b/a;

    iput-object p2, p0, Lcom/mgmi/ads/api/b/a$1;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a$1;->b:Lcom/mgmi/ads/api/b/a;

    invoke-static {v0}, Lcom/mgmi/ads/api/b/a;->b(Lcom/mgmi/ads/api/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a$1;->b:Lcom/mgmi/ads/api/b/a;

    invoke-static {v0}, Lcom/mgmi/ads/api/b/a;->c(Lcom/mgmi/ads/api/b/a;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/ads/api/b/a$1;->b:Lcom/mgmi/ads/api/b/a;

    invoke-static {v1}, Lcom/mgmi/ads/api/b/a;->d(Lcom/mgmi/ads/api/b/a;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a$1;->b:Lcom/mgmi/ads/api/b/a;

    invoke-static {v0}, Lcom/mgmi/ads/api/b/a;->c(Lcom/mgmi/ads/api/b/a;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/ads/api/b/a$1;->b:Lcom/mgmi/ads/api/b/a;

    invoke-static {v1}, Lcom/mgmi/ads/api/b/a;->d(Lcom/mgmi/ads/api/b/a;)Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lcom/mgmi/ads/api/b/a$1;->a:Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v0, v1, p0}, Ll4d;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
