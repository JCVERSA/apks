.class public abstract Lm27;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:I = 0x0

.field public static c:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method public static c(I)V
    .locals 0

    sput p0, Lm27;->b:I

    return-void
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lm27;->a:Z

    return-void
.end method

.method public static e(Z)V
    .locals 0

    sput-boolean p0, Lm27;->c:Z

    return-void
.end method

.method public static f()V
    .locals 4

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const-string v1, "last_show_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    return-void
.end method

.method public static g()V
    .locals 5

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "notification_show_t"

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mmkv/MMKV;->g(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    invoke-static {}, Lcom/tencent/mmkv/MMKV;->p()Lcom/tencent/mmkv/MMKV;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/tencent/mmkv/MMKV;->u(Ljava/lang/String;J)Z

    return-void
.end method
