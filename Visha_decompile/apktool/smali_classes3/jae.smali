.class public Ljae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkae;


# instance fields
.field public final a:J

.field public final b:Lz9e;


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ljae;->a:J

    const-wide/16 p1, 0x0

    cmp-long v0, p3, p1

    new-instance v1, Lz9e;

    if-nez v0, :cond_0

    sget-object p1, Llae;->c:Llae;

    goto :goto_0

    :cond_0
    new-instance v0, Llae;

    invoke-direct {v0, p1, p2, p3, p4}, Llae;-><init>(JJ)V

    move-object p1, v0

    :goto_0
    invoke-direct {v1, p1, p1}, Lz9e;-><init>(Llae;Llae;)V

    iput-object v1, p0, Ljae;->b:Lz9e;

    return-void
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 0

    iget-object p0, p0, Ljae;->b:Lz9e;

    return-object p0
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Ljae;->a:J

    return-wide v0
.end method

.method public final zzh()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
