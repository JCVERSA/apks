.class public final Lggh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leeh;


# instance fields
.field public final a:Lg8i;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lixe;Lg8i;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lggh;->a:Lg8i;

    iput-object p3, p0, Lggh;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x30

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Lfgh;

    invoke-direct {v0, p0}, Lfgh;-><init>(Lggh;)V

    iget-object p0, p0, Lggh;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
