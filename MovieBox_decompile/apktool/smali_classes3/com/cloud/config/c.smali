.class public final synthetic Lcom/cloud/config/c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/cloud/config/s;


# direct methods
.method public synthetic constructor <init>(Lcom/cloud/config/r;Lcom/cloud/config/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/cloud/config/c;->a:Lcom/cloud/config/s;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/cloud/config/c;->a:Lcom/cloud/config/s;

    .line 3
    .line 4
    invoke-static {v0, v1}, Lcom/cloud/config/AbsConfigStore;->a(Lcom/cloud/config/r;Lcom/cloud/config/s;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
