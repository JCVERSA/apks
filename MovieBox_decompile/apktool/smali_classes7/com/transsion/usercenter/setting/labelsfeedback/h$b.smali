.class public final Lcom/transsion/usercenter/setting/labelsfeedback/h$b;
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
.field final synthetic a:Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

.field final synthetic b:Lcom/transsion/usercenter/setting/labelsfeedback/h;


# direct methods
.method public constructor <init>(Lcom/transsion/usercenter/setting/labelsfeedback/h$a;Lcom/transsion/usercenter/setting/labelsfeedback/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$b;->a:Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$b;->b:Lcom/transsion/usercenter/setting/labelsfeedback/h;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

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
    iget-object v1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$b;->a:Lcom/transsion/usercenter/setting/labelsfeedback/h$a;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/transsion/usercenter/setting/labelsfeedback/h$a;->f()Landroidx/appcompat/widget/AppCompatTextView;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "/"

    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v0, 0x1f4

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$b;->b:Lcom/transsion/usercenter/setting/labelsfeedback/h;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->m()Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-static {p1}, Lkotlin/text/StringsKt;->n1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    const/4 p1, 0x0

    .line 64
    :goto_1
    invoke-virtual {v0, p1}, Lcom/transsion/usercenter/setting/labelsfeedback/model/FbDataModel;->setContent(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$b;->b:Lcom/transsion/usercenter/setting/labelsfeedback/h;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/transsion/usercenter/setting/labelsfeedback/h;->l()Lcom/transsion/usercenter/setting/labelsfeedback/i;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/transsion/usercenter/setting/labelsfeedback/h$b;->b:Lcom/transsion/usercenter/setting/labelsfeedback/h;

    .line 76
    .line 77
    invoke-interface {p1, v0}, Lcom/transsion/usercenter/setting/labelsfeedback/i;->b(Lcom/transsion/usercenter/setting/labelsfeedback/h;)V

    .line 78
    .line 79
    .line 80
    :cond_2
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
