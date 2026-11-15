.class public final Lgef;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:J

.field public b:J

.field public final synthetic c:Lhef;


# direct methods
.method public constructor <init>(Lhef;)V
    .locals 2

    iput-object p1, p0, Lgef;->c:Lhef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgef;->a:J

    iput-wide v0, p0, Lgef;->b:J

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lgef;->b:J

    return-wide v0
.end method

.method public final b()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "topen"

    iget-wide v2, p0, Lgef;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "tclose"

    iget-wide v2, p0, Lgef;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lgef;->c:Lhef;

    invoke-static {v0}, Lhef;->b(Lhef;)Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lgef;->b:J

    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lgef;->c:Lhef;

    invoke-static {v0}, Lhef;->b(Lhef;)Lfy0;

    move-result-object v0

    invoke-interface {v0}, Lfy0;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lgef;->a:J

    return-void
.end method
