.class public abstract Lcom/google/common/util/concurrent/ListenerCallQueue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/ListenerCallQueue$PerListenerQueue;,
        Lcom/google/common/util/concurrent/ListenerCallQueue$a;
    }
.end annotation


# static fields
.field public static final a:Lkj5;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkj5;

    const-class v1, Lcom/google/common/util/concurrent/ListenerCallQueue;

    invoke-direct {v0, v1}, Lkj5;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/common/util/concurrent/ListenerCallQueue;->a:Lkj5;

    return-void
.end method

.method public static synthetic a()Lkj5;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/ListenerCallQueue;->a:Lkj5;

    return-object v0
.end method
