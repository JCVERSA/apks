.class public final Lbkg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0g;


# instance fields
.field public final b:Lejf;


# direct methods
.method public constructor <init>(Lejf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbkg;->b:Lejf;

    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lbkg;->b:Lejf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lejf;->destroy()V

    :cond_0
    return-void
.end method

.method public final k(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lbkg;->b:Lejf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lejf;->onPause()V

    :cond_0
    return-void
.end method

.method public final n(Landroid/content/Context;)V
    .locals 0

    iget-object p0, p0, Lbkg;->b:Lejf;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lejf;->onResume()V

    :cond_0
    return-void
.end method
