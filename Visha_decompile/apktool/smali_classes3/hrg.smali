.class public final Lhrg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhrg;->a:Lqyi;

    iput-object p4, p0, Lhrg;->b:Lqyi;

    iput-object p5, p0, Lhrg;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lgrg;
    .locals 7

    iget-object v0, p0, Lhrg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v3

    invoke-static {}, Llqh;->b()Lg8i;

    move-result-object v4

    iget-object v0, p0, Lhrg;->b:Lqyi;

    check-cast v0, Lcsg;

    invoke-virtual {v0}, Lcsg;->a()Lbsg;

    move-result-object v5

    iget-object p0, p0, Lhrg;->c:Lqyi;

    invoke-static {p0}, Leyi;->a(Lqyi;)Lzxi;

    move-result-object v6

    new-instance p0, Lgrg;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lgrg;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lg8i;Lg8i;Lbsg;Lzxi;)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lhrg;->a()Lgrg;

    move-result-object p0

    return-object p0
.end method
