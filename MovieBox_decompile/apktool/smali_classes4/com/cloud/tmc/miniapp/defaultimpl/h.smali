.class public final synthetic Lcom/cloud/tmc/miniapp/defaultimpl/h;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/h;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloud/tmc/miniapp/defaultimpl/h;->b:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/defaultimpl/h;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/cloud/tmc/miniapp/defaultimpl/h;->b:Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;->OooO00o(Ljava/lang/String;Lcom/cloud/tmc/miniapp/defaultimpl/LauncherReportImpl;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
