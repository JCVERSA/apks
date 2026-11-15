.class public final synthetic Ls72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La82$c;


# instance fields
.field public final synthetic a:Lz72;

.field public final synthetic b:Ljava/util/concurrent/Callable;

.field public final synthetic c:J

.field public final synthetic d:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(Lz72;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls72;->a:Lz72;

    iput-object p2, p0, Ls72;->b:Ljava/util/concurrent/Callable;

    iput-wide p3, p0, Ls72;->c:J

    iput-object p5, p0, Ls72;->d:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public final a(La82$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 6

    iget-object v0, p0, Ls72;->a:Lz72;

    iget-object v1, p0, Ls72;->b:Ljava/util/concurrent/Callable;

    iget-wide v2, p0, Ls72;->c:J

    iget-object v4, p0, Ls72;->d:Ljava/util/concurrent/TimeUnit;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lz72;->a(Lz72;Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method
