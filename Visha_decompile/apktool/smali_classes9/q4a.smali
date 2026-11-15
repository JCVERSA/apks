.class public final synthetic Lq4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq4a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;

    iput p2, p0, Lq4a;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lq4a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;

    iget p0, p0, Lq4a;->c:I

    invoke-static {v0, p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;->d(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$c;I)V

    return-void
.end method
