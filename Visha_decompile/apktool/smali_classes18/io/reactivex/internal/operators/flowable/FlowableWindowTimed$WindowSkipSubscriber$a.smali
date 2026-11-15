.class public final Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/reactivex/processors/UnicastProcessor;

.field public final b:Z


# direct methods
.method public constructor <init>(Lio/reactivex/processors/UnicastProcessor;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$a;->a:Lio/reactivex/processors/UnicastProcessor;

    iput-boolean p2, p0, Lio/reactivex/internal/operators/flowable/FlowableWindowTimed$WindowSkipSubscriber$a;->b:Z

    return-void
.end method
