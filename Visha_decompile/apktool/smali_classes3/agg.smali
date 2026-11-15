.class public final Lagg;
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

    iput-object p2, p0, Lagg;->a:Lqyi;

    iput-object p3, p0, Lagg;->b:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lzfg;
    .locals 3

    invoke-static {}, Lfqh;->b()Lg8i;

    move-result-object v0

    iget-object v1, p0, Lagg;->a:Lqyi;

    check-cast v1, Lpgg;

    invoke-virtual {v1}, Lpgg;->a()Logg;

    move-result-object v1

    iget-object p0, p0, Lagg;->b:Lqyi;

    check-cast p0, Lxgg;

    invoke-virtual {p0}, Lxgg;->a()Lwgg;

    move-result-object p0

    new-instance v2, Lzfg;

    invoke-direct {v2, v0, v1, p0}, Lzfg;-><init>(Lg8i;Logg;Lwgg;)V

    return-object v2
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lagg;->a()Lzfg;

    move-result-object p0

    return-object p0
.end method
