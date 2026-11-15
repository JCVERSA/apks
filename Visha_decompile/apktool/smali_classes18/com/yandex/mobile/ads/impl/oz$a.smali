.class public final Lcom/yandex/mobile/ads/impl/oz$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/tv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/oz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/yandex/mobile/ads/impl/tv$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/tv$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/oz$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/oz$a;->b:Lcom/yandex/mobile/ads/impl/tv$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/tv;
    .locals 2

    new-instance v0, Lcom/yandex/mobile/ads/impl/oz;

    iget-object v1, p0, Lcom/yandex/mobile/ads/impl/oz$a;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/oz$a;->b:Lcom/yandex/mobile/ads/impl/tv$a;

    invoke-interface {p0}, Lcom/yandex/mobile/ads/impl/tv$a;->a()Lcom/yandex/mobile/ads/impl/tv;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/yandex/mobile/ads/impl/oz;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/tv;)V

    return-object v0
.end method
