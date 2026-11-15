.class public final Lgsg;
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

    iput-object p1, p0, Lgsg;->a:Lqyi;

    iput-object p2, p0, Lgsg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lfsg;
    .locals 2

    iget-object v0, p0, Lgsg;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lgsg;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lrdf;

    new-instance v1, Lfsg;

    invoke-direct {v1, v0, p0}, Lfsg;-><init>(Landroid/content/Context;Lrdf;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lgsg;->a()Lfsg;

    move-result-object p0

    return-object p0
.end method
