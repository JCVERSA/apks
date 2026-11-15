.class public abstract Lky7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lky7;->a:C

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/blankj/utilcode/util/h;->B()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lky7;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
