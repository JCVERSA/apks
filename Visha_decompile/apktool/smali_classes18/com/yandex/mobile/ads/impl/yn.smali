.class public abstract Lcom/yandex/mobile/ads/impl/yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/yn$a;
    }
.end annotation


# instance fields
.field private b:Lcom/yandex/mobile/ads/impl/yn$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/yandex/mobile/ads/impl/yn$a;->b:Lcom/yandex/mobile/ads/impl/yn$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/yn;->b:Lcom/yandex/mobile/ads/impl/yn$a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    sget-object v0, Lcom/yandex/mobile/ads/impl/yn$a;->c:Lcom/yandex/mobile/ads/impl/yn$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/impl/yn;->b:Lcom/yandex/mobile/ads/impl/yn$a;

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/yn;->b:Lcom/yandex/mobile/ads/impl/yn$a;

    sget-object v0, Lcom/yandex/mobile/ads/impl/yn$a;->b:Lcom/yandex/mobile/ads/impl/yn$a;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
