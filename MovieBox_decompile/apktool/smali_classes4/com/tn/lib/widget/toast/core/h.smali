.class public final Lcom/tn/lib/widget/toast/core/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/tn/lib/widget/toast/core/h;

.field private static b:Landroid/app/Application;

.field private static c:Lgh/b;

.field private static d:Lgh/c;

.field private static e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/tn/lib/widget/toast/core/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tn/lib/widget/toast/core/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/tn/lib/widget/toast/core/h;Landroid/app/Application;Lgh/c;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/tn/lib/widget/toast/core/h;->d:Lgh/c;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tn/lib/widget/toast/core/h;->b(Landroid/app/Application;Lgh/c;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final d()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->e:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->b:Landroid/app/Application;

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 15
    .line 16
    and-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/tn/lib/widget/toast/core/h;->e:Ljava/lang/Boolean;

    .line 28
    .line 29
    :cond_1
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->e:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tn/lib/widget/toast/core/h;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final b(Landroid/app/Application;Lgh/c;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/tn/lib/widget/toast/core/h;->b:Landroid/app/Application;

    .line 2
    .line 3
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->c:Lgh/b;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/tn/lib/widget/toast/core/g;

    .line 8
    .line 9
    invoke-direct {p1}, Lcom/tn/lib/widget/toast/core/g;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->h(Lgh/b;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    new-instance p2, Lhh/a;

    .line 18
    .line 19
    invoke-direct {p2}, Lhh/a;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_1
    sget-object p1, Lcom/tn/lib/widget/toast/core/h;->a:Lcom/tn/lib/widget/toast/core/h;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/tn/lib/widget/toast/core/h;->i(Lgh/c;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/tn/lib/widget/toast/core/h;->f(III)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final f(III)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    const/4 v5, 0x0

    .line 3
    move-object v0, p0

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/tn/lib/widget/toast/core/h;->g(IIIFF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final g(IIIFF)V
    .locals 9

    .line 1
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->c:Lgh/b;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v8, Lhh/b;

    .line 7
    .line 8
    sget-object v2, Lcom/tn/lib/widget/toast/core/h;->d:Lgh/c;

    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v8

    .line 14
    move v3, p1

    .line 15
    move v4, p2

    .line 16
    move v5, p3

    .line 17
    move v6, p4

    .line 18
    move v7, p5

    .line 19
    invoke-direct/range {v1 .. v7}, Lhh/b;-><init>(Lgh/c;IIIFF)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v8}, Lgh/b;->b(Lgh/c;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final h(Lgh/b;)V
    .locals 1

    .line 1
    sput-object p1, Lcom/tn/lib/widget/toast/core/h;->c:Lgh/b;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->b:Landroid/app/Application;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Lgh/b;->registerStrategy(Landroid/app/Application;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final i(Lgh/c;)V
    .locals 1

    .line 1
    sput-object p1, Lcom/tn/lib/widget/toast/core/h;->d:Lgh/c;

    .line 2
    .line 3
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->c:Lgh/b;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Lgh/b;->b(Lgh/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final j(I)V
    .locals 2

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lhh/c;

    .line 5
    .line 6
    sget-object v1, Lcom/tn/lib/widget/toast/core/h;->d:Lgh/c;

    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Lhh/c;-><init>(ILgh/c;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/tn/lib/widget/toast/core/h;->i(Lgh/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k(I)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->b:Landroid/app/Application;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/tn/lib/widget/toast/core/h;->l(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/tn/lib/widget/toast/core/h;->c:Lgh/b;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Lgh/b;->a(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method
