.class public final Layf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Layf;->a:Lqyi;

    iput-object p2, p0, Layf;->b:Lqyi;

    iput-object p3, p0, Layf;->c:Lqyi;

    iput-object p5, p0, Layf;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Layf;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lb0g;

    iget-object v0, p0, Layf;->b:Lqyi;

    check-cast v0, Lquf;

    invoke-virtual {v0}, Lquf;->a()Lhmh;

    move-result-object v3

    iget-object v0, p0, Layf;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v5

    iget-object p0, p0, Layf;->d:Lqyi;

    check-cast p0, Lruf;

    invoke-virtual {p0}, Lruf;->a()Ljava/lang/String;

    move-result-object v6

    new-instance p0, Lzxf;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lzxf;-><init>(Lb0g;Lhmh;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    return-object p0
.end method
