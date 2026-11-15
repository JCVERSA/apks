.class public final Lcom/yandex/mobile/ads/impl/xc2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/xc2$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/xc2$a;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/xc2$a;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "underlyingError"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/xc2;->a:Lcom/yandex/mobile/ads/impl/xc2$a;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/xc2;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final a()Lcom/yandex/mobile/ads/impl/xc2$a;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xc2;->a:Lcom/yandex/mobile/ads/impl/xc2$a;

    return-object p0
.end method

.method public final b()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/xc2;->b:Ljava/lang/Throwable;

    return-object p0
.end method
