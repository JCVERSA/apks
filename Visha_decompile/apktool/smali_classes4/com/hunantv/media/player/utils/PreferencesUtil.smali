.class public final Lcom/hunantv/media/player/utils/PreferencesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final PREFERENCE_NAME:Ljava/lang/String; = "MgtvPlayerConfig"

.field public static final PREKEY_MEDIACODEC_H264_SUPPORT_BASELINE:Ljava/lang/String; = "prekey_h264_support_base"

.field public static final PREKEY_MEDIACODEC_H264_SUPPORT_HIGH:Ljava/lang/String; = "prekey_h264_support_high"

.field public static final PREKEY_MEDIACODEC_H264_SUPPORT_MAIN:Ljava/lang/String; = "prekey_h264_support_main"

.field public static final PREKEY_MEDIACODEC_H265_SUPPORT:Ljava/lang/String; = "prekey_h265_support"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hunantv/media/player/utils/PreferencesUtil;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object p0, p0, Lcom/hunantv/media/player/utils/PreferencesUtil;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private safeCommit(Landroid/content/SharedPreferences$Editor;)Z
    .locals 0

    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 2
    const-string v0, "MgtvPlayerConfig"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 1

    .line 1
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 2
    const-string v0, "MgtvPlayerConfig"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 2
    const-string v0, "MgtvPlayerConfig"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 2
    const-string v0, "MgtvPlayerConfig"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "MgtvPlayerConfig"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public putBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "MgtvPlayerConfig"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->safeCommit(Landroid/content/SharedPreferences$Editor;)Z

    move-result p0

    return p0
.end method

.method public putFloat(Ljava/lang/String;F)Z
    .locals 1

    const-string v0, "MgtvPlayerConfig"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->safeCommit(Landroid/content/SharedPreferences$Editor;)Z

    move-result p0

    return p0
.end method

.method public putInt(Ljava/lang/String;I)Z
    .locals 1

    const-string v0, "MgtvPlayerConfig"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->safeCommit(Landroid/content/SharedPreferences$Editor;)Z

    move-result p0

    return p0
.end method

.method public putLong(Ljava/lang/String;J)Z
    .locals 1

    const-string v0, "MgtvPlayerConfig"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->safeCommit(Landroid/content/SharedPreferences$Editor;)Z

    move-result p0

    return p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "MgtvPlayerConfig"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->safeCommit(Landroid/content/SharedPreferences$Editor;)Z

    move-result p0

    return p0
.end method

.method public removeKey(Ljava/lang/String;)V
    .locals 1

    const-string v0, "MgtvPlayerConfig"

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->getSharedPreferences(Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0, v0}, Lcom/hunantv/media/player/utils/PreferencesUtil;->safeCommit(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method
