.class public Lcom/cloud/tmc/kernel/utils/KernelUtils;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TmcKernel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/cloud/tmc/kernel/utils/AppDynamicBuildConfig;->isAppDebugAble()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
