.class public final Lm8h;
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

    iput-object p1, p0, Lm8h;->a:Lg8i;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 0

    const/16 p0, 0x37

    return p0
.end method

.method public final zzb()Lim5;
    .locals 1

    new-instance v0, Ll8h;

    invoke-direct {v0, p0}, Ll8h;-><init>(Lm8h;)V

    iget-object p0, p0, Lm8h;->a:Lg8i;

    invoke-interface {p0, v0}, Lg8i;->m(Ljava/util/concurrent/Callable;)Lim5;

    move-result-object p0

    return-object p0
.end method
