.class final Lcom/yandex/mobile/ads/impl/ql1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/m52;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/ql1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/yp;

.field private final b:J

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;Lcom/yandex/mobile/ads/impl/yp;J)V
    .locals 1

    const-string v0, "progressView"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "closeProgressAppearanceController"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ql1$a;->a:Lcom/yandex/mobile/ads/impl/yp;

    iput-wide p3, p0, Lcom/yandex/mobile/ads/impl/ql1$a;->b:J

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/ql1$a;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 6

    iget-object p3, p0, Lcom/yandex/mobile/ads/impl/ql1$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/ql1$a;->a:Lcom/yandex/mobile/ads/impl/yp;

    iget-wide v2, p0, Lcom/yandex/mobile/ads/impl/ql1$a;->b:J

    sub-long v4, v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/impl/yp;->a(Landroid/widget/ProgressBar;JJ)V

    :cond_0
    return-void
.end method
