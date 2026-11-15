.class public final Lduh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lduh;->a:Lqyi;

    iput-object p2, p0, Lduh;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lbuh;
    .locals 2

    iget-object v0, p0, Lduh;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsmg;

    iget-object p0, p0, Lduh;->b:Lqyi;

    check-cast p0, Lskf;

    invoke-virtual {p0}, Lskf;->a()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lbuh;

    invoke-direct {v1, v0, p0}, Lbuh;-><init>(Lsmg;Landroid/content/Context;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lduh;->a()Lbuh;

    move-result-object p0

    return-object p0
.end method
