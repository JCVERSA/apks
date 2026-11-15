.class public final Lcom/yandex/mobile/ads/impl/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/b10;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/ViewGroup;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/impl/b10<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final a:[Lcom/yandex/mobile/ads/impl/b10;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/yandex/mobile/ads/impl/b10<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/yandex/mobile/ads/impl/b10;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/yandex/mobile/ads/impl/b10<",
            "TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    const-string v0, "designComponentBinders"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ar;->a:[Lcom/yandex/mobile/ads/impl/b10;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ar;->a:[Lcom/yandex/mobile/ads/impl/b10;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lcom/yandex/mobile/ads/impl/b10;->a(Landroid/view/ViewGroup;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ar;->a:[Lcom/yandex/mobile/ads/impl/b10;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/yandex/mobile/ads/impl/b10;->c()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
