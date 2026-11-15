.class public final Lfs/b;
.super Landroidx/recyclerview/widget/RecyclerView$r;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfs/b$a;
    }
.end annotation


# static fields
.field public static final i:Lfs/b$a;

.field private static j:Ljava/lang/String;


# instance fields
.field private final a:F

.field private final b:Lfs/a;

.field private final c:Z

.field private d:I

.field private e:Lcom/transsion/shorttv_pugc/base/exposure/ExposureType;

.field private f:I

.field private g:I

.field private final h:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lfs/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lfs/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lfs/b;->i:Lfs/b$a;

    .line 8
    .line 9
    const-string v0, "ExposureHelper"

    .line 10
    .line 11
    sput-object v0, Lfs/b;->j:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(FLfs/a;Z)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$r;-><init>()V

    .line 3
    iput p1, p0, Lfs/b;->a:F

    .line 4
    iput-object p2, p0, Lfs/b;->b:Lfs/a;

    .line 5
    iput-boolean p3, p0, Lfs/b;->c:Z

    .line 6
    sget-object p1, Lcom/transsion/shorttv_pugc/base/exposure/ExposureType;->VERTICAL_FEED:Lcom/transsion/shorttv_pugc/base/exposure/ExposureType;

    iput-object p1, p0, Lfs/b;->e:Lcom/transsion/shorttv_pugc/base/exposure/ExposureType;

    .line 7
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lfs/b;->h:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(FLfs/a;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfs/b;-><init>(FLfs/a;Z)V

    return-void
.end method

.method private final d(Landroid/view/View;)Z
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
    iget v4, p0, Lfs/b;->d:I

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
    iget p1, p0, Lfs/b;->a:F

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
    iget p1, p0, Lfs/b;->a:F

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
    iget p1, p0, Lfs/b;->a:F

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

.method private final f(III)V
    .locals 6

    .line 1
    if-ltz p2, :cond_1

    .line 2
    .line 3
    if-ge p3, p1, :cond_1

    .line 4
    .line 5
    if-gt p2, p3, :cond_1

    .line 6
    .line 7
    if-gt p2, p3, :cond_1

    .line 8
    .line 9
    :goto_0
    iget-object p1, p0, Lfs/b;->h:Landroid/util/SparseArray;

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
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 19
    .line 20
    sget-object v1, Lfs/b;->j:Ljava/lang/String;

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "offer position  "

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const/4 v4, 0x4

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lfs/b;->h:Landroid/util/SparseArray;

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    if-eq p2, p3, :cond_1

    .line 59
    .line 60
    add-int/lit8 p2, p2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method public static synthetic h(Lfs/b;Landroidx/recyclerview/widget/LinearLayoutManager;IZZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1, p2, p3, p4}, Lfs/b;->g(Landroidx/recyclerview/widget/LinearLayoutManager;IZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final j(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lfs/b;->h:Landroid/util/SparseArray;

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
    iget-object v2, p0, Lfs/b;->h:Landroid/util/SparseArray;

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
    iget-object v4, p0, Lfs/b;->h:Landroid/util/SparseArray;

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
    sget-object v3, Lfs/b;->j:Ljava/lang/String;

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
    iget-object v2, p0, Lfs/b;->b:Lfs/a;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-interface {v2, p1, v0, v1, v3}, Lfs/a;->a(IJLandroid/view/View;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method private final k(III)V
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
    invoke-direct {p0, p3}, Lfs/b;->j(I)V

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
.method public final e()V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lfs/b;->h:Landroid/util/SparseArray;

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
    sget-object v9, Lfs/b;->j:Ljava/lang/String;

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
    iget-object v8, p0, Lfs/b;->b:Lfs/a;

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    invoke-interface {v8, v5, v6, v7, v9}, Lfs/a;->a(IJLandroid/view/View;)V

    .line 73
    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lfs/b;->h:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final g(Landroidx/recyclerview/widget/LinearLayoutManager;IZZ)V
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
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

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
    invoke-direct {p0, p1, p2, p2}, Lfs/b;->f(III)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-direct {p0, p3}, Lfs/b;->d(Landroid/view/View;)Z

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 27
    .line 28
    sget-object v1, Lfs/b;->j:Ljava/lang/String;

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
    invoke-direct {p0, p1, p2, p2}, Lfs/b;->f(III)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method public final i(Landroidx/recyclerview/widget/LinearLayoutManager;Z)V
    .locals 4

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {p0, v2}, Lfs/b;->d(Landroid/view/View;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    iget-object v2, p0, Lfs/b;->e:Lcom/transsion/shorttv_pugc/base/exposure/ExposureType;

    .line 25
    .line 26
    sget-object v3, Lcom/transsion/shorttv_pugc/base/exposure/ExposureType;->NEST_HORIZONTAL:Lcom/transsion/shorttv_pugc/base/exposure/ExposureType;

    .line 27
    .line 28
    if-ne v2, v3, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {p0, v2}, Lfs/b;->d(Landroid/view/View;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    iget-object v2, p0, Lfs/b;->e:Lcom/transsion/shorttv_pugc/base/exposure/ExposureType;

    .line 44
    .line 45
    sget-object v3, Lcom/transsion/shorttv_pugc/base/exposure/ExposureType;->NEST_HORIZONTAL:Lcom/transsion/shorttv_pugc/base/exposure/ExposureType;

    .line 46
    .line 47
    if-ne v2, v3, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 51
    .line 52
    :cond_3
    :goto_1
    iget v2, p0, Lfs/b;->f:I

    .line 53
    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    iget v2, p0, Lfs/b;->g:I

    .line 57
    .line 58
    if-nez v2, :cond_4

    .line 59
    .line 60
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-direct {p0, p1, v0, v1}, Lfs/b;->f(III)V

    .line 65
    .line 66
    .line 67
    iput v0, p0, Lfs/b;->f:I

    .line 68
    .line 69
    iput v1, p0, Lfs/b;->g:I

    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    if-eqz p2, :cond_5

    .line 73
    .line 74
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    iget v2, p0, Lfs/b;->f:I

    .line 79
    .line 80
    add-int/lit8 v3, v0, -0x1

    .line 81
    .line 82
    invoke-direct {p0, p2, v2, v3}, Lfs/b;->k(III)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    iget p2, p0, Lfs/b;->g:I

    .line 90
    .line 91
    add-int/lit8 p2, p2, 0x1

    .line 92
    .line 93
    invoke-direct {p0, p1, p2, v1}, Lfs/b;->f(III)V

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    add-int/lit8 v2, v1, 0x1

    .line 102
    .line 103
    iget v3, p0, Lfs/b;->g:I

    .line 104
    .line 105
    invoke-direct {p0, p2, v2, v3}, Lfs/b;->k(III)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$m;->getItemCount()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    iget p2, p0, Lfs/b;->f:I

    .line 113
    .line 114
    add-int/lit8 p2, p2, -0x1

    .line 115
    .line 116
    invoke-direct {p0, p1, v0, p2}, Lfs/b;->f(III)V

    .line 117
    .line 118
    .line 119
    :goto_2
    iput v0, p0, Lfs/b;->f:I

    .line 120
    .line 121
    iput v1, p0, Lfs/b;->g:I

    .line 122
    .line 123
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
    sget-object v2, Lfs/b;->j:Ljava/lang/String;

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
    move-result-object v0

    .line 13
    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$m;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v0, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    .line 23
    .line 24
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    const/4 v2, 0x1

    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    if-lez p3, :cond_2

    .line 38
    .line 39
    :goto_0
    move v1, v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    if-lez p2, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    :goto_1
    invoke-virtual {p0, p1, v1}, Lfs/b;->i(Landroidx/recyclerview/widget/LinearLayoutManager;Z)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
