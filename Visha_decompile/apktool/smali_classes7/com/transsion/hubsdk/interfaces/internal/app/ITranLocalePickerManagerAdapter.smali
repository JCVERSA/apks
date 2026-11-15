.class public interface abstract Lcom/transsion/hubsdk/interfaces/internal/app/ITranLocalePickerManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getAllAssetLocales(Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/transsion/hubsdk/api/internal/app/TranLocaleInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateLocale(Ljava/util/Locale;)V
.end method

.method public abstract updateLocales(Landroid/os/LocaleList;)V
.end method
