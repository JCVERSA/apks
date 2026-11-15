.class abstract Lio/reactivex/rxjava3/internal/operators/flowable/a;
.super Lio/reactivex/rxjava3/core/e;
.source "source.java"


# instance fields
.field protected final b:Lio/reactivex/rxjava3/core/e;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "source is null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/a;->b:Lio/reactivex/rxjava3/core/e;

    .line 10
    .line 11
    return-void
.end method
