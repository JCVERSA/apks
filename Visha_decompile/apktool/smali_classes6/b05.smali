.class public abstract Lb05;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Lmq3;
    .locals 3

    new-instance v0, Lnq3;

    sget-object v1, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a:Lcom/transsion/cloud_drive/base/internal/ServiceProvider;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a()Lpr3;

    move-result-object v2

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->b()Ljg9;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lnq3;-><init>(Lpr3;Ljg9;)V

    return-object v0
.end method

.method public static final b()Leu9;
    .locals 2

    new-instance v0, Lfu9;

    sget-object v1, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->a:Lcom/transsion/cloud_drive/base/internal/ServiceProvider;

    invoke-virtual {v1}, Lcom/transsion/cloud_drive/base/internal/ServiceProvider;->c()Lgu9;

    move-result-object v1

    invoke-direct {v0, v1}, Lfu9;-><init>(Lgu9;)V

    return-object v0
.end method
