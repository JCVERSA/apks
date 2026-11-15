.class public final synthetic Lc4a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

.field public final synthetic c:Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc4a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    iput-object p2, p0, Lc4a;->c:Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lc4a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;

    iget-object p0, p0, Lc4a;->c:Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;->j0(Lcom/transsion/magicvideo/fragments/SubtitleDownLoadFragment;Lcom/transsion/dbdata/beans/subtitle/OpenSubtitle;Landroid/content/DialogInterface;I)V

    return-void
.end method
