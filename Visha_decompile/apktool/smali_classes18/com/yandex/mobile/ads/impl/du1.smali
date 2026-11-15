.class public final Lcom/yandex/mobile/ads/impl/du1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/du1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xi;

.field private final b:Lcom/yandex/mobile/ads/impl/it0;

.field private final c:Lcom/yandex/mobile/ads/impl/du1$a;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/np0;Lcom/yandex/mobile/ads/impl/xi;Lcom/yandex/mobile/ads/impl/it0;Lcom/yandex/mobile/ads/impl/du1$a;)V
    .locals 1

    const-string v0, "adView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contentController"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mainThreadHandler"

    invoke-static {p3, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "removePreviousBannerRunnable"

    invoke-static {p4, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/du1;->a:Lcom/yandex/mobile/ads/impl/xi;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/du1;->b:Lcom/yandex/mobile/ads/impl/it0;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/du1;->c:Lcom/yandex/mobile/ads/impl/du1$a;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/sp0;->d([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/du1;->a:Lcom/yandex/mobile/ads/impl/xi;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/h62;->m()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/du1;->b:Lcom/yandex/mobile/ads/impl/it0;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/du1;->c:Lcom/yandex/mobile/ads/impl/du1$a;

    invoke-virtual {v0, p0}, Lcom/yandex/mobile/ads/impl/it0;->a(Lcom/yandex/mobile/ads/impl/du1$a;)V

    const/4 p0, 0x1

    return p0
.end method
