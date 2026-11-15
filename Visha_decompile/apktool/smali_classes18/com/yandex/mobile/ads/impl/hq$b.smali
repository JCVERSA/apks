.class final Lcom/yandex/mobile/ads/impl/hq$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/hq;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/impl/in1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Ls74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/in1;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/in1;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/hq$b;->b:Lcom/yandex/mobile/ads/impl/in1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/hq$b;->b:Lcom/yandex/mobile/ads/impl/in1;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/impl/in1;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
