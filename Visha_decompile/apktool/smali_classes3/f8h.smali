.class public final Lf8h;
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

    iput-object p2, p0, Lf8h;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Ld8h;
    .locals 2

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    iget-object p0, p0, Lf8h;->a:Lqyi;

    check-cast p0, Lskf;

    invoke-virtual {p0}, Lskf;->a()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Ld8h;

    invoke-direct {v1, v0, p0}, Ld8h;-><init>(Lg8i;Landroid/content/Context;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lf8h;->a()Ld8h;

    move-result-object p0

    return-object p0
.end method
