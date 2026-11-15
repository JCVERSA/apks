.class public abstract Lcom/yandex/div2/f1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/f1$a;,
        Lcom/yandex/div2/f1$b;,
        Lcom/yandex/div2/f1$c;,
        Lcom/yandex/div2/f1$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/f1$a;

.field public static final b:Lpnb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/f1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/f1$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/f1;->a:Lcom/yandex/div2/f1$a;

    new-instance v0, Lgj2;

    invoke-direct {v0}, Lgj2;-><init>()V

    sput-object v0, Lcom/yandex/div2/f1;->b:Lpnb;

    return-void
.end method

.method public static synthetic a(J)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/yandex/div2/f1;->b(J)Z

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
