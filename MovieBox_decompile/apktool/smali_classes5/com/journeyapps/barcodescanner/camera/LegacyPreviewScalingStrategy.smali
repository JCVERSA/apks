.class public Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;
.super Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;
.source "source.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/camera/PreviewScalingStrategy;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static e(Laf/q;Laf/q;)Laf/q;
    .locals 6

    .line 1
    invoke-virtual {p1, p0}, Laf/q;->b(Laf/q;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x3

    .line 7
    const/4 v3, 0x2

    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    :cond_0
    invoke-virtual {p0, v2, v3}, Laf/q;->e(II)Laf/q;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v3, v1}, Laf/q;->e(II)Laf/q;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p1, v0}, Laf/q;->b(Laf/q;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_1

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    invoke-virtual {p1, p0}, Laf/q;->b(Laf/q;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    return-object p0

    .line 32
    :cond_2
    :goto_0
    invoke-virtual {p0, v3, v2}, Laf/q;->e(II)Laf/q;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v1, v3}, Laf/q;->e(II)Laf/q;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {p1, v4}, Laf/q;->b(Laf/q;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_4

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Laf/q;->b(Laf/q;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_3

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_3
    return-object p0

    .line 54
    :cond_4
    move-object p0, v4

    .line 55
    goto :goto_0
.end method


# virtual methods
.method public b(Ljava/util/List;Laf/q;)Laf/q;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Laf/q;

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    new-instance v1, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;

    .line 12
    .line 13
    invoke-direct {v1, p0, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy$1;-><init>(Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;Laf/q;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "Viewfinder size: "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "Preview in order of preference: "

    .line 38
    .line 39
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Laf/q;

    .line 50
    .line 51
    return-object p1
.end method

.method public d(Laf/q;Laf/q;)Landroid/graphics/Rect;
    .locals 5

    .line 1
    invoke-static {p1, p2}, Lcom/journeyapps/barcodescanner/camera/LegacyPreviewScalingStrategy;->e(Laf/q;Laf/q;)Laf/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "Preview: "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string p1, "; Scaled: "

    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p1, "; Want: "

    .line 27
    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget p1, v0, Laf/q;->a:I

    .line 35
    .line 36
    iget v1, p2, Laf/q;->a:I

    .line 37
    .line 38
    sub-int/2addr p1, v1

    .line 39
    div-int/lit8 p1, p1, 0x2

    .line 40
    .line 41
    iget v1, v0, Laf/q;->b:I

    .line 42
    .line 43
    iget p2, p2, Laf/q;->b:I

    .line 44
    .line 45
    sub-int/2addr v1, p2

    .line 46
    div-int/lit8 v1, v1, 0x2

    .line 47
    .line 48
    new-instance p2, Landroid/graphics/Rect;

    .line 49
    .line 50
    neg-int v2, p1

    .line 51
    neg-int v3, v1

    .line 52
    iget v4, v0, Laf/q;->a:I

    .line 53
    .line 54
    sub-int/2addr v4, p1

    .line 55
    iget p1, v0, Laf/q;->b:I

    .line 56
    .line 57
    sub-int/2addr p1, v1

    .line 58
    invoke-direct {p2, v2, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 59
    .line 60
    .line 61
    return-object p2
.end method
