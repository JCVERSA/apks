.class Landroidx/core/view/WindowInsetsCompat$f;
.super Landroidx/core/view/WindowInsetsCompat$l;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field private static i:Z = false

.field private static j:Ljava/lang/reflect/Method;

.field private static k:Ljava/lang/Class;

.field private static l:Ljava/lang/reflect/Field;

.field private static m:Ljava/lang/reflect/Field;


# instance fields
.field final c:Landroid/view/WindowInsets;

.field private d:[Lz0/c;

.field private e:Lz0/c;

.field private f:Landroidx/core/view/WindowInsetsCompat;

.field g:Lz0/c;

.field h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$l;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->e:Lz0/c;

    .line 3
    iput-object p2, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;Landroidx/core/view/WindowInsetsCompat$f;)V
    .locals 1

    .line 4
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$f;-><init>(Landroidx/core/view/WindowInsetsCompat;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private static B()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    const-class v1, Landroid/view/View;

    .line 3
    .line 4
    const-string v2, "getViewRootImpl"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    sput-object v1, Landroidx/core/view/WindowInsetsCompat$f;->j:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    const-string v1, "android.view.View$AttachInfo"

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sput-object v1, Landroidx/core/view/WindowInsetsCompat$f;->k:Ljava/lang/Class;

    .line 20
    .line 21
    const-string v2, "mVisibleInsets"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Landroidx/core/view/WindowInsetsCompat$f;->l:Ljava/lang/reflect/Field;

    .line 28
    .line 29
    const-string v1, "android.view.ViewRootImpl"

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "mAttachInfo"

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Landroidx/core/view/WindowInsetsCompat$f;->m:Ljava/lang/reflect/Field;

    .line 42
    .line 43
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$f;->l:Ljava/lang/reflect/Field;

    .line 44
    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 46
    .line 47
    .line 48
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$f;->m:Ljava/lang/reflect/Field;

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v3, "Failed to get visible insets. (Reflection error). "

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    const-string v3, "WindowInsetsCompat"

    .line 77
    .line 78
    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    .line 80
    .line 81
    :goto_0
    sput-boolean v0, Landroidx/core/view/WindowInsetsCompat$f;->i:Z

    .line 82
    .line 83
    return-void
.end method

.method static C(II)Z
    .locals 0

    .line 1
    and-int/lit8 p0, p0, 0x6

    .line 2
    .line 3
    and-int/lit8 p1, p1, 0x6

    .line 4
    .line 5
    if-ne p0, p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method private w(IZ)Lz0/c;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    sget-object v0, Lz0/c;->e:Lz0/c;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    :goto_0
    const/16 v2, 0x200

    .line 5
    .line 6
    if-gt v1, v2, :cond_1

    .line 7
    .line 8
    and-int v2, p1, v1

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p0, v1, p2}, Landroidx/core/view/WindowInsetsCompat$f;->x(IZ)Lz0/c;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v0, v2}, Lz0/c;->a(Lz0/c;Lz0/c;)Lz0/c;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-object v0
.end method

.method private y()Lz0/c;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->f:Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat;->getStableInsets()Lz0/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, Lz0/c;->e:Lz0/c;

    .line 11
    .line 12
    return-object v0
.end method

