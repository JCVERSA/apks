.class public final Lkag;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lw9g;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkag;->a:Lqyi;

    iput-object p3, p0, Lkag;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lndf;
    .locals 2

    iget-object v0, p0, Lkag;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lkag;->b:Lqyi;

    check-cast p0, Lzyf;

    invoke-virtual {p0}, Lzyf;->a()Lenh;

    move-result-object p0

    iget-object p0, p0, Lenh;->f:Ljava/lang/String;

    new-instance v1, Lndf;

    invoke-direct {v1, v0, p0}, Lndf;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkag;->a()Lndf;

    move-result-object p0

    return-object p0
.end method
