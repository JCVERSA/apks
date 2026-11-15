.class public interface abstract Lcom/cloud/tmc/miniapp/action/AnimAction;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;
    }
.end annotation


# static fields
.field public static final ANIM_DEFAULT:I = -0x1

.field public static final ANIM_EMPTY:I = 0x0

.field public static final ANIM_TOAST:I = 0x1030004

.field public static final Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;->$$INSTANCE:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    .line 2
    .line 3
    sput-object v0, Lcom/cloud/tmc/miniapp/action/AnimAction;->Companion:Lcom/cloud/tmc/miniapp/action/AnimAction$Companion;

    .line 4
    .line 5
    return-void
.end method
