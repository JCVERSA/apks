.class public abstract Lbs8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbs8$a;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/transsion/playercommon/data/CloudVersionControl;

.field public static b:Lbs8$a;


# direct methods
.method public static a(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lbs8;->b:Lbs8$a;

    if-eqz v0, :cond_0

    sget-object v1, Lbs8;->a:Lcom/transsion/playercommon/data/CloudVersionControl;

    invoke-interface {v0, v1}, Lbs8$a;->a(Lcom/transsion/playercommon/data/CloudVersionControl;)V

    :cond_0
    return-void
.end method

.method public static c(Lbs8$a;)V
    .locals 0

    sput-object p0, Lbs8;->b:Lbs8$a;

    return-void
.end method

.method public static d()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lbs8;->b:Lbs8$a;

    return-void
.end method
