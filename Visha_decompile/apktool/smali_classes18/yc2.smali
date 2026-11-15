.class public final Lyc2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Future;


# instance fields
.field public final b:Lrc2;


# direct methods
.method public constructor <init>(Lrc2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc2;->b:Lrc2;

    return-void
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 0

    iget-object p0, p0, Lyc2;->b:Lrc2;

    invoke-interface {p0}, Lrc2;->dispose()V

    const/4 p0, 0x0

    return p0
.end method

.method public get()Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p0, 0x0

    return-object p0
.end method

.method public get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public isCancelled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDone()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
