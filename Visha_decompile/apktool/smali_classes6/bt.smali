.class public final synthetic Lbt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/ToLongFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsLong(Ljava/lang/Object;)J
    .locals 0

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-virtual {p1}, Lcom/transsion/dbdata/beans/media/AudioItem;->getFileCreateTime()J

    move-result-wide p0

    return-wide p0
.end method
