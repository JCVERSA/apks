.class public final Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\"\u0010\u0005\u001a\u00020\u00048\u0000@\u0000X\u0080.\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR!\u0010\u0011\u001a\u00020\u000b8FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u000c\u0010\r\u0012\u0004\u0008\u0010\u0010\u0003\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;",
        "",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "appContext",
        "Landroid/content/Context;",
        "getAppContext$api_release",
        "()Landroid/content/Context;",
        "setAppContext$api_release",
        "(Landroid/content/Context;)V",
        "Lcom/transsion/letswitch/service/api/IFileOperation;",
        "fileOperation$delegate",
        "Lyi5;",
        "getFileOperation",
        "()Lcom/transsion/letswitch/service/api/IFileOperation;",
        "getFileOperation$annotations",
        "fileOperation",
        "api_release"
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
.field public static final INSTANCE:Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;

.field public static appContext:Landroid/content/Context;

.field private static final fileOperation$delegate:Lyi5;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;

    invoke-direct {v0}, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->INSTANCE:Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;

    new-instance v0, Lik5;

    invoke-direct {v0}, Lik5;-><init>()V

    invoke-static {v0}, Lkotlin/b;->a(Lc74;)Lyi5;

    move-result-object v0

    sput-object v0, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->fileOperation$delegate:Lyi5;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/transsion/letswitch/service/api/internal/FileOperation;
    .locals 1

    invoke-static {}, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->fileOperation_delegate$lambda$0()Lcom/transsion/letswitch/service/api/internal/FileOperation;

    move-result-object v0

    return-object v0
.end method

.method private static final fileOperation_delegate$lambda$0()Lcom/transsion/letswitch/service/api/internal/FileOperation;
    .locals 1

    new-instance v0, Lcom/transsion/letswitch/service/api/internal/FileOperation;

    invoke-direct {v0}, Lcom/transsion/letswitch/service/api/internal/FileOperation;-><init>()V

    return-object v0
.end method

.method public static final getFileOperation()Lcom/transsion/letswitch/service/api/IFileOperation;
    .locals 1

    sget-object v0, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->fileOperation$delegate:Lyi5;

    invoke-interface {v0}, Lyi5;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/letswitch/service/api/IFileOperation;

    return-object v0
.end method

.method public static synthetic getFileOperation$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getAppContext$api_release()Landroid/content/Context;
    .locals 0

    sget-object p0, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->appContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "appContext"

    invoke-static {p0}, Ly45;->B(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setAppContext$api_release(Landroid/content/Context;)V
    .locals 0

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/transsion/letswitch/service/api/LetSwitchServiceProxy;->appContext:Landroid/content/Context;

    return-void
.end method
