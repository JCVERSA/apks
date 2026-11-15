.class final Lcom/yandex/mobile/ads/impl/b2$a$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/b2$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
.field final synthetic b:Lcom/yandex/mobile/ads/impl/b2;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/b2;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/b2$a$a;->b:Lcom/yandex/mobile/ads/impl/b2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/b2$a$a;->b:Lcom/yandex/mobile/ads/impl/b2;

    invoke-static {p0}, Lcom/yandex/mobile/ads/impl/b2;->a(Lcom/yandex/mobile/ads/impl/b2;)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
