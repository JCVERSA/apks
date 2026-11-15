.class public final synthetic Lhr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/utils/AudioLoadDataUtils;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/net/Uri;

.field public final synthetic e:I

.field public final synthetic f:Lcom/transsion/dbdata/beans/media/PlayAudioData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/utils/AudioLoadDataUtils;ZLandroid/net/Uri;ILcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhr;->b:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    iput-boolean p2, p0, Lhr;->c:Z

    iput-object p3, p0, Lhr;->d:Landroid/net/Uri;

    iput p4, p0, Lhr;->e:I

    iput-object p5, p0, Lhr;->f:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lhr;->b:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    iget-boolean v1, p0, Lhr;->c:Z

    iget-object v2, p0, Lhr;->d:Landroid/net/Uri;

    iget v3, p0, Lhr;->e:I

    iget-object p0, p0, Lhr;->f:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->b(Lcom/transsion/audio/utils/AudioLoadDataUtils;ZLandroid/net/Uri;ILcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method
