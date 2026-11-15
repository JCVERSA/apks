.class final Lcom/yandex/mobile/ads/impl/dx$m;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/dx;-><init>(Landroid/content/Context;)V
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
.field final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/dx$m;->b:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    sget v0, Lcom/yandex/mobile/ads/impl/p50;->e:I

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/dx$m;->b:Landroid/content/Context;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/p50$a;->a(Landroid/content/Context;)Lcom/yandex/mobile/ads/impl/p50;

    move-result-object p0

    return-object p0
.end method
