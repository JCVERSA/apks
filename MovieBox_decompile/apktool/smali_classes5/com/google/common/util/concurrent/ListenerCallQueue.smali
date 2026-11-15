.class abstract Lcom/google/common/util/concurrent/ListenerCallQueue;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;,
        Lcom/google/common/util/concurrent/ListenerCallQueue$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/util/concurrent/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/q;

    .line 2
    .line 3
    const-class v1, Lcom/google/common/util/concurrent/ListenerCallQueue;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/common/util/concurrent/q;-><init>(Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/common/util/concurrent/ListenerCallQueue;->a:Lcom/google/common/util/concurrent/q;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a()Lcom/google/common/util/concurrent/q;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/ListenerCallQueue;->a:Lcom/google/common/util/concurrent/q;

    .line 2
    .line 3
    return-object v0
.end method
