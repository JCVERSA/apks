.class public final Llr/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkr/c;


# instance fields
.field private final a:Lkr/c;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(Lkr/c;IIIFF)V
    .locals 1

    .line 1
    const-string v0, "mStyle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Llr/b;->a:Lkr/c;

    .line 10
    .line 11
    iput p2, p0, Llr/b;->b:I

    .line 12
    .line 13
    iput p3, p0, Llr/b;->c:I

    .line 14
    .line 15
    iput p4, p0, Llr/b;->d:I

    .line 16
    .line 17
    iput p5, p0, Llr/b;->e:F

    .line 18
    .line 19
    iput p6, p0, Llr/b;->f:F

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Llr/b;->a:Lkr/c;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkr/c;->createView(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public getGravity()I
    .locals 1

    .line 1
    iget v0, p0, Llr/b;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getHorizontalMargin()F
    .locals 1

    .line 1
    iget v0, p0, Llr/b;->e:F

    .line 2
    .line 3
    return v0
.end method

.method public getVerticalMargin()F
    .locals 1

    .line 1
    iget v0, p0, Llr/b;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public getXOffset()I
    .locals 1

    .line 1
    iget v0, p0, Llr/b;->c:I

    .line 2
    .line 3
    return v0
.end method

.method public getYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Llr/b;->d:I

    .line 2
    .line 3
    return v0
.end method
