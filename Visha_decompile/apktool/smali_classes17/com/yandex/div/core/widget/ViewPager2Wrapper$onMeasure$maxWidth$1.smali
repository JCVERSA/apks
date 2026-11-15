.class final synthetic Lcom/yandex/div/core/widget/ViewPager2Wrapper$onMeasure$maxWidth$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yandex/div/core/widget/ViewPager2Wrapper;->onMeasure(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/yandex/div/core/widget/ViewPager2Wrapper$onMeasure$maxWidth$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/yandex/div/core/widget/ViewPager2Wrapper$onMeasure$maxWidth$1;

    invoke-direct {v0}, Lcom/yandex/div/core/widget/ViewPager2Wrapper$onMeasure$maxWidth$1;-><init>()V

    sput-object v0, Lcom/yandex/div/core/widget/ViewPager2Wrapper$onMeasure$maxWidth$1;->INSTANCE:Lcom/yandex/div/core/widget/ViewPager2Wrapper$onMeasure$maxWidth$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-string v4, "getDecoratedMeasuredWidth(Landroid/view/View;)I"

    const/4 v5, 0x0

    const/4 v1, 0x2

    const-class v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const-string v3, "getDecoratedMeasuredWidth"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)Ljava/lang/Integer;
    .locals 0

    const-string p0, "p0"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "p1"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/yandex/div/core/widget/ViewPager2Wrapper$onMeasure$maxWidth$1;->invoke(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
