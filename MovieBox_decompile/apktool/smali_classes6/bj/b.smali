.class public final Lbj/b;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbj/b$a;
    }
.end annotation


# static fields
.field public static final j:Lbj/b$a;

.field private static k:Ljava/lang/String;


# instance fields
.field private final a:F

.field private final b:Lbj/a;

.field private final c:Z

.field private d:I

.field private e:Lcom/transsion/baselib/exposure/ExposureType;

.field private f:Lij/q;

.field private g:I

.field private h:I

.field private final i:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbj/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lbj/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lbj/b;->j:Lbj/b$a;

    .line 8
    .line 9
    const-string v0, "ExposureHelper"

    .line 10
    .line 11
    sput-object v0, Lbj/b;->k:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(FLbj/a;Z)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 3
    iput p1, p0, Lbj/b;->a:F

    .line 4
    iput-object p2, p0, Lbj/b;->b:Lbj/a;

    .line 5
    iput-boolean p3, p0, Lbj/b;->c:Z

    .line 6
    sget-object p1, Lcom/transsion/baselib/exposure/ExposureType;->VERTICAL_FEED:Lcom/transsion/baselib/exposure/ExposureType;

    iput-object p1, p0, Lbj/b;->e:Lcom/transsion/baselib/exposure/ExposureType;

    .line 7
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lbj/b;->i:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(FLbj/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lbj/b;-><init>(FLbj/a;Z)V

    return-void
.end method

.method public static final synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lbj/b;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final e(Landroid/view/View;)Z
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    new-instance v3, Landroid/graphics/Rect;

    .line 14
    .line 15
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_3

    .line 23
    .line 24
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget v4, p0, Lbj/b;->d:I

    .line 33
    .line 34
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    if-eq v4, v7, :cond_2

    .line 38
    .line 39
    const/4 v8, 0x2

    .line 40
    if-eq v4, v8, :cond_1

    .line 41
    .line 42
    int-to-double v8, p1

    .line 43
    mul-double/2addr v8, v5

    .line 44
    int-to-double v10, v1

    .line 45
    div-double/2addr v8, v10

    .line 46
    iget p1, p0, Lbj/b;->a:F

    .line 47
    .line 48
    float-to-double v10, p1

    .line 49
    cmpl-double v1, v8, v10

    .line 50
    .line 51
    if-ltz v1, :cond_3

    .line 52
    .line 53
    int-to-double v3, v3

    .line 54
    mul-double/2addr v3, v5

    .line 55
    int-to-double v1, v2

    .line 56
    div-double/2addr v3, v1

    .line 57
    float-to-double v1, p1

    .line 58
    cmpl-double p1, v3, v1

    .line 59
    .line 60
    if-ltz p1, :cond_3

    .line 61
    .line 62
    :goto_0
    move v0, v7

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    int-to-double v3, v3

    .line 65
    mul-double/2addr v3, v5

    .line 66
    int-to-double v1, v2

    .line 67
    div-double/2addr v3, v1

    .line 68
    iget p1, p0, Lbj/b;->a:F

    .line 69
    .line 70
    float-to-double v1, p1

    .line 71
    cmpl-double p1, v3, v1

    .line 72
    .line 73
    if-ltz p1, :cond_3

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_2
    int-to-double v2, p1

    .line 77
    mul-double/2addr v2, v5

    .line 78
    int-to-double v4, v1

    .line 79
    div-double/2addr v2, v4

    .line 80
    iget p1, p0, Lbj/b;->a:F

    .line 81
    .line 82
    float-to-double v4, p1

    .line 83
    cmpl-double p1, v2, v4

    .line 84
    .line 85
    if-ltz p1, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    :goto_1
    return v0
.end method

.method private final h(III)V
    .locals 6

    .line 1
    if-ltz p2, :cond_2

    .line 2
    .line 3
    if-ge p3, p1, :cond_2

    .line 4
    .line 5
    if-gt p2, p3, :cond_2

    .line 6
    .line 7
    if-gt p2, p3, :cond_2

    .line 8
    .line 9
    :goto_0
    iget-object p1, p0, Lbj/b;->i:Landroid/util/SparseArray;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    add-int/lit8 p1, p2, 0x1

    .line 19
    .line 20
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 21
    .line 22
    sget-object v1, Lbj/b;->k:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "offer position  "

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const/4 v4, 0x4

    .line 42
    const/4 v5, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lbj/b;->i:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lbj/b;->f:Lij/q;

    .line 61
    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    invoke-interface {v0, p1}, Lij/q;->a(I)V

    .line 65
    .line 66
    .line 67
    :cond_1
    if-eq p2, p3, :cond_2

    .line 68
    .line 69
    move p2, p1

    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return-void
.end method

.method public static synthetic j(Lbj/b;Landroidx/recyclerview/widget/RecyclerView$m;IZZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lbj/b;->i(Landroidx/recyclerview/widget/RecyclerView$m;IZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final l(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lbj/b;->i:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lbj/b;->i:Landroid/util/SparseArray;

    .line 15
    .line 16
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/Long;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    move-wide v2, v0

    .line 30
    :goto_0
    iget-object v4, p0, Lbj/b;->i:Landroid/util/SparseArray;

    .line 31
    .line 32
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 33
    .line 34
    .line 35
    sub-long/2addr v0, v2

    .line 36
    sget-object v2, Lwf/a;->a:Lwf/a$a;

    .line 37
    .line 38
    sget-object v3, Lbj/b;->k:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v5, "out position "

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v5, " duration "

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    const/4 v6, 0x4

    .line 66
    const/4 v7, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-static/range {v2 .. v7}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    const-wide/16 v2, 0x3e8

    .line 72
    .line 73
    cmp-long v2, v0, v2

    .line 74
    .line 75
    if-gtz v2, :cond_2

    .line 76
    .line 77
    return-void

    .line 78
    :cond_2
    iget-object v2, p0, Lbj/b;->b:Lbj/a;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-interface {v2, p1, v0, v1, v3}, Lbj/a;->a(IJLandroid/view/View;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final m(III)V
    .locals 0

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    if-ge p3, p1, :cond_0

    .line 4
    .line 5
    if-gt p2, p3, :cond_0

    .line 6
    .line 7
    if-gt p2, p3, :cond_0

    .line 8
    .line 9
    :goto_0
    invoke-direct {p0, p3}, Lbj/b;->l(I)V

    .line 10
    .line 11
    .line 12
    if-eq p3, p2, :cond_0

    .line 13
    .line 14
    add-int/lit8 p3, p3, -0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lbj/b;->i:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    :goto_0
    if-ge v4, v3, :cond_1

    .line 13
    .line 14
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    .line 15
    .line 16
    .line 17
    move-result v5

    .line 18
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    check-cast v6, Ljava/lang/Long;

    .line 23
    .line 24
    if-eqz v6, :cond_0

    .line 25
    .line 26
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v6

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move-wide v6, v0

    .line 32
    :goto_1
    sub-long v6, v0, v6

    .line 33
    .line 34
    sget-object v8, Lwf/a;->a:Lwf/a$a;

    .line 35
    .line 36
    sget-object v9, Lbj/b;->k:Ljava/lang/String;

    .line 37
    .line 38
    new-instance v10, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v11, "clearCache out position "

    .line 44
    .line 45
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v11, " duration "

    .line 52
    .line 53
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    const/4 v12, 0x4

    .line 64
    const/4 v13, 0x0

    .line 65
    const/4 v11, 0x0

    .line 66
    invoke-static/range {v8 .. v13}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v8, p0, Lbj/b;->b:Lbj/a;

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    invoke-interface {v8, v5, v6, v7, v9}, Lbj/a;->a(IJLandroid/view/View;)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lbj/b;->i:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbj/b;->f()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lbj/b;->g:I

    .line 6
    .line 7
    iput v0, p0, Lbj/b;->h:I

    .line 8
    .line 9
    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/RecyclerView$m;IZZ)V
    .locals 6

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$m;->findViewByPosition(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-direct {p0, p1, p2, p2}, Lbj/b;->h(III)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0, p3}, Lbj/b;->e(Landroid/view/View;)Z

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 27
    .line 28
    sget-object v1, Lbj/b;->k:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "firstView "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p3, " export "

    .line 48
    .line 49
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string p3, " count "

    .line 56
    .line 57
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const/4 v4, 0x4

    .line 68
    const/4 v5, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    if-eqz p4, :cond_1

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    invoke-direct {p0, p1, p2, p2}, Lbj/b;->h(III)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method public final k(Landroidx/recyclerview/widget/RecyclerView$m;Z)V
    .locals 4

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    move-object v2, p1

    .line 12
    check-cast v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 13
    .line 14
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    instance-of v2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 20
    .line 21
    if-eqz v2, :cond_8

    .line 22
    .line 23
    move-object v2, p1

    .line 24
    check-cast v2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 25
    .line 26
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->D([I)[I

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const-string v3, "findFirstVisibleItemPositions(...)"

    .line 31
    .line 32
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v2}, Lkotlin/collections/ArraysKt;->R([I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    :goto_0
    if-eqz v0, :cond_1

    .line 40
    .line 41
    move-object v0, p1

    .line 42
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 50
    .line 51
    if-eqz v0, :cond_8

    .line 52
    .line 53
    move-object v0, p1

    .line 54
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->G([I)[I

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "findLastVisibleItemPositions(...)"

    .line 61
    .line 62
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/collections/ArraysKt;->R([I)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    :goto_1
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView$m;->findViewByPosition(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {p0, v1}, Lbj/b;->e(Landroid/view/View;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_3

    .line 78
    .line 79
    iget-object v1, p0, Lbj/b;->e:Lcom/transsion/baselib/exposure/ExposureType;

    .line 80
    .line 81
    sget-object v3, Lcom/transsion/baselib/exposure/ExposureType;->NEST_HORIZONTAL:Lcom/transsion/baselib/exposure/ExposureType;

    .line 82
    .line 83
    if-ne v1, v3, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 87
    .line 88
    :cond_3
    :goto_2
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$m;->findViewByPosition(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-direct {p0, v1}, Lbj/b;->e(Landroid/view/View;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_5

    .line 97
    .line 98
    iget-object v1, p0, Lbj/b;->e:Lcom/transsion/baselib/exposure/ExposureType;

    .line 99
    .line 100
    sget-object v3, Lcom/transsion/baselib/exposure/ExposureType;->NEST_HORIZONTAL:Lcom/transsion/baselib/exposure/ExposureType;

    .line 101
    .line 102
    if-ne v1, v3, :cond_4

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 106
    .line 107
    :cond_5
    :goto_3
    iget v1, p0, Lbj/b;->g:I

    .line 108
    .line 109
    if-nez v1, :cond_6

    .line 110
    .line 111
    iget v1, p0, Lbj/b;->h:I

    .line 112
    .line 113
    if-nez v1, :cond_6

    .line 114
    .line 115
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-direct {p0, p1, v2, v0}, Lbj/b;->h(III)V

    .line 120
    .line 121
    .line 122
    iput v2, p0, Lbj/b;->g:I

    .line 123
    .line 124
    iput v0, p0, Lbj/b;->h:I

    .line 125
    .line 126
    return-void

    .line 127
    :cond_6
    if-eqz p2, :cond_7

    .line 128
    .line 129
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 130
    .line 131
    .line 132
    move-result p2

    .line 133
    iget v1, p0, Lbj/b;->g:I

    .line 134
    .line 135
    add-int/lit8 v3, v2, -0x1

    .line 136
    .line 137
    invoke-direct {p0, p2, v1, v3}, Lbj/b;->m(III)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    iget p2, p0, Lbj/b;->h:I

    .line 145
    .line 146
    add-int/lit8 p2, p2, 0x1

    .line 147
    .line 148
    invoke-direct {p0, p1, p2, v0}, Lbj/b;->h(III)V

    .line 149
    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 153
    .line 154
    .line 155
    move-result p2

    .line 156
    add-int/lit8 v1, v0, 0x1

    .line 157
    .line 158
    iget v3, p0, Lbj/b;->h:I

    .line 159
    .line 160
    invoke-direct {p0, p2, v1, v3}, Lbj/b;->m(III)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    iget p2, p0, Lbj/b;->g:I

    .line 168
    .line 169
    add-int/lit8 p2, p2, -0x1

    .line 170
    .line 171
    invoke-direct {p0, p1, v2, p2}, Lbj/b;->h(III)V

    .line 172
    .line 173
    .line 174
    :goto_4
    iput v2, p0, Lbj/b;->g:I

    .line 175
    .line 176
    iput v0, p0, Lbj/b;->h:I

    .line 177
    .line 178
    :cond_8
    return-void
.end method

.method public final n(I)V
    .locals 0

    .line 1
    iput p1, p0, Lbj/b;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public final o(Lcom/transsion/baselib/exposure/ExposureType;)V
    .locals 1

    .line 1
    const-string v0, "exposureType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lbj/b;->e:Lcom/transsion/baselib/exposure/ExposureType;

    .line 7
    .line 8
    return-void
.end method

.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 7

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lwf/a;->a:Lwf/a$a;

    .line 7
    .line 8
    sget-object v2, Lbj/b;->k:Ljava/lang/String;

    .line 9
    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v0, "newState "

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v5, 0x4

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v4, 0x0

    .line 30
    invoke-static/range {v1 .. v6}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$r;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    move-object v0, p1

    .line 23
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-ne v0, v2, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 33
    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    move-object v0, p1

    .line 37
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-ne v0, v2, :cond_2

    .line 44
    .line 45
    :goto_0
    if-lez p3, :cond_3

    .line 46
    .line 47
    :goto_1
    move v1, v2

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    if-lez p2, :cond_3

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_3
    :goto_2
    invoke-virtual {p0, p1, v1}, Lbj/b;->k(Landroidx/recyclerview/widget/RecyclerView$m;Z)V

    .line 53
    .line 54
    .line 55
    :cond_4
    return-void
.end method

.method public final p(Lij/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbj/b;->f:Lij/q;

    .line 2
    .line 3
    return-void
.end method
