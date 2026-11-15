.class Lcom/transsion/ga/AthenaAnalytics$athena;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ga/AthenaAnalytics;->b0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ga/AthenaAnalytics$athena;->a:Z

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lcom/transsion/athena/taaneh/aethna;->a:Lcom/transsion/core/log/ObjectLogUtils;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils;->m()Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-boolean v1, p0, Lcom/transsion/ga/AthenaAnalytics$athena;->a:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/transsion/core/log/ObjectLogUtils$a;->r(Z)Lcom/transsion/core/log/ObjectLogUtils$a;

    .line 10
    .line 11
    .line 12
    return-void
.end method
