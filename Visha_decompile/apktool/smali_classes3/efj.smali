.class public final Lefj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk2j;


# static fields
.field public static final c:Lefj;


# instance fields
.field public final b:Lk2j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lefj;

    invoke-direct {v0}, Lefj;-><init>()V

    sput-object v0, Lefj;->c:Lefj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lgfj;

    invoke-direct {v0}, Lgfj;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/c;->b(Ljava/lang/Object;)Lk2j;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/c;->a(Lk2j;)Lk2j;

    move-result-object v0

    iput-object v0, p0, Lefj;->b:Lk2j;

    return-void
.end method

.method public static a()D
    .locals 2

    sget-object v0, Lefj;->c:Lefj;

    invoke-virtual {v0}, Lefj;->d()Lffj;

    move-result-object v0

    invoke-interface {v0}, Lffj;->zza()D

    move-result-wide v0

    return-wide v0
.end method

.method public static b()J
    .locals 2

    sget-object v0, Lefj;->c:Lefj;

    invoke-virtual {v0}, Lefj;->d()Lffj;

    move-result-object v0

    invoke-interface {v0}, Lffj;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c()J
    .locals 2

    sget-object v0, Lefj;->c:Lefj;

    invoke-virtual {v0}, Lefj;->d()Lffj;

    move-result-object v0

    invoke-interface {v0}, Lffj;->zzc()J

    move-result-wide v0

    return-wide v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    sget-object v0, Lefj;->c:Lefj;

    invoke-virtual {v0}, Lefj;->d()Lffj;

    move-result-object v0

    invoke-interface {v0}, Lffj;->zzd()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Z
    .locals 1

    sget-object v0, Lefj;->c:Lefj;

    invoke-virtual {v0}, Lefj;->d()Lffj;

    move-result-object v0

    invoke-interface {v0}, Lffj;->zze()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final d()Lffj;
    .locals 0

    iget-object p0, p0, Lefj;->b:Lk2j;

    invoke-interface {p0}, Lk2j;->zza()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lffj;

    return-object p0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lefj;->d()Lffj;

    move-result-object p0

    return-object p0
.end method
