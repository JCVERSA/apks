.class public final Lt62;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax4;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Application;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method public b(Landroid/app/Activity;ZLhhb;)V
    .locals 0

    if-eqz p3, :cond_0

    new-instance p0, Lehb;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lehb;-><init>(ZZ)V

    invoke-interface {p3, p0}, Lhhb;->a(Lehb;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/app/Activity;Z)V
    .locals 0

    return-void
.end method
