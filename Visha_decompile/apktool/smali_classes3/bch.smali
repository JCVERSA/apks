.class public final Lbch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbch;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lzbh;
    .locals 1

    iget-object p0, p0, Lbch;->a:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lgmh;

    new-instance v0, Lzbh;

    invoke-direct {v0, p0}, Lzbh;-><init>(Lgmh;)V

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lbch;->a()Lzbh;

    move-result-object p0

    return-object p0
.end method
