.class public final enum Lcom/transsion/privateroom/api/DefaultPrivateRoomService;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lvv4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/privateroom/api/DefaultPrivateRoomService;",
        ">;",
        "Lvv4;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

.field public static final enum INSTANCE:Lcom/transsion/privateroom/api/DefaultPrivateRoomService;


# instance fields
.field private final mainHandler:Landroid/os/Handler;


# direct methods
.method private static synthetic $values()[Lcom/transsion/privateroom/api/DefaultPrivateRoomService;
    .locals 1

    sget-object v0, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->INSTANCE:Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    filled-new-array {v0}, [Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->INSTANCE:Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    invoke-static {}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->$values()[Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    move-result-object v0

    sput-object v0, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->$VALUES:[Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Ltv4;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->lambda$hideFiles$0(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public static synthetic b(Lsv4;)V
    .locals 0

    invoke-static {p0}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->lambda$verifyVerificationCode$1(Lsv4;)V

    return-void
.end method

.method private static synthetic lambda$hideFiles$0(Ljava/util/List;Ltv4;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/privateroom/api/beans/PrivateFile;

    invoke-interface {p1, p0}, Ltv4;->i(Lcom/transsion/privateroom/api/beans/PrivateFile;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ltv4;->j()V

    :goto_1
    return-void
.end method

.method private static synthetic lambda$verifyVerificationCode$1(Lsv4;)V
    .locals 1

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Lsv4;->a(I)V

    return-void
.end method

.method private postMain(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/privateroom/api/DefaultPrivateRoomService;
    .locals 1

    const-class v0, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    return-object p0
.end method

.method public static values()[Lcom/transsion/privateroom/api/DefaultPrivateRoomService;
    .locals 1

    sget-object v0, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->$VALUES:[Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    invoke-virtual {v0}, [Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/privateroom/api/DefaultPrivateRoomService;

    return-object v0
.end method


# virtual methods
.method public deleteFile(Lcom/transsion/privateroom/api/beans/PrivateFile;Ltv4;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->deleteFiles(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public deleteFiles(Ljava/util/List;Ltv4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/privateroom/api/beans/PrivateFile;",
            ">;",
            "Ltv4;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lq32;

    invoke-direct {p1, p2}, Lq32;-><init>(Ltv4;)V

    invoke-direct {p0, p1}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->postMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAllPrivateFiles()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/transsion/privateroom/api/beans/PrivateFile;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public hideFile(Lcom/transsion/privateroom/api/beans/PrivateFile;Ltv4;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->hideFiles(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public hideFiles(Ljava/util/List;Ltv4;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/privateroom/api/beans/PrivateFile;",
            ">;",
            "Ltv4;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lu32;

    invoke-direct {v0, p1, p2}, Lu32;-><init>(Ljava/util/List;Ltv4;)V

    invoke-direct {p0, v0}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->postMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Luv4;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lv32;

    invoke-direct {v0, p1}, Lv32;-><init>(Luv4;)V

    invoke-direct {p0, v0}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->postMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public restoreFile(Lcom/transsion/privateroom/api/beans/PrivateFile;Ltv4;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->restoreFiles(Ljava/util/List;Ltv4;)V

    return-void
.end method

.method public restoreFiles(Ljava/util/List;Ltv4;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/privateroom/api/beans/PrivateFile;",
            ">;",
            "Ltv4;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Ls32;

    invoke-direct {p1, p2}, Ls32;-><init>(Ltv4;)V

    invoke-direct {p0, p1}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->postMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public saveEmail(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public savePassword(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendVerificationCode(Ljava/lang/String;Lsv4;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lt32;

    invoke-direct {p1, p2}, Lt32;-><init>(Lsv4;)V

    invoke-direct {p0, p1}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->postMain(Ljava/lang/Runnable;)V

    return-void
.end method

.method public submitPrivacyFeedback(Lcom/transsion/privateroom/api/beans/FeedbackBean;)V
    .locals 0

    return-void
.end method

.method public verifyVerificationCode(Ljava/lang/String;Ljava/lang/String;Lsv4;)V
    .locals 0

    if-nez p3, :cond_0

    return-void

    :cond_0
    new-instance p1, Lr32;

    invoke-direct {p1, p3}, Lr32;-><init>(Lsv4;)V

    invoke-direct {p0, p1}, Lcom/transsion/privateroom/api/DefaultPrivateRoomService;->postMain(Ljava/lang/Runnable;)V

    return-void
.end method
