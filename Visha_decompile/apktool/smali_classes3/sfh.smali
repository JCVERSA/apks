.class public final Lsfh;
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

    iput-object p1, p0, Lsfh;->a:Lqyi;

    iput-object p3, p0, Lsfh;->b:Lqyi;

    iput-object p4, p0, Lsfh;->c:Lqyi;

    return-void
.end method

.method public static a(Ljava/lang/String;Lkwe;Lqef;Ljava/util/concurrent/ScheduledExecutorService;Lg8i;)Lqfh;
    .locals 7

    new-instance v6, Lqfh;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lqfh;-><init>(Ljava/lang/String;Lkwe;Lqef;Ljava/util/concurrent/ScheduledExecutorService;Lg8i;)V

    return-object v6
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lsfh;->a:Lqyi;

    check-cast v0, Lpgh;

    invoke-virtual {v0}, Lpgh;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lxnf;->a()Lkwe;

    move-result-object v3

    iget-object v0, p0, Lsfh;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lqef;

    iget-object p0, p0, Lsfh;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v6

    new-instance p0, Lqfh;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lqfh;-><init>(Ljava/lang/String;Lkwe;Lqef;Ljava/util/concurrent/ScheduledExecutorService;Lg8i;)V

    return-object p0
.end method
