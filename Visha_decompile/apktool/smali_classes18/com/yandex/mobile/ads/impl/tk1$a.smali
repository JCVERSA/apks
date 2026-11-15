.class final Lcom/yandex/mobile/ads/impl/tk1$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lc74;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/impl/tk1;
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


# static fields
.field public static final b:Lcom/yandex/mobile/ads/impl/tk1$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/tk1$a;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/tk1$a;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/tk1$a;->b:Lcom/yandex/mobile/ads/impl/tk1$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lcom/yandex/mobile/ads/impl/tk1;->values()[Lcom/yandex/mobile/ads/impl/tk1;

    move-result-object p0

    const-string v0, "success"

    const-string v1, "error"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    filled-new-array {v1, v1}, [[Ljava/lang/annotation/Annotation;

    move-result-object v2

    const-string v3, "com.monetization.ads.base.model.mediation.prefetch.PrefetchedMediationResultStatus"

    invoke-static {v3, p0, v0, v2, v1}, Lib3;->a(Ljava/lang/String;[Ljava/lang/Enum;[Ljava/lang/String;[[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lef5;

    move-result-object p0

    return-object p0
.end method
