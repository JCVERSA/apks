.class public final Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;


# direct methods
.method constructor <init>(Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$b;->a:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

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
    iget-object v0, p0, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog$b;->a:Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    move p1, v1

    .line 16
    :goto_1
    xor-int/2addr p1, v1

    .line 17
    invoke-static {v0, p1}, Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;->g0(Lcom/transsion/usercenter/kids/CreateKidsProfileDialog;Z)V

    .line 18
    .line 19
    .line 20
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
