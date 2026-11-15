.class public abstract Lcom/yandex/div2/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/g0$a;,
        Lcom/yandex/div2/g0$b;,
        Lcom/yandex/div2/g0$c;,
        Lcom/yandex/div2/g0$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/g0$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/g0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/g0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/g0;->a:Lcom/yandex/div2/g0$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/g0;->b:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lug2;

    invoke-direct {v0}, Lug2;-><init>()V

    sput-object v0, Lcom/yandex/div2/g0;->c:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/g0;->b(J)Z

    move-result p0

    return p0
.end method

.method public static final b(J)Z
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
