.class public final Ls8h;
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

    iput-object p2, p0, Ls8h;->a:Lqyi;

    iput-object p3, p0, Ls8h;->b:Lqyi;

    iput-object p4, p0, Ls8h;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lq8h;
    .locals 4

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    iget-object v1, p0, Ls8h;->a:Lqyi;

    invoke-interface {v1}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llkg;

    iget-object v2, p0, Ls8h;->b:Lqyi;

    check-cast v2, Lzyf;

    invoke-virtual {v2}, Lzyf;->a()Lenh;

    move-result-object v2

    iget-object p0, p0, Ls8h;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v3, Lq8h;

    invoke-direct {v3, v0, v1, v2, p0}, Lq8h;-><init>(Lg8i;Llkg;Lenh;Ljava/lang/String;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Ls8h;->a()Lq8h;

    move-result-object p0

    return-object p0
.end method
