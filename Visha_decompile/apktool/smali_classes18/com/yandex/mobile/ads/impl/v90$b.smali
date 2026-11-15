.class public final Lcom/yandex/mobile/ads/impl/v90$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/z91$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/v90;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/o8;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/yandex/mobile/ads/impl/v90;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/v90;Lcom/yandex/mobile/ads/impl/o8;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/v90$b;->b:Lcom/yandex/mobile/ads/impl/v90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/v90$b;->a:Lcom/yandex/mobile/ads/impl/o8;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/q61;)V
    .locals 2

    .line 3
    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v0, p1, Lcom/yandex/mobile/ads/impl/b02;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v90$b;->b:Lcom/yandex/mobile/ads/impl/v90;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/impl/ck;->u()V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/v90$b;->b:Lcom/yandex/mobile/ads/impl/v90;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/v90;->a(Lcom/yandex/mobile/ads/impl/v90;)Lcom/yandex/mobile/ads/impl/z90;

    move-result-object v0

    new-instance v1, Lcom/yandex/mobile/ads/impl/gs0;

    check-cast p1, Lcom/yandex/mobile/ads/impl/b02;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v90$b;->a:Lcom/yandex/mobile/ads/impl/o8;

    invoke-direct {v1, p1, p0}, Lcom/yandex/mobile/ads/impl/gs0;-><init>(Lcom/yandex/mobile/ads/impl/b02;Lcom/yandex/mobile/ads/impl/o8;)V

    invoke-interface {v0, v1}, Lcom/yandex/mobile/ads/impl/z90;->a(Lcom/yandex/mobile/ads/impl/gs0;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v90$b;->b:Lcom/yandex/mobile/ads/impl/v90;

    invoke-static {}, Lcom/yandex/mobile/ads/impl/w7;->x()Lcom/yandex/mobile/ads/impl/w3;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 1
    const-string v0, "adRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/v90$b;->b:Lcom/yandex/mobile/ads/impl/v90;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ck;->b(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method
