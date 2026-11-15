.class public final Lfd0;
.super Landroid/text/style/MetricAffectingSpan;
.source "SourceFile"

# interfaces
.implements Landroid/text/style/ParagraphStyle;


# instance fields
.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput p1, p0, Lfd0;->b:I

    iput p2, p0, Lfd0;->c:I

    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iget p0, p0, Lfd0;->b:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    const-string v0, "paint"

    invoke-static {p1, v0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lfd0;->c:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iget p0, p0, Lfd0;->b:I

    sub-int/2addr v0, p0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    :cond_0
    return-void
.end method
