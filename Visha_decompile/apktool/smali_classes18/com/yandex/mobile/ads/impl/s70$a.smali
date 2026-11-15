.class public final Lcom/yandex/mobile/ads/impl/s70$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/s70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/yandex/mobile/ads/impl/yh2$a;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field static final synthetic f:[Laf5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Laf5;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Lcom/yandex/mobile/ads/impl/q70;

.field private final d:Lcom/yandex/mobile/ads/impl/go1;

.field private final e:Lcom/yandex/mobile/ads/impl/go1;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lcom/yandex/mobile/ads/impl/s70$a;

    const-string v1, "exposureUpdateListenerReference"

    const-string v2, "getExposureUpdateListenerReference()Lcom/monetization/ads/base/webview/mraid/exposure/OnExposureUpdateListener;"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v1

    const-string v2, "viewReference"

    const-string v4, "getViewReference()Landroid/view/View;"

    invoke-static {v0, v2, v4, v3}, Lcom/yandex/mobile/ads/impl/ta;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lcf5;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Laf5;

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    sput-object v2, Lcom/yandex/mobile/ads/impl/s70$a;->f:[Laf5;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/view/View;Lcom/yandex/mobile/ads/impl/q70;Lcom/yandex/mobile/ads/impl/af1;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exposureUpdateListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handler"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exposureProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s70$a;->b:Landroid/os/Handler;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/s70$a;->c:Lcom/yandex/mobile/ads/impl/q70;

    invoke-static {p4}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s70$a;->d:Lcom/yandex/mobile/ads/impl/go1;

    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/ho1;->a(Ljava/lang/Object;)Lcom/yandex/mobile/ads/impl/go1;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/s70$a;->e:Lcom/yandex/mobile/ads/impl/go1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s70$a;->e:Lcom/yandex/mobile/ads/impl/go1;

    sget-object v1, Lcom/yandex/mobile/ads/impl/s70$a;->f:[Laf5;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, p0, v2}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s70$a;->d:Lcom/yandex/mobile/ads/impl/go1;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v2, p0, v1}, Lcom/yandex/mobile/ads/impl/go1;->getValue(Ljava/lang/Object;Laf5;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/impl/af1;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/s70$a;->c:Lcom/yandex/mobile/ads/impl/q70;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/q70;->a(Landroid/view/View;)Lcom/yandex/mobile/ads/impl/p70;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/impl/af1;->a(Lcom/yandex/mobile/ads/impl/p70;)V

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/s70$a;->b:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
