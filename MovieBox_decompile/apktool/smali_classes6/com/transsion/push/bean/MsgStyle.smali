.class public final Lcom/transsion/push/bean/MsgStyle;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/transsion/push/bean/MsgStyle;",
        "",
        "<init>",
        "()V",
        "CUSTOM_LEFT_PIC",
        "",
        "STYLE_HOR_TYPE",
        "STYLE_VERTICAL_TYPE",
        "NATIVE_STANDARD",
        "CUSTOM_BUTTON",
        "CUSTOM_LEFT_PIC_EMOJI",
        "FCM_PUSH_DEFAULT_TYPE",
        "",
        "FCM_PUSH_NOTIFY_TYPE",
        "SOURCE_PUSH",
        "SOURCE_FCM_PUSH",
        "SPORTS_LIVE_EVENT_REMIND",
        "push_psRelease"
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
.field public static final CUSTOM_BUTTON:Ljava/lang/String; = "4"

.field public static final CUSTOM_LEFT_PIC:Ljava/lang/String; = "1"

.field public static final CUSTOM_LEFT_PIC_EMOJI:Ljava/lang/String; = "5"

.field public static final FCM_PUSH_DEFAULT_TYPE:I = 0x1

.field public static final FCM_PUSH_NOTIFY_TYPE:I = 0x3

.field public static final INSTANCE:Lcom/transsion/push/bean/MsgStyle;

.field public static final NATIVE_STANDARD:Ljava/lang/String; = "3"

.field public static final SOURCE_FCM_PUSH:Ljava/lang/String; = "fcm_push"

.field public static final SOURCE_PUSH:Ljava/lang/String; = "push"

.field public static final SPORTS_LIVE_EVENT_REMIND:Ljava/lang/String; = "SportsLiveEventRemind"

.field public static final STYLE_HOR_TYPE:Ljava/lang/String; = "101"

.field public static final STYLE_VERTICAL_TYPE:Ljava/lang/String; = "102"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/push/bean/MsgStyle;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/push/bean/MsgStyle;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/push/bean/MsgStyle;->INSTANCE:Lcom/transsion/push/bean/MsgStyle;

    .line 7
    .line 8
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
