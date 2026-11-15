.class Lcom/mgmi/ads/api/b/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/ads/api/b/a;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/ads/api/b/a;


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/ads/api/b/a$3;->a:Lcom/mgmi/ads/api/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a$3;->a:Lcom/mgmi/ads/api/b/a;

    invoke-static {v0}, Lcom/mgmi/ads/api/b/a;->c(Lcom/mgmi/ads/api/b/a;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a$3;->a:Lcom/mgmi/ads/api/b/a;

    invoke-static {v0}, Lcom/mgmi/ads/api/b/a;->d(Lcom/mgmi/ads/api/b/a;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a$3;->a:Lcom/mgmi/ads/api/b/a;

    invoke-static {v0}, Lcom/mgmi/ads/api/b/a;->b(Lcom/mgmi/ads/api/b/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/ads/api/b/a$3;->a:Lcom/mgmi/ads/api/b/a;

    invoke-static {v0}, Lcom/mgmi/ads/api/b/a;->c(Lcom/mgmi/ads/api/b/a;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/mgmi/ads/api/b/a$3;->a:Lcom/mgmi/ads/api/b/a;

    invoke-static {v1}, Lcom/mgmi/ads/api/b/a;->d(Lcom/mgmi/ads/api/b/a;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Ll4d;->g(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_0
    iget-object p0, p0, Lcom/mgmi/ads/api/b/a$3;->a:Lcom/mgmi/ads/api/b/a;

    invoke-virtual {p0}, Lcom/mgmi/ads/api/b/a;->c()V

    return-void
.end method
