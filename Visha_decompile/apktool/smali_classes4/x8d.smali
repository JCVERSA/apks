.class public final synthetic Lx8d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/monetization/ads/mediation/banner/d;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/monetization/ads/mediation/banner/d$a;


# direct methods
.method public synthetic constructor <init>(Lcom/monetization/ads/mediation/banner/d;Landroid/view/View;Lcom/monetization/ads/mediation/banner/d$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx8d;->b:Lcom/monetization/ads/mediation/banner/d;

    iput-object p2, p0, Lx8d;->c:Landroid/view/View;

    iput-object p3, p0, Lx8d;->d:Lcom/monetization/ads/mediation/banner/d$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lx8d;->b:Lcom/monetization/ads/mediation/banner/d;

    iget-object v1, p0, Lx8d;->c:Landroid/view/View;

    iget-object p0, p0, Lx8d;->d:Lcom/monetization/ads/mediation/banner/d$a;

    invoke-static {v0, v1, p0}, Lcom/monetization/ads/mediation/banner/d;->b(Lcom/monetization/ads/mediation/banner/d;Landroid/view/View;Lcom/monetization/ads/mediation/banner/d$a;)V

    return-void
.end method
