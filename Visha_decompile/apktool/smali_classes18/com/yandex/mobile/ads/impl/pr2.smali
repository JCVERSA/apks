.class public final synthetic Lcom/yandex/mobile/ads/impl/pr2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic b:Lcom/yandex/mobile/ads/impl/sv0$f;


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/sv0$f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/pr2;->b:Lcom/yandex/mobile/ads/impl/sv0$f;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/pr2;->b:Lcom/yandex/mobile/ads/impl/sv0$f;

    invoke-static {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/sv0;->c(Lcom/yandex/mobile/ads/impl/sv0$f;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
