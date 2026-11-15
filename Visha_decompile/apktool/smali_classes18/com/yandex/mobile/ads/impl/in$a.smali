.class public final Lcom/yandex/mobile/ads/impl/in$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/md0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/in;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/v7;

.field final synthetic b:Lcom/yandex/mobile/ads/impl/in;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/v7;",
            ")V"
        }
    .end annotation

    const-string v0, "adRequestData"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/in$a;->b:Lcom/yandex/mobile/ads/impl/in;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/in$a;->a:Lcom/yandex/mobile/ads/impl/v7;

    return-void
.end method


# virtual methods
.method public final onAdShown()V
    .locals 1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/in$a;->b:Lcom/yandex/mobile/ads/impl/in;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/in$a;->a:Lcom/yandex/mobile/ads/impl/v7;

    invoke-static {v0, p0}, Lcom/yandex/mobile/ads/impl/in;->a(Lcom/yandex/mobile/ads/impl/in;Lcom/yandex/mobile/ads/impl/v7;)V

    return-void
.end method
