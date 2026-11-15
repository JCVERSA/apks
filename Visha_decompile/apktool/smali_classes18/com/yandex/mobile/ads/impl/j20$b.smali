.class public final Lcom/yandex/mobile/ads/impl/j20$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/oj0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/j20;->a(Ljava/lang/String;Lrk2;)Ljn5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrk2;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lrk2;)V
    .locals 0

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/j20$b;->a:Lrk2;

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/j20$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/oj0$c;Z)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/oj0$c;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/j20$b;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j20$b;->a:Lrk2;

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lcom/yandex/div/core/images/BitmapSource;->MEMORY:Lcom/yandex/div/core/images/BitmapSource;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/yandex/div/core/images/BitmapSource;->NETWORK:Lcom/yandex/div/core/images/BitmapSource;

    .line 4
    :goto_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 5
    new-instance v1, Ldq0;

    invoke-direct {v1, p1, v0, p2}, Ldq0;-><init>(Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/yandex/div/core/images/BitmapSource;)V

    invoke-virtual {p0, v1}, Lrk2;->b(Ldq0;)V

    :cond_1
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/si2;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/j20$b;->a:Lrk2;

    invoke-virtual {p0}, Lrk2;->a()V

    return-void
.end method
