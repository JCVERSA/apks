.class public final synthetic Lz2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

.field public final synthetic c:Lcom/transsion/dbdata/beans/SubtitleHistory;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/transsion/dbdata/beans/SubtitleHistory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

    iput-object p2, p0, Lz2a;->c:Lcom/transsion/dbdata/beans/SubtitleHistory;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lz2a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

    iget-object p0, p0, Lz2a;->c:Lcom/transsion/dbdata/beans/SubtitleHistory;

    invoke-static {v0, p0, p1, p2}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->S(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/transsion/dbdata/beans/SubtitleHistory;Landroid/content/DialogInterface;I)V

    return-void
.end method
