.class final Lcom/yandex/mobile/ads/impl/tb1$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/mobile/ads/impl/tb1;->a(Lcom/yandex/mobile/ads/impl/y61;)Ljava/util/List;
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


# static fields
.field public static final b:Lcom/yandex/mobile/ads/impl/tb1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/tb1$b;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/tb1$b;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/tb1$b;->b:Lcom/yandex/mobile/ads/impl/tb1$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/yandex/mobile/ads/impl/zb2;

    const-string p0, "it"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/yandex/mobile/ads/impl/kb1;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/impl/kb1;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/impl/zb2;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Labb;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
