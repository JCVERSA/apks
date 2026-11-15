.class public final Lsyf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lryf;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lryf;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsyf;->a:Lryf;

    iput-object p2, p0, Lsyf;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsyf;->b:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Lsyf;->a:Lryf;

    invoke-virtual {p0, v0}, Lryf;->f(Ljava/lang/String;)Loxg;

    move-result-object p0

    return-object p0
.end method
