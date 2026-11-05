.class final Lcom/snaptube/ads/SplashScreenWrapper$keepOnScreenCondition$2;
.super Lkotlin/jvm/internal/Lambda;

# interfaces
.implements Lo/bx2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snaptube/ads/SplashScreenWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lo/bx2;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0003\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lo/xn7$d;",
        "invoke",
        "()Lo/xn7$d;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/snaptube/ads/SplashScreenWrapper$keepOnScreenCondition$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/snaptube/ads/SplashScreenWrapper$keepOnScreenCondition$2;

    invoke-direct {v0}, Lcom/snaptube/ads/SplashScreenWrapper$keepOnScreenCondition$2;-><init>()V

    sput-object v0, Lcom/snaptube/ads/SplashScreenWrapper$keepOnScreenCondition$2;->INSTANCE:Lcom/snaptube/ads/SplashScreenWrapper$keepOnScreenCondition$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method public static synthetic a()Z
    .locals 1

    invoke-static {}, Lcom/snaptube/ads/SplashScreenWrapper$keepOnScreenCondition$2;->b()Z

    move-result v0

    return v0
.end method

.method public static final b()Z
    .locals 1

    invoke-static {}, Lcom/snaptube/ads/SplashScreenWrapper;->b()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/snaptube/ads/SplashScreenWrapper$keepOnScreenCondition$2;->invoke()Lo/xn7$d;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lo/xn7$d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lcom/snaptube/ads/b;

    invoke-direct {v0}, Lcom/snaptube/ads/b;-><init>()V

    return-object v0
.end method
