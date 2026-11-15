.class public final Lj30$b;
.super Lxp5$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj30;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public c:Lcom/google/android/datatransport/cct/internal/ClientInfo;

.field public d:Ljava/lang/Integer;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/List;

.field public g:Lcom/google/android/datatransport/cct/internal/QosTier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lxp5$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lxp5;
    .locals 13

    iget-object v0, p0, Lj30$b;->a:Ljava/lang/Long;

    const-string v1, ""

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestTimeMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v0, p0, Lj30$b;->b:Ljava/lang/Long;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " requestUptimeMs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lj30;

    iget-object v1, p0, Lj30$b;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, p0, Lj30$b;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lj30$b;->c:Lcom/google/android/datatransport/cct/internal/ClientInfo;

    iget-object v8, p0, Lj30$b;->d:Ljava/lang/Integer;

    iget-object v9, p0, Lj30$b;->e:Ljava/lang/String;

    iget-object v10, p0, Lj30$b;->f:Ljava/util/List;

    iget-object v11, p0, Lj30$b;->g:Lcom/google/android/datatransport/cct/internal/QosTier;

    const/4 v12, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lj30;-><init>(JJLcom/google/android/datatransport/cct/internal/ClientInfo;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Lcom/google/android/datatransport/cct/internal/QosTier;Lj30$a;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing required properties:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Lcom/google/android/datatransport/cct/internal/ClientInfo;)Lxp5$a;
    .locals 0

    iput-object p1, p0, Lj30$b;->c:Lcom/google/android/datatransport/cct/internal/ClientInfo;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lxp5$a;
    .locals 0

    iput-object p1, p0, Lj30$b;->f:Ljava/util/List;

    return-object p0
.end method

.method public d(Ljava/lang/Integer;)Lxp5$a;
    .locals 0

    iput-object p1, p0, Lj30$b;->d:Ljava/lang/Integer;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lxp5$a;
    .locals 0

    iput-object p1, p0, Lj30$b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public f(Lcom/google/android/datatransport/cct/internal/QosTier;)Lxp5$a;
    .locals 0

    iput-object p1, p0, Lj30$b;->g:Lcom/google/android/datatransport/cct/internal/QosTier;

    return-object p0
.end method

.method public g(J)Lxp5$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lj30$b;->a:Ljava/lang/Long;

    return-object p0
.end method

.method public h(J)Lxp5$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lj30$b;->b:Ljava/lang/Long;

    return-object p0
.end method
