.class public Lah/a;
.super Landroid/text/style/MetricAffectingSpan;
.source "source.java"


# instance fields
.field private final a:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lah/a;->a:Landroid/graphics/Typeface;

    .line 5
    .line 6
    return-void
.end method

.method private a(Landroid/graphics/Paint;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lah/a;->a:Landroid/graphics/Typeface;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    iget-object v1, p0, Lah/a;->a:Landroid/graphics/Typeface;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/graphics/Typeface;->getStyle()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    not-int v1, v1

    .line 25
    and-int/2addr v0, v1

    .line 26
    and-int/lit8 v1, v0, 0x1

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 32
    .line 33
    .line 34
    :cond_2
    and-int/lit8 v0, v0, 0x2

    .line 35
    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    const/high16 v0, -0x41800000    # -0.25f

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSkewX(F)V

    .line 41
    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lah/a;->a:Landroid/graphics/Typeface;

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lah/a;->a(Landroid/graphics/Paint;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lah/a;->a(Landroid/graphics/Paint;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
