.class final Lcom/yandex/mobile/ads/impl/u6$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/u6;->a(Lcom/yandex/mobile/ads/impl/b7;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Le74;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/yandex/mobile/ads/impl/b7;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b7;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/u6$a;->b:Lcom/yandex/mobile/ads/impl/b7;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lx95;

    const-string v0, "$this$putJsonArray"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/u6$a;->b:Lcom/yandex/mobile/ads/impl/b7;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/b7;->f()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lka5;->a(Lx95;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
