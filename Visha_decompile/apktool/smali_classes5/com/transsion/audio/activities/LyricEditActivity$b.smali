.class public Lcom/transsion/audio/activities/LyricEditActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/LyricEditActivity;->G0()V
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

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$b;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$b;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/transsion/audio/activities/LyricEditActivity;->t0(Lcom/transsion/audio/activities/LyricEditActivity;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$b;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/LyricEditActivity;->q0(Lcom/transsion/audio/activities/LyricEditActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity$b;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->q0(Lcom/transsion/audio/activities/LyricEditActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/LyricEditActivity;->w0(Lcom/transsion/audio/activities/LyricEditActivity;Landroid/widget/TextView;)V

    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$b;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/LyricEditActivity;->s0(Lcom/transsion/audio/activities/LyricEditActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$b;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/LyricEditActivity;->q0(Lcom/transsion/audio/activities/LyricEditActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/audio/activities/LyricEditActivity;->w0(Lcom/transsion/audio/activities/LyricEditActivity;Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$b;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/LyricEditActivity;->v0(Lcom/transsion/audio/activities/LyricEditActivity;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "google_search_for_lyrics"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity$b;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->q0(Lcom/transsion/audio/activities/LyricEditActivity;)Landroid/widget/EditText;

    move-result-object p0

    invoke-static {}, Ldy0;->b()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/LyricEditActivity$b;->a(Ljava/util/List;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
