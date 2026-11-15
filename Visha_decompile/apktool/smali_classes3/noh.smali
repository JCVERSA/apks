.class public final Lnoh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnoh;->a:Lqyi;

    iput-object p2, p0, Lnoh;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnoh;->a:Lqyi;

    check-cast v0, Lskf;

    invoke-virtual {v0}, Lskf;->a()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lnoh;->b:Lqyi;

    check-cast p0, Lnlf;

    invoke-virtual {p0}, Lnlf;->a()Ltef;

    move-result-object p0

    new-instance v1, Lmoh;

    invoke-direct {v1, v0, p0}, Lmoh;-><init>(Landroid/content/Context;Ltef;)V

    return-object v1
.end method
