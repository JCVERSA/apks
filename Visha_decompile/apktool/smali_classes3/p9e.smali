.class public abstract Lp9e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkae;


# instance fields
.field public final a:Lkae;


# direct methods
.method public constructor <init>(Lkae;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp9e;->a:Lkae;

    return-void
.end method


# virtual methods
.method public a(J)Lz9e;
    .locals 0

    iget-object p0, p0, Lp9e;->a:Lkae;

    invoke-interface {p0, p1, p2}, Lkae;->a(J)Lz9e;

    move-result-object p0

    return-object p0
.end method

.method public zza()J
    .locals 2

    iget-object p0, p0, Lp9e;->a:Lkae;

    invoke-interface {p0}, Lkae;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzh()Z
    .locals 0

    iget-object p0, p0, Lp9e;->a:Lkae;

    invoke-interface {p0}, Lkae;->zzh()Z

    move-result p0

    return p0
.end method
