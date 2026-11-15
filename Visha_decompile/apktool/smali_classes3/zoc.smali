.class public final synthetic Lzoc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpe7;


# instance fields
.field public final synthetic a:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzoc;->a:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final onComplete(Lxda;)V
    .locals 0

    iget-object p0, p0, Lzoc;->a:Ljava/util/concurrent/ScheduledFuture;

    invoke-static {p0, p1}, Lcom/google/firebase/messaging/i$a;->a(Ljava/util/concurrent/ScheduledFuture;Lxda;)V

    return-void
.end method
