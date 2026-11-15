.class public final synthetic Lu45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu45;->b:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    iput-object p2, p0, Lu45;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lu45;->b:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    iget-object p0, p0, Lu45;->c:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->a(Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;Landroid/content/Context;)V

    return-void
.end method
