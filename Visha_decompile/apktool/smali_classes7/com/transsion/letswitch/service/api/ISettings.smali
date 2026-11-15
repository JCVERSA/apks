.class public interface abstract Lcom/transsion/letswitch/service/api/ISettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/letswitch/service/api/ISettings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\u0008f\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u0005H&J\"\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\nH&J\"\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\u0007H&J\"\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\rH&J \u0010\u000e\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0005H&J \u0010\u0010\u001a\u00020\r2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\rH&J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\nH&J \u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H&J\u0010\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/transsion/letswitch/service/api/ISettings;",
        "",
        "putInt",
        "",
        "type",
        "",
        "key",
        "",
        "value",
        "putLong",
        "",
        "putString",
        "putFloat",
        "",
        "getInt",
        "def",
        "getFloat",
        "getLong",
        "getString",
        "canWrite",
        "Companion",
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
.field public static final API_NAME_SETTINGS:Ljava/lang/String; = "SettingsApiService"

.field public static final Companion:Lcom/transsion/letswitch/service/api/ISettings$Companion;

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

    sget-object v0, Lcom/transsion/letswitch/service/api/ISettings$Companion;->$$INSTANCE:Lcom/transsion/letswitch/service/api/ISettings$Companion;

    sput-object v0, Lcom/transsion/letswitch/service/api/ISettings;->Companion:Lcom/transsion/letswitch/service/api/ISettings$Companion;

    return-void
.end method


# virtual methods
.method public abstract canWrite(I)Z
.end method

.method public abstract getFloat(ILjava/lang/String;F)F
.end method

.method public abstract getInt(ILjava/lang/String;I)I
.end method

.method public abstract getLong(ILjava/lang/String;J)J
.end method

.method public abstract getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putFloat(ILjava/lang/String;F)Z
.end method

.method public abstract putInt(ILjava/lang/String;I)Z
.end method

.method public abstract putLong(ILjava/lang/String;J)Z
.end method

.method public abstract putString(ILjava/lang/String;Ljava/lang/String;)Z
.end method
