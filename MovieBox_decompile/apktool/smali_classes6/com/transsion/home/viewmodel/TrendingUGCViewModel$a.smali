.class public final Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/home/viewmodel/TrendingUGCViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Application;)Lcom/transsion/home/viewmodel/TrendingUGCViewModel;
    .locals 1

    .line 1
    const-string v0, "application"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->k()Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Landroidx/lifecycle/v0$a;->e:Landroidx/lifecycle/v0$a$b;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Landroidx/lifecycle/v0$a$b;->a(Landroid/app/Application;)Landroidx/lifecycle/v0$a;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-class v0, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/lifecycle/v0$a;->create(Ljava/lang/Class;)Landroidx/lifecycle/t0;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->o(Lcom/transsion/home/viewmodel/TrendingUGCViewModel;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {}, Lcom/transsion/home/viewmodel/TrendingUGCViewModel;->k()Lcom/transsion/home/viewmodel/TrendingUGCViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1
.end method
