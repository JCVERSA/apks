.class public final Lcjg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcjg;->a:Lqyi;

    iput-object p2, p0, Lcjg;->b:Lqyi;

    iput-object p3, p0, Lcjg;->c:Lqyi;

    return-void
.end method


# virtual methods
.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcjg;->c:Lqyi;

    check-cast v0, Lzyf;

    invoke-virtual {v0}, Lzyf;->a()Lenh;

    move-result-object v0

    iget-object v0, v0, Lenh;->o:Lrmh;

    iget v0, v0, Lrmh;->a:I

    if-eqz v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcjg;->b:Lqyi;

    check-cast p0, Lg2h;

    invoke-virtual {p0}, Lg2h;->a()Lf2h;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcjg;->a:Lqyi;

    check-cast p0, Lg2h;

    invoke-virtual {p0}, Lg2h;->a()Lf2h;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    throw p0
.end method
