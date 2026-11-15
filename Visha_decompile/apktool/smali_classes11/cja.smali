.class public abstract Lcja;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lge;->e()Z

    move-result v0

    const-string v1, "https://h5.aoneroom.com/redirect-to-tiktok?source=ViSha"

    if-eqz v0, :cond_0

    invoke-static {}, Lse;->a()Landroid/app/Application;

    move-result-object v0

    const-string v2, "environment_mode"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lw6c;->d(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "https://h5-test.aoneroom.com/redirect-to-tiktok?source=ViSha"

    :cond_0
    return-object v1
.end method
