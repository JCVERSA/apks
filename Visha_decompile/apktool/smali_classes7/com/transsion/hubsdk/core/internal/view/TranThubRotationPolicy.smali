.class public Lcom/transsion/hubsdk/core/internal/view/TranThubRotationPolicy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/interfaces/internal/view/ITranRotationPolicyAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isRotationLocked(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/transsion/hubsdk/internal/view/TranRotationPolicyBridge;->isRotationLocked(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
