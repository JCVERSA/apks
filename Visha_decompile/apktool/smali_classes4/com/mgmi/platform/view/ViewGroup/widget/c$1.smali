.class Lcom/mgmi/platform/view/ViewGroup/widget/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mgmi/ads/api/render/CreativeSimpleDraweeView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mgmi/platform/view/ViewGroup/widget/c;->a(Lcom/mgmi/platform/view/ViewGroup/widget/d;)Landroid/view/View;
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

    iput-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$1;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ldkd;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$1;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    invoke-static {p0, p2, p1}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a(Lcom/mgmi/platform/view/ViewGroup/widget/c;Ldkd;Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/mgmi/model/VASTAd;Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$1;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$1;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    invoke-virtual {p1}, Lcom/mgmi/platform/view/ViewGroup/widget/b;->s()V

    .line 4
    iget-object p0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/c$1;->a:Lcom/mgmi/platform/view/ViewGroup/widget/c;

    const/4 p1, 0x3

    iget-object v0, p0, Lcom/mgmi/platform/view/ViewGroup/widget/b;->o:Lcom/mgmi/model/VASTAd;

    invoke-virtual {p0, p2, p1, v0}, Lcom/mgmi/platform/view/ViewGroup/widget/c;->a(Ljava/lang/String;ILcom/mgmi/model/VASTAd;)V

    :cond_0
    return-void
.end method
