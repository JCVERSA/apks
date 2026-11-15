.class public final Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/action/HandlerAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

.field private static final HANDLER:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->$$INSTANCE:Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->HANDLER:Landroid/os/Handler;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getHANDLER()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/action/HandlerAction$Companion;->HANDLER:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method
