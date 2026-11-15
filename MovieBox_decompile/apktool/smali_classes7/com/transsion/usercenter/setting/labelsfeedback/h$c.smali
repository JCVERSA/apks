.class public final Lcom/transsion/usercenter/setting/labelsfeedback/h$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/setting/labelsfeedback/h;->n(Lcom/transsion/usercenter/setting/labelsfeedback/h$a;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/setting/labelsfeedback/h;


# direct methods
.method public constructor <init>(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$c;->a:Lcom/transsion/usercenter/setting/labelsfeedback/h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->m()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->getContact()Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    :cond_0
    const-string p1, ""

    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FBContact;->setPhone(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    return-void
.end method
