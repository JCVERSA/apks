.class public final Lnlf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lokf;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnlf;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Ltef;
    .locals 0

    iget-object p0, p0, Lnlf;->a:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqef;

    invoke-virtual {p0}, Lqef;->i()Ltef;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnlf;->a()Ltef;

    move-result-object p0

    return-object p0
.end method
