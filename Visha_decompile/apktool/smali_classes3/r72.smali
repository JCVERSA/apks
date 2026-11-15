.class public final synthetic Lr72;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La82$c;


# instance fields
.field public final synthetic a:Lz72;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Ljava/util/concurrent/TimeUnit;


# direct methods
.method public synthetic constructor <init>(Lz72;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr72;->a:Lz72;

    iput-object p2, p0, Lr72;->b:Ljava/lang/Runnable;

    iput-wide p3, p0, Lr72;->c:J

    iput-wide p5, p0, Lr72;->d:J

    iput-object p7, p0, Lr72;->e:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method public final a(La82$b;)Ljava/util/concurrent/ScheduledFuture;
    .locals 8

    iget-object v0, p0, Lr72;->a:Lz72;

    iget-object v1, p0, Lr72;->b:Ljava/lang/Runnable;

    iget-wide v2, p0, Lr72;->c:J

    iget-wide v4, p0, Lr72;->d:J

    iget-object v6, p0, Lr72;->e:Ljava/util/concurrent/TimeUnit;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lz72;->b(Lz72;Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;La82$b;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    return-object p0
.end method
