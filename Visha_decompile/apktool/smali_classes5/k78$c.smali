.class public Lk78$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk78;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lk78;


# direct methods
.method public constructor <init>(Lk78;)V
    .locals 0

    iput-object p1, p0, Lk78$c;->b:Lk78;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3d

    if-lt v0, v1, :cond_0

    sget v0, Lcom/transsion/audio/R$string;->over_text_length:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :cond_0
    iget-object v0, p0, Lk78$c;->b:Lk78;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lk78$c;->b:Lk78;

    invoke-static {p0}, Lk78;->C(Lk78;)Lcom/transsion/dbdata/database/PlayList;

    move-result-object p0

    iget-object p0, p0, Lcom/transsion/dbdata/database/PlayList;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {v0, p0}, Lk78;->D(Lk78;Z)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
