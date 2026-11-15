.class public Lcom/transsion/hubsdk/api/widget/TranEditText;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "TranEditText"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/widget/TranAospEditText;

.field private mThubService:Lcom/transsion/hubsdk/core/widget/TranThubEditText;


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


# virtual methods
.method public getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/widget/ITranEditTextAdapter;
    .locals 1

    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "TranThubEditText"

    if-eqz p1, :cond_1

    sget-object p1, Lcom/transsion/hubsdk/api/widget/TranEditText;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranEditText;->mThubService:Lcom/transsion/hubsdk/core/widget/TranThubEditText;

    if-nez p1, :cond_0

    new-instance p1, Lcom/transsion/hubsdk/core/widget/TranThubEditText;

    invoke-direct {p1}, Lcom/transsion/hubsdk/core/widget/TranThubEditText;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranEditText;->mThubService:Lcom/transsion/hubsdk/core/widget/TranThubEditText;

    :cond_0
    return-object p1

    :cond_1
    sget-object p1, Lcom/transsion/hubsdk/api/widget/TranEditText;->TAG:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranEditText;->mAospService:Lcom/transsion/hubsdk/aosp/widget/TranAospEditText;

    if-nez p1, :cond_2

    new-instance p1, Lcom/transsion/hubsdk/aosp/widget/TranAospEditText;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/widget/TranAospEditText;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/widget/TranEditText;->mAospService:Lcom/transsion/hubsdk/aosp/widget/TranAospEditText;

    :cond_2
    return-object p1
.end method

.method public setSupportCommonPhrase(Landroid/widget/EditText;Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33161:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/widget/TranEditText;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/widget/ITranEditTextAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/transsion/hubsdk/interfaces/widget/ITranEditTextAdapter;->setSupportCommonPhrase(Landroid/widget/EditText;Z)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "view cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
