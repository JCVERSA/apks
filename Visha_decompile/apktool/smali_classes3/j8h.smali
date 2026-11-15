.class public final Lj8h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lim5;

.field public final b:J

.field public final c:Lfy0;


# direct methods
.method public constructor <init>(Lim5;JLfy0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj8h;->a:Lim5;

    iput-object p4, p0, Lj8h;->c:Lfy0;

    invoke-interface {p4}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    iput-wide v0, p0, Lj8h;->b:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 5

    iget-object v0, p0, Lj8h;->c:Lfy0;

    iget-wide v1, p0, Lj8h;->b:J

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
