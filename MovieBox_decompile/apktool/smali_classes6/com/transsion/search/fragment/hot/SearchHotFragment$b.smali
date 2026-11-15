.class public final Lcom/transsion/search/fragment/hot/SearchHotFragment$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/viewpager2/widget/ViewPager2$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/search/fragment/hot/SearchHotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/transsion/search/fragment/hot/SearchHotFragment$b;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$b;->a:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x26

    .line 4
    invoke-static {p1}, Llj/a;->b(I)I

    move-result p1

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/transsion/search/fragment/hot/SearchHotFragment$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 2

    .line 1
    const-string v0, "page"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/high16 v0, -0x40800000    # -1.0f

    .line 7
    .line 8
    cmpg-float v0, p2, v0

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    if-gez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    cmpg-float v0, p2, v1

    .line 18
    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 26
    .line 27
    cmpg-float v0, p2, v0

    .line 28
    .line 29
    if-gtz v0, :cond_2

    .line 30
    .line 31
    iget v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$b;->a:I

    .line 32
    .line 33
    int-to-float v0, v0

    .line 34
    mul-float/2addr v0, p2

    .line 35
    neg-float p2, v0

    .line 36
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget v0, p0, Lcom/transsion/search/fragment/hot/SearchHotFragment$b;->a:I

    .line 41
    .line 42
    int-to-float v0, v0

    .line 43
    const/4 v1, 0x1

    .line 44
    int-to-float v1, v1

    .line 45
    sub-float/2addr p2, v1

    .line 46
    mul-float/2addr v0, p2

    .line 47
    neg-float p2, v0

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
