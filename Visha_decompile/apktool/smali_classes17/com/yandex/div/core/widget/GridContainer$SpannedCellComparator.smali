.class final Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/div/core/widget/GridContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpannedCellComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/yandex/div/core/widget/GridContainer$b;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u00c2\u0002\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u00020\u0001j\u0008\u0012\u0004\u0012\u00020\u0002`\u0003B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;",
        "Ljava/util/Comparator;",
        "Lcom/yandex/div/core/widget/GridContainer$b;",
        "Lkotlin/Comparator;",
        "<init>",
        "()V",
        "lhs",
        "rhs",
        "",
        "compare",
        "(Lcom/yandex/div/core/widget/GridContainer$b;Lcom/yandex/div/core/widget/GridContainer$b;)I",
        "div_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;

    invoke-direct {v0}, Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;-><init>()V

    sput-object v0, Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;->INSTANCE:Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/yandex/div/core/widget/GridContainer$b;Lcom/yandex/div/core/widget/GridContainer$b;)I
    .locals 1

    const-string p0, "lhs"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "rhs"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/yandex/div/core/widget/GridContainer$b;->e()I

    move-result p0

    invoke-virtual {p2}, Lcom/yandex/div/core/widget/GridContainer$b;->e()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/yandex/div/core/widget/GridContainer$b;->e()I

    move-result p0

    invoke-virtual {p2}, Lcom/yandex/div/core/widget/GridContainer$b;->e()I

    move-result p1

    if-le p0, p1, :cond_1

    const/4 p0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/yandex/div/core/widget/GridContainer$b;

    check-cast p2, Lcom/yandex/div/core/widget/GridContainer$b;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/widget/GridContainer$SpannedCellComparator;->compare(Lcom/yandex/div/core/widget/GridContainer$b;Lcom/yandex/div/core/widget/GridContainer$b;)I

    move-result p0

    return p0
.end method
