.class public final Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;->d(Ljava/lang/String;Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final d(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 1

    .line 1
    const-string v0, "extra_root_path"

    .line 2
    .line 3
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final b()Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;->access$getInstance$delegate$cp()Lkotlin/Lazy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;

    .line 10
    .line 11
    return-object v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "rootPath"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/transsnet/downloader/util/g;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/transsnet/downloader/util/g;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;->b()Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/UtilsTransActivity;->P(Lcom/blankj/utilcode/util/Utils$b;Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
