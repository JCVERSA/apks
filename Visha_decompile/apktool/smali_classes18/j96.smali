.class public final Lj96;
.super Lb96;
.source "SourceFile"

# interfaces
.implements Lm19;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lb96;-><init>()V

    iput-object p1, p0, Lj96;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj96;->b:Ljava/lang/Object;

    return-object p0
.end method

.method public j(Lk96;)V
    .locals 1

    invoke-static {}, Lio/reactivex/disposables/a;->a()Lrc2;

    move-result-object v0

    invoke-interface {p1, v0}, Lk96;->onSubscribe(Lrc2;)V

    iget-object p0, p0, Lj96;->b:Ljava/lang/Object;

    invoke-interface {p1, p0}, Lk96;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
