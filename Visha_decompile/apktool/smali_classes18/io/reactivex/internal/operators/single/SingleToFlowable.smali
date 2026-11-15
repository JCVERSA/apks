.class public final Lio/reactivex/internal/operators/single/SingleToFlowable;
.super Lr14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleToFlowable$SingleToFlowableObserver;
    }
.end annotation


# instance fields
.field public final c:Lmn9;


# direct methods
.method public constructor <init>(Lmn9;)V
    .locals 0

    invoke-direct {p0}, Lr14;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleToFlowable;->c:Lmn9;

    return-void
.end method


# virtual methods
.method public q(Ld2a;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/single/SingleToFlowable;->c:Lmn9;

    new-instance v0, Lio/reactivex/internal/operators/single/SingleToFlowable$SingleToFlowableObserver;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/single/SingleToFlowable$SingleToFlowableObserver;-><init>(Ld2a;)V

    invoke-interface {p0, v0}, Lmn9;->a(Lin9;)V

    return-void
.end method
