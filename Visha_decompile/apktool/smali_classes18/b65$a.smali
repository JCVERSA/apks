.class public Lb65$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/zeroturnaround/javarebel/ClassEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb65;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lfreemarker/ext/beans/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lb65$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method
