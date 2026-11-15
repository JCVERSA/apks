.class public Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PrivateSecurityInfo"


# instance fields
.field private mEncryptedEmail:Ljava/lang/String;

.field private mEncryptedPassword:Ljava/lang/String;


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
.method public clear()V
    .locals 1

    const-string v0, ""

    iput-object v0, p0, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->mEncryptedPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->mEncryptedEmail:Ljava/lang/String;

    return-void
.end method

.method public getEncryptedEmail()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->mEncryptedEmail:Ljava/lang/String;

    return-object p0
.end method

.method public getEncryptedPassword()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->mEncryptedPassword:Ljava/lang/String;

    return-object p0
.end method

.method public setEncryptedEmail(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->mEncryptedEmail:Ljava/lang/String;

    return-void
.end method

.method public setEncryptedPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->mEncryptedPassword:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PrivateSecurityInfo{mEncryptedPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->mEncryptedPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mEncryptedEmail=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/transsion/privateroom/privateroom/beans/PrivateSecurityInfo;->mEncryptedEmail:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
