.class public abstract Lp10;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()V
    .locals 1

    sget v0, Lcom/transsion/audio/R$string;->audio_format_not_support_edit:I

    invoke-static {v0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    return-void
.end method

.method public static b(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget p0, Lcom/transsion/audio/R$string;->repeat_all:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    sget p0, Lcom/transsion/audio/R$string;->repeat_one:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    goto :goto_0

    :cond_1
    sget p0, Lcom/transsion/audio/R$string;->shuffle:I

    invoke-static {p0}, Lcom/transsion/utils/ToastUtils;->s(I)V

    :goto_0
    return-void
.end method
