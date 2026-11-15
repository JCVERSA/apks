.class public abstract Lcom/yandex/div2/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div2/h0$a;,
        Lcom/yandex/div2/h0$b;,
        Lcom/yandex/div2/h0$c;,
        Lcom/yandex/div2/h0$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yandex/div2/h0$a;

.field public static final b:Lhm5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div2/h0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div2/h0$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div2/h0;->a:Lcom/yandex/div2/h0$a;

    new-instance v0, Lzg2;

    invoke-direct {v0}, Lzg2;-><init>()V

    sput-object v0, Lcom/yandex/div2/h0;->b:Lhm5;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;)Z
    .locals 0

    invoke-static {p0}, Lcom/yandex/div2/h0;->b(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static final b(Ljava/util/List;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
