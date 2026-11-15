.class public final synthetic Lv2a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/SubtitleHistory;

    invoke-static {p1}, Lcom/transsion/magicvideo/fragments/SubtitleDownHistoryFragment;->c0(Lcom/transsion/dbdata/beans/SubtitleHistory;)Z

    move-result p0

    return p0
.end method
