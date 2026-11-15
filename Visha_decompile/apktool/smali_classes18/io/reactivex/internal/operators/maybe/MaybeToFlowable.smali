.class public final Lio/reactivex/internal/operators/maybe/MaybeToFlowable;
.super Lr14;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/maybe/MaybeToFlowable$MaybeToFlowableSubscriber;
    }
.end annotation


# instance fields
.field public final c:Ll96;


# direct methods
.method public constructor <init>(Ll96;)V
    .locals 0

    invoke-direct {p0}, Lr14;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;->c:Ll96;

    return-void
.end method


# virtual methods
.method public q(Ld2a;)V
    .locals 1

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable;->c:Ll96;

    new-instance v0, Lio/reactivex/internal/operators/maybe/MaybeToFlowable$MaybeToFlowableSubscriber;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/maybe/MaybeToFlowable$MaybeToFlowableSubscriber;-><init>(Ld2a;)V

    invoke-interface {p0, v0}, Ll96;->a(Lk96;)V

    return-void
.end method
