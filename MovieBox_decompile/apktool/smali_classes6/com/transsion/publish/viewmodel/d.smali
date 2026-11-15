.class public final Lcom/transsion/publish/viewmodel/d;
.super Landroidx/lifecycle/b;
.source "source.java"


# instance fields
.field private final b:Lkotlin/Lazy;

.field private c:Landroidx/lifecycle/b0;

.field private final d:Landroidx/lifecycle/b0;


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
    new-instance p1, Lcom/transsion/publish/viewmodel/c;

    .line 10
    .line 11
    invoke-direct {p1}, Lcom/transsion/publish/viewmodel/c;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/transsion/publish/viewmodel/d;->b:Lkotlin/Lazy;

    .line 19
    .line 20
    new-instance p1, Landroidx/lifecycle/b0;

    .line 21
    .line 22
    invoke-direct {p1}, Landroidx/lifecycle/b0;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lcom/transsion/publish/viewmodel/d;->c:Landroidx/lifecycle/b0;

    .line 26
    .line 27
    new-instance p1, Landroidx/lifecycle/b0;

    .line 28
    .line 29
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-direct {p1, v0}, Landroidx/lifecycle/b0;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/transsion/publish/viewmodel/d;->d:Landroidx/lifecycle/b0;

    .line 35
    .line 36
    return-void
.end method

.method public static synthetic c()Loo/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsion/publish/viewmodel/d;->d()Loo/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static final d()Loo/b;
    .locals 1

    .line 1
    new-instance v0, Loo/b;

    .line 2
    .line 3
    invoke-direct {v0}, Loo/b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
