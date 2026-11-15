.class final Lj00/a;
.super Lio/reactivex/rxjava3/core/j;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj00/a$a;
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/rxjava3/core/j;


# direct methods
.method constructor <init>(Lio/reactivex/rxjava3/core/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/j;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj00/a;->a:Lio/reactivex/rxjava3/core/j;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected D(Lio/reactivex/rxjava3/core/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lj00/a;->a:Lio/reactivex/rxjava3/core/j;

    .line 2
    .line 3
    new-instance v1, Lj00/a$a;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lj00/a$a;-><init>(Lio/reactivex/rxjava3/core/o;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/j;->subscribe(Lio/reactivex/rxjava3/core/o;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
