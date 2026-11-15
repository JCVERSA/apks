.class public final Lh9h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lh9h;->a:Lqyi;

    iput-object p4, p0, Lh9h;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lybh;->a()Lwbh;

    move-result-object v1

    iget-object v0, p0, Lh9h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lfy0;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v5

    iget-object p0, p0, Lh9h;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lsmg;

    new-instance p0, Lk8h;

    sget-object v0, Ljze;->f:Leze;

    invoke-virtual {v0}, Leze;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lk8h;-><init>(Leeh;JLfy0;Ljava/util/concurrent/Executor;Lsmg;)V

    return-object p0
.end method
