.class public abstract Lcom/yandex/div2/l2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/l2$a;,
        Lcom/yandex/div2/l2$b;,
        Lcom/yandex/div2/l2$c;,
        Lcom/yandex/div2/l2$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/l2$a;

.field public static final b:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/l2$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/l2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/l2;->a:Lcom/yandex/div2/l2$a;

    new-instance v0, Lpm2;

    invoke-direct {v0}, Lpm2;-><init>()V

    sput-object v0, Lcom/yandex/div2/l2;->b:Lpnb;

    return-void
.end method

.method public static synthetic a(D)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/l2;->b(D)Z

    move-result p0

    return p0
.end method

.method public static final b(D)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
