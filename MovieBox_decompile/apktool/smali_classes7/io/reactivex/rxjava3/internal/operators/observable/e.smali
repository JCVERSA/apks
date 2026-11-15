.class public final Lio/reactivex/rxjava3/internal/operators/observable/e;
.super Lio/reactivex/rxjava3/core/j;
.source "source.java"

# interfaces
.implements Lio/reactivex/rxjava3/operators/e;


# static fields
.field public static final a:Lio/reactivex/rxjava3/core/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/reactivex/rxjava3/internal/operators/observable/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/operators/observable/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/reactivex/rxjava3/internal/operators/observable/e;->a:Lio/reactivex/rxjava3/core/j;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/j;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->complete(Lio/reactivex/rxjava3/core/o;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
