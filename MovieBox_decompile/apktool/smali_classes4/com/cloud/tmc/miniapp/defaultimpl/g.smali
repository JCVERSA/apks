.class public final synthetic Lcom/cloud/tmc/miniapp/defaultimpl/g;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JLcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->b:J

    .line 7
    .line 8
    iput-object p4, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->c:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->b:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/cloud/tmc/miniapp/defaultimpl/g;->c:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, v3}, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o(Ljava/lang/String;JLcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
