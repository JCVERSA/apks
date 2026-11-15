.class final Lcom/yandex/mobile/ads/impl/fb0$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/fb0;-><init>(Lcom/yandex/mobile/ads/impl/fb0$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lc74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/fb0;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/fb0;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/fb0$c;->b:Lcom/yandex/mobile/ads/impl/fb0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Lcom/yandex/mobile/ads/impl/fb0$c;->b:Lcom/yandex/mobile/ads/impl/fb0;

    invoke-static {v0}, Lcom/yandex/mobile/ads/impl/fb0;->b(Lcom/yandex/mobile/ads/impl/fb0;)Lpc9;

    move-result-object v0

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/fb0$c;->b:Lcom/yandex/mobile/ads/impl/fb0;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/fb0;->a(Lcom/yandex/mobile/ads/impl/fb0;)Lpc9;

    move-result-object p0

    invoke-static {v0, p0}, Lkotlin/sequences/SequencesKt___SequencesKt;->W(Lpc9;Lpc9;)Lpc9;

    move-result-object v1

    sget-object v7, Lcom/yandex/mobile/ads/impl/gb0;->b:Lcom/yandex/mobile/ads/impl/gb0;

    const/16 v8, 0x1e

    const/4 v9, 0x0

    const-string v2, "&"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v9}, Lkotlin/sequences/SequencesKt___SequencesKt;->P(Lpc9;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Le74;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
