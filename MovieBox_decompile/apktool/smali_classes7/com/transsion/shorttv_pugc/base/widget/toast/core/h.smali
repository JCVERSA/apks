.class public final Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

.field private static b:Landroid/app/Application;

.field private static c:Los/b;

.field private static d:Los/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->a:Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

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

.method public static synthetic b(Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;Landroid/app/Application;Los/c;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->d:Los/c;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->a(Landroid/app/Application;Los/c;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;Los/c;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->b:Landroid/app/Application;

    .line 2
    .line 3
    sget-object p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->c:Los/b;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    new-instance p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;

    .line 8
    .line 9
    invoke-direct {p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/g;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->e(Los/b;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    if-nez p2, :cond_1

    .line 16
    .line 17
    new-instance p2, Lps/a;

    .line 18
    .line 19
    invoke-direct {p2}, Lps/a;-><init>()V

    .line 20
    .line 21
    .line 22
    :cond_1
    sget-object p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->a:Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;

    .line 23
    .line 24
    invoke-virtual {p1, p2}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->f(Los/c;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final c(III)V
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
    invoke-virtual/range {v0 .. v5}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->d(IIIFF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final d(IIIFF)V
    .locals 9

    .line 1
    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->c:Los/b;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v8, Lps/b;

    .line 7
    .line 8
    sget-object v2, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->d:Los/c;

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
    invoke-direct/range {v1 .. v7}, Lps/b;-><init>(Los/c;IIIFF)V

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v8}, Los/b;->b(Los/c;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final e(Los/b;)V
    .locals 1

    .line 1
    sput-object p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->c:Los/b;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->b:Landroid/app/Application;

    .line 7
    .line 8
    invoke-interface {p1, v0}, Los/b;->registerStrategy(Landroid/app/Application;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final f(Los/c;)V
    .locals 1

    .line 1
    sput-object p1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->d:Los/c;

    .line 2
    .line 3
    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->c:Los/b;

    .line 4
    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, p1}, Los/b;->b(Los/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final g(I)V
    .locals 2

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lps/c;

    .line 5
    .line 6
    sget-object v1, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->d:Los/c;

    .line 7
    .line 8
    invoke-direct {v0, p1, v1}, Lps/c;-><init>(ILos/c;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->f(Los/c;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final h(I)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->b:Landroid/app/Application;

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
    invoke-virtual {p0, v0}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->i(Ljava/lang/CharSequence;)V
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
    invoke-virtual {p0, p1}, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->i(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
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
    sget-object v0, Lcom/transsion/shorttv_pugc/base/widget/toast/core/h;->c:Los/b;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->e(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, p1}, Los/b;->a(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method
