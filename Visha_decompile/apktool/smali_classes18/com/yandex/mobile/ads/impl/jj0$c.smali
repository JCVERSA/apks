.class public final Lcom/yandex/mobile/ads/impl/jj0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/oj0$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/jj0;->a(Lcom/yandex/mobile/ads/impl/xj0;Lcom/yandex/mobile/ads/impl/jj0$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/jj0;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/yandex/mobile/ads/impl/jj0$b;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/jj0;Ljava/lang/String;Lcom/yandex/mobile/ads/impl/jj0$b;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/jj0$c;->a:Lcom/yandex/mobile/ads/impl/jj0;

    iput-object p2, p0, Lcom/yandex/mobile/ads/impl/jj0$c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yandex/mobile/ads/impl/jj0$c;->c:Lcom/yandex/mobile/ads/impl/jj0$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/yandex/mobile/ads/impl/oj0$c;Z)V
    .locals 1

    .line 2
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/oj0$c;->b()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/yandex/mobile/ads/impl/jj0$c;->a:Lcom/yandex/mobile/ads/impl/jj0;

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/jj0$c;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/jj0$c;->c:Lcom/yandex/mobile/ads/impl/jj0$b;

    .line 3
    invoke-static {p2}, Lcom/yandex/mobile/ads/impl/jj0;->a(Lcom/yandex/mobile/ads/impl/jj0;)Lcom/yandex/mobile/ads/impl/sj0;

    move-result-object p2

    invoke-static {v0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lky5;->h(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/yandex/mobile/ads/impl/sj0;->a(Ljava/util/Map;)V

    .line 4
    invoke-interface {p0, p1}, Lcom/yandex/mobile/ads/impl/jj0$b;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/yandex/mobile/ads/impl/si2;)V
    .locals 0

    .line 1
    return-void
.end method
