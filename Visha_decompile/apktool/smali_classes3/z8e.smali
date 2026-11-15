.class public final synthetic Lz8e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpe7;


# instance fields
.field public final synthetic a:Liw8;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public synthetic constructor <init>(Liw8;Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz8e;->a:Liw8;

    iput-object p2, p0, Lz8e;->b:Ljava/lang/String;

    iput-object p3, p0, Lz8e;->c:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method


# virtual methods
.method public final onComplete(Lxda;)V
    .locals 2

    iget-object v0, p0, Lz8e;->a:Liw8;

    iget-object v1, p0, Lz8e;->b:Ljava/lang/String;

    iget-object p0, p0, Lz8e;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v0, v1, p0, p1}, Liw8;->h(Ljava/lang/String;Ljava/util/concurrent/ScheduledFuture;Lxda;)V

    return-void
.end method
