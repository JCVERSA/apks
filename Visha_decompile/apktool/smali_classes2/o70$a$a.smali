.class public final Lo70$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo70$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo70$a$a$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo70$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static synthetic a(Lo70$a$a$a;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lo70$a$a;->d(Lo70$a$a$a;IJJ)V

    return-void
.end method

.method public static synthetic d(Lo70$a$a$a;IJJ)V
    .locals 6

    invoke-static {p0}, Lo70$a$a$a;->a(Lo70$a$a$a;)Lo70$a;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lo70$a;->onBandwidthSample(IJJ)V

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Handler;Lo70$a;)V
    .locals 1

    invoke-static {p1}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lzi;->e(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lo70$a$a;->e(Lo70$a;)V

    iget-object p0, p0, Lo70$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lo70$a$a$a;

    invoke-direct {v0, p1, p2}, Lo70$a$a$a;-><init>(Landroid/os/Handler;Lo70$a;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(IJJ)V
    .locals 9

    iget-object p0, p0, Lo70$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo70$a$a$a;

    invoke-static {v2}, Lo70$a$a$a;->b(Lo70$a$a$a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Lo70$a$a$a;->c(Lo70$a$a$a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Ln70;

    move-object v1, v8

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Ln70;-><init>(Lo70$a$a$a;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public e(Lo70$a;)V
    .locals 3

    iget-object v0, p0, Lo70$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo70$a$a$a;

    invoke-static {v1}, Lo70$a$a$a;->a(Lo70$a$a$a;)Lo70$a;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-virtual {v1}, Lo70$a$a$a;->d()V

    iget-object v2, p0, Lo70$a$a;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method
