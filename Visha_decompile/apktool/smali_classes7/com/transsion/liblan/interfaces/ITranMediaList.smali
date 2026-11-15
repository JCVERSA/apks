.class public interface abstract Lcom/transsion/liblan/interfaces/ITranMediaList;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/liblan/interfaces/ITranLANObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;,
        Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/liblan/interfaces/ITranLANObject<",
        "Lcom/transsion/liblan/interfaces/ITranMediaList$TranEvent;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCount()I
.end method

.method public abstract getMediaOfIndex(I)Lcom/transsion/liblan/interfaces/ITranMedia;
.end method

.method public abstract isBeLocked()Z
.end method

.method public abstract setTranEventListener(Lcom/transsion/liblan/interfaces/ITranMediaList$TranEventListener;Landroid/os/Handler;)V
.end method
