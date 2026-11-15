.class public final synthetic Lcom/cloud/tmc/reporttrack/b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/reporttrack/b;->a:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/reporttrack/b;->a:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/reporttrack/ReportForExternal;->a(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
