.class public Lcom/mgtv/downloader/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = ""

.field public static b:Ljava/lang/String; = "com.mgtv.broadcast.SHOW_FREE_SERVICE_DIALOG"

.field public static c:Ljava/lang/String; = "intent_data_descurl"

.field private static d:Ljava/lang/String; = ""

.field private static e:Ljava/lang/String; = ""

.field private static volatile f:Z = false

.field private static g:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Z)V
    .locals 0

    .line 2
    sput-boolean p0, Lcom/mgtv/downloader/c;->f:Z

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/mgtv/downloader/c;->f:Z

    return v0
.end method
