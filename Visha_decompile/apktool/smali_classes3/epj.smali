.class public final Lepj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyoj;


# instance fields
.field public final a:Lyoj;

.field public final b:J


# direct methods
.method public constructor <init>(Lyoj;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lepj;->a:Lyoj;

    iput-wide p2, p0, Lepj;->b:J

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    iget-wide v0, p0, Lepj;->b:J

    iget-object p0, p0, Lepj;->a:Lyoj;

    sub-long/2addr p1, v0

    invoke-interface {p0, p1, p2}, Lyoj;->a(J)I

    move-result p0

    return p0
.end method

.method public final b(Lp7j;Lxzi;I)I
    .locals 2

    iget-object v0, p0, Lepj;->a:Lyoj;

    invoke-interface {v0, p1, p2, p3}, Lyoj;->b(Lp7j;Lxzi;I)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_0

    iget-wide v0, p2, Lxzi;->f:J

    iget-wide p0, p0, Lepj;->b:J

    add-long/2addr v0, p0

    iput-wide v0, p2, Lxzi;->f:J

    return p3

    :cond_0
    return p1
.end method

.method public final c()Lyoj;
    .locals 0

    iget-object p0, p0, Lepj;->a:Lyoj;

    return-object p0
.end method

.method public final zzd()V
    .locals 0

    iget-object p0, p0, Lepj;->a:Lyoj;

    invoke-interface {p0}, Lyoj;->zzd()V

    return-void
.end method

.method public final zze()Z
    .locals 0

    iget-object p0, p0, Lepj;->a:Lyoj;

    invoke-interface {p0}, Lyoj;->zze()Z

    move-result p0

    return p0
.end method
