.class public abstract Lcom/yandex/div2/DivActionAnimatorStartJsonParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/DivActionAnimatorStartJsonParser$a;,
        Lcom/yandex/div2/DivActionAnimatorStartJsonParser$b;,
        Lcom/yandex/div2/DivActionAnimatorStartJsonParser$c;,
        Lcom/yandex/div2/DivActionAnimatorStartJsonParser$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/DivActionAnimatorStartJsonParser$a;

.field public static final b:Lzbb;

.field public static final c:Lzbb;

.field public static final d:Lpnb;

.field public static final e:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->a:Lcom/yandex/div2/DivActionAnimatorStartJsonParser$a;

    sget-object v0, Lzbb;->a:Lzbb$a;

    invoke-static {}, Lcom/yandex/div2/DivAnimationDirection;->values()[Lcom/yandex/div2/DivAnimationDirection;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$Companion$TYPE_HELPER_DIRECTION$1;->INSTANCE:Lcom/yandex/div2/DivActionAnimatorStartJsonParser$Companion$TYPE_HELPER_DIRECTION$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->b:Lzbb;

    invoke-static {}, Lcom/yandex/div2/DivAnimationInterpolator;->values()[Lcom/yandex/div2/DivAnimationInterpolator;

    move-result-object v1

    invoke-static {v1}, Lhi;->W([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/yandex/div2/DivActionAnimatorStartJsonParser$Companion$TYPE_HELPER_INTERPOLATOR$1;->INSTANCE:Lcom/yandex/div2/DivActionAnimatorStartJsonParser$Companion$TYPE_HELPER_INTERPOLATOR$1;

    invoke-virtual {v0, v1, v2}, Lzbb$a;->a(Ljava/lang/Object;Le74;)Lzbb;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->c:Lzbb;

    new-instance v0, Lod2;

    invoke-direct {v0}, Lod2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->d:Lpnb;

    new-instance v0, Lpd2;

    invoke-direct {v0}, Lpd2;-><init>()V

    sput-object v0, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->e:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->d(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/DivActionAnimatorStartJsonParser;->c(J)Z

    move-result p0

    return p0
.end method

.method public static final c(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
