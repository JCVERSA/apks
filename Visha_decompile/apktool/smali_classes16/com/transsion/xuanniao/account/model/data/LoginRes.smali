.class public Lcom/transsion/xuanniao/account/model/data/LoginRes;
.super Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;,
        Lcom/transsion/xuanniao/account/model/data/LoginRes$AuthorizeThird;
    }
.end annotation


# static fields
.field public static final LOGIN:Ljava/lang/String; = "LOGIN"

.field public static final REGISTER:Ljava/lang/String; = "REGISTER"


# instance fields
.field public account:Lcom/transsion/xuanniao/account/model/data/AccountRes;

.field public loginedThird:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/transsion/xuanniao/account/model/data/LoginRes$AuthorizeThird;",
            ">;"
        }
    .end annotation
.end field

.field private otherOpenId:Ljava/lang/String;

.field public token:Lcom/transsion/xuanniao/account/model/data/LoginRes$SdkToken;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/transsion/xuanniao/account/model/data/BaseEncryptRes;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoginedThird()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/xuanniao/account/model/data/LoginRes$AuthorizeThird;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginRes;->loginedThird:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getOtherOpenId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/transsion/xuanniao/account/model/data/LoginRes;->otherOpenId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/transsion/xuanniao/account/model/data/LoginRes;->otherOpenId:Ljava/lang/String;

    return-object p0
.end method

.method public setLoginedThird(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/transsion/xuanniao/account/model/data/LoginRes$AuthorizeThird;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/transsion/xuanniao/account/model/data/LoginRes;->loginedThird:Ljava/util/ArrayList;

    return-void
.end method
