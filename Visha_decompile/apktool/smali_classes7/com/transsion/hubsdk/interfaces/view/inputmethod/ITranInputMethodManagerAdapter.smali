.class public interface abstract Lcom/transsion/hubsdk/interfaces/view/inputmethod/ITranInputMethodManagerAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract commitConnectKeyAndText(Landroid/view/KeyEvent;Ljava/lang/String;)V
.end method

.method public abstract freeSoftInputViewsLeaks(Landroid/content/Context;Landroid/view/Window;)V
.end method

.method public abstract hideAllInputMethod(II)V
.end method

.method public abstract hideSoftInputMethodByPrivilegeUser()V
.end method

.method public abstract registerGlobalWritingListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V
.end method

.method public abstract switchTranInputMethod(Z)V
.end method

.method public abstract unregisterGlobalWritingListener(Lcom/transsion/hubsdk/api/view/inputmethod/ITranGlobalWritingListener;)V
.end method

.method public abstract updateSecurityInputBlackList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
