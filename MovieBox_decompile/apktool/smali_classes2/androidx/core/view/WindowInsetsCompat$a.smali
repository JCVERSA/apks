.class Landroidx/core/view/WindowInsetsCompat$a;
.super Landroidx/core/view/WindowInsetsCompat$e;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/view/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static e:Ljava/lang/reflect/Field; = null

.field private static f:Z = false

.field private static g:Ljava/lang/reflect/Constructor; = null

.field private static h:Z = false


# instance fields
.field private c:Landroid/view/WindowInsets;

.field private d:Lz0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/core/view/WindowInsetsCompat$e;-><init>()V

    .line 2
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$a;->l()Landroid/view/WindowInsets;

    move-result-object v0

    iput-object v0, p0, Landroidx/core/view/WindowInsetsCompat$a;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Landroidx/core/view/WindowInsetsCompat;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroidx/core/view/WindowInsetsCompat$e;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    .line 4
    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$a;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method private static l()Landroid/view/WindowInsets;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    sget-boolean v1, Landroidx/core/view/WindowInsetsCompat$a;->f:Z

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const-class v3, Landroid/view/WindowInsets;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_0
    const-string v1, "CONSUMED"

    .line 10
    .line 11
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    sput-object v1, Landroidx/core/view/WindowInsetsCompat$a;->e:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    :catch_0
    sput-boolean v2, Landroidx/core/view/WindowInsetsCompat$a;->f:Z

    .line 18
    .line 19
    :cond_0
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$a;->e:Ljava/lang/reflect/Field;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Landroid/view/WindowInsets;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    new-instance v5, Landroid/view/WindowInsets;

    .line 33
    .line 34
    invoke-direct {v5, v1}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    .line 36
    .line 37
    return-object v5

    .line 38
    :catch_1
    :cond_1
    sget-boolean v1, Landroidx/core/view/WindowInsetsCompat$a;->h:Z

    .line 39
    .line 40
    if-nez v1, :cond_2

    .line 41
    .line 42
    :try_start_2
    new-array v1, v2, [Ljava/lang/Class;

    .line 43
    .line 44
    const-class v5, Landroid/graphics/Rect;

    .line 45
    .line 46
    aput-object v5, v1, v0

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sput-object v1, Landroidx/core/view/WindowInsetsCompat$a;->g:Ljava/lang/reflect/Constructor;
    :try_end_2
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_2 .. :try_end_2} :catch_2

    .line 53
    .line 54
    :catch_2
    sput-boolean v2, Landroidx/core/view/WindowInsetsCompat$a;->h:Z

    .line 55
    .line 56
    :cond_2
    sget-object v1, Landroidx/core/view/WindowInsetsCompat$a;->g:Ljava/lang/reflect/Constructor;

    .line 57
    .line 58
    if-eqz v1, :cond_3

    .line 59
    .line 60
    :try_start_3
    new-instance v3, Landroid/graphics/Rect;

    .line 61
    .line 62
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 63
    .line 64
    .line 65
    new-array v2, v2, [Ljava/lang/Object;

    .line 66
    .line 67
    aput-object v3, v2, v0

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroid/view/WindowInsets;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 74
    .line 75
    return-object v0

    .line 76
    :catch_3
    :cond_3
    return-object v4
.end method


# virtual methods
.method b()Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat$e;->a()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$a;->c:Landroid/view/WindowInsets;

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$e;->b:[Lz0/c;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setOverriddenInsets([Lz0/c;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Landroidx/core/view/WindowInsetsCompat$a;->d:Lz0/c;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat;->setStableInsets(Lz0/c;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method g(Lz0/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$a;->d:Lz0/c;

    .line 2
    .line 3
    return-void
.end method

.method i(Lz0/c;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/core/view/WindowInsetsCompat$a;->c:Landroid/view/WindowInsets;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p1, Lz0/c;->a:I

    .line 6
    .line 7
    iget v2, p1, Lz0/c;->b:I

    .line 8
    .line 9
    iget v3, p1, Lz0/c;->c:I

    .line 10
    .line 11
    iget p1, p1, Lz0/c;->d:I

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Landroidx/core/view/WindowInsetsCompat$a;->c:Landroid/view/WindowInsets;

    .line 18
    .line 19
    :cond_0
    return-void
.end method
