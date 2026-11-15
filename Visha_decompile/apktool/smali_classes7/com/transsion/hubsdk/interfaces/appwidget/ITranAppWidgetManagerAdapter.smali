.class public interface abstract Lcom/transsion/hubsdk/interfaces/appwidget/ITranAppWidgetManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getInstalledProviders(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerAppWidgetListener(Lcom/transsion/hubsdk/api/app/ITranAppWidget;I)V
.end method

.method public abstract unregisterAppWidgetListener(Lcom/transsion/hubsdk/api/app/ITranAppWidget;I)V
.end method
