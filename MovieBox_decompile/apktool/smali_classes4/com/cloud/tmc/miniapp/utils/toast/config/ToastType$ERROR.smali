.class public final Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;
.super Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ERROR"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$ERROR;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
