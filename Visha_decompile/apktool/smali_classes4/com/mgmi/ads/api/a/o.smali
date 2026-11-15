.class public Lcom/mgmi/ads/api/a/o;
.super Lfnd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mgmi/ads/api/a/o$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfnd;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/mgmi/ads/api/a/o$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mgmi/ads/api/a/o$a;)V
    .locals 3

    const-string v0, "XmlTask"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Lfnd;-><init>(Lfnd$a;Lfnd$b;Ljava/lang/String;I)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mgmi/ads/api/a/o;->a:Ljava/lang/ref/WeakReference;

    new-instance p1, Lcom/mgmi/ads/api/a/o$1;

    invoke-direct {p1, p0}, Lcom/mgmi/ads/api/a/o$1;-><init>(Lcom/mgmi/ads/api/a/o;)V

    new-instance v0, Lcom/mgmi/ads/api/a/o$2;

    invoke-direct {v0, p0}, Lcom/mgmi/ads/api/a/o$2;-><init>(Lcom/mgmi/ads/api/a/o;)V

    invoke-virtual {p0, p1, v0}, Lfnd;->a(Lfnd$a;Lfnd$b;)V

    return-void
.end method

.method public static synthetic a(Lcom/mgmi/ads/api/a/o;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/mgmi/ads/api/a/o;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method
