.class public Lcom/transsion/audio/activities/SearchLyricDialogActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/audio/widgets/LyricLocalSelectView$SelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/SearchLyricDialogActivity;->t0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/transsion/audio/activities/SearchLyricDialogActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$g;->a:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selectLyric(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$g;->a:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-static {v0}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->i0(Lcom/transsion/audio/activities/SearchLyricDialogActivity;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "vd_audio_lyrics_add_cl"

    const-string v2, "from"

    invoke-static {v1, v2, v0}, Lhb0;->markTrackSingle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/transsion/audio/activities/SearchLyricDialogActivity$g;->a:Lcom/transsion/audio/activities/SearchLyricDialogActivity;

    invoke-virtual {p0, p1}, Lcom/transsion/audio/activities/SearchLyricDialogActivity;->r0(Ljava/lang/String;)V

    return-void
.end method
