.class public final Lcom/yandex/mobile/ads/impl/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/c10;


# instance fields
.field private final a:[Lcom/yandex/mobile/ads/impl/c10;


# direct methods
.method public varargs constructor <init>([Lcom/yandex/mobile/ads/impl/c10;)V
    .locals 1

    const-string v0, "designConstraints"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/br;->a:[Lcom/yandex/mobile/ads/impl/c10;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/br;->a:[Lcom/yandex/mobile/ads/impl/c10;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-interface {v3, p1}, Lcom/yandex/mobile/ads/impl/c10;->a(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_1
    return v1
.end method
