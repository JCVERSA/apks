.class public Lcom/transsion/audio/activities/AudioPlayerActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/audio/activities/AudioPlayerActivity;->K1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/transsion/audio/activities/AudioPlayerActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/audio/activities/AudioPlayerActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$c;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 0

    iget-object p0, p0, Lcom/transsion/audio/activities/AudioPlayerActivity$c;->b:Lcom/transsion/audio/activities/AudioPlayerActivity;

    invoke-virtual {p0}, Lcom/transsion/audio/activities/AudioPlayerActivity;->O1()V

    const/4 p0, 0x1

    return p0
.end method
