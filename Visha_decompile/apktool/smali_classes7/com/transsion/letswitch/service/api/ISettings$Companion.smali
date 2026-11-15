.class public final Lcom/transsion/letswitch/service/api/ISettings$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/letswitch/service/api/ISettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0007X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/transsion/letswitch/service/api/ISettings$Companion;",
        "",
        "<init>",
        "()V",
        "API_NAME_SETTINGS",
        "",
        "TYPE_GLOBAL",
        "",
        "TYPE_SYSTEM",
        "TYPE_SECURE",
        "METHOD_NAME_PUT_INT",
        "METHOD_NAME_PUT_LONG",
        "METHOD_NAME_PUT_STRING",
        "METHOD_NAME_PUT_FLOAT",
        "METHOD_NAME_GET_INT",
        "METHOD_NAME_GET_FLOAT",
        "METHOD_NAME_GET_LONG",
        "METHOD_NAME_GET_STRING",
        "METHOD_NAME_CAN_WRITE",
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
.field static final synthetic $$INSTANCE:Lcom/transsion/letswitch/service/api/ISettings$Companion;

.field public static final API_NAME_SETTINGS:Ljava/lang/String; = "SettingsApiService"

.field public static final METHOD_NAME_CAN_WRITE:Ljava/lang/String; = "canWrite"

.field public static final METHOD_NAME_GET_FLOAT:Ljava/lang/String; = "getFloat"

.field public static final METHOD_NAME_GET_INT:Ljava/lang/String; = "getInt"

.field public static final METHOD_NAME_GET_LONG:Ljava/lang/String; = "getLong"

.field public static final METHOD_NAME_GET_STRING:Ljava/lang/String; = "getString"

.field public static final METHOD_NAME_PUT_FLOAT:Ljava/lang/String; = "putFloat"

.field public static final METHOD_NAME_PUT_INT:Ljava/lang/String; = "putInt"

.field public static final METHOD_NAME_PUT_LONG:Ljava/lang/String; = "putLong"

.field public static final METHOD_NAME_PUT_STRING:Ljava/lang/String; = "putString"

.field public static final TYPE_GLOBAL:I = 0x0

.field public static final TYPE_SECURE:I = 0x2

.field public static final TYPE_SYSTEM:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/letswitch/service/api/ISettings$Companion;

    invoke-direct {v0}, Lcom/transsion/letswitch/service/api/ISettings$Companion;-><init>()V

    sput-object v0, Lcom/transsion/letswitch/service/api/ISettings$Companion;->$$INSTANCE:Lcom/transsion/letswitch/service/api/ISettings$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
