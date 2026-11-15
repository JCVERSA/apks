.class public Lcom/transsion/publish/view/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/publish/view/ObservableScrollView$a;
    }
.end annotation


# static fields
.field public static final SCROLL_DOWN:I = 0x10

.field public static final SCROLL_UP:I = 0x1


# instance fields
.field private a:Lcom/transsion/publish/view/ObservableScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x28

    .line 5
    .line 6
    if-le p4, p2, :cond_0

    .line 7
    .line 8
    sub-int p3, p4, p2

    .line 9
    .line 10
    if-le p3, p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/transsion/publish/view/ObservableScrollView;->a:Lcom/transsion/publish/view/ObservableScrollView$a;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    const/16 p2, 0x10

    .line 17
    .line 18
    invoke-interface {p1, p2}, Lcom/transsion/publish/view/ObservableScrollView$a;->a(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    if-ge p4, p2, :cond_1

    .line 23
    .line 24
    sub-int/2addr p2, p4

    .line 25
    if-le p2, p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/transsion/publish/view/ObservableScrollView;->a:Lcom/transsion/publish/view/ObservableScrollView$a;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 p2, 0x1

    .line 32
    invoke-interface {p1, p2}, Lcom/transsion/publish/view/ObservableScrollView$a;->a(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method

.method public setScrollListener(Lcom/transsion/publish/view/ObservableScrollView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/publish/view/ObservableScrollView;->a:Lcom/transsion/publish/view/ObservableScrollView$a;

    .line 2
    .line 3
    return-void
.end method
