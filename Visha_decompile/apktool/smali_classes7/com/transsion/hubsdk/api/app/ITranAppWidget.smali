.class public interface abstract Lcom/transsion/hubsdk/api/app/ITranAppWidget;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/app/ITranAppWidget$Stub;,
        Lcom/transsion/hubsdk/api/app/ITranAppWidget$Default;
    }
.end annotation


# virtual methods
.method public abstract notifyAppWidgetLoadState(ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
