.class public final synthetic Lecd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/impl/as0$a;


# instance fields
.field public final synthetic a:Lcom/yandex/mobile/ads/impl/ld$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lcom/yandex/mobile/ads/impl/ld$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lecd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iput p2, p0, Lecd;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lecd;->a:Lcom/yandex/mobile/ads/impl/ld$a;

    iget p0, p0, Lecd;->b:I

    check-cast p1, Lcom/yandex/mobile/ads/impl/ld;

    invoke-static {v0, p0, p1}, Lcom/yandex/mobile/ads/impl/ez;->t(Lcom/yandex/mobile/ads/impl/ld$a;ILcom/yandex/mobile/ads/impl/ld;)V

    return-void
.end method
