.class public interface abstract Lcom/yandex/mobile/ads/impl/i40;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/impl/i40$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/mobile/ads/impl/i40;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/i40$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/i40$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/i40;->a:Lcom/yandex/mobile/ads/impl/i40;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/yandex/mobile/ads/impl/jc0;)I
.end method

.method public a(Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/jc0;)Lcom/yandex/mobile/ads/impl/i40$b;
    .locals 0
    .param p1    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p0, Lcom/yandex/mobile/ads/impl/i40$b;->a:Lcom/yandex/mobile/ads/impl/i40$b;

    return-object p0
.end method

.method public abstract a(Landroid/os/Looper;Lcom/yandex/mobile/ads/impl/mi1;)V
.end method

.method public abstract b(Lcom/yandex/mobile/ads/impl/h40$a;Lcom/yandex/mobile/ads/impl/jc0;)Lcom/yandex/mobile/ads/impl/g40;
    .param p1    # Lcom/yandex/mobile/ads/impl/h40$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public prepare()V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method
