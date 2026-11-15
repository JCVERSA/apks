.class public final Lhyf;
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

    iput-object p1, p0, Lhyf;->a:Lqyi;

    iput-object p2, p0, Lhyf;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lhyf;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lhyf;->b:Lqyi;

    check-cast p0, Lquf;

    invoke-virtual {p0}, Lquf;->a()Lhmh;

    move-result-object p0

    new-instance v1, Lpaf;

    invoke-direct {v1}, Lpaf;-><init>()V

    new-instance v2, Lgyf;

    invoke-direct {v2, v0, p0, v1}, Lgyf;-><init>(Landroid/content/Context;Lhmh;Lpaf;)V

    return-object v2
.end method
