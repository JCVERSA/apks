.class final Lcom/yandex/mobile/ads/impl/fq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/fq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/zr;

.field private final b:Lcom/yandex/mobile/ads/impl/dw;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/zr;Lcom/yandex/mobile/ads/impl/dw;)V
    .locals 1

    const-string v0, "mContentCloseListener"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDebugEventsReporter"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fq$a;->a:Lcom/yandex/mobile/ads/impl/zr;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/fq$a;->b:Lcom/yandex/mobile/ads/impl/dw;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/yandex/mobile/ads/impl/fq$a;->a:Lcom/yandex/mobile/ads/impl/zr;

    invoke-interface {p1}, Lcom/yandex/mobile/ads/impl/zr;->f()V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fq$a;->b:Lcom/yandex/mobile/ads/impl/dw;

    sget-object p1, Lcom/yandex/mobile/ads/impl/cw;->c:Lcom/yandex/mobile/ads/impl/cw;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/dw;->a(Lcom/yandex/mobile/ads/impl/cw;)V

    return-void
.end method
