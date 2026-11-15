.class public final Lcom/transsion/ad/strategy/AppManager;
.super Ljava/lang/Object;
.source "source.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/ad/strategy/AppManager$AppEnum;
    }
.end annotation


# static fields
.field public static final a:Lcom/transsion/ad/strategy/AppManager;

.field private static b:Lcom/transsion/ad/strategy/AppManager$AppEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/transsion/ad/strategy/AppManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/transsion/ad/strategy/AppManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/transsion/ad/strategy/AppManager;->a:Lcom/transsion/ad/strategy/AppManager;

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


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/transsion/ad/strategy/AppManager;->b:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/AppManager$AppEnum;->getValue()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    sget-object v0, Lcom/transsion/ad/strategy/e;->a:Lcom/transsion/ad/strategy/e;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/e;->c()Lcom/tencent/mmkv/MMKV;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "mmkv_key_app_name"

    .line 18
    .line 19
    const-string v2, "none"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "default_null"

    .line 28
    .line 29
    :cond_1
    return-object v0
.end method

.method public final b(Lcom/transsion/ad/strategy/AppManager$AppEnum;)V
    .locals 2

    .line 1
    const-string v0, "app"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/transsion/ad/strategy/AppManager;->b:Lcom/transsion/ad/strategy/AppManager$AppEnum;

    .line 7
    .line 8
    sget-object v0, Lcom/transsion/ad/strategy/e;->a:Lcom/transsion/ad/strategy/e;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/transsion/ad/strategy/e;->c()Lcom/tencent/mmkv/MMKV;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "mmkv_key_app_name"

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/transsion/ad/strategy/AppManager$AppEnum;->getValue()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, v1, p1}, Lcom/tencent/mmkv/MMKV;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 21
    .line 22
    .line 23
    return-void
.end method
