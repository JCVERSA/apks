.class public abstract Lse;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/app/Application;

.field public static b:Landroid/os/Handler;


# direct methods
.method public static a()Landroid/app/Application;
    .locals 1

    sget-object v0, Lse;->a:Landroid/app/Application;

    return-object v0
.end method

.method public static b()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lse;->b:Landroid/os/Handler;

    return-object v0
.end method

.method public static c(Landroid/app/Application;Landroid/os/Handler;)V
    .locals 0

    sput-object p0, Lse;->a:Landroid/app/Application;

    sput-object p1, Lse;->b:Landroid/os/Handler;

    return-void
.end method
