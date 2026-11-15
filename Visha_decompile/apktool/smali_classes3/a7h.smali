.class public final La7h;
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

    iput-object p2, p0, La7h;->a:Lqyi;

    iput-object p3, p0, La7h;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    iget-object v1, p0, La7h;->a:Lqyi;

    check-cast v1, Lzyf;

    invoke-virtual {v1}, Lzyf;->a()Lenh;

    move-result-object v1

    iget-object p0, p0, La7h;->b:Lqyi;

    check-cast p0, Lnlf;

    invoke-virtual {p0}, Lnlf;->a()Ltef;

    move-result-object p0

    new-instance v2, Ly6h;

    invoke-direct {v2, v0, v1, p0}, Ly6h;-><init>(Lg8i;Lenh;Ltef;)V

    return-object v2
.end method
