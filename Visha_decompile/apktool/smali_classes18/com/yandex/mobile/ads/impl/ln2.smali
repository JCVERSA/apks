.class public final Lcom/yandex/mobile/ads/impl/ln2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/db2;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/impl/ve1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/ve1;)V
    .locals 1

    const-string v0, "omSdkUsageValidator"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/ln2;->a:Lcom/yandex/mobile/ads/impl/ve1;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/kn2;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/ln2;->a:Lcom/yandex/mobile/ads/impl/ve1;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/impl/ve1;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/yandex/mobile/ads/impl/kn2;

    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/impl/kn2;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
