.class public final synthetic Lw3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    iput-object p2, p0, Lw3a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lw3a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    iget-object p0, p0, Lw3a;->c:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->V(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Ljava/util/List;)V

    return-void
.end method
