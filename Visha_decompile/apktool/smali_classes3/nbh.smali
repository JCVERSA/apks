.class public final Lnbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lnbh;->a:Lqyi;

    iput-object p3, p0, Lnbh;->b:Lqyi;

    iput-object p4, p0, Lnbh;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Llbh;
    .locals 4

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    iget-object v1, p0, Lnbh;->a:Lqyi;

    check-cast v1, Lqrf;

    invoke-virtual {v1}, Lqrf;->a()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lnbh;->b:Lqyi;

    invoke-interface {v2}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object p0, p0, Lnbh;->c:Lqyi;

    check-cast p0, Ltyi;

    invoke-virtual {p0}, Ltyi;->b()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    new-instance v3, Llbh;

    invoke-direct {v3, v0, v1, v2, p0}, Llbh;-><init>(Lg8i;Landroid/view/ViewGroup;Landroid/content/Context;Ljava/util/Set;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnbh;->a()Llbh;

    move-result-object p0

    return-object p0
.end method
