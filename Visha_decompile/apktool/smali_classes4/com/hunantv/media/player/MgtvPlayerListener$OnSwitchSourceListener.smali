.class public interface abstract Lcom/hunantv/media/player/MgtvPlayerListener$OnSwitchSourceListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSwitchSourceListener"
.end annotation


# static fields
.field public static final MEDIA_SWITCH_SOURCE_INFO_START:I = 0x0

.field public static final MEDIA_SWITCH_SOURCE_INFO_SWITCHING:I = 0x1

.field public static final MSG_SWITCH_VQ_COMPLETE_FAIL_END:I = 0x1

.field public static final MSG_SWITCH_VQ_COMPLETE_FAIL_ESAME:I = 0x2

.field public static final MSG_SWITCH_VQ_COMPLETE_FAIL_ISAME:I = 0x3

.field public static final MSG_SWITCH_VQ_COMPLETE_OK:I = 0x0

.field public static final MSG_SWITCH_VQ_INFO_DATA_PREPARED:I = 0x2


# virtual methods
.method public abstract onSwitchSourceComplete(Ljava/lang/String;II)V
.end method

.method public abstract onSwitchSourceFailed(Ljava/lang/String;II)V
.end method

.method public abstract onSwitchSourceInfo(Ljava/lang/String;II)V
.end method
