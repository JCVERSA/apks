.class public final Lqc7;
.super Lxm9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqc7$a;
    }
.end annotation


# instance fields
.field public final a:Lld7;

.field public final b:J

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lld7;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lxm9;-><init>()V

    iput-object p1, p0, Lqc7;->a:Lld7;

    iput-wide p2, p0, Lqc7;->b:J

    iput-object p4, p0, Lqc7;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public q(Lin9;)V
    .locals 4

    iget-object v0, p0, Lqc7;->a:Lld7;

    new-instance v1, Lqc7$a;

    iget-wide v2, p0, Lqc7;->b:J

    iget-object p0, p0, Lqc7;->c:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3, p0}, Lqc7$a;-><init>(Lin9;JLjava/lang/Object;)V

    invoke-interface {v0, v1}, Lld7;->subscribe(Lpd7;)V

    return-void
.end method
