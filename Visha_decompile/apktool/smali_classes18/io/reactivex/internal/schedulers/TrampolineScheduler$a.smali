.class public final Lio/reactivex/internal/schedulers/TrampolineScheduler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/Runnable;

.field public final c:J

.field public final d:I

.field public volatile e:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Long;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$a;->b:Ljava/lang/Runnable;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$a;->c:J

    iput p3, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$a;->d:I

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/internal/schedulers/TrampolineScheduler$a;)I
    .locals 4

    iget-wide v0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$a;->c:J

    iget-wide v2, p1, Lio/reactivex/internal/schedulers/TrampolineScheduler$a;->c:J

    invoke-static {v0, v1, v2, v3}, Lac7;->b(JJ)I

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lio/reactivex/internal/schedulers/TrampolineScheduler$a;->d:I

    iget p1, p1, Lio/reactivex/internal/schedulers/TrampolineScheduler$a;->d:I

    invoke-static {p0, p1}, Lac7;->a(II)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lio/reactivex/internal/schedulers/TrampolineScheduler$a;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/schedulers/TrampolineScheduler$a;->a(Lio/reactivex/internal/schedulers/TrampolineScheduler$a;)I

    move-result p0

    return p0
.end method
