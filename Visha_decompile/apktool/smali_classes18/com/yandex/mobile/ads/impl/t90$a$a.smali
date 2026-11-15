.class final Lcom/yandex/mobile/ads/impl/t90$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loz3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/t90$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Loz3;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/impl/t90;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/impl/t90;)V
    .locals 0

    iput-object p1, p0, Lcom/yandex/mobile/ads/impl/t90$a$a;->a:Lcom/yandex/mobile/ads/impl/t90;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lwh1;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/yandex/mobile/ads/impl/m90;

    instance-of p1, p1, Lcom/yandex/mobile/ads/impl/m90$a;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/yandex/mobile/ads/impl/t90$a$a;->a:Lcom/yandex/mobile/ads/impl/t90;

    invoke-static {p0, p2}, Lcom/yandex/mobile/ads/impl/t90;->a(Lcom/yandex/mobile/ads/impl/t90;Lwh1;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Lz45;->f()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lzfb;->a:Lzfb;

    goto :goto_0

    :cond_1
    sget-object p0, Lzfb;->a:Lzfb;

    :goto_0
    return-object p0
.end method
