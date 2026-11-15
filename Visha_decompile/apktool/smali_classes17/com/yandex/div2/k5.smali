.class public abstract Lcom/yandex/div2/k5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/k5$a;,
        Lcom/yandex/div2/k5$b;,
        Lcom/yandex/div2/k5$c;,
        Lcom/yandex/div2/k5$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/k5$a;

.field public static final b:Lpnb;

.field public static final c:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/k5$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/k5$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/k5;->a:Lcom/yandex/div2/k5$a;

    new-instance v0, Ltu2;

    invoke-direct {v0}, Ltu2;-><init>()V

    sput-object v0, Lcom/yandex/div2/k5;->b:Lpnb;

    new-instance v0, Luu2;

    invoke-direct {v0}, Luu2;-><init>()V

    sput-object v0, Lcom/yandex/div2/k5;->c:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/k5;->c(J)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/k5;->d(J)Z

    move-result p0

    return p0
.end method

.method public static final c(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

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

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
