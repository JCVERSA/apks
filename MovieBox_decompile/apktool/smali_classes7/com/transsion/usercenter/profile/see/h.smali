.class public final Lcom/transsion/usercenter/profile/see/h;
.super Landroidx/lifecycle/b;
.source "source.java"


# instance fields
.field private final b:Lkotlin/Lazy;

.field private c:I

.field private d:I

.field private e:Ljava/util/ArrayList;

.field private final f:Landroidx/lifecycle/b0;

.field private final g:Landroidx/lifecycle/b0;

.field private final h:Landroidx/lifecycle/b0;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/lifecycle/b;-><init>(Landroid/app/Application;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 10
    .line 11
    new-instance v0, Lcom/transsion/usercenter/profile/see/g;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/transsion/usercenter/profile/see/g;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/h;->b:Lkotlin/Lazy;

    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/transsion/usercenter/profile/see/h;->c:I

    .line 24
    .line 25
    const/16 p1, 0xa

    .line 26
    .line 27
    iput p1, p0, Lcom/transsion/usercenter/profile/see/h;->d:I

    .line 28
    .line 29
    new-instance p1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/h;->e:Ljava/util/ArrayList;

    .line 35
    .line 36
    new-instance p1, Landroidx/lifecycle/b0;

    .line 37
    .line 38
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/h;->f:Landroidx/lifecycle/b0;

    .line 42
    .line 43
    new-instance p1, Landroidx/lifecycle/b0;

    .line 44
    .line 45
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/h;->g:Landroidx/lifecycle/b0;

    .line 49
    .line 50
    new-instance p1, Landroidx/lifecycle/b0;

    .line 51
    .line 52
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/transsion/usercenter/profile/see/h;->h:Landroidx/lifecycle/b0;

    .line 56
    .line 57
    return-void
.end method

.method public static synthetic c()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/usercenter/profile/see/h;->p()Lcom/transsion/usercenter/profile/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/transsion/usercenter/profile/see/h;J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/transsion/usercenter/profile/see/h;->j(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e(Lcom/transsion/usercenter/profile/see/h;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/see/h;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f(Lcom/transsion/usercenter/profile/see/h;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/see/h;->e:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g(Lcom/transsion/usercenter/profile/see/h;)Landroidx/lifecycle/b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/transsion/usercenter/profile/see/h;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lcom/transsion/usercenter/profile/see/h;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/usercenter/profile/see/h;->c:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i(Lcom/transsion/usercenter/profile/see/h;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/transsion/usercenter/profile/see/h;->d:I

    .line 2
    .line 3
    return-void
.end method

.method private final j(J)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsnet/downloader/viewmodel/a0;->a:Lcom/transsnet/downloader/viewmodel/a0;

    .line 2
    .line 3
    const/16 v1, 0x3e8

    .line 4
    .line 5
    int-to-long v1, v1

    .line 6
    mul-long/2addr p1, v1

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/transsnet/downloader/viewmodel/a0;->z(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method private final m()Lcom/transsion/usercenter/profile/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/h;->b:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/transsion/usercenter/profile/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final p()Lcom/transsion/usercenter/profile/b;
    .locals 2

    .line 1
    sget-object v0, Lkg/c;->e:Lkg/c$a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lkg/c$a;->a()Lkg/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Lcom/transsion/usercenter/profile/b;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lkg/c;->h(Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/transsion/usercenter/profile/b;

    .line 14
    .line 15
    return-object v0
.end method


# virtual methods
.method public final k()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/h;->h:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/h;->g:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final n()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/h;->f:Landroidx/lifecycle/b0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o(Ljava/lang/String;I)V
    .locals 9

    .line 1
    const-string v0, "userId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/transsion/usercenter/profile/see/h;->m()Lcom/transsion/usercenter/profile/b;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget v3, p0, Lcom/transsion/usercenter/profile/see/h;->c:I

    .line 11
    .line 12
    iget v4, p0, Lcom/transsion/usercenter/profile/see/h;->d:I

    .line 13
    .line 14
    const/16 v7, 0x10

    .line 15
    .line 16
    const/4 v8, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    move-object v2, p1

    .line 19
    move v5, p2

    .line 20
    invoke-static/range {v1 .. v8}, Lcom/transsion/usercenter/profile/b$a;->i(Lcom/transsion/usercenter/profile/b;Ljava/lang/String;IIILjava/lang/String;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/j;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p2, Lcom/transsion/usercenter/profile/see/h$a;

    .line 25
    .line 26
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/profile/see/h$a;-><init>(Lcom/transsion/usercenter/profile/see/h;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->n(Lyx/h;)Lio/reactivex/rxjava3/core/j;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    sget-object p2, Ldg/d;->a:Ldg/d;

    .line 34
    .line 35
    invoke-virtual {p2}, Ldg/d;->c()Lio/reactivex/rxjava3/core/n;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->f(Lio/reactivex/rxjava3/core/n;)Lio/reactivex/rxjava3/core/j;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    new-instance p2, Lcom/transsion/usercenter/profile/see/h$b;

    .line 44
    .line 45
    invoke-direct {p2, p0}, Lcom/transsion/usercenter/profile/see/h$b;-><init>(Lcom/transsion/usercenter/profile/see/h;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public final q(Ljava/lang/String;I)V
    .locals 1

    .line 1
    const-string v0, "userId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/transsion/usercenter/profile/see/h;->c:I

    .line 8
    .line 9
    const/16 v0, 0xa

    .line 10
    .line 11
    iput v0, p0, Lcom/transsion/usercenter/profile/see/h;->d:I

    .line 12
    .line 13
    iget-object v0, p0, Lcom/transsion/usercenter/profile/see/h;->e:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/transsion/usercenter/profile/see/h;->o(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
