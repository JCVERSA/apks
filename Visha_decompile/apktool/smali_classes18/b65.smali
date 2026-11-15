.class public Lb65;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmw0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb65$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfreemarker/ext/beans/c;)V
    .locals 1

    invoke-static {}, Lorg/zeroturnaround/javarebel/ReloaderFactory;->getInstance()Lorg/zeroturnaround/javarebel/Reloader;

    move-result-object p0

    new-instance v0, Lb65$a;

    invoke-direct {v0, p1}, Lb65$a;-><init>(Lfreemarker/ext/beans/c;)V

    invoke-interface {p0, v0}, Lorg/zeroturnaround/javarebel/Reloader;->addClassReloadListener(Lorg/zeroturnaround/javarebel/ClassEventListener;)V

    return-void
.end method
