.class public Lcom/transsion/palmsdk/PalmAuthParam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/palmsdk/PalmAuthParam$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/transsion/palmsdk/PalmAuthParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppProcess:Ljava/lang/String;

.field private mAppSign:Ljava/lang/String;

.field private mAppid:Ljava/lang/String;

.field private mBindTransID:Z

.field private mIgnorePalmApp:Z

.field private mIntentActivity:Ljava/lang/String;

.field private mOnlyPhoneNum:Z

.field private mPkgName:Ljava/lang/String;

.field private mRedirectUri:Ljava/lang/String;

.field private mReqToken:Z

.field private mScopes:Ljava/lang/String;

.field private mServerMode:I

.field private mShowPrevLogin:Z

.field private mShowTPLogin:Z

.field private mState:Ljava/lang/String;

.field private mTudcSpName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/palmsdk/PalmAuthParam$b;

    invoke-direct {v0}, Lcom/transsion/palmsdk/PalmAuthParam$b;-><init>()V

    sput-object v0, Lcom/transsion/palmsdk/PalmAuthParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppid:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mScopes:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mRedirectUri:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mState:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mReqToken:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowTPLogin:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mPkgName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppSign:Ljava/lang/String;

    .line 39
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 40
    sget-object v0, Lvj7;->a:Lcom/transsion/core/log/ObjectLogUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "option = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/transsion/core/log/ObjectLogUtils;->g(Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 42
    const-string p1, "onlyPhoneNum"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mOnlyPhoneNum:Z

    .line 43
    const-string p1, "showPrevLogin"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowPrevLogin:Z

    .line 44
    const-string p1, "intentActivity"

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mIntentActivity:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 45
    :catch_0
    iput-boolean v2, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowPrevLogin:Z

    :goto_2
    return-void
.end method

