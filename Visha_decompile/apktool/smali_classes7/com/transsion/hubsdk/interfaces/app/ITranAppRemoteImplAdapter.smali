.class public interface abstract Lcom/transsion/hubsdk/interfaces/app/ITranAppRemoteImplAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract finishCurrentAnimation()Z
.end method

.method public abstract isSupported()Z
.end method

.method public abstract newAnimationCallback()Ljava/lang/Object;
.end method

.method public abstract setAppRemoteView(Landroid/view/View;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/Object;)Z
.end method

.method public abstract skipBackAnim(Landroid/app/Activity;)V
.end method

.method public abstract startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
.end method

.method public abstract startActivity(Landroid/app/Activity;Landroid/content/Intent;Landroid/view/View;)V
.end method

.method public abstract startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
.end method

.method public abstract startActivityAsUser(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/view/View;)V
.end method

.method public abstract startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/view/View;Landroid/os/Bundle;Ljava/lang/Object;)V
.end method

.method public abstract startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/view/View;)V
.end method
