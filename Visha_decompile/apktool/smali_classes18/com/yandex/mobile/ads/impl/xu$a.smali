.class public final Lcom/yandex/mobile/ads/impl/xu$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/xu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/yandex/mobile/ads/impl/m80;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yandex/mobile/ads/impl/l62;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/yandex/mobile/ads/impl/qr0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/xu;
    .locals 3

    .line 4
    new-instance v0, Lcom/yandex/mobile/ads/impl/xu;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/xu$a;->a:Lcom/yandex/mobile/ads/impl/m80;

    iget-object v2, p0, Lcom/yandex/mobile/ads/impl/xu$a;->b:Ljava/util/List;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xu$a;->c:Lcom/yandex/mobile/ads/impl/qr0;

    invoke-direct {v0, v1, v2, p0}, Lcom/yandex/mobile/ads/impl/xu;-><init>(Lcom/yandex/mobile/ads/impl/m80;Ljava/util/List;Lcom/yandex/mobile/ads/impl/qr0;)V

    return-object v0
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/m80;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xu$a;->a:Lcom/yandex/mobile/ads/impl/m80;

    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/qr0;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xu$a;->c:Lcom/yandex/mobile/ads/impl/qr0;

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xu$a;->b:Ljava/util/List;

    return-void
.end method
