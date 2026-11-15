.class final Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnError;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleDelay$Delay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnError"
.end annotation


# instance fields
.field private final e:Ljava/lang/Throwable;

.field final synthetic this$1:Lio/reactivex/internal/operators/single/SingleDelay$Delay;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/single/SingleDelay$Delay;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleDelay$Delay$OnError;->e:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
