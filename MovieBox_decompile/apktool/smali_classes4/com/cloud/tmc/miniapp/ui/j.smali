.class public final synthetic Lcom/cloud/tmc/miniapp/ui/j;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/tmc/miniapp/ui/j;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/cloud/tmc/miniapp/ui/j;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/cloud/tmc/miniapp/ui/j;->a:Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/cloud/tmc/miniapp/ui/j;->b:Z

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;->S(Lcom/cloud/tmc/miniapp/ui/MiniAppActivity;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
