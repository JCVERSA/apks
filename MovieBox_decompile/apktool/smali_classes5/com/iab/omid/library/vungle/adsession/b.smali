.class public abstract Lcom/iab/omid/library/vungle/adsession/b;
.super Ljava/lang/Object;
.source "source.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lcom/iab/omid/library/vungle/adsession/c;Lcom/iab/omid/library/vungle/adsession/d;)Lcom/iab/omid/library/vungle/adsession/b;
    .locals 1

    .line 1
    invoke-static {}, Lxe/g;->a()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AdSessionConfiguration is null"

    .line 5
    .line 6
    invoke-static {p0, v0}, Lxe/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "AdSessionContext is null"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lxe/g;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/iab/omid/library/vungle/adsession/h;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/iab/omid/library/vungle/adsession/h;-><init>(Lcom/iab/omid/library/vungle/adsession/c;Lcom/iab/omid/library/vungle/adsession/d;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method public abstract b()V
.end method

.method public abstract c(Landroid/view/View;)V
.end method

.method public abstract d()V
.end method
