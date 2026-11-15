.class public Lcom/mgmi/ads/api/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/Context;

.field private static b:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lcom/mgmi/ads/api/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/app/Application;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/mgmi/ads/api/c;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/mgmi/ads/api/c;->a:Landroid/content/Context;

    .line 4
    :cond_0
    sput-object p0, Lcom/mgmi/ads/api/c;->b:Landroid/app/Application;

    return-void
.end method

.method public static b()Landroid/app/Application;
    .locals 1

    sget-object v0, Lcom/mgmi/ads/api/c;->b:Landroid/app/Application;

    return-object v0
.end method
