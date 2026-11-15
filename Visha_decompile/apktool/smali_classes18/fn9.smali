.class public final Lfn9;
.super Lxm9;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lfn9;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 1

    invoke-static {}, Lio/reactivex/disposables/a;->a()Lrc2;

    move-result-object v0

    invoke-interface {p1, v0}, Lin9;->onSubscribe(Lrc2;)V

    iget-object p0, p0, Lfn9;->a:Ljava/lang/Object;

    invoke-interface {p1, p0}, Lin9;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
