.class public Lcom/transsion/audio/activities/SearchLyricDialogActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpd7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/SearchLyricDialogActivity;->u0(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Lcom/transsion/audio/activities/SearchLyricDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$a;->d:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    iput-object p2, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$a;->c:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$a;->d:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    iget-object v1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->j0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;Ljava/lang/String;)V

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

    check-cast v1, Lcom/transsion/audio/lyrics/bean/LrcRow;

    iget-object v1, v1, Lcom/transsion/audio/lyrics/bean/LrcRow;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$a;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    sget v1, Lcom/transsion/audio/R$id;->tv_preview:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$a;->d:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->i0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "vd_audio_lyrics_add_preview"

    const-string v0, "from"

    invoke-static {p1, v0, p0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/SearchLyricDialogActivity$a;->a(Ljava/util/List;)V

    return-void
.end method

.method public onSubscribe(Lrc2;)V
    .locals 0

    return-void
.end method
