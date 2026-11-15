.class public final Ljeg;
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

    iput-object p1, p0, Ljeg;->a:Lqyi;

    iput-object p2, p0, Ljeg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ljeg;->a:Lqyi;

    check-cast v0, Lmcg;

    invoke-virtual {v0}, Lmcg;->a()Lhig;

    move-result-object v0

    iget-object p0, p0, Ljeg;->b:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfy0;

    new-instance v1, Lieg;

    invoke-direct {v1, v0, p0}, Lieg;-><init>(Lhig;Lfy0;)V

    return-object v1
.end method
