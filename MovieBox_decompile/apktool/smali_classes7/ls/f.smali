.class public final Lls/f;
.super Ljava/lang/Object;
.source "source.java"


# static fields
.field public static final a:Lls/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lls/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lls/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lls/f;->a:Lls/f;

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
.method public final a()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/transsion/shorttv_pugc/utils/h;->a:Lcom/transsion/shorttv_pugc/utils/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/shorttv_pugc/utils/h;->g()Lcom/tencent/mmkv/MMKV;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "dark_mode_follow_sys"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/tencent/mmkv/MMKV;->getBoolean(Ljava/lang/String;Z)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return v1

    .line 18
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->a()Landroid/app/Application;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 31
    .line 32
    and-int/lit8 v0, v0, 0x30

    .line 33
    .line 34
    const/16 v3, 0x20

    .line 35
    .line 36
    if-ne v0, v3, :cond_1

    .line 37
    .line 38
    move v2, v1

    .line 39
    :cond_1
    return v2
.end method
