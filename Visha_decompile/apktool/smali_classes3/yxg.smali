.class public final Lyxg;
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

    iput-object p1, p0, Lyxg;->a:Lqyi;

    iput-object p2, p0, Lyxg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lyxg;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lyxg;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lirf;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v1

    new-instance v2, Lxxg;

    invoke-direct {v2, v0, p0, v1}, Lxxg;-><init>(Landroid/content/Context;Lirf;Ljava/util/concurrent/Executor;)V

    return-object v2
.end method
