.class Lcom/mgtv/a/c/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/f;->a(Landroid/content/Context;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/mgtv/a/c/f;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/f;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/f$5;->b:Lcom/mgtv/a/c/f;

    iput-object p2, p0, Lcom/mgtv/a/c/f$5;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 4
    new-instance v0, Lcom/mgtv/a/c/f$5$2;

    invoke-direct {v0, p0}, Lcom/mgtv/a/c/f$5$2;-><init>(Lcom/mgtv/a/c/f$5;)V

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lj4d;->c(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/mgmi/b/c;->a()Lcom/mgmi/b/c;

    move-result-object v0

    iget-object v1, p0, Lcom/mgtv/a/c/f$5;->b:Lcom/mgtv/a/c/f;

    iget-object v1, v1, Lcom/mgtv/a/c/a;->m:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mgmi/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/mgtv/a/c/f$5;->b:Lcom/mgtv/a/c/f;

    invoke-static {v0}, Lcom/mgtv/a/c/f;->b(Lcom/mgtv/a/c/f;)Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/mgtv/a/c/f$5;->b:Lcom/mgtv/a/c/f;

    invoke-static {v0}, Lcom/mgtv/a/c/f;->b(Lcom/mgtv/a/c/f;)Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    move-result-object v0

    new-instance v1, Lcom/mgtv/a/c/f$5$1;

    invoke-direct {v1, p0, p1}, Lcom/mgtv/a/c/f$5$1;-><init>(Lcom/mgtv/a/c/f$5;Ljava/io/File;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
