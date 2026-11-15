.class public final synthetic Lh3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzf1;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh3a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lh3a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

    check-cast p1, Lcom/transsion/magicvideo/data/SubtitleOptStatus;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->W(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/transsion/magicvideo/data/SubtitleOptStatus;)V

    return-void
.end method
