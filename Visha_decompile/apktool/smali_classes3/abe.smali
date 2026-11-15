.class public final Labe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkae;


# instance fields
.field public final a:J

.field public final synthetic b:Ldbe;


# direct methods
.method public constructor <init>(Ldbe;J)V
    .locals 0

    iput-object p1, p0, Labe;->b:Ldbe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Labe;->a:J

    return-void
.end method


# virtual methods
.method public final a(J)Lz9e;
    .locals 7

    iget-object p0, p0, Labe;->b:Ldbe;

    invoke-static {p0}, Ldbe;->a(Ldbe;)[Lgbe;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lgbe;->a(J)Lz9e;

    move-result-object v0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p0}, Ldbe;->a(Ldbe;)[Lgbe;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-static {p0}, Ldbe;->a(Ldbe;)[Lgbe;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lgbe;->a(J)Lz9e;

    move-result-object v2

    iget-object v3, v2, Lz9e;->a:Llae;

    iget-object v4, v0, Lz9e;->a:Llae;

    iget-wide v5, v3, Llae;->b:J

    iget-wide v3, v4, Llae;->b:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_0

    move-object v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Labe;->a:J

    return-wide v0
.end method

.method public final zzh()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
