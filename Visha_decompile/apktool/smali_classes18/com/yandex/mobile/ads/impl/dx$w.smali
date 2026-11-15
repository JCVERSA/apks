.class final Lcom/yandex/mobile/ads/impl/dx$w;
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


# static fields
.field public static final b:Lcom/yandex/mobile/ads/impl/dx$w;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/mobile/ads/impl/dx$w;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/impl/dx$w;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/impl/dx$w;->b:Lcom/yandex/mobile/ads/impl/dx$w;

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
    .locals 2

    sget-object p0, Lcom/yandex/mobile/ads/impl/ex;->b:Lcom/yandex/mobile/ads/impl/ex;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1, v0}, Lva5;->b(Lu95;Le74;ILjava/lang/Object;)Lu95;

    move-result-object p0

    return-object p0
.end method
