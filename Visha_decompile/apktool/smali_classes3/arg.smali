.class public final Larg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Larg;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lurg;
    .locals 2

    iget-object p0, p0, Larg;->a:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    new-instance v1, Lurg;

    invoke-direct {v1, p0, v0}, Lurg;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Larg;->a()Lurg;

    move-result-object p0

    return-object p0
.end method
