.class public abstract Lcom/yandex/div2/k2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/k2$a;,
        Lcom/yandex/div2/k2$b;,
        Lcom/yandex/div2/k2$c;,
        Lcom/yandex/div2/k2$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/k2$a;

.field public static final b:Lcom/yandex/div/json/expressions/Expression;

.field public static final c:Lpnb;

.field public static final d:Lhm5;

.field public static final e:Lhm5;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/yandex/div2/k2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/k2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/k2;->a:Lcom/yandex/div2/k2$a;

    sget-object v0, Lcom/yandex/div/json/expressions/Expression;->a:Lcom/yandex/div/json/expressions/Expression$a;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/div/json/expressions/Expression$a;->a(Ljava/lang/Object;)Lcom/yandex/div/json/expressions/Expression;

    move-result-object v0

    sput-object v0, Lcom/yandex/div2/k2;->b:Lcom/yandex/div/json/expressions/Expression;

    new-instance v0, Lmm2;

    invoke-direct {v0}, Lmm2;-><init>()V

    sput-object v0, Lcom/yandex/div2/k2;->c:Lpnb;

    new-instance v0, Lnm2;

    invoke-direct {v0}, Lnm2;-><init>()V

    sput-object v0, Lcom/yandex/div2/k2;->d:Lhm5;

    new-instance v0, Lom2;

    invoke-direct {v0}, Lom2;-><init>()V

    sput-object v0, Lcom/yandex/div2/k2;->e:Lhm5;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/k2;->f(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/k2;->e(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/k2;->d(J)Z

    move-result p0

    return p0
.end method

.method public static final d(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/16 v0, 0x168

    cmp-long p0, p0, v0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final e(Ljava/util/List;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final f(Ljava/util/List;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
