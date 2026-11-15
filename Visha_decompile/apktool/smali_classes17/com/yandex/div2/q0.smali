.class public abstract Lcom/yandex/div2/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/q0$a;,
        Lcom/yandex/div2/q0$b;,
        Lcom/yandex/div2/q0$c;,
        Lcom/yandex/div2/q0$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/q0$a;

.field public static final b:Lpnb;

.field public static final c:Lpnb;

.field public static final d:Lpnb;

.field public static final e:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/q0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/q0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/q0;->a:Lcom/yandex/div2/q0$a;

    new-instance v0, Loh2;

    invoke-direct {v0}, Loh2;-><init>()V

    sput-object v0, Lcom/yandex/div2/q0;->b:Lpnb;

    new-instance v0, Lph2;

    invoke-direct {v0}, Lph2;-><init>()V

    sput-object v0, Lcom/yandex/div2/q0;->c:Lpnb;

    new-instance v0, Lqh2;

    invoke-direct {v0}, Lqh2;-><init>()V

    sput-object v0, Lcom/yandex/div2/q0;->d:Lpnb;

    new-instance v0, Lrh2;

    invoke-direct {v0}, Lrh2;-><init>()V

    sput-object v0, Lcom/yandex/div2/q0;->e:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/q0;->e(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/q0;->g(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/q0;->f(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/q0;->h(J)Z

    move-result p0

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

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final g(J)Z
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

.method public static final h(J)Z
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
