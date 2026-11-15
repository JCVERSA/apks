.class public final synthetic Ldu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioPlayerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldu;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, Ldu;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-static {p0, p1, p2}, Lcom/transsion/audio/activities/AudioPlayerActivity;->L0(Lcom/transsion/audio/activities/AudioPlayerActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
