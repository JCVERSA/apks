.class public abstract Lfhb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lax4;
    .locals 2

    const-string v0, "gp"

    const-string v1, "plamplay"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lij4;

    invoke-direct {v0}, Lij4;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Lt62;

    invoke-direct {v0}, Lt62;-><init>()V

    return-object v0
.end method
