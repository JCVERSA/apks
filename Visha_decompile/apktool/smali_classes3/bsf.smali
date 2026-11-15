.class public final Lbsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lasf;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lasf;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsf;->a:Lasf;

    iput-object p2, p0, Lbsf;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lbsf;->b:Lqyi;

    check-cast v0, Ltyi;

    invoke-virtual {v0}, Ltyi;->b()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object p0, p0, Lbsf;->a:Lasf;

    invoke-virtual {p0, v0}, Lasf;->d(Ljava/util/Set;)Lz0g;

    move-result-object p0

    return-object p0
.end method
