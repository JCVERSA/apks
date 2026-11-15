.class public final Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;
.super Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsnet/downloader/util/DocumentsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DocumentsPermissionTransActivityImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00172\u00020\u0001:\u0001\u0018B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ1\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000b2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0017\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0018\u0010\u0015\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;",
        "Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;",
        "<init>",
        "()V",
        "Lcom/blankj/utilcode/util/UtilsTransActivity;",
        "activity",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "",
        "onCreated",
        "(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V",
        "",
        "requestCode",
        "resultCode",
        "Landroid/content/Intent;",
        "data",
        "onActivityResult",
        "(Lcom/blankj/utilcode/util/UtilsTransActivity;IILandroid/content/Intent;)V",
        "onDestroy",
        "(Lcom/blankj/utilcode/util/UtilsTransActivity;)V",
        "Landroid/net/Uri;",
        "uri",
        "Landroid/net/Uri;",
        "Companion",
        "a",
        "Downloader_psRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;

.field private static final ROOT_PATH:Ljava/lang/String; = "extra_root_path"

.field private static final instance$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;->Companion:Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl$a;

    .line 8
    .line 9
    new-instance v0, Lcom/transsnet/downloader/util/f;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/transsnet/downloader/util/f;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/LazyKt;->b(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sput-object v0, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;->instance$delegate:Lkotlin/Lazy;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/blankj/utilcode/util/UtilsTransActivity$TransActivityDelegate;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;
    .locals 1

    .line 1
    invoke-static {}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;->instance_delegate$lambda$2()Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 1
    sget-object v0, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;->instance$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final instance_delegate$lambda$2()Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;
    .locals 1

    .line 1
    new-instance v0, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public onActivityResult(Lcom/blankj/utilcode/util/UtilsTransActivity;IILandroid/content/Intent;)V
    .locals 0

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p4, :cond_0

    .line 7
    .line 8
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p2, 0x0

    .line 14
    :goto_0
    iput-object p2, p0, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;->uri:Landroid/net/Uri;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onCreated(Lcom/blankj/utilcode/util/UtilsTransActivity;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    const v0, 0x40010

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string v0, "extra_root_path"

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_6

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_4

    .line 35
    :cond_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v1, 0x18

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    if-lt v0, v1, :cond_2

    .line 56
    .line 57
    const-class v0, Landroid/os/storage/StorageManager;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/os/storage/StorageManager;

    .line 64
    .line 65
    new-instance v1, Ljava/io/File;

    .line 66
    .line 67
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/transsnet/downloader/dialog/o;->a(Landroid/os/storage/StorageManager;Ljava/io/File;)Landroid/os/storage/StorageVolume;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    if-eqz p2, :cond_2

    .line 75
    .line 76
    invoke-static {p2, v2}, Lcom/transsnet/downloader/dialog/p;->a(Landroid/os/storage/StorageVolume;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception p2

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 84
    .line 85
    new-instance v2, Landroid/content/Intent;

    .line 86
    .line 87
    const-string p2, "android.intent.action.OPEN_DOCUMENT_TREE"

    .line 88
    .line 89
    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    const/16 p2, 0x271b

    .line 93
    .line 94
    invoke-virtual {p1, v2, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 95
    .line 96
    .line 97
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    goto :goto_3

    .line 104
    :cond_4
    :goto_1
    return-void

    .line 105
    :goto_2
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 106
    .line 107
    invoke-static {p2}, Lkotlin/ResultKt;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    :goto_3
    invoke-static {p2}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    if-eqz p2, :cond_5

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 122
    .line 123
    .line 124
    :cond_5
    return-void

    .line 125
    :cond_6
    :goto_4
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public onDestroy(Lcom/blankj/utilcode/util/UtilsTransActivity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/transsnet/downloader/util/DocumentsUtils;->b()Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/transsnet/downloader/util/DocumentsUtils$DocumentsPermissionTransActivityImpl;->uri:Landroid/net/Uri;

    .line 13
    .line 14
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
