.class public final Lio/reactivex/internal/operators/single/a;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/a$a;
    }
.end annotation


# instance fields
.field public final a:Lmn9;

.field public final b:Lt74;


# direct methods
.method public constructor <init>(Lmn9;Lt74;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/a;->a:Lmn9;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/a;->b:Lt74;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 2

    iget-object v0, p0, Lio/reactivex/internal/operators/single/a;->a:Lmn9;

    new-instance v1, Lio/reactivex/internal/operators/single/a$a;

    iget-object p0, p0, Lio/reactivex/internal/operators/single/a;->b:Lt74;

    invoke-direct {v1, p1, p0}, Lio/reactivex/internal/operators/single/a$a;-><init>(Lin9;Lt74;)V

    invoke-interface {v0, v1}, Lmn9;->a(Lin9;)V

    return-void
.end method