.method private z(Landroid/view/View;)Lz0/c;
    .locals 4

    .line 1
    const-string v0, "WindowInsetsCompat"

    .line 2
    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v2, 0x1e

    .line 6
    .line 7
    if-ge v1, v2, :cond_5

    .line 8
    .line 9
    sget-boolean v1, Landroidx/core/view/WindowInsetsCompat$f;->i:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$f;->B()V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$f;->j:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    if-eqz v1, :cond_4

    .line 20
    .line 21
    sget-object v3, Landroidx/core/view/WindowInsetsCompat$f;->k:Ljava/lang/Class;

    .line 22
    .line 23
    if-eqz v3, :cond_4

    .line 24
    .line 25
    sget-object v3, Landroidx/core/view/WindowInsetsCompat$f;->l:Ljava/lang/reflect/Field;

    .line 26
    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_2

    .line 35
    .line 36
    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    .line 37
    .line 38
    new-instance v1, Ljava/lang/NullPointerException;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    .line 45
    .line 46
    return-object v2

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$f;->m:Ljava/lang/reflect/Field;

    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$f;->l:Ljava/lang/reflect/Field;

    .line 56
    .line 57
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroid/graphics/Rect;

    .line 62
    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-static {p1}, Lz0/c;->d(Landroid/graphics/Rect;)Lz0/c;

    .line 66
    .line 67
    .line 68
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_3
    return-object v2

    .line 70
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v3, "Failed to get visible insets. (Reflection error). "

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .line 93
    .line 94
    :cond_4
    :goto_1
    return-object v2

    .line 95
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 96
    .line 97
    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    .line 98
    .line 99
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw p1
.end method


