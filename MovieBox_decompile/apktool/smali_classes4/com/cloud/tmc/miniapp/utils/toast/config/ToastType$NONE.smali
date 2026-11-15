.class public final Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;
.super Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NONE"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;->INSTANCE:Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType$NONE;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "none"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/cloud/tmc/miniapp/utils/toast/config/ToastType;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
