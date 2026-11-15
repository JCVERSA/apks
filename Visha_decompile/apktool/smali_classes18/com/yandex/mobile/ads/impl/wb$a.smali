.class final Lcom/yandex/mobile/ads/impl/wb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/wb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/wb;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/wb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/wb$a;->b:Lcom/yandex/mobile/ads/impl/wb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/wb$a;->b:Lcom/yandex/mobile/ads/impl/wb;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/wb;->a(Lcom/yandex/mobile/ads/impl/wb;)Lcom/yandex/mobile/ads/impl/gf1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/gf1;->b()V

    return-void
.end method
