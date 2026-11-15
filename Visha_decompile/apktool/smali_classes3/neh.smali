.class public final Lneh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lneh;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lleh;
    .locals 2

    iget-object p0, p0, Lneh;->a:Lqyi;

    check-cast p0, Lskf;

    invoke-virtual {p0}, Lskf;->a()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    new-instance v1, Lleh;

    invoke-direct {v1, p0, v0}, Lleh;-><init>(Landroid/content/Context;Lg8i;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lneh;->a()Lleh;

    move-result-object p0

    return-object p0
.end method
