.class public final Lpvf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpvf;->a:Lqyi;

    iput-object p2, p0, Lpvf;->b:Lqyi;

    iput-object p3, p0, Lpvf;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lpvf;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfy0;

    iget-object v1, p0, Lpvf;->b:Lqyi;

    check-cast v1, Lnlf;

    invoke-virtual {v1}, Lnlf;->a()Ltef;

    move-result-object v1

    iget-object p0, p0, Lpvf;->c:Lqyi;

    check-cast p0, Lzyf;

    invoke-virtual {p0}, Lzyf;->a()Lenh;

    move-result-object p0

    iget-object p0, p0, Lenh;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Ltef;->b(Lfy0;Ljava/lang/String;)Lhef;

    move-result-object p0

    return-object p0
.end method
