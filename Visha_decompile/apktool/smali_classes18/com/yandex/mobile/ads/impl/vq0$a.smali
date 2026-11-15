.class final Lcom/yandex/mobile/ads/impl/vq0$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Le74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/vq0;
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
.field public static final b:Lcom/yandex/mobile/ads/impl/vq0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/vq0$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/vq0$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/vq0$a;->b:Lcom/yandex/mobile/ads/impl/vq0$a;

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

    check-cast p1, Lz95;

    const-string p0, "$this$Json"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lz95;->d(Z)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lz95;->e(Z)V

    sget-object p0, Lzfb;->a:Lzfb;

    return-object p0
.end method
