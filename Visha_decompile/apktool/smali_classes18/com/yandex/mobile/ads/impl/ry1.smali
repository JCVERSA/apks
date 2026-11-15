.class public final Lcom/yandex/mobile/ads/impl/ry1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/su0;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/su0$a;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/yandex/mobile/ads/impl/su0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/su0$a;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/yandex/mobile/ads/impl/ry1;-><init>(Lcom/yandex/mobile/ads/impl/su0$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/yandex/mobile/ads/impl/su0$a;)V
    .locals 1

    .line 3
    const-string v0, "measureSpecHolder"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ry1;->a:Lcom/yandex/mobile/ads/impl/su0$a;

    return-void
.end method


# virtual methods
.method public final a(II)Lcom/yandex/mobile/ads/impl/su0$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ry1;->a:Lcom/yandex/mobile/ads/impl/su0$a;

    iput p1, p0, Lcom/yandex/mobile/ads/impl/su0$a;->a:I

    iput p2, p0, Lcom/yandex/mobile/ads/impl/su0$a;->b:I

    return-object p0
.end method
