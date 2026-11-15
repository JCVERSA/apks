.class public Lcom/hisavana/common/bean/AppStartInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static activeTime:Ljava/lang/String; = null

.field public static ageRestrictedUser:Z = false

.field public static channel:Ljava/lang/String; = null

.field public static extInfo:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static isFirstStartToday:Z = false

.field public static userConsent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
