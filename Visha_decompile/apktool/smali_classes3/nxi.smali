.class public abstract Lnxi;
.super Lqxi;
.source "SourceFile"

# interfaces
.implements Lqne;


# instance fields
.field public final i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lqxi;-><init>()V

    const-string p1, "moov"

    iput-object p1, p0, Lnxi;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lrxi;Ljava/nio/ByteBuffer;JLnne;)V
    .locals 2

    invoke-interface {p1}, Lrxi;->zzb()J

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    iput-object p1, p0, Lqxi;->c:Lrxi;

    invoke-interface {p1}, Lrxi;->zzb()J

    move-result-wide v0

    iput-wide v0, p0, Lqxi;->e:J

    invoke-interface {p1}, Lrxi;->zzb()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-interface {p1, v0, v1}, Lrxi;->c(J)V

    invoke-interface {p1}, Lrxi;->zzb()J

    move-result-wide p1

    iput-wide p1, p0, Lqxi;->f:J

    iput-object p5, p0, Lqxi;->b:Lnne;

    return-void
.end method

.method public final zza()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnxi;->i:Ljava/lang/String;

    return-object p0
.end method