.method private constructor <init>(Lcom/transsion/palmsdk/PalmAuthParam$a;)V
    .locals 8

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->a(Lcom/transsion/palmsdk/PalmAuthParam$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppid:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->b(Lcom/transsion/palmsdk/PalmAuthParam$a;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 6
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->b(Lcom/transsion/palmsdk/PalmAuthParam$a;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->b(Lcom/transsion/palmsdk/PalmAuthParam$a;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, " "

    if-ge v4, v2, :cond_3

    aget-object v6, v1, v4

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 10
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_3
    sget-object v1, Lw29;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lw29;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mScopes:Ljava/lang/String;

    goto :goto_3

    .line 15
    :cond_5
    :goto_2
    sget-object v0, Lw29;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mScopes:Ljava/lang/String;

    .line 16
    :goto_3
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->f(Lcom/transsion/palmsdk/PalmAuthParam$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    const-string v0, "https://account.palm.tech/client/callback"

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mRedirectUri:Ljava/lang/String;

    goto :goto_4

    .line 18
    :cond_6
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->f(Lcom/transsion/palmsdk/PalmAuthParam$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mRedirectUri:Ljava/lang/String;

    :goto_4
    const/16 v0, 0x8

    .line 19
    invoke-static {v0}, Lvj7;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mState:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->g(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mReqToken:Z

    .line 21
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->h(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mIgnorePalmApp:Z

    .line 22
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->i(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowTPLogin:Z

    .line 23
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->j(Lcom/transsion/palmsdk/PalmAuthParam$a;)I

    move-result v0

    iput v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mServerMode:I

    .line 24
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->k(Lcom/transsion/palmsdk/PalmAuthParam$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mTudcSpName:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->l(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mOnlyPhoneNum:Z

    .line 26
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->m(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowPrevLogin:Z

    .line 27
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->c(Lcom/transsion/palmsdk/PalmAuthParam$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mIntentActivity:Ljava/lang/String;

    .line 28
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->d(Lcom/transsion/palmsdk/PalmAuthParam$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppProcess:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/transsion/palmsdk/PalmAuthParam$a;->e(Lcom/transsion/palmsdk/PalmAuthParam$a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mBindTransID:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/transsion/palmsdk/PalmAuthParam$a;Lcom/transsion/palmsdk/PalmAuthParam$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/transsion/palmsdk/PalmAuthParam;-><init>(Lcom/transsion/palmsdk/PalmAuthParam$a;)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/transsion/palmsdk/PalmAuthParam;
    .locals 2

    new-instance v0, Lcom/transsion/palmsdk/PalmAuthParam;

    invoke-direct {v0}, Lcom/transsion/palmsdk/PalmAuthParam;-><init>()V

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppid:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppid:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mScopes:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mScopes:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mState:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mState:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppSign:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppSign:Ljava/lang/String;

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mPkgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mPkgName:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mReqToken:Z

    iget-boolean v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowTPLogin:Z

    iput-boolean v1, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowTPLogin:Z

    const-string v1, "https://account.palm.tech/client/callback"

    iput-object v1, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mRedirectUri:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mOnlyPhoneNum:Z

    iput-boolean v1, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mOnlyPhoneNum:Z

    iget-boolean v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowPrevLogin:Z

    iput-boolean v1, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowPrevLogin:Z

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mIntentActivity:Ljava/lang/String;

    iput-object v1, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mIntentActivity:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mBindTransID:Z

    iput-boolean p0, v0, Lcom/transsion/palmsdk/PalmAuthParam;->mBindTransID:Z

    return-object v0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAppProcess()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppProcess:Ljava/lang/String;

    return-object p0
.end method

.method public getAppSign()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppSign:Ljava/lang/String;

    return-object p0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppid:Ljava/lang/String;

    return-object p0
.end method

.method public getIntentActivity()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mIntentActivity:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getRedirectUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mRedirectUri:Ljava/lang/String;

    return-object p0
.end method

.method public getScopes()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mScopes:Ljava/lang/String;

    return-object p0
.end method

.method public getServerMode()I
    .locals 0

    iget p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mServerMode:I

    return p0
.end method

.method public getState()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public getTudcSpName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mTudcSpName:Ljava/lang/String;

    return-object p0
.end method

.method public hasTudc()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mTudcSpName:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public ignorePalmApp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mIgnorePalmApp:Z

    return p0
.end method

.method public isBindTransID()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mBindTransID:Z

    return p0
.end method

.method public isOnlyPhoneNum()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mOnlyPhoneNum:Z

    return p0
.end method

.method public isReqToken()Z
    .locals 1

    iget-boolean v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mReqToken:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mRedirectUri:Ljava/lang/String;

    const-string v0, "https://account.palm.tech/client/callback"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShowPrevLogin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowPrevLogin:Z

    return p0
.end method

.method public isShowTPLogin()Z
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowTPLogin:Z

    return p0
.end method

.method public setIgnorePalmApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mIgnorePalmApp:Z

    return-void
.end method

.method public setShowPreLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowPrevLogin:Z

    return-void
.end method

.method public setupApp(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mPkgName:Ljava/lang/String;

    const-string v0, "MD5"

    invoke-static {p1, v0}, Lvj7;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppSign:Ljava/lang/String;

    return-void
.end method

.method public toMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppid:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mRedirectUri:Ljava/lang/String;

    const-string v2, "redirect_uri"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mScopes:Ljava/lang/String;

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mState:Ljava/lang/String;

    const-string v1, "state"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mScopes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mRedirectUri:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mScopes:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mRedirectUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mReqToken:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowTPLogin:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mPkgName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mAppSign:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "onlyPhoneNum"

    iget-boolean v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mOnlyPhoneNum:Z

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "showPrevLogin"

    iget-boolean v1, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mShowPrevLogin:Z

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "intentActivity"

    iget-object p0, p0, Lcom/transsion/palmsdk/PalmAuthParam;->mIntentActivity:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
