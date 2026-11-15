.class public interface abstract Lcom/hunantv/media/player/MgtvPlayerListener$OnCompletionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/player/MgtvPlayerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnCompletionListener"
.end annotation


# static fields
.field public static final COMPLETED_ERR_EOF:I = 0x7544

.field public static final COMPLETED_ERR_SKIPTS:I = 0x753a

.field public static final COMPLETED_HW_DISABLE:I = 0x7550

.field public static final COMPLETED_HW_FAIL:I = 0x754f

.field public static final COMPLETED_HW_UNSUPPORT:I = 0x754e

.field public static final COMPLETED_OK:I


# virtual methods
.method public abstract onCompletion(II)V
.end method
