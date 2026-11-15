.class public final synthetic Liad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/monetization/ads/mediation/banner/d;


# direct methods
.method public synthetic constructor <init>(Lcom/monetization/ads/mediation/banner/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liad;->b:Lcom/monetization/ads/mediation/banner/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Liad;->b:Lcom/monetization/ads/mediation/banner/d;

    invoke-static {p0}, Lcom/monetization/ads/mediation/banner/e;->b(Lcom/monetization/ads/mediation/banner/d;)V

    return-void
.end method
