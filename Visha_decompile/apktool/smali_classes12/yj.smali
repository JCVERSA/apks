.class public Lyj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "yj"


# instance fields
.field public a:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lyj;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZI)V
    .locals 1

    .line 3
    invoke-direct {p0, p4}, Lyj;-><init>(I)V

    .line 4
    sget-object p0, Lyj;->b:Ljava/lang/String;

    const-string v0, "AthenaImpl: start"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 5
    invoke-static {p1, p2, p4, p0, p3}, Lcom/transsion/ga/AthenaAnalytics;->P(Landroid/content/Context;Ljava/lang/String;IZZ)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->C(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lyj;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Athena enable failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    invoke-static {p1}, Lcom/transsion/ga/AthenaAnalytics;->Z(Z)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/transsion/ga/AthenaAnalytics;->C(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lyj;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set Athena enable failed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 1

    iget p0, p0, Lyj;->a:I

    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->J(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/transsion/athena/data/TrackData;

    invoke-direct {v0, p2}, Lcom/transsion/athena/data/TrackData;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->d0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V
    .locals 0

    iget p0, p0, Lyj;->a:I

    invoke-static {p0}, Lcom/transsion/ga/AthenaAnalytics;->J(I)Lcom/transsion/ga/AthenaAnalytics;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/transsion/ga/AthenaAnalytics;->d0(Ljava/lang/String;Lcom/transsion/athena/data/TrackData;J)V

    :cond_0
    return-void
.end method
