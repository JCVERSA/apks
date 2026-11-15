.class public final Le6h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6h;->a:Lqyi;

    iput-object p2, p0, Le6h;->b:Lqyi;

    iput-object p3, p0, Le6h;->c:Lqyi;

    iput-object p4, p0, Le6h;->d:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lc6h;
    .locals 4

    iget-object v0, p0, Le6h;->a:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk8h;

    iget-object v1, p0, Le6h;->b:Lqyi;

    check-cast v1, Lzyf;

    invoke-virtual {v1}, Lzyf;->a()Lenh;

    move-result-object v1

    iget-object v2, p0, Le6h;->c:Lqyi;

    check-cast v2, Lskf;

    invoke-virtual {v2}, Lskf;->a()Landroid/content/Context;

    move-result-object v2

    iget-object p0, p0, Le6h;->d:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lqef;

    new-instance v3, Lc6h;

    invoke-direct {v3, v0, v1, v2, p0}, Lc6h;-><init>(Lk8h;Lenh;Landroid/content/Context;Lqef;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Le6h;->a()Lc6h;

    move-result-object p0

    return-object p0
.end method
