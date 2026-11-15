.class public final Lm5h;
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

    iput-object p2, p0, Lm5h;->a:Lqyi;

    iput-object p3, p0, Lm5h;->b:Lqyi;

    iput-object p4, p0, Lm5h;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lk5h;
    .locals 4

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    iget-object v1, p0, Lm5h;->a:Lqyi;

    check-cast v1, Lskf;

    invoke-virtual {v1}, Lskf;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lm5h;->b:Lqyi;

    check-cast v2, Lzyf;

    invoke-virtual {v2}, Lzyf;->a()Lenh;

    move-result-object v2

    iget-object p0, p0, Lm5h;->c:Lqyi;

    check-cast p0, Lqrf;

    invoke-virtual {p0}, Lqrf;->a()Landroid/view/ViewGroup;

    move-result-object p0

    new-instance v3, Lk5h;

    invoke-direct {v3, v0, v1, v2, p0}, Lk5h;-><init>(Lg8i;Landroid/content/Context;Lenh;Landroid/view/ViewGroup;)V

    return-object v3
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lm5h;->a()Lk5h;

    move-result-object p0

    return-object p0
.end method
