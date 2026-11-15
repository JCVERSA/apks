.class public final synthetic Lb3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/SubtitleHistory;

    invoke-static {p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->g0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Lcom/transsion/dbdata/beans/SubtitleHistory;

    move-result-object p0

    return-object p0
.end method
