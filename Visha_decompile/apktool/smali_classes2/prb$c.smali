.class public final Lprb$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lprb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lprb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lprb$c;->a:Landroid/view/WindowManager;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lprb$b;
    .locals 1

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    new-instance v0, Lprb$c;

    invoke-direct {v0, p0}, Lprb$c;-><init>(Landroid/view/WindowManager;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lprb$b$a;)V
    .locals 0

    iget-object p0, p0, Lprb$c;->a:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-interface {p1, p0}, Lprb$b$a;->a(Landroid/view/Display;)V

    return-void
.end method

.method public unregister()V
    .locals 0

    return-void
.end method
