.class public final Lnwf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfyi;


# instance fields
.field public final a:Lqyi;

.field public final b:Lqyi;

.field public final c:Lqyi;

.field public final d:Lqyi;

.field public final e:Lqyi;

.field public final f:Lqyi;

.field public final g:Lqyi;

.field public final h:Lqyi;

.field public final i:Lqyi;


# direct methods
.method public constructor <init>(Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;Lqyi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnwf;->a:Lqyi;

    iput-object p2, p0, Lnwf;->b:Lqyi;

    iput-object p3, p0, Lnwf;->c:Lqyi;

    iput-object p4, p0, Lnwf;->d:Lqyi;

    iput-object p5, p0, Lnwf;->e:Lqyi;

    iput-object p6, p0, Lnwf;->f:Lqyi;

    iput-object p7, p0, Lnwf;->g:Lqyi;

    iput-object p8, p0, Lnwf;->h:Lqyi;

    iput-object p9, p0, Lnwf;->i:Lqyi;

    return-void
.end method


# virtual methods
.method public final a()Lauf;
    .locals 11

    iget-object v0, p0, Lnwf;->a:Lqyi;

    check-cast v0, Lwuf;

    invoke-virtual {v0}, Lwuf;->a()Lvmh;

    move-result-object v2

    iget-object v0, p0, Lnwf;->b:Lqyi;

    check-cast v0, Lquf;

    invoke-virtual {v0}, Lquf;->a()Lhmh;

    move-result-object v3

    iget-object v0, p0, Lnwf;->c:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lm0g;

    iget-object v0, p0, Lnwf;->d:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lz0g;

    iget-object v0, p0, Lnwf;->e:Lqyi;

    check-cast v0, Lc7g;

    invoke-virtual {v0}, Lc7g;->a()Ltjh;

    move-result-object v6

    iget-object v0, p0, Lnwf;->f:Lqyi;

    check-cast v0, Lbzf;

    invoke-virtual {v0}, Lbzf;->a()Lcom/google/android/gms/internal/ads/zzcuv;

    move-result-object v7

    iget-object v0, p0, Lnwf;->g:Lqyi;

    invoke-interface {v0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le4g;

    iget-object v0, p0, Lnwf;->h:Lqyi;

    check-cast v0, Le1g;

    invoke-virtual {v0}, Le1g;->a()Ld1g;

    move-result-object v9

    iget-object p0, p0, Lnwf;->i:Lqyi;

    invoke-interface {p0}, Lvyi;->zzb()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lf8g;

    new-instance p0, Lauf;

    move-object v1, p0

    invoke-direct/range {v1 .. v10}, Lauf;-><init>(Lvmh;Lhmh;Lm0g;Lz0g;Ltjh;Lcom/google/android/gms/internal/ads/zzcuv;Le4g;Ld1g;Lf8g;)V

    return-object p0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lnwf;->a()Lauf;

    move-result-object p0

    return-object p0
.end method
