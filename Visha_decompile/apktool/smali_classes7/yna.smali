.class public final synthetic Lyna;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;


# direct methods
.method public synthetic constructor <init>(Lorg/apache/commons/lang3/concurrent/TimedSemaphore;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyna;->b:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lyna;->b:Lorg/apache/commons/lang3/concurrent/TimedSemaphore;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/concurrent/TimedSemaphore;->endOfPeriod()V

    return-void
.end method
