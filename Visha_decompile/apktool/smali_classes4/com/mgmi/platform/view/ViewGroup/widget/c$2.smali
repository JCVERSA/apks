.class Lcom/mgmi/platform/view/ViewGroup/widget/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/platform/view/ViewGroup/widget/c;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mgmi/platform/view/ViewGroup/widget/c;


# direct methods
.method public constructor <init>(Lcom/mgmi/platform/view/ViewGroup/widget/c;)V
    .locals 0

    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    invoke-static {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->b(Lcom/mgmi/platform/view/ViewGroup/widget/c;)Lcom/mgmi/ads/api/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    invoke-static {v0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->b(Lcom/mgmi/platform/view/ViewGroup/widget/c;)Lcom/mgmi/ads/api/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mgmi/ads/api/c/a;->a(Z)V

    :cond_0
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$2;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->l:Lcom/mgmi/platform/view/ViewGroup/widget/CreativeWidgetShadow;

    const/16 v0, 0x8

    invoke-static {p0, v0}, Ll4d;->f(Landroid/view/View;I)Z

    return-void
.end method
