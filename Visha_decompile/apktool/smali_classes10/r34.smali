.class public final synthetic Lr34;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr34;->b:Landroid/app/Activity;

    iput-object p2, p0, Lr34;->c:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object v0, p0, Lr34;->b:Landroid/app/Activity;

    iget-object p0, p0, Lr34;->c:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/mediationads/interstitial/a;->a(Landroid/app/Activity;Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;J)V

    return-void
.end method
