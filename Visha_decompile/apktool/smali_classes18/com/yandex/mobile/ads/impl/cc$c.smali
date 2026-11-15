.class final Lcom/yandex/mobile/ads/impl/cc$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/cc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/cc;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/cc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/cc$c;->b:Lcom/yandex/mobile/ads/impl/cc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/cc$c;->b:Lcom/yandex/mobile/ads/impl/cc;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/cc;->b(Lcom/yandex/mobile/ads/impl/cc;)Lcom/yandex/mobile/ads/impl/ec;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/ec;->a()V

    :cond_0
    return-void
.end method
