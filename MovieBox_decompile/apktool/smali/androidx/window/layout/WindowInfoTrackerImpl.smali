.class public final Landroidx/window/layout/WindowInfoTrackerImpl;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroidx/window/layout/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/layout/WindowInfoTrackerImpl$a;
    }
.end annotation


# static fields
.field public static final d:Landroidx/window/layout/WindowInfoTrackerImpl$a;


# instance fields
.field private final b:Landroidx/window/layout/c0;

.field private final c:Landroidx/window/layout/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/window/layout/WindowInfoTrackerImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/window/layout/WindowInfoTrackerImpl;->d:Landroidx/window/layout/WindowInfoTrackerImpl$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/window/layout/c0;Landroidx/window/layout/v;)V
    .locals 1

    .line 1
    const-string v0, "windowMetricsCalculator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "windowBackend"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/window/layout/WindowInfoTrackerImpl;->b:Landroidx/window/layout/c0;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/window/layout/WindowInfoTrackerImpl;->c:Landroidx/window/layout/v;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic b(Landroidx/window/layout/WindowInfoTrackerImpl;)Landroidx/window/layout/v;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/window/layout/WindowInfoTrackerImpl;->c:Landroidx/window/layout/v;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;)Lkotlinx/coroutines/flow/a;
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p0, p1, v1}, Landroidx/window/layout/WindowInfoTrackerImpl$windowLayoutInfo$1;-><init>(Landroidx/window/layout/WindowInfoTrackerImpl;Landroid/app/Activity;Lkotlin/coroutines/Continuation;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->r(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
