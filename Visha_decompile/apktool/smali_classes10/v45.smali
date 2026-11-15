.class public final synthetic Lv45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv45;->b:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lv45;->b:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    invoke-static {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->b(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;)V

    return-void
.end method
