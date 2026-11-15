.class public Lcom/transsion/audio/activities/LyricEditActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/LyricEditActivity;->z0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/LyricEditActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/LyricEditActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$a;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity$a;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->s0(Lcom/transsion/audio/activities/LyricEditActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/LyricEditActivity;->u0(Lcom/transsion/audio/activities/LyricEditActivity;Z)V

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
