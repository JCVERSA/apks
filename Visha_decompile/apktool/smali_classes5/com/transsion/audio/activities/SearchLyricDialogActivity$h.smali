.class public Lcom/transsion/audio/activities/SearchLyricDialogActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/SearchLyricDialogActivity;->v0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$h;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$h;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-static {p1}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->i0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "vd_audio_lyrics_add_check"

    const-string v0, "from"

    invoke-static {p2, v0, p1}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$h;->b:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-static {p0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->l0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V

    return-void
.end method
