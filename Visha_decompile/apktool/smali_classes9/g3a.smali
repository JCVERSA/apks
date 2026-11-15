.class public final synthetic Lg3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt74;


# instance fields
.field public final synthetic b:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg3a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg3a;->b:Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;

    check-cast p1, Lcom/transsion/dbdata/beans/SubtitleHistory;

    invoke-static {p0, p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->b0(Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;Lcom/transsion/dbdata/beans/SubtitleHistory;)Lcom/transsion/magicvideo/data/SubtitleOptStatus;

    move-result-object p0

    return-object p0
.end method
