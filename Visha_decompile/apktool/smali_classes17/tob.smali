.class public final Ltob;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/LineBackgroundSpan;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltob$a;,
        Ltob$b;
    }
.end annotation


# static fields
.field public static final h:Ltob$a;

.field public static final i:Landroidx/core/util/Pools$SimplePool;


# instance fields
.field public final b:I

.field public final c:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

.field public final d:Loj8;

.field public final e:Landroid/graphics/Paint$FontMetricsInt;

.field public final f:Ljava/util/Queue;

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltob$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltob$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltob;->h:Ltob$a;

    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    sput-object v0, Ltob;->i:Landroidx/core/util/Pools$SimplePool;

    return-void
.end method

.method public constructor <init>(ILcom/yandex/div/core/view2/spannable/TextVerticalAlignment;Loj8;)V
    .locals 1

    const-string v0, "alignment"

    invoke-static {p2, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutProvider"

    invoke-static {p3, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput p1, p0, Ltob;->b:I

    iput-object p2, p0, Ltob;->c:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    iput-object p3, p0, Ltob;->d:Loj8;

    new-instance p1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {p1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object p1, p0, Ltob;->e:Landroid/graphics/Paint$FontMetricsInt;

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Ltob;->f:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V
    .locals 0

    const-string p3, "canvas"

    invoke-static {p1, p3}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "paint"

    invoke-static {p2, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "text"

    invoke-static {p8, p1}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p1, p0, Ltob;->g:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ltob;->f:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Ltob;->g:Z

    instance-of p2, p8, Landroid/text/Spanned;

    if-eqz p2, :cond_1

    check-cast p8, Landroid/text/Spanned;

    goto :goto_0

    :cond_1
    const/4 p8, 0x0

    :goto_0
    if-nez p8, :cond_2

    return-void

    :cond_2
    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p2

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    if-gt p9, p3, :cond_5

    if-gt p2, p10, :cond_5

    iget-object p2, p0, Ltob;->d:Loj8;

    invoke-interface {p2}, Loj8;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/Layout;

    invoke-virtual {p2}, Landroid/text/Layout;->getLineCount()I

    move-result p3

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    if-ne p11, p3, :cond_3

    move p2, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p2}, Landroid/text/Layout;->getSpacingAdd()F

    move-result p2

    invoke-static {p2}, Ls86;->c(F)I

    move-result p2

    :goto_1
    sget-object p3, Ltob;->i:Landroidx/core/util/Pools$SimplePool;

    invoke-virtual {p3}, Landroidx/core/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    if-nez p3, :cond_4

    const/4 p3, 0x2

    new-array p3, p3, [I

    :cond_4
    sub-int/2addr p5, p6

    aput p5, p3, p1

    sub-int/2addr p7, p6

    sub-int/2addr p7, p2

    aput p7, p3, p4

    iget-object p0, p0, Ltob;->f:Ljava/util/Queue;

    invoke-interface {p0, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 6

    const-string v0, "paint"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Ltob;->g:Z

    iget-object v1, p0, Ltob;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Ltob;->f:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    const/4 v2, 0x0

    aget v2, v1, v2

    aget v3, v1, v0

    sget-object v4, Ltob;->i:Landroidx/core/util/Pools$SimplePool;

    const-string v5, "line"

    invoke-static {v1, v5}, Ly45;->i(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroidx/core/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    iget v1, p0, Ltob;->b:I

    if-lez v1, :cond_1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    iget-object v1, p0, Ltob;->e:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    iget-object v1, p0, Ltob;->c:Lcom/yandex/div/core/view2/spannable/TextVerticalAlignment;

    sget-object v4, Ltob$b;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v4, v1

    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iget-object p0, p0, Ltob;->e:Landroid/graphics/Paint$FontMetricsInt;

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v3, p0

    add-int/2addr v0, v3

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    goto :goto_0

    :cond_3
    add-int/2addr v2, v3

    div-int/2addr v2, v0

    iget-object p0, p0, Ltob;->e:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v1, p0

    div-int/2addr v1, v0

    iget p0, p1, Landroid/text/TextPaint;->baselineShift:I

    sub-int/2addr v2, v1

    add-int/2addr p0, v2

    iput p0, p1, Landroid/text/TextPaint;->baselineShift:I

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iget-object p0, p0, Ltob;->e:Landroid/graphics/Paint$FontMetricsInt;

    iget p0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v2, p0

    add-int/2addr v0, v2

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    :goto_0
    return-void
.end method
