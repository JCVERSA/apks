.class public final synthetic Lir;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/audio/utils/AudioLoadDataUtils;

.field public final synthetic c:Ljava/util/ArrayList;

.field public final synthetic d:Lcom/transsion/dbdata/beans/media/PlayAudioData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/audio/utils/AudioLoadDataUtils;Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lir;->b:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    iput-object p2, p0, Lir;->c:Ljava/util/ArrayList;

    iput-object p3, p0, Lir;->d:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lir;->b:Lcom/transsion/audio/utils/AudioLoadDataUtils;

    iget-object v1, p0, Lir;->c:Ljava/util/ArrayList;

    iget-object p0, p0, Lir;->d:Lcom/transsion/dbdata/beans/media/PlayAudioData;

    invoke-static {v0, v1, p0}, Lcom/transsion/audio/utils/AudioLoadDataUtils;->a(Lcom/transsion/audio/utils/AudioLoadDataUtils;Ljava/util/ArrayList;Lcom/transsion/dbdata/beans/media/PlayAudioData;)V

    return-void
.end method
