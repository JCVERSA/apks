.class public final Lfbh;
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

    iput-object p2, p0, Lfbh;->a:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lbbh;
    .locals 2

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    iget-object p0, p0, Lfbh;->a:Lqyi;

    check-cast p0, Lskf;

    invoke-virtual {p0}, Lskf;->a()Landroid/content/Context;

    move-result-object p0

    new-instance v1, Lbbh;

    invoke-direct {v1, v0, p0}, Lbbh;-><init>(Lg8i;Landroid/content/Context;)V

    return-object v1
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lfbh;->a()Lbbh;

    move-result-object p0

    return-object p0
.end method
