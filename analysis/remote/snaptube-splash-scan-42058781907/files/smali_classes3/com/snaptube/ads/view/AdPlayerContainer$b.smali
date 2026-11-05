.class public Lcom/snaptube/ads/view/AdPlayerContainer$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snaptube/ads/view/AdPlayerContainer;->d0(Lnet/pubnative/mediation/request/model/PubnativeAdModel;Landroid/view/View;Lcom/snaptube/ads/nativead/AdView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/snaptube/ads/view/AdPlayerContainer;


# direct methods
.method public constructor <init>(Lcom/snaptube/ads/view/AdPlayerContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/snaptube/ads/view/AdPlayerContainer$b;->a:Lcom/snaptube/ads/view/AdPlayerContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer$b;->a:Lcom/snaptube/ads/view/AdPlayerContainer;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/snaptube/ads/view/AdPlayerContainer$b;->a:Lcom/snaptube/ads/view/AdPlayerContainer;

    invoke-static {v0}, Lcom/snaptube/ads/view/AdPlayerContainer;->Y(Lcom/snaptube/ads/view/AdPlayerContainer;)V

    const/4 v0, 0x0

    return v0
.end method
