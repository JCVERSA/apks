.class public final Lv5h;
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

    iput-object p2, p0, Lv5h;->a:Lqyi;

    iput-object p3, p0, Lv5h;->b:Lqyi;

    iput-object p4, p0, Lv5h;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lt5h;
    .locals 4

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    iget-object v1, p0, Lv5h;->a:Lqyi;

    check-cast v1, Lzyf;

    invoke-virtual {v1}, Lzyf;->a()Lenh;

    move-result-object v1

    iget-object v2, p0, Lv5h;->b:Lqyi;

    invoke-interface {v2}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvnh;

    iget-object p0, p0, Lv5h;->c:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    new-instance v3, Lt5h;

    invoke-direct {v3, v0, v1, v2, p0}, Lt5h;-><init>(Lg8i;Lenh;Lvnh;I)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lv5h;->a()Lt5h;

    move-result-object p0

    return-object p0
.end method
