.class public interface abstract Lcom/transsion/hubsdk/interfaces/app/ITranActivityAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getReferrer(Landroid/app/Activity;)Ljava/lang/String;
.end method

.method public abstract sceneHappen(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/transsion/hubsdk/common/exception/TranThubIncompatibleException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setupAlert(Ljava/lang/Object;)V
.end method
