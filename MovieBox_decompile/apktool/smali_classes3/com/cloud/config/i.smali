.class public final synthetic Lcom/cloud/config/i;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloud/config/i;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloud/config/i;->a:Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader$run$2;->a(Lcom/cloud/config/AbsConfigStore$RequestRunnableConfigHeader;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
