.class public final Lngh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lngh;->a:Lqyi;

    iput-object p3, p0, Lngh;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lfof;->a()Loaf;

    move-result-object v0

    iget-object v1, p0, Lngh;->a:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ScheduledExecutorService;

    iget-object p0, p0, Lngh;->b:Lqyi;

    check-cast p0, Lskf;

    invoke-virtual {p0}, Lskf;->a()Landroid/content/Context;

    move-result-object p0

    new-instance v2, Ljgh;

    invoke-direct {v2, v0, v1, p0}, Ljgh;-><init>(Loaf;Ljava/util/concurrent/ScheduledExecutorService;Landroid/content/Context;)V

    return-object v2
.end method
