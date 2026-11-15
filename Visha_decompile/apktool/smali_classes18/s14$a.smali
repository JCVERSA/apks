.class public final Ls14$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly14;
.implements Lrc2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Lk96;

.field public final c:J

.field public d:Lf2a;

.field public e:J

.field public f:Z


# direct methods
.method public constructor <init>(Lk96;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls14$a;->b:Lk96;

    iput-wide p2, p0, Ls14$a;->c:J

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Ls14$a;->d:Lf2a;

    invoke-interface {v0}, Lf2a;->cancel()V

    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Ls14$a;->d:Lf2a;

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    iget-object p0, p0, Ls14$a;->d:Lf2a;

    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onComplete()V
    .locals 1

    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Ls14$a;->d:Lf2a;

    iget-boolean v0, p0, Ls14$a;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls14$a;->f:Z

    iget-object p0, p0, Ls14$a;->b:Lk96;

    invoke-interface {p0}, Lk96;->onComplete()V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Ls14$a;->f:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lyw8;->s(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ls14$a;->f:Z

    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Ls14$a;->d:Lf2a;

    iget-object p0, p0, Ls14$a;->b:Lk96;

    invoke-interface {p0, p1}, Lk96;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Ls14$a;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Ls14$a;->e:J

    iget-wide v2, p0, Ls14$a;->c:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ls14$a;->f:Z

    iget-object v0, p0, Ls14$a;->d:Lf2a;

    invoke-interface {v0}, Lf2a;->cancel()V

    sget-object v0, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->CANCELLED:Lio/reactivex/internal/subscriptions/SubscriptionHelper;

    iput-object v0, p0, Ls14$a;->d:Lf2a;

    iget-object p0, p0, Ls14$a;->b:Lk96;

    invoke-interface {p0, p1}, Lk96;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ls14$a;->e:J

    return-void
.end method

.method public onSubscribe(Lf2a;)V
    .locals 2

    iget-object v0, p0, Ls14$a;->d:Lf2a;

    invoke-static {v0, p1}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(Lf2a;Lf2a;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Ls14$a;->d:Lf2a;

    iget-object v0, p0, Ls14$a;->b:Lk96;

    invoke-interface {v0, p0}, Lk96;->onSubscribe(Lrc2;)V

    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lf2a;->request(J)V

    :cond_0
    return-void
.end method
