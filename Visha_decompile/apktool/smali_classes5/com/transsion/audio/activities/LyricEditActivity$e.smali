.class public Lcom/transsion/audio/activities/LyricEditActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/LyricEditActivity;->I0()V
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

    iput-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$e;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p2, "vd_audio_lyrics_edit_cancel_cl"

    invoke-static {p2}, Lhb0;->markDirect(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, Lcom/transsion/audio/activities/LyricEditActivity$e;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/transsion/audio/activities/LyricEditActivity$e;->b:Lcom/transsion/audio/activities/LyricEditActivity;

    invoke-virtual {p0}, Lcom/transsion/audio/activities/LyricEditActivity;->finish()V

    return-void
.end method
