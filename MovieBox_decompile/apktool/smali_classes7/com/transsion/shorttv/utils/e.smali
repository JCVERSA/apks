.class public final Lcom/transsion/shorttv/utils/e;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/shorttv/utils/e$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/transsion/shorttv/utils/e$a;

.field private static final d:Lkotlin/Lazy;


# instance fields
.field private a:Ljava/util/List;

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsion/shorttv/utils/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsion/shorttv/utils/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsion/shorttv/utils/e;->c:Lcom/transsion/shorttv/utils/e$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsion/shorttv/utils/d;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsion/shorttv/utils/d;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsion/shorttv/utils/e;->d:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/transsion/shorttv/utils/e;->a:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a()Lcom/transsion/shorttv/utils/e;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/shorttv/utils/e;->g()Lcom/transsion/shorttv/utils/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/utils/e;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsion/shorttv/utils/e;->f(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/utils/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsion/shorttv/utils/e;->d:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final f(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/utils/e;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-eqz p0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    if-eqz p0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    invoke-static {p0}, Landroidx/core/view/d2;->a(Landroid/view/WindowInsets;)Landroid/graphics/Insets;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    :goto_0
    if-eqz p0, :cond_3

    .line 33
    .line 34
    invoke-static {p0}, Landroidx/appcompat/widget/x;->a(Landroid/graphics/Insets;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/high16 v1, 0x42200000    # 40.0f

    .line 39
    .line 40
    invoke-static {v1}, Lcom/blankj/utilcode/util/a0;->a(F)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-le v0, v1, :cond_2

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {p0}, Landroidx/appcompat/widget/x;->a(Landroid/graphics/Insets;)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    iput p0, p1, Lcom/transsion/shorttv/utils/e;->b:I

    .line 52
    .line 53
    sget-object v0, Lwf/a;->a:Lwf/a$a;

    .line 54
    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v1, "on get navigation gesture height = "

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/4 v4, 0x4

    .line 73
    const/4 v5, 0x0

    .line 74
    const-string v1, "ImmVideoHelper"

    .line 75
    .line 76
    const/4 v3, 0x0

    .line 77
    invoke-static/range {v0 .. v5}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    :goto_1
    sget-object v6, Lwf/a;->a:Lwf/a$a;

    .line 82
    .line 83
    const/4 v10, 0x4

    .line 84
    const/4 v11, 0x0

    .line 85
    const-string v7, "ImmVideoHelper"

    .line 86
    .line 87
    const-string v8, "is open navigation bar 2"

    .line 88
    .line 89
    const/4 v9, 0x0

    .line 90
    invoke-static/range {v6 .. v11}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method private static final g()Lcom/transsion/shorttv/utils/e;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv/utils/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv/utils/e;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final d()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/shorttv/utils/e;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Landroidx/fragment/app/FragmentActivity;)V
    .locals 9

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-ge v0, v1, :cond_0

    .line 12
    .line 13
    iput v2, p0, Lcom/transsion/shorttv/utils/e;->b:I

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/d;->a()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x32

    .line 21
    .line 22
    if-le v0, v1, :cond_1

    .line 23
    .line 24
    sget-object v3, Lwf/a;->a:Lwf/a$a;

    .line 25
    .line 26
    const/4 v7, 0x4

    .line 27
    const/4 v8, 0x0

    .line 28
    const-string v4, "ImmVideoHelper"

    .line 29
    .line 30
    const-string v5, "is open navigation bar"

    .line 31
    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-static/range {v3 .. v8}, Lwf/a$a;->f(Lwf/a$a;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    iput v2, p0, Lcom/transsion/shorttv/utils/e;->b:I

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_0
    if-eqz v0, :cond_3

    .line 52
    .line 53
    new-instance v1, Lcom/transsion/shorttv/utils/c;

    .line 54
    .line 55
    invoke-direct {v1, p1, p0}, Lcom/transsion/shorttv/utils/c;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/transsion/shorttv/utils/e;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method
