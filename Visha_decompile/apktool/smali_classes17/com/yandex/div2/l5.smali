.class public abstract Lcom/yandex/div2/l5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/l5$a;,
        Lcom/yandex/div2/l5$b;,
        Lcom/yandex/div2/l5$c;,
        Lcom/yandex/div2/l5$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/l5$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lcom/yandex/div/json/expressions/Expression;

.field public static final d:Lcom/yandex/div/json/expressions/Expression;

.field public static final e:Lcom/yandex/div/json/expressions/Expression;

.field public static final f:Lpnb;

.field public static final g:Lpnb;

.field public static final h:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/l5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/l5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/l5;->a:Lcom/yandex/div2/l5$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/l5;->b:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/l5;->c:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x320

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v1

    sput-object v1, Lcom/yandex/div2/l5;->d:Lcom/yandex/div/json/expressions/Expression;

    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/l5;->e:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lxv2;

    invoke-direct {v0}, Lxv2;-><init>()V

    sput-object v0, Lcom/yandex/div2/l5;->f:Lpnb;

    new-instance v0, Lyv2;

    invoke-direct {v0}, Lyv2;-><init>()V

    sput-object v0, Lcom/yandex/div2/l5;->g:Lpnb;

    new-instance v0, Lzv2;

    invoke-direct {v0}, Lzv2;-><init>()V

    sput-object v0, Lcom/yandex/div2/l5;->h:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/l5;->d(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/l5;->f(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/l5;->e(J)Z

    move-result p0

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

.method public static final e(J)Z
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

.method public static final f(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x64

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
