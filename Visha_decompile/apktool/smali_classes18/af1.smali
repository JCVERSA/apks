.class public abstract Laf1;
.super Lmc7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmc7;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract n0(Lzf1;)V
.end method

.method public final o0()Laf1;
    .locals 1

    instance-of v0, p0, Lgd7;

    if-eqz v0, :cond_0

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;

    check-cast p0, Lgd7;

    invoke-interface {p0}, Lgd7;->b()Lld7;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservablePublishAlt;-><init>(Lld7;)V

    invoke-static {v0}, Lyw8;->l(Laf1;)Laf1;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public p0()Lmc7;
    .locals 1

    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableRefCount;

    invoke-virtual {p0}, Laf1;->o0()Laf1;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableRefCount;-><init>(Laf1;)V

    invoke-static {v0}, Lyw8;->o(Lmc7;)Lmc7;

    move-result-object p0

    return-object p0
.end method
