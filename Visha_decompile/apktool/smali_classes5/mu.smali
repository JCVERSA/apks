.class public final synthetic Lmu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/PlayAudioData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmu;->b:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lmu;->b:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    check-cast p1, Landroid/util/Pair;

    invoke-static {p0, p1}, Lcom/transsion/audio/activities/AudioPlayerActivity;->P0(Lcom/transsion/dbdata/beans/media/PlayAudioData;Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
