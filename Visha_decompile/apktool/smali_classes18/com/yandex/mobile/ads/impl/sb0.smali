.class public final Lcom/yandex/mobile/ads/impl/sb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/sb0$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/yandex/mobile/ads/impl/sb0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/sb0$a;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/sb0;->a:Lcom/yandex/mobile/ads/impl/sb0$a;

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/sb0;->a:Lcom/yandex/mobile/ads/impl/sb0$a;

    return-object p0
.end method
