.class public final synthetic Lcom/cloud/tmc/miniapp/ad/interstitial/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/c;->a:Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ad/interstitial/c;->a:Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;->OooO00o(Lcom/cloud/tmc/miniapp/ad/interstitial/AdInterstitialHtmlView$Builder;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
