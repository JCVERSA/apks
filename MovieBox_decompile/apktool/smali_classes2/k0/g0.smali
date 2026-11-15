.class public final Lk0/g0;
.super Ljava/lang/Object;
.source "source.java"


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:Landroid/text/TextPaint;

.field private final c:I

.field private d:F

.field private e:F

.field private f:Landroid/text/BoringLayout$Metrics;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk0/g0;->a:Ljava/lang/CharSequence;

    .line 5
    .line 6
    iput-object p2, p0, Lk0/g0;->b:Landroid/text/TextPaint;

    .line 7
    .line 8
    iput p3, p0, Lk0/g0;->c:I

    .line 9
    .line 10
    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 11
    .line 12
    iput p1, p0, Lk0/g0;->d:F

    .line 13
    .line 14
    iput p1, p0, Lk0/g0;->e:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a()Landroid/text/BoringLayout$Metrics;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lk0/g0;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lk0/g0;->c:I

    .line 6
    .line 7
    invoke-static {v0}, Lk0/f1;->k(I)Landroid/text/TextDirectionHeuristic;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lk0/e;->a:Lk0/e;

    .line 12
    .line 13
    iget-object v2, p0, Lk0/g0;->a:Ljava/lang/CharSequence;

    .line 14
    .line 15
    iget-object v3, p0, Lk0/g0;->b:Landroid/text/TextPaint;

    .line 16
    .line 17
    invoke-virtual {v1, v2, v3, v0}, Lk0/e;->c(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)Landroid/text/BoringLayout$Metrics;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lk0/g0;->f:Landroid/text/BoringLayout$Metrics;

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lk0/g0;->g:Z

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lk0/g0;->f:Landroid/text/BoringLayout$Metrics;

    .line 27
    .line 28
    return-object v0
.end method

.method public final b()F
    .locals 4

    .line 1
    iget v0, p0, Lk0/g0;->d:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lk0/g0;->d:F

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lk0/g0;->a()Landroid/text/BoringLayout$Metrics;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v0, -0x1

    .line 22
    :goto_0
    int-to-float v0, v0

    .line 23
    const/4 v1, 0x0

    .line 24
    cmpg-float v1, v0, v1

    .line 25
    .line 26
    if-gez v1, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lk0/g0;->a:Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget-object v2, p0, Lk0/g0;->b:Landroid/text/TextPaint;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v0, v3, v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    float-to-double v0, v0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    double-to-float v0, v0

    .line 47
    :cond_2
    iget-object v1, p0, Lk0/g0;->a:Ljava/lang/CharSequence;

    .line 48
    .line 49
    iget-object v2, p0, Lk0/g0;->b:Landroid/text/TextPaint;

    .line 50
    .line 51
    invoke-static {v0, v1, v2}, Lk0/i0;->b(FLjava/lang/CharSequence;Landroid/text/TextPaint;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    const/high16 v1, 0x3f000000    # 0.5f

    .line 58
    .line 59
    add-float/2addr v0, v1

    .line 60
    :cond_3
    iput v0, p0, Lk0/g0;->d:F

    .line 61
    .line 62
    :goto_1
    return v0
.end method

.method public final c()F
    .locals 2

    .line 1
    iget v0, p0, Lk0/g0;->e:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lk0/g0;->e:F

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lk0/g0;->a:Ljava/lang/CharSequence;

    .line 13
    .line 14
    iget-object v1, p0, Lk0/g0;->b:Landroid/text/TextPaint;

    .line 15
    .line 16
    invoke-static {v0, v1}, Lk0/i0;->c(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lk0/g0;->e:F

    .line 21
    .line 22
    :goto_0
    return v0
.end method
