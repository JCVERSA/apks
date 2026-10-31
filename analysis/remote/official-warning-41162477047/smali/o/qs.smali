.class public final Lo/qs;
.super Ljava/lang/Object;

# interfaces
.implements Lo/uh4;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/qs$a;
    }
.end annotation


# static fields
.field public static final a:Lo/qs$a;

.field public static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/qs$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/qs$a;-><init>(Lo/pg1;)V

    sput-object v0, Lo/qs;->a:Lo/qs$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lo/qs;->b:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public final b(I)V
    .locals 1

    sget v0, Lo/xi7;->d:I

    if-gt p1, v0, :cond_0

    sget-object p1, Lo/t95;->a:Lo/t95;

    invoke-virtual {p1}, Lo/t95;->b()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 5

    invoke-static {}, Lcom/snaptube/premium/app/PhoenixApplication;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/az7;->P(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->p0()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lo/qs;->b:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    if-gtz v1, :cond_2

    invoke-static {}, Lcom/snaptube/premium/configs/Config;->f0()I

    move-result v2

    if-eq v0, v2, :cond_3

    :cond_2
    invoke-virtual {p0, v1}, Lo/qs;->b(I)V

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/snaptube/premium/configs/Config;->C5(J)V

    invoke-static {v0}, Lcom/snaptube/premium/configs/Config;->D5(I)V

    return-void
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lo/qs;->c()V

    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 1

    const-string v0, "AppStateMonitorInitTask"

    return-object v0
.end method

.method public u()Lcom/mobiuspace/framework/launchconductor/Policy;
    .locals 1

    invoke-static {p0}, Lo/uh4$a;->a(Lo/uh4;)Lcom/mobiuspace/framework/launchconductor/Policy;

    move-result-object v0

    return-object v0
.end method
