.class public Lcom/transsion/livecaption/bean/SubtitleBean;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/livecaption/bean/SubtitleBean$InputType;
    }
.end annotation


# instance fields
.field inLanguage:Ljava/lang/String;

.field inputType:Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

.field outLanguage:Ljava/lang/String;

.field pkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/transsion/livecaption/bean/SubtitleBean;
    .locals 0

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/livecaption/bean/SubtitleBean;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 3
    :catch_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/transsion/livecaption/bean/SubtitleBean;->clone()Lcom/transsion/livecaption/bean/SubtitleBean;

    move-result-object p0

    return-object p0
.end method

.method public getInLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SubtitleBean;->inLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getInputType()Lcom/transsion/livecaption/bean/SubtitleBean$InputType;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SubtitleBean;->inputType:Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

    return-object p0
.end method

.method public getOutLanguage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SubtitleBean;->outLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/livecaption/bean/SubtitleBean;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public setInLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SubtitleBean;->inLanguage:Ljava/lang/String;

    return-void
.end method

.method public setInputType(Lcom/transsion/livecaption/bean/SubtitleBean$InputType;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SubtitleBean;->inputType:Lcom/transsion/livecaption/bean/SubtitleBean$InputType;

    return-void
.end method

.method public setOutLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SubtitleBean;->outLanguage:Ljava/lang/String;

    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/livecaption/bean/SubtitleBean;->pkgName:Ljava/lang/String;

    return-void
.end method
