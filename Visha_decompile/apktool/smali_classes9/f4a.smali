.class public final synthetic Lf4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf4a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    iput p2, p0, Lf4a;->c:I

    iput-object p3, p0, Lf4a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lf4a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    iget v1, p0, Lf4a;->c:I

    iget-object p0, p0, Lf4a;->d:Ljava/lang/String;

    check-cast p1, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    invoke-static {v0, v1, p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->m0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;ILjava/lang/String;Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
