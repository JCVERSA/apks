.class final Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final observer:Lk96;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk96;"
        }
    .end annotation
.end field

.field final source:Ll96;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ll96;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk96;Ll96;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lk96;",
            "Ll96;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->observer:Lk96;

    iput-object p2, p0, Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->source:Ll96;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->source:Ll96;

    iget-object p0, p0, Lio/reactivex/internal/operators/maybe/MaybeSubscribeOn$SubscribeTask;->observer:Lk96;

    invoke-interface {v0, p0}, Ll96;->a(Lk96;)V

    return-void
.end method
