.class final Lcom/yandex/mobile/ads/impl/z91$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/dr1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/z91;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
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

.field private final b:Lcom/yandex/mobile/ads/impl/z91$b;

.field private final c:Lcom/yandex/mobile/ads/impl/dr1;

.field private final d:Lcom/yandex/mobile/ads/impl/gw1;

.field final synthetic e:Lcom/yandex/mobile/ads/impl/z91;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/z91;Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/z91$b;Lcom/yandex/mobile/ads/impl/dr1;Lcom/yandex/mobile/ads/impl/gw1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/impl/o8<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yandex/mobile/ads/impl/z91$b;",
            "Lcom/yandex/mobile/ads/impl/dr1;",
            "Lcom/yandex/mobile/ads/impl/gw1;",
            ")V"
        }
    .end annotation

    const-string v0, "adResponse"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseCreationListener"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "responseConverterListener"

    invoke-static {p4, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sdkNativeAdFactoriesProviderCreator"

    invoke-static {p5, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/z91$a;->e:Lcom/yandex/mobile/ads/impl/z91;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/z91$a;->a:Lcom/yandex/mobile/ads/impl/o8;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/z91$a;->b:Lcom/yandex/mobile/ads/impl/z91$b;

    iput-object p4, p0, Lcom/yandex/mobile/ads/impl/z91$a;->c:Lcom/yandex/mobile/ads/impl/dr1;

    iput-object p5, p0, Lcom/yandex/mobile/ads/impl/z91$a;->d:Lcom/yandex/mobile/ads/impl/gw1;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/w3;)V
    .locals 1

    .line 1
    const-string v0, "adRequestError"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/z91$a;->c:Lcom/yandex/mobile/ads/impl/dr1;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/dr1;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    .line 3
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z91$a;->b:Lcom/yandex/mobile/ads/impl/z91$b;

    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/z91$b;->a(Lcom/yandex/mobile/ads/impl/w3;)V

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/y61;)V
    .locals 4

    .line 4
    const-string v0, "nativeAdResponse"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/z91$a;->c:Lcom/yandex/mobile/ads/impl/dr1;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/impl/dr1;->a(Lcom/yandex/mobile/ads/impl/y61;)V

    .line 6
    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/z91$a;->a:Lcom/yandex/mobile/ads/impl/o8;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/z91$a;->b:Lcom/yandex/mobile/ads/impl/z91$b;

    .line 7
    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/z91$a;->d:Lcom/yandex/mobile/ads/impl/gw1;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/impl/gw1;->a(Lcom/yandex/mobile/ads/impl/o8;)Lcom/yandex/mobile/ads/impl/s51;

    move-result-object v2

    .line 8
    new-instance v3, Lcom/yandex/mobile/ads/impl/n81;

    invoke-direct {v3, v1}, Lcom/yandex/mobile/ads/impl/n81;-><init>(Lcom/yandex/mobile/ads/impl/z91$b;)V

    .line 9
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/z91$a;->e:Lcom/yandex/mobile/ads/impl/z91;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/z91;->a(Lcom/yandex/mobile/ads/impl/z91;)Lcom/yandex/mobile/ads/impl/i51;

    move-result-object p0

    invoke-virtual {p0, v0, p1, v2, v3}, Lcom/yandex/mobile/ads/impl/i51;->a(Lcom/yandex/mobile/ads/impl/o8;Lcom/yandex/mobile/ads/impl/y61;Lcom/yandex/mobile/ads/impl/s51;Lcom/yandex/mobile/ads/impl/g51;)V

    return-void
.end method
