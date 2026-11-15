.class public final Lt45;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgv4;


# static fields
.field public static final a:Lt45;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt45;

    invoke-direct {v0}, Lt45;-><init>()V

    sput-object v0, Lt45;->a:Lt45;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 0

    invoke-virtual {p0}, Lt45;->e()Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->A(Landroid/app/Activity;)V

    return-void
.end method

.method public b()Z
    .locals 0

    invoke-virtual {p0}, Lt45;->e()Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->v()Z

    move-result p0

    return p0
.end method

.method public c()Z
    .locals 0

    invoke-virtual {p0}, Lt45;->e()Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->z()Z

    move-result p0

    return p0
.end method

.method public d(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lt45;->e()Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->B(Landroid/content/Context;Z)V

    return-void
.end method

.method public final e()Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;
    .locals 0

    sget-object p0, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;->o:Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$a;

    invoke-virtual {p0}, Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore$a;->a()Lcom/transsion/mediationads/interstitial/InterstitialAdManagerCore;

    move-result-object p0

    return-object p0
.end method
