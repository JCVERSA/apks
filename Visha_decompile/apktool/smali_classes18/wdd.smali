.class public final synthetic Lwdd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput-boolean p2, p0, Lwdd;->b:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lwdd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget-boolean p0, p0, Lwdd;->b:Z

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->e0(Lcom/yandex/mobile/ads/impl/ld$a;ZLcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
