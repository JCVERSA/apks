.class public final Lwbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;


# direct methods
.method public constructor <init>(Lg8i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwbh;->a:Lg8i;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x18

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lvbh;

    invoke-direct {v0}, Lvbh;-><init>()V

    iget-object p0, p0, Lwbh;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
