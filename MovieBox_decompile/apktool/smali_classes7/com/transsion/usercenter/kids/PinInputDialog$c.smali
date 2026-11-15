.class public final Lcom/transsion/usercenter/kids/PinInputDialog$c;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/kids/PinInputDialog;->o0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/kids/PinInputDialog;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/kids/PinInputDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/kids/PinInputDialog$c;->a:Lcom/transsion/usercenter/kids/PinInputDialog;

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
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/transsion/usercenter/kids/PinInputDialog$c;->a:Lcom/transsion/usercenter/kids/PinInputDialog;

    .line 10
    .line 11
    invoke-static {v1, v0}, Lcom/transsion/usercenter/kids/PinInputDialog;->j0(Lcom/transsion/usercenter/kids/PinInputDialog;I)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/transsion/usercenter/kids/PinInputDialog$c;->a:Lcom/transsion/usercenter/kids/PinInputDialog;

    .line 18
    .line 19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {v0, p1}, Lcom/transsion/usercenter/kids/PinInputDialog;->f0(Lcom/transsion/usercenter/kids/PinInputDialog;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_1
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
