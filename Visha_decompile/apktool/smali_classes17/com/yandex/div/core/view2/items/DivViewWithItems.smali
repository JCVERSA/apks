.class public abstract Lcom/yandex/div/core/view2/items/DivViewWithItems;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/div/core/view2/items/DivViewWithItems$a;,
        Lcom/yandex/div/core/view2/items/DivViewWithItems$Gallery;,
        Lcom/yandex/div/core/view2/items/DivViewWithItems$b;,
        Lcom/yandex/div/core/view2/items/DivViewWithItems$c;,
        Lcom/yandex/div/core/view2/items/DivViewWithItems$d;
    }
.end annotation


# static fields
.field public static final c:Lcom/yandex/div/core/view2/items/DivViewWithItems$a;

.field public static d:Lcom/yandex/div/core/view2/items/DivViewWithItems;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/yandex/div/core/view2/items/DivViewWithItems$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yandex/div/core/view2/items/DivViewWithItems$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/yandex/div/core/view2/items/DivViewWithItems;->c:Lcom/yandex/div/core/view2/items/DivViewWithItems$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/yandex/div/core/view2/items/DivViewWithItems;-><init>()V

    return-void
.end method

.method public static final synthetic a()Lcom/yandex/div/core/view2/items/DivViewWithItems;
    .locals 1

    sget-object v0, Lcom/yandex/div/core/view2/items/DivViewWithItems;->d:Lcom/yandex/div/core/view2/items/DivViewWithItems;

    return-object v0
.end method

.method public static synthetic h(Lcom/yandex/div/core/view2/items/DivViewWithItems;ILcom/yandex/div2/DivSizeUnit;ZILjava/lang/Object;)V
    .locals 0

    if-nez p5, :cond_2

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    sget-object p2, Lcom/yandex/div2/DivSizeUnit;->PX:Lcom/yandex/div2/DivSizeUnit;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yandex/div/core/view2/items/DivViewWithItems;->g(ILcom/yandex/div2/DivSizeUnit;Z)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: scrollTo"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract b()I
.end method

.method public abstract c()I
.end method

.method public abstract d()Landroid/util/DisplayMetrics;
.end method

.method public e()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems;->b:I

    return p0
.end method

.method public f()I
    .locals 0

    iget p0, p0, Lcom/yandex/div/core/view2/items/DivViewWithItems;->a:I

    return p0
.end method

.method public g(ILcom/yandex/div2/DivSizeUnit;Z)V
    .locals 0

    const-string p0, "sizeUnit"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public abstract i(Z)V
.end method

.method public abstract j(I)V
.end method

.method public abstract k(I)V
.end method
