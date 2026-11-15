.class Lcom/mgtv/a/c/i$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/widget/IVideoView$OnStartListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgtv/a/c/i;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgtv/a/c/i;


# direct methods
.method public constructor <init>(Lcom/mgtv/a/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/mgtv/a/c/i$6;->a:Lcom/mgtv/a/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    iget-object v0, p0, Lcom/mgtv/a/c/i$6;->a:Lcom/mgtv/a/c/i;

    iget-object v0, v0, Lcom/mgtv/a/c/a;->q:Lcom/mgtv/a/c/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/mgtv/a/c/e;->c()V

    :cond_0
    iget-object p0, p0, Lcom/mgtv/a/c/i$6;->a:Lcom/mgtv/a/c/i;

    iget-object p0, p0, Lcom/mgtv/a/c/a;->p:Lcom/mgmi/ads/api/render/MySimpleDraweeView;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method
