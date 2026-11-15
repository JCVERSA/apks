.class public final Lqdh;
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

    iput-object p1, p0, Lqdh;->a:Lqyi;

    iput-object p3, p0, Lqdh;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lodh;
    .locals 3

    iget-object v0, p0, Lqdh;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrdf;

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v1

    iget-object p0, p0, Lqdh;->b:Lqyi;

    check-cast p0, Lskf;

    invoke-virtual {p0}, Lskf;->a()Landroid/content/Context;

    move-result-object p0

    new-instance v2, Lodh;

    invoke-direct {v2, v0, v1, p0}, Lodh;-><init>(Lrdf;Lg8i;Landroid/content/Context;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lqdh;->a()Lodh;

    move-result-object p0

    return-object p0
.end method
