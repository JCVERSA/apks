.class Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/mgadplus/viewgroup/convenientbanner/ConvenientBanner;->d()V

    :cond_0
    return-void
.end method
