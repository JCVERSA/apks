.class public final synthetic Ls4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;

.field public final synthetic c:Lgu8;

.field public final synthetic d:Lsz2;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;Lgu8;Lsz2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls4a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;

    iput-object p2, p0, Ls4a;->c:Lgu8;

    iput-object p3, p0, Ls4a;->d:Lsz2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Ls4a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;

    iget-object v1, p0, Ls4a;->c:Lgu8;

    iget-object p0, p0, Ls4a;->d:Lsz2;

    invoke-static {v0, v1, p0}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;->a(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment$d;Lgu8;Lsz2;)V

    return-void
.end method