# virtual methods
.method protected A(I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p1, v1, :cond_1

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p1, v2, :cond_1

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq p1, v2, :cond_0

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    if-eq p1, v2, :cond_1

    .line 14
    .line 15
    const/16 v2, 0x80

    .line 16
    .line 17
    if-eq p1, v2, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_0
    return v0

    .line 21
    :cond_1
    invoke-virtual {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$f;->x(IZ)Lz0/c;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget-object v0, Lz0/c;->e:Lz0/c;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lz0/c;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    xor-int/2addr p1, v1

    .line 32
    return p1
.end method

.method d(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$f;->z(Landroid/view/View;)Lz0/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lz0/c;->e:Lz0/c;

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/core/view/WindowInsetsCompat$f;->s(Lz0/c;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method e(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->f:Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->setRootWindowInsets(Landroidx/core/view/WindowInsetsCompat;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->g:Lz0/c;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->setRootViewData(Lz0/c;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->h:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->setSystemUiVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/core/view/WindowInsetsCompat$l;->equals(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    check-cast p1, Landroidx/core/view/WindowInsetsCompat$f;

    .line 10
    .line 11
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->g:Lz0/c;

    .line 12
    .line 13
    iget-object v2, p1, Landroidx/core/view/WindowInsetsCompat$f;->g:Lz0/c;

    .line 14
    .line 15
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->h:I

    .line 22
    .line 23
    iget p1, p1, Landroidx/core/view/WindowInsetsCompat$f;->h:I

    .line 24
    .line 25
    invoke-static {v0, p1}, Landroidx/core/view/WindowInsetsCompat$f;->C(II)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    :cond_1
    return v1
.end method

.method public g(I)Lz0/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$f;->w(IZ)Lz0/c;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public h(I)Lz0/c;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/core/view/WindowInsetsCompat$f;->w(IZ)Lz0/c;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method final l()Lz0/c;
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->e:Lz0/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v3, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-static {v0, v1, v2, v3}, Lz0/c;->c(IIII)Lz0/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->e:Lz0/c;

    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->e:Lz0/c;

    .line 36
    .line 37
    return-object v0
.end method

.method n(IIII)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    new-instance v0, Landroidx/core/view/WindowInsetsCompat$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    .line 4
    .line 5
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$f;->l()Lz0/c;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Lz0/c;IIII)Lz0/c;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setSystemWindowInsets(Lz0/c;)Landroidx/core/view/WindowInsetsCompat$Builder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->j()Lz0/c;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1, p1, p2, p3, p4}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Lz0/c;IIII)Lz0/c;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Landroidx/core/view/WindowInsetsCompat$Builder;->setStableInsets(Lz0/c;)Landroidx/core/view/WindowInsetsCompat$Builder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Builder;->build()Landroidx/core/view/WindowInsetsCompat;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$f;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method q(I)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/16 v2, 0x200

    .line 4
    .line 5
    if-gt v1, v2, :cond_2

    .line 6
    .line 7
    and-int v2, p1, v1

    .line 8
    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/core/view/WindowInsetsCompat$f;->A(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return p1

    .line 20
    :cond_1
    :goto_1
    shl-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    return v0
.end method

.method public r([Lz0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->d:[Lz0/c;

    .line 2
    .line 3
    return-void
.end method

.method s(Lz0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->g:Lz0/c;

    .line 2
    .line 3
    return-void
.end method

.method t(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->f:Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    return-void
.end method

.method v(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->h:I

    .line 2
    .line 3
    return-void
.end method

.method protected x(IZ)Lz0/c;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eq p1, v0, :cond_10

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq p1, v2, :cond_b

    .line 8
    .line 9
    const/16 p2, 0x8

    .line 10
    .line 11
    if-eq p1, p2, :cond_6

    .line 12
    .line 13
    const/16 p2, 0x10

    .line 14
    .line 15
    if-eq p1, p2, :cond_5

    .line 16
    .line 17
    const/16 p2, 0x20

    .line 18
    .line 19
    if-eq p1, p2, :cond_4

    .line 20
    .line 21
    const/16 p2, 0x40

    .line 22
    .line 23
    if-eq p1, p2, :cond_3

    .line 24
    .line 25
    const/16 p2, 0x80

    .line 26
    .line 27
    if-eq p1, p2, :cond_0

    .line 28
    .line 29
    sget-object p1, Lz0/c;->e:Lz0/c;

    .line 30
    .line 31
    return-object p1

    .line 32
    :cond_0
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->f:Landroidx/core/view/WindowInsetsCompat;

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->f()Landroidx/core/view/DisplayCutoutCompat;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    if-eqz p1, :cond_2

    .line 46
    .line 47
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetLeft()I

    .line 48
    .line 49
    .line 50
    move-result p2

    .line 51
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetTop()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetRight()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p1}, Landroidx/core/view/DisplayCutoutCompat;->getSafeInsetBottom()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    invoke-static {p2, v0, v1, p1}, Lz0/c;->c(IIII)Lz0/c;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    return-object p1

    .line 68
    :cond_2
    sget-object p1, Lz0/c;->e:Lz0/c;

    .line 69
    .line 70
    return-object p1

    .line 71
    :cond_3
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->m()Lz0/c;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1

    .line 76
    :cond_4
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->i()Lz0/c;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :cond_5
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->k()Lz0/c;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1

    .line 86
    :cond_6
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->d:[Lz0/c;

    .line 87
    .line 88
    if-eqz p1, :cond_7

    .line 89
    .line 90
    invoke-static {p2}, Landroidx/core/view/WindowInsetsCompat$Type;->indexOf(I)I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    aget-object v0, p1, p2

    .line 95
    .line 96
    :cond_7
    if-eqz v0, :cond_8

    .line 97
    .line 98
    return-object v0

    .line 99
    :cond_8
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$f;->l()Lz0/c;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$f;->y()Lz0/c;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    iget p1, p1, Lz0/c;->d:I

    .line 108
    .line 109
    iget v0, p2, Lz0/c;->d:I

    .line 110
    .line 111
    if-le p1, v0, :cond_9

    .line 112
    .line 113
    invoke-static {v1, v1, v1, p1}, Lz0/c;->c(IIII)Lz0/c;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    return-object p1

    .line 118
    :cond_9
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->g:Lz0/c;

    .line 119
    .line 120
    if-eqz p1, :cond_a

    .line 121
    .line 122
    sget-object v0, Lz0/c;->e:Lz0/c;

    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lz0/c;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-nez p1, :cond_a

    .line 129
    .line 130
    iget-object p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->g:Lz0/c;

    .line 131
    .line 132
    iget p1, p1, Lz0/c;->d:I

    .line 133
    .line 134
    iget p2, p2, Lz0/c;->d:I

    .line 135
    .line 136
    if-le p1, p2, :cond_a

    .line 137
    .line 138
    invoke-static {v1, v1, v1, p1}, Lz0/c;->c(IIII)Lz0/c;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    return-object p1

    .line 143
    :cond_a
    sget-object p1, Lz0/c;->e:Lz0/c;

    .line 144
    .line 145
    return-object p1

    .line 146
    :cond_b
    if-eqz p2, :cond_c

    .line 147
    .line 148
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$f;->y()Lz0/c;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$l;->j()Lz0/c;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    iget v0, p1, Lz0/c;->a:I

    .line 157
    .line 158
    iget v2, p2, Lz0/c;->a:I

    .line 159
    .line 160
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    iget v2, p1, Lz0/c;->c:I

    .line 165
    .line 166
    iget v3, p2, Lz0/c;->c:I

    .line 167
    .line 168
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    iget p1, p1, Lz0/c;->d:I

    .line 173
    .line 174
    iget p2, p2, Lz0/c;->d:I

    .line 175
    .line 176
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-static {v0, v1, v2, p1}, Lz0/c;->c(IIII)Lz0/c;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    return-object p1

    .line 185
    :cond_c
    iget p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->h:I

    .line 186
    .line 187
    and-int/2addr p1, v2

    .line 188
    if-eqz p1, :cond_d

    .line 189
    .line 190
    sget-object p1, Lz0/c;->e:Lz0/c;

    .line 191
    .line 192
    return-object p1

    .line 193
    :cond_d
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$f;->l()Lz0/c;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    iget-object p2, p0, Landroidx/core/view/WindowInsetsCompat$f;->f:Landroidx/core/view/WindowInsetsCompat;

    .line 198
    .line 199
    if-eqz p2, :cond_e

    .line 200
    .line 201
    invoke-virtual {p2}, Landroidx/core/view/WindowInsetsCompat;->getStableInsets()Lz0/c;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    :cond_e
    iget p2, p1, Lz0/c;->d:I

    .line 206
    .line 207
    if-eqz v0, :cond_f

    .line 208
    .line 209
    iget v0, v0, Lz0/c;->d:I

    .line 210
    .line 211
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 212
    .line 213
    .line 214
    move-result p2

    .line 215
    :cond_f
    iget v0, p1, Lz0/c;->a:I

    .line 216
    .line 217
    iget p1, p1, Lz0/c;->c:I

    .line 218
    .line 219
    invoke-static {v0, v1, p1, p2}, Lz0/c;->c(IIII)Lz0/c;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    return-object p1

    .line 224
    :cond_10
    if-eqz p2, :cond_11

    .line 225
    .line 226
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$f;->y()Lz0/c;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    iget p1, p1, Lz0/c;->b:I

    .line 231
    .line 232
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$f;->l()Lz0/c;

    .line 233
    .line 234
    .line 235
    move-result-object p2

    .line 236
    iget p2, p2, Lz0/c;->b:I

    .line 237
    .line 238
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    invoke-static {v1, p1, v1, v1}, Lz0/c;->c(IIII)Lz0/c;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    return-object p1

    .line 247
    :cond_11
    iget p1, p0, Landroidx/core/view/WindowInsetsCompat$f;->h:I

    .line 248
    .line 249
    and-int/lit8 p1, p1, 0x4

    .line 250
    .line 251
    if-eqz p1, :cond_12

    .line 252
    .line 253
    sget-object p1, Lz0/c;->e:Lz0/c;

    .line 254
    .line 255
    return-object p1

    .line 256
    :cond_12
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$f;->l()Lz0/c;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    iget p1, p1, Lz0/c;->b:I

    .line 261
    .line 262
    invoke-static {v1, p1, v1, v1}, Lz0/c;->c(IIII)Lz0/c;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    return-object p1
.end method
