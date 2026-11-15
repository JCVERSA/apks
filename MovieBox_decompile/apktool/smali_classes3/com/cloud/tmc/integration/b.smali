.class public abstract synthetic Lcom/cloud/tmc/integration/b;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public static bridge synthetic a(Landroid/app/Application;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Application;->createDeviceProtectedStorageContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
